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

namespace QUANGHANHCORE.Controllers.CDVT.History
{
    public class LichsuController : Controller
    {
        [Auther(RightID = "7")]
        [Route("phong-cdvt/cap-nhat-hoat-dong")]
        public ActionResult Index()
        {
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            List<FuelDB> listEQ = db.Database.SqlQuery<FuelDB>("select equipmentId , equipment_name from Equipment ").ToList();
            List<Supply> listSupply = db.Supplies.Where(x => x.unit == "L" || x.unit == "kWh").ToList();

            ViewBag.listSupply = listSupply;
            ViewBag.listEQ = listEQ;
            return View("/Views/CDVT/History/Lichsu.cshtml");
        }

        //export acti
        [Route("phong-cdvt/cap-nhat-hoat-dong/export-acti")]
        [HttpPost]
        public void exportActi()
        {
            string path = HostingEnvironment.MapPath("/excel/CDVT/download/cap-nhat-hoat-dong.xlsx");
            FileInfo file = new FileInfo(path);
            using (ExcelPackage excelPackage = new ExcelPackage(file))
            {
                ExcelWorkbook excelWorkbook = excelPackage.Workbook;
                ExcelWorksheet excelWorksheet = excelWorkbook.Worksheets.First();

                using (QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities())
                {
                    var acti = DBContext.Database.SqlQuery<activitiesDB>("select a.[date], a.equipmentId, e.equipment_name , a.activity_name, a.hours_per_day, a.quantity"
                        + " from Activity a , Equipment e"
                        + " where e.equipmentId = a.equipmentId"
                        + " order by a.[date] desc ").ToList();
                    int k = 0;
                    for (int i = 1; i < acti.Count + 1; i++)
                    {
                        excelWorksheet.Cells[i, 1].Value = (k + 1);
                        excelWorksheet.Cells[i, 2].Value = acti.ElementAt(k).stringDate;
                        excelWorksheet.Cells[i, 3].Value = acti.ElementAt(k).equipmentid;
                        excelWorksheet.Cells[i, 4].Value = acti.ElementAt(k).equipment_name;
                        excelWorksheet.Cells[i, 5].Value = acti.ElementAt(k).activityname;
                        excelWorksheet.Cells[i, 6].Value = acti.ElementAt(k).hours_per_day;
                        excelWorksheet.Cells[i, 7].Value = acti.ElementAt(k).quantity;
                        k++;
                    }
                    string location = HostingEnvironment.MapPath("/excel/CDVT/download");
                    excelPackage.SaveAs(new FileInfo(location + "/cap-nhat-hoat-dong-temp.xlsx"));
                }
            }
        }

        //export fuel
        [Route("phong-cdvt/cap-nhat-hoat-dong/export-fuel")]
        [HttpPost]
        public void exportFuel()
        {
            string path = HostingEnvironment.MapPath("/excel/CDVT/download/cap-nhat-hoat-dong-nhien-lieu.xlsx");
            FileInfo file = new FileInfo(path);
            using (ExcelPackage excelPackage = new ExcelPackage(file))
            {
                ExcelWorkbook excelWorkbook = excelPackage.Workbook;
                ExcelWorksheet excelWorksheet = excelWorkbook.Worksheets.First();

                using (QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities())
                {
                    var fuel = DBContext.Database.SqlQuery<fuelDB>("select f.[date], f.equipmentId, e.equipment_name , s.supply_name , f.consumption_value , s.unit"
                        + " from Fuel_activities_consumption f, Equipment e , Supply s"
                        + " where e.equipmentId = f.equipmentId and s.supply_id = f.fuel_type"
                        + " order by f.[date] desc ").ToList();

                    int k = 0;
                    for (int i = 5; i < fuel.Count + 5; i++)
                    {
                        excelWorksheet.Cells[i, 1].Value = (k + 1);
                        excelWorksheet.Cells[i, 2].Value = fuel.ElementAt(k).stringDate;
                        excelWorksheet.Cells[i, 3].Value = fuel.ElementAt(k).equipmentId;
                        excelWorksheet.Cells[i, 4].Value = fuel.ElementAt(k).equipment_name;
                        excelWorksheet.Cells[i, 5].Value = fuel.ElementAt(k).fuel_type;
                        excelWorksheet.Cells[i, 6].Value = fuel.ElementAt(k).consumption_value;
                        excelWorksheet.Cells[i, 7].Value = fuel.ElementAt(k).unit;
                        k++;
                    }
                    string location = HostingEnvironment.MapPath("/excel/CDVT/download");
                    excelPackage.SaveAs(new FileInfo(location + "/cap-nhat-hoat-dong-nhien-lieu-temp.xlsx"));
                }
            }
        }

        //search acti
        [Route("phong-cdvt/cap-nhat-hoat-dong/search-acti")]
        [HttpPost]
        public ActionResult SearchActi(string equipmentId, string equipmentName, string timeFrom, string timeTo)
        {
            try
            {
                //validate timeFrom when input blank
                if (timeFrom.Trim() == "") {
                    timeFrom = "01/01/1900";
                }
                DateTime timeF = DateTime.ParseExact(timeFrom, "dd/MM/yyyy", CultureInfo.InvariantCulture);

                //validate timeTo when input blank
                DateTime timeT;
                if (timeTo.Trim() == "") {
                    timeT = DateTime.Now;
                } else
                {
                    timeT = DateTime.ParseExact(timeTo, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                }

                //Server Side Parameter
                int start = Convert.ToInt32(Request["start"]);
                int length = Convert.ToInt32(Request["length"]);
                string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
                string sortDirection = Request["order[0][dir]"];

                QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
                string query = "select a.[date], a.equipmentId, e.equipment_name , a.activityname, a.hours_per_day, a.quantity , a.[activityid]"
                    + " from Activity a ,Equipment e "
                    + " where e.equipmentId = a.equipmentId AND a.equipmentId LIKE @equipmentId "
                    + " AND e.equipment_name LIKE @equipment_name AND a.[date] between @timeFrom AND @timeTo ";

                List<activitiesDB> listActi = DBContext.Database.SqlQuery<activitiesDB>(query,
                    new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                    new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                    new SqlParameter("timeFrom", timeF),
                    new SqlParameter("timeTo", timeT)
                    ).ToList();

                int totalrows = listActi.Count;
                int totalrowsafterfiltering = listActi.Count;
                //sorting
                listActi = listActi.OrderBy(sortColumnName + " " + sortDirection).ToList<activitiesDB>();
                //paging
                listActi = listActi.Skip(start).Take(length).ToList<activitiesDB>();
                foreach (activitiesDB item in listActi)
                {
                    item.stringDate = item.date.ToString("dd/MM/yyyy");
                }
                ViewBag.ListEQ = listActi;
                return Json(new { success = true, data = listActi, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        //search fuel
        [Route("phong-cdvt/cap-nhat-hoat-dong/search-fuel")]
        [HttpPost]
        public ActionResult SearchFuel(string equipmentId, string equipmentName, string timeFrom, string timeTo)
        {
            try
            {
                //validate timeFrom when input blank
                if (timeFrom.Trim() == "")
                {
                    timeFrom = "01/01/1900";
                }
                DateTime timeF = DateTime.ParseExact(timeFrom, "dd/MM/yyyy", CultureInfo.InvariantCulture);

                //validate timeTo when input blank
                DateTime timeT;
                if (timeTo.Trim() == "")
                {
                    timeT = DateTime.Now;
                }
                else
                {
                    timeT = DateTime.ParseExact(timeTo, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                }

                //Server Side Parameter
                int start = Convert.ToInt32(Request["start"]);
                int length = Convert.ToInt32(Request["length"]);
                string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
                string sortDirection = Request["order[0][dir]"];

                QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
                string query = "select f.fuelId, f.[date], f.equipmentId, e.equipment_name , s.supply_name , f.consumption_value , s.unit"
                    + " from Fuel_activities_consumption f, Equipment e , Supply s "
                    + "where e.equipmentId = f.equipmentId and s.supply_id = f.fuel_type AND f.equipmentId LIKE @equipmentId "
                    + " AND e.equipment_name LIKE @equipment_name AND f.[date] between @timeFrom AND @timeTo order by f.[date] desc";

                List<fuelDB> listFuelConsump = DBContext.Database.SqlQuery<fuelDB>(query,
                    new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                    new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                    new SqlParameter("timeFrom", timeF),
                    new SqlParameter("timeTo", timeT)
                    ).ToList();

                int totalrows = listFuelConsump.Count;
                int totalrowsafterfiltering = listFuelConsump.Count;
                //sorting
                listFuelConsump = listFuelConsump.OrderBy(sortColumnName + " " + sortDirection).ToList<fuelDB>();

                //paging
                listFuelConsump = listFuelConsump.Skip(start).Take(length).ToList<fuelDB>();

                foreach (fuelDB item in listFuelConsump)
                {
                    item.stringDate = item.date.ToString("dd/MM/yyyy");
                }

                return Json(new { success = true, data = listFuelConsump, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        //get key of activity to edit
        [Route("phong-cdvt/cap-nhat-hoat-dong/getkeydata-acti")]
        [HttpPost]
        public ActionResult getActivityID(int activityid)
        {
            try
            {
                QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
                activitiesDB activity = DBContext.Database.SqlQuery<activitiesDB>("select a.activityid,a.[date], a.equipmentId, e.equipment_name , a.activityname, a.hours_per_day, a.quantity " +
                    " from Activity a ,Equipment e  " +
                    " where e.equipmentId = a.equipmentId  " +
                    " and activityid = @activityid ", new SqlParameter("activityid", activityid)
                    ).First();
                activity.stringDate = activity.date.ToString("dd/MM/yyyy");

                return Json(activity);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        //get key of fuel to edit
        [Route("phong-cdvt/cap-nhat-hoat-dong/getkeydata-fuel")]
        [HttpPost]
        public ActionResult getFuelID(int fuelid)
        {
            try
            {
                QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
                fuelDB activity = DBContext.Database.SqlQuery<fuelDB>(
                    "select f.fuelId, f.[date], f.equipmentId, f.fuel_type, e.equipment_name , s.supply_name , f.consumption_value , s.unit " +
                    " from Fuel_activities_consumption f, Equipment e , Supply s" +
                    " where e.equipmentId = f.equipmentId and s.supply_id = f.fuel_type and f.fuelId = @fuelid " +
                    " order by f.[date] desc  ", new SqlParameter("fuelid", fuelid)).First();
                activity.stringDate = activity.date.ToString("dd/MM/yyyy");

                return Json(activity);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        //edit activity
        [Auther(RightID = "9")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/edit-acti")]
        [HttpPost]
        public ActionResult Edit(float quantity, string activity_name, int hours_per_day, string date1, String equipmentId, int activityid)
        {
            QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Equipment i = DBContext.Equipments.Find(equipmentId);

                    //Activity q = DBContext.Activities.Where(x => x.activityid == activityid).SingleOrDefault();
                    Activity q = DBContext.Activities.Find(activityid);
                    Activity fixBug = DBContext.Activities.Find(activityid);
                    string oldEq = fixBug.equipmentid;
                    q.equipmentid = i.equipmentId;

                    q.date = DateTime.ParseExact(date1, "dd/MM/yyyy", null);
                    q.hours_per_day = hours_per_day;
                    q.quantity = quantity;
                    q.activityname = activity_name;
                    q.activityid = activityid;
                    DBContext.SaveChanges();

                    //after update activity.
                    //get old and new.
                    //string oldEq = q.equipmentid;
                    string newEq = equipmentId;

                    //update old:
                    double hoursOld = DBContext.Database.SqlQuery<double>("" +
                        " select sum(hours_per_day) as total  from Activity " +
                        " where equipmentid = @equipmentId"
                        , new SqlParameter("equipmentId", oldEq)).First();
                    int totalHourOld = (int) hoursOld;
                    DBContext.Database.ExecuteSqlCommand("update Equipment set total_operating_hours = @hour where equipmentId = @equipmentId",
                        new SqlParameter("hour", totalHourOld),
                        new SqlParameter("equipmentId", oldEq));

                    //update new:
                    double hoursNew = DBContext.Database.SqlQuery<double>("" +
                        " select sum(hours_per_day) as total  from Activity " +
                        " where equipmentid = @equipmentId"
                        , new SqlParameter("equipmentId", newEq)).First();
                    int totalHourNew = (int)hoursNew;
                    DBContext.Database.ExecuteSqlCommand("update Equipment set total_operating_hours = @hour where equipmentId = @equipmentId",
                        new SqlParameter("hour", totalHourNew),
                        new SqlParameter("equipmentId", newEq));

                    transaction.Commit();
                    return new HttpStatusCodeResult(201);
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    string output = "";
                    if (DBContext.Database.SqlQuery<Equipment>("SELECT * FROM Equipment WHERE equipmentId = N'" + equipmentId + "'").Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";

                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        //edit fuel
        [Auther(RightID = "9")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/edit-fuel")]
        [HttpPost]
        public ActionResult EditFuel(int consumption_value, string fuel_type, string date1, String equipmentId, int fuelid)
        {
            QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Equipment i = DBContext.Equipments.Find(equipmentId);
                    Supply s = DBContext.Database.SqlQuery<Supply>("select * from Supply where supply_id=@supply_id and (unit = 'L' or unit = 'kWh')", new SqlParameter("supply_id", fuel_type)).First();
                    fuelDB f = DBContext.Database.SqlQuery<fuelDB>("select * from Fuel_activities_consumption where fuelid=@fuelid", new SqlParameter("fuelid", fuelid)).First();
                    string date = DateTime.ParseExact(date1, "dd/MM/yyyy", null).ToString("MM-dd-yyyy");
                    Supply_tieuhao supply = DBContext.Supply_tieuhao.Where(x => x.supplyid == fuel_type && x.departmentid == i.department_id && x.date.Month == DateTime.Parse(date).Month && x.date.Year == DateTime.Parse(date).Year).First();
                    DBContext.Database.ExecuteSqlCommand("UPDATE Fuel_activities_consumption  set fuel_type =@fuel_type, [date] =@date1, consumption_value = @consumption_value, equipmentId = @equipmentId where fuelId= @fuelid",
                        new SqlParameter("fuel_type", fuel_type), new SqlParameter("date1", DateTime.ParseExact(date1, "dd/MM/yyyy", null)), new SqlParameter("consumption_value", consumption_value), new SqlParameter("equipmentId", equipmentId), new SqlParameter("fuelId", fuelid));

                    //get old and new.
                    string oldFuelType = f.fuel_type;
                    string newFuelType = fuel_type;
                    string old_departmentId = DBContext.Database.SqlQuery<string>("" +
                        "select department_id from Equipment where equipmentId = " +
                        " (select equipmentId from Fuel_activities_consumption where fuelid=@fuelid)"
                        , new SqlParameter("fuelid", fuelid)).First();
                    string new_departmentId = i.department_id;
                    string old_day = f.date.ToString("MM-dd-yyyy");
                    string new_day = DateTime.ParseExact(date1, "dd/MM/yyyy", null).ToString("MM-dd-yyyy");

                    //get update amount of old.
                    int update_amount_old = DBContext.Database.SqlQuery<int>("" +
                        " select sum(f.consumption_value) " +
                        " from Fuel_activities_consumption f, Equipment e , Supply s " +
                        " where e.equipmentId = f.equipmentId and s.supply_id = f.fuel_type " +
                        " and MONTH(date) = MONTH(@oldday) " +
                         " and Year(date) = Year(@oldday) " +
                        " and supply_id = @oldFuelType " +
                        " and department_id = @oldDepartmentId "
                        , new SqlParameter("oldday", old_day)
                        , new SqlParameter("oldFuelType", oldFuelType)
                        , new SqlParameter("oldDepartmentId", old_departmentId)).First();


                    DBContext.Database.ExecuteSqlCommand("" +
                        " update Supply_tieuhao set used=@old" +
                        " where MONTH(date) = MONTH(@oldday) " +
                         " and Year(date) = Year(@oldday) " +
                        " and supplyid = @oldFuelType " +
                        " and departmentid = @oldDepartmentId "
                        , new SqlParameter("old", update_amount_old)
                        , new SqlParameter("oldday", old_day)
                        , new SqlParameter("oldFuelType", oldFuelType)
                        , new SqlParameter("oldDepartmentId", old_departmentId));

                    //get update amount of new.
                    int update_amount_new = DBContext.Database.SqlQuery<int>("" +
                        " select sum(f.consumption_value) " +
                        " from Fuel_activities_consumption f, Equipment e , Supply s " +
                        " where e.equipmentId = f.equipmentId and s.supply_id = f.fuel_type " +
                        " and MONTH(date) = MONTH(@newday) " +
                        " and Year(date) = Year(@newday) " +
                        " and supply_id = @newFuelType " +
                        " and department_id = @newDepartmentId "
                        , new SqlParameter("newday", new_day)
                        , new SqlParameter("newFuelType", newFuelType)
                        , new SqlParameter("newDepartmentId", new_departmentId)).First();

                    DBContext.Database.ExecuteSqlCommand("" +
                        " update Supply_tieuhao set used=@new" +
                        " where MONTH(date) = MONTH(@newday) " +
                        " and Year(date) = Year(@newday) " +
                        " and supplyid = @newFuelType " +
                        " and departmentid = @newDepartmentId "
                        , new SqlParameter("new", update_amount_new)
                        , new SqlParameter("newday", new_day)
                        , new SqlParameter("newFuelType", newFuelType)
                        , new SqlParameter("newDepartmentId", new_departmentId));

                    DBContext.SaveChanges();
                    transaction.Commit();
                    return new HttpStatusCodeResult(201);
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    string output = "";
                    if (DBContext.Database.SqlQuery<Equipment>("SELECT * FROM Equipment WHERE equipmentId = N'" + equipmentId + "'").Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";
                    if (DBContext.Supplies.Where(x => (x.supply_id == fuel_type) && (x.unit == "L" || x.unit == "kWh")).Count() == 0)
                        output += "Mã Nhiên Liệu không tồn tại\n";
                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        //auto get EquipmentName after entering EquipmentID.
        [Route("phong-cdvt/cap-nhat-hoat-dong/getEQname")]
        [HttpPost]
        public JsonResult returnname(string id)
        {
            try
            {
                QUANGHANHABCEntities db = new QUANGHANHABCEntities();
                var equipment = db.Equipments.Where(x => x.equipmentId == id).SingleOrDefault();
                return Json(equipment.equipment_name, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("Mã thiết bị không tồn tại", JsonRequestBehavior.AllowGet);
            }
        }

        //Add activity
        [Auther(RightID = "8")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/add-acti")]
        [HttpPost]
        public ActionResult AddActivity(float quantity, string activity_name, int hours_per_day, string date1, String equipmentId)
        {
            string output = "";
            //fix bug negative number.
            if (quantity <= 0 || hours_per_day <= 0 || hours_per_day > 24)
            {
                return new HttpStatusCodeResult(400);
            }

            //add function
            QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
            Activity a = new Activity();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Equipment e = DBContext.Equipments.Find(equipmentId);
                    a.equipmentid = e.equipmentId;
                    //fix bug
                    a.date = DateTime.ParseExact(date1, "dd/MM/yyyy", null);
                    a.quantity = quantity;
                    a.hours_per_day = hours_per_day;
                    a.activityname = activity_name;

                    DBContext.Activities.Add(a);
                    DBContext.SaveChanges();

                    //update total_hour
                    int count = DBContext.Database.SqlQuery<int>("select total_operating_hours from Equipment where equipmentid = @equipmentId", new SqlParameter("equipmentId", equipmentId)).First();
                    if (count == 0)
                    {
                        //add first
                        DBContext.Database.ExecuteSqlCommand("update Equipment set total_operating_hours = @hour where equipmentId = @equipmentId",
                            new SqlParameter("hour", hours_per_day),
                            new SqlParameter("equipmentId", equipmentId));
                    }
                    else
                    {
                        //count total hours.
                        double hours = DBContext.Database.SqlQuery<double>("" +
                        " select sum(hours_per_day) as total  from Activity " +
                        " where equipmentid = @equipmentId"
                        , new SqlParameter("equipmentId", equipmentId)).First();
                        //fix bug
                        int totalHour = (int)hours;

                        DBContext.Database.ExecuteSqlCommand("update Equipment set total_operating_hours = @hour where equipmentId = @equipmentId",
                            new SqlParameter("hour", totalHour),
                            new SqlParameter("equipmentId", equipmentId));
                    }

                    transaction.Commit();
                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    if (DBContext.Database.SqlQuery<Equipment>("SELECT * FROM Equipment WHERE equipmentId = N'" + equipmentId + "'").Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";

                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        [Route("phong-cdvt/cap-nhat-hoat-dong/returnsupplyName")]
        [HttpPost]
        public JsonResult returnsupplyname(String fuel_type)
        {
            try
            {
                QUANGHANHABCEntities db = new QUANGHANHABCEntities();
                var equipment = db.Supplies.Where(x => (x.supply_id == fuel_type) && (x.unit == "L" || x.unit == "kWh")).SingleOrDefault();
                String item = equipment.supply_name + "^" + equipment.unit;
                return Json(item, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("Mã nhien lieu không tồn tại", JsonRequestBehavior.AllowGet);
            }
        }

        //Add fuel
        [Auther(RightID = "8")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/add-fuel")]
        [HttpPost]
        public ActionResult AddFuel(int consumption_value, string fuel_type, string date1, String equipmentId)
        {
            string output = "";

            QUANGHANHABCEntities DBContext = new QUANGHANHABCEntities();
            fuelDB f = new fuelDB();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Equipment e = DBContext.Equipments.Find(equipmentId);
                    Supply s = DBContext.Database.SqlQuery<Supply>("select * from Supply where supply_id='" + fuel_type + "'").First();
                    DateTime dateTime = DateTime.ParseExact(date1, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                    Supply_tieuhao supp = DBContext.Supply_tieuhao.Where(x => x.supplyid == fuel_type && x.departmentid == e.department_id && x.date.Month == dateTime.Month && x.date.Year == dateTime.Year).First();
                    if (e.equipmentId == equipmentId && s.supply_id == fuel_type && f.date.Equals(date1))
                    {
                        f.consumption_value = f.consumption_value + consumption_value;
                    }
                    else
                    {
                        Fuel_activities_consumption fuel_Activities_Consumption = new Fuel_activities_consumption()
                        {
                            consumption_value = consumption_value,
                            equipmentId = equipmentId,
                            fuel_type = fuel_type,
                            date = DateTime.ParseExact(date1, "dd/MM/yyyy", null)
                        };
                        DBContext.Fuel_activities_consumption.Add(fuel_Activities_Consumption);
                        DBContext.SaveChanges();
                    }

                    //Update : 
                    //get new
                    string newFuelType = fuel_type;
                    string new_departmentId = e.department_id;
                    string new_day = DateTime.ParseExact(date1, "dd/MM/yyyy", null).ToString("MM-dd-yyyy");

                    //get update amount of new.
                    int update_amount_new = DBContext.Database.SqlQuery<int>("" +
                        " select sum(f.consumption_value) " +
                        " from Fuel_activities_consumption f, Equipment e , Supply s " +
                        " where e.equipmentId = f.equipmentId and s.supply_id = f.fuel_type " +
                        " and MONTH(date) = MONTH(@newday) " +
                        " and YEAR(date) = YEAR(@newday) " +
                        " and supply_id = @newFuelType " +
                        " and department_id = @newDepartmentId "
                        , new SqlParameter("newday", new_day)
                        , new SqlParameter("newFuelType", newFuelType)
                        , new SqlParameter("newDepartmentId", new_departmentId)).First();

                    DBContext.Database.ExecuteSqlCommand("" +
                        " update Supply_tieuhao set used=@new" +
                        " where MONTH(date) = MONTH(@newday) " +
                        " and YEAR(date) = YEAR(@newday) " +
                        " and supplyid = @newFuelType " +
                        " and departmentid = @newDepartmentId "
                        , new SqlParameter("new", update_amount_new)
                        , new SqlParameter("newday", new_day)
                        , new SqlParameter("newFuelType", newFuelType)
                        , new SqlParameter("newDepartmentId", new_departmentId));

                    DBContext.SaveChanges();
                    transaction.Commit();
                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    if (DBContext.Equipments.Where(x => x.equipmentId == equipmentId).Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";

                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }
    }

    public class activitiesDB : Activity
    {
        public string stringDate { get; set; }
        public String equipment_name { get; set; }

    }

    public class fuelDB : Fuel_activities_consumption
    {
        public String IDitem { get; set; }
        public string stringDate { get; set; }
        public String equipment_name { get; set; }
        public String unit { get; set; }
        public String supply_name { get; set; }
    }
}