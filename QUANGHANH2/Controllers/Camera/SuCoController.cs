﻿using OfficeOpenXml;
using QUANGHANH2.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Hosting;
using System.Web.Mvc;
using System.Web.Routing;
using System.Linq.Dynamic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Globalization;
using QUANGHANH2.SupportClass;

namespace QUANGHANH2.Controllers.Camera
{
    public class SuCoController : Controller
    {
        [Auther(RightID = "200")]
        [Route("phong-cdvt/camera/su-co")]
        [HttpGet]
        public ActionResult Index()
        {
            using (QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities())
            {
                ViewBag.room_name = db.Rooms.Where(x => x.camera_available != 0).Select(x => x.room_name).ToList();
                ViewBag.department_name = db.Departments.Select(x => x.department_name).ToList();
            }
            return View("/Views/Camera/SuCo.cshtml");
        }

        [Auther(RightID = "201")]
        [Route("camera/su-co/add")]
        [HttpPost]
        public ActionResult Add(string depart, string quan, string reason, int yearStart, int monthStart, int dayStart, int hourStart, int minuteStart, string checkBox)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            Incident i = new Incident();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Room e = DBContext.Rooms.Where(x => x.room_name.Equals(depart)).FirstOrDefault();
                    DateTime start = new DateTime(yearStart, monthStart, dayStart, hourStart, minuteStart, 0);
                    if (e.camera_available < Convert.ToInt32(quan))
                        return Json(new { success = false, message = "Số lượng camera không khả dụng" }, JsonRequestBehavior.AllowGet);
                    i.room_id = e.room_id;
                    i.incident_camera_quantity = Convert.ToInt32(quan);
                    i.reason = reason;
                    i.start_time = start;
                    i.disk_saveable = bool.Parse(checkBox);
                    i.disk_status = Request["status"];
                    e.camera_available -= Convert.ToInt32(quan);
                    e.disk_saveable = i.disk_saveable;
                    e.disk_status = i.disk_status;
                    e.signal_loss_reason = reason;
                    DBContext.Incidents.Add(i);
                    DBContext.SaveChanges();
                    transaction.Commit();
                    return Json(new { success = true, message = "Thêm thành công" }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    return Json(new { success = false, message = "Có lỗi xảy ra, xin vui lòng thử lại" }, JsonRequestBehavior.AllowGet);
                }
            }
        }
        [Auther(RightID = "202")]
        [Route("camera/su-co/edit")]
        [HttpPost]
        public ActionResult Edit(int incident_id, string department, string reason, int quan, int yearStart, int monthStart, int dayStart, int hourStart, int minuteStart, int yearEnd, int monthEnd, int dayEnd, int hourEnd, int minuteEnd)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Incident i = DBContext.Incidents.Find(incident_id);
                    Room d = DBContext.Rooms.Where(x => x.room_name.Equals(department)).FirstOrDefault();
                    DateTime start = new DateTime(yearStart, monthStart, dayStart, hourStart, minuteStart, 0);
                    DateTime end = new DateTime(yearEnd, monthEnd, dayEnd, hourEnd, minuteEnd, 0);
                    if (DateTime.Compare(start, end) >= 0)
                        return Json(new { success = false, message = "Bạn đã nhập ngày bắt đầu lớn hơn ngày kết thúc" }, JsonRequestBehavior.AllowGet);
                    i.room_id = d.room_id;
                    i.reason = reason;
                    i.start_time = start;
                    i.end_time = end;
                    i.incident_camera_quantity = quan;


                    DBContext.SaveChanges();
                    transaction.Commit();
                    return Json(new { success = true, message = "Chỉnh sửa thành công" }, JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    return Json(new { success = false, message = "Có lỗi xảy ra, xin vui lòng thử lại" }, JsonRequestBehavior.AllowGet);
                }
            }
        }

        [Auther(RightID = "202")]
        [Route("camera/su-co/update")]
        [HttpPost]
        public ActionResult Update(int incident_id, string reason, int year, int month, int day, int hour, int minute)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            Incident i = DBContext.Incidents.Find(incident_id);
            DateTime end = new DateTime(year, month, day, hour, minute, 0);
            if (DateTime.Compare(i.start_time, end) >= 0)
                return Json(new { success = false, message = "Bạn đã nhập ngày kết thúc nhỏ hơn ngày bắt đầu" }, JsonRequestBehavior.AllowGet);
            if (i == null)
            {
                return Json(new { success = false, message = "Có lỗi xảy ra, xin vui lòng thử lại" }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                i.reason = reason;
                i.end_time = new DateTime(year, month, day, hour, minute, 0);
                DBContext.SaveChanges();
                return Json(new { success = true, message = "Cập nhật thành công" }, JsonRequestBehavior.AllowGet);
            }
        }

        [Route("camera/su-co")]
        [HttpPost]
        public ActionResult Search(string depart, string room, string dateStart, string dateEnd)
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            DateTime dtStart = dateStart == "" ? DateTime.Parse("1800/1/1") : DateTime.ParseExact(dateStart, "dd/MM/yyyy", null);
            DateTime dtEnd = dateEnd == "" ? DateTime.MaxValue : DateTime.ParseExact(dateEnd, "dd/MM/yyyy", null).AddHours(23).AddMinutes(59);

            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            string query = @"select r.room_name, r.camera_available, ci.disk_status, r.disk_saveable, d.department_name, ci.reason, ci.incident_id, ci.start_time, ci.end_time, ci.incident_camera_quantity
                    from Room r join Department d on r.department_id = d.department_id
                    join Incident ci on r.room_id = ci.room_id where ci.start_time BETWEEN @dtStart AND @dtEnd AND ";

            if (!depart.Equals("") || !room.Equals("") || !(dateStart.Equals("") || dateEnd.Equals("")))
            {
                if (!depart.Equals("")) query += " d.department_name LIKE @depart AND ";
                if (!room.Equals("")) query += " r.room_name LIKE @room AND ";
            }
            query = query.Substring(0, query.Length - 5);
            List<IncidentDB> incidents = DBContext.Database.SqlQuery<IncidentDB>(query + " order by " + sortColumnName + " " + sortDirection + " OFFSET " + start + " ROWS FETCH NEXT " + length + " ROWS ONLY",
                new SqlParameter("depart", '%' + depart + '%'),
                new SqlParameter("room", '%' + room + '%'),
                new SqlParameter("dtStart", dtStart),
                new SqlParameter("dtEnd", dtEnd)).ToList();

            int totalrows = DBContext.Database.SqlQuery<int>(query.Replace("r.room_name, r.camera_available, ci.disk_status, r.disk_saveable, d.department_name, ci.reason, ci.incident_id, ci.start_time, ci.end_time, ci.incident_camera_quantity", "count(*)"),
                new SqlParameter("depart", '%' + depart + '%'),
                new SqlParameter("room", '%' + room + '%'),
                new SqlParameter("dtStart", dtStart),
                new SqlParameter("dtEnd", dtEnd)).FirstOrDefault();

            foreach (IncidentDB item in incidents)
            {
                item.stringStartTime = item.start_time.ToString("HH:mm dd/MM/yyyy");
                item.stringEndTime = item.getEndtime();
                item.stringDiffTime = item.getDiffTime();
                if (item.time_different.ToString() == "") item.editAble = item.incident_id + "^false";
                else item.editAble = item.incident_id + "^true";
            }
            return Json(new { success = true, data = incidents, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrows }, JsonRequestBehavior.AllowGet);
        }

        //[Route("camera/su-co/export")]
        //public void Export()
        //{
        //    string path = HostingEnvironment.MapPath("/excel/CDVT/download/su-co.xlsx");
        //    FileInfo file = new FileInfo(path);
        //    using (ExcelPackage excelPackage = new ExcelPackage(file))
        //    {
        //        ExcelWorkbook excelWorkbook = excelPackage.Workbook;
        //        ExcelWorksheet excelWorksheet = excelWorkbook.Worksheets.First();

        //        using (QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities())
        //        {
        //            var incidents = DBContext.Database.SqlQuery<IncidentDB>("SELECT e.Equipment_category_id, e.*, i.*, d.department_name FROM Incident i inner join Equipment e on e.equipmentId = i.equipmentId inner join Department d on d.department_id = i.department_id inner join Equipment_category ec on e.Equipment_category_id = ec.Equipment_category_id").ToList();
        //            int k = 0;
        //            for (int i = 5; i < incidents.Count + 5; i++)
        //            {
        //                excelWorksheet.Cells[i, 1].Value = (k + 1);
        //                excelWorksheet.Cells[i, 2].Value = incidents.ElementAt(k).Equipment_category_id;
        //                excelWorksheet.Cells[i, 3].Value = incidents.ElementAt(k).camera_name;
        //                excelWorksheet.Cells[i, 4].Value = incidents.ElementAt(k).mark_code;
        //                //excelWorksheet.Cells[i, 5].Value = incidents.ElementAt(k).camera_id;
        //                excelWorksheet.Cells[i, 6].Value = incidents.ElementAt(k).fabrication_number;
        //                excelWorksheet.Cells[i, 8].Value = incidents.ElementAt(k).room_name;
        //                excelWorksheet.Cells[i, 9].Value = incidents.ElementAt(k).start_time.ToString("HH:mm dd/MM/yyyy");
        //                excelWorksheet.Cells[i, 10].Value = incidents.ElementAt(k).getEndtime();
        //                excelWorksheet.Cells[i, 11].Value = incidents.ElementAt(k).getDiffTime();
        //                excelWorksheet.Cells[i, 12].Value = incidents.ElementAt(k).reason;
        //                k++;
        //            }
        //            string location = HostingEnvironment.MapPath("/excel/CDVT/download");
        //            excelPackage.SaveAs(new FileInfo(location + "/su-co_temp.xlsx"));
        //        }
        //    }
        //}

        [Route("camera/su-co/get")]
        [HttpPost]
        public ActionResult GetIncidentById(int incident_id)
        {
            try
            {
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                string sql = @"select d.department_name, ci.incident_camera_quantity, r.room_name, ci.start_time, ci.end_time, ci.reason, ci.incident_id, DATEDIFF(HOUR, ci.start_time, ci.end_time) as time_different
                            from Incident ci join Room r on ci.room_id = r.room_id
	                            join Department d on r.department_id = d.department_id
                            where ci.incident_id = @incident_id";
                IncidentDB incidents = DBContext.Database.SqlQuery<IncidentDB>(sql, new SqlParameter("incident_id", incident_id)).First();
                incidents.stringStartTime = incidents.start_time.ToString("HH:mm dd/MM/yyyy");
                DateTime.TryParse(incidents.end_time.ToString(), out DateTime temp);
                incidents.stringEndTime = temp.ToString("HH:mm dd/MM/yyyy");
                return Json(incidents);
            }
            catch (Exception)
            {
                return Json(new { success = false, message = "Có lỗi xảy ra\nxin vui lòng thử lại" }, JsonRequestBehavior.AllowGet);
            }
        }
    }

    public class CameraRoom : Room
    {
        public string department_name { get; set; }
    }

    public class IncidentDB : Incident
    {
        public int? time_different { get; set; }
        public string camera_name { get; set; }
        public string room_name { get; set; }
        public string Equipment_category_id { get; set; }
        public string mark_code { get; set; }
        public double fabrication_number { get; set; }
        public string stringStartTime { get; set; }
        public string stringEndTime { get; set; }
        public string stringDiffTime { get; set; }
        public string editAble { get; set; }
        public string department_name { get; set; }
        public int camera_available { get; set; }
        public int camera_quantity { get; set; }
        public int cameraerror { get; set; }
        public string getEndtime()
        {
            if (end_time == null) return "";
            else
            {
                DateTime.TryParse(end_time.ToString(), out DateTime temp);
                return temp.ToString("HH:mm dd/MM/yyyy");
            }
        }

        public string getDiffTime()
        {
            if (end_time == null) return "";
            else
            {
                DateTime.TryParse(end_time.ToString(), out DateTime temp);
                TimeSpan timespan = temp.Subtract(start_time);
                string output = "";
                if (timespan.Days != 0) output += timespan.Days + " ngày ";
                if (timespan.Hours != 0) output += timespan.Hours + " giờ ";
                if (timespan.Minutes != 0) output += timespan.Minutes + " phút ";
                return output;
            }
        }
    }
}