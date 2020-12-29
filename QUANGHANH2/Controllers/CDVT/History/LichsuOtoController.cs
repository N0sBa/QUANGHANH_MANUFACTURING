﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Web.Routing;
using QUANGHANH2.Models;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq.Dynamic;
using System.Globalization;
using QUANGHANH2.SupportClass;

namespace QUANGHANHCORE.Controllers.CDVT.History
{
    public class LichsuOtoController : Controller
    {
        [Auther(RightID = "13,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong")]
        [HttpGet]
        public ActionResult Index()
        {
            // only taken by each department.
            string department_id = Session["departID"].ToString();
            QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
            List<Supply> listSupply; List<FuelDB> listEQ;
            if (Session["departName"].ToString().Contains("Phân xưởng"))
            {
                listSupply = db.Supplies.ToList();
                listEQ = db.Database.SqlQuery<FuelDB>(@"select equipment_id , equipment_name from 
                   (select distinct e.equipment_id, e.equipment_name ,e.department_id from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                    on ea.Equipment_category_id = e.Equipment_category_id where 
                   ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') as t
                   where department_id = @department_id", new SqlParameter("department_id", department_id)
               ).ToList();
            }
            else
            {
                listSupply = db.Supplies.ToList();
                listEQ = db.Database.SqlQuery<FuelDB>(@"select equipment_id , equipment_name from 
                   (select distinct e.equipment_id, e.equipment_name ,e.department_id from Equipment.Equipment e inner join Equipment.CategoryAttribute ea
                    on ea.Equipment_category_id = e.Equipment_category_id where 
                   ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') as t "
               ).ToList();
            }

            ViewBag.listSupply = listSupply;
            ViewBag.listEQ = listEQ;
            return View("/Views/CDVT/History/LichsuOto.cshtml");
        }

        //search acti
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/search-acti")]
        [HttpPost]
        public ActionResult SearchActi(string equipmentId, string equipmentName, string timeFrom, string timeTo)
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

                // only taken by each department.
                string department_id = Session["departID"].ToString();
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                string base_select = "select q.[date], q.equipment_id, t.equipment_name, q.activity_name, q.hours_per_day, q.quantity,q.activity_id";
                string from_clause = @" from (select distinct e.equipment_id, e.equipment_name ,e.department_id 
                         from Equipment.Equipment e inner join Equipment.CategoryAttribute ea  
                         on ea.Equipment_category_id = e.Equipment_category_id and  
                         ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = 'So may') 
                         as t inner join Equipment.Activity q on t.equipment_id = q.equipment_id 
                         where q.equipment_id LIKE @equipmentId
                         AND t.equipment_name LIKE @equipment_name AND q.[date] between @timeFrom AND @timeTo ";
                if (Session["departName"].ToString().Contains("Phân xưởng"))
                {
                    from_clause += " ANd t.department_id = @department_id";
                }
                List<activitiesDB> listActi = DBContext.Database.SqlQuery<activitiesDB>(base_select + from_clause + " order by " + sortColumnName + " " + sortDirection + " OFFSET " + start + " ROWS FETCH NEXT " + length + " ROWS ONLY",
                        new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                        new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                        new SqlParameter("timeFrom", timeF),
                        new SqlParameter("timeTo", timeT),
                        new SqlParameter("department_id", department_id)
                        ).ToList();
                int totalrows = DBContext.Database.SqlQuery<int>("select count(q.[date])" + from_clause,
                        new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                        new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                        new SqlParameter("timeFrom", timeF),
                        new SqlParameter("timeTo", timeT),
                        new SqlParameter("department_id", department_id)
                        ).FirstOrDefault();

                return Json(new { success = true, data = listActi, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrows }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        //search fuel
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/search-fuel")]
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

                // only taken by each department.
                string department_id = Session["departID"].ToString();
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                string base_select = "select f.[date], f.equipment_id, t.equipment_name, f.fuel_type, f.consumption_value, s.unit,s.supply_name,fuel_id";
                string from_clause = @" from(select distinct e.equipment_id, e.equipment_name ,e.department_id
                         from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                         on ea.Equipment_category_id = e.Equipment_category_id where  
                         ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = 'Số máy') 
                         as t join Equipment.FuelActivitiesConsumption f  
                         on t.equipment_id = f.equipment_id 
                         join Supply.Supply s on s.supply_id = f.fuel_type 
                         where f.equipment_id LIKE @equipmentId 
                         AND t.equipment_name LIKE @equipment_name AND f.[date] between @timeFrom AND @timeTo ";
                if (Session["departName"].ToString().Contains("Phân xưởng"))
                {
                    from_clause += " AND t.department_id = @department_id ";
                }
                List<fuelDB> listFuelConsump = DBContext.Database.SqlQuery<fuelDB>(base_select + from_clause + " order by " + sortColumnName + " " + sortDirection + " OFFSET " + start + " ROWS FETCH NEXT " + length + " ROWS ONLY",
                       new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                       new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                       new SqlParameter("timeFrom", timeF),
                       new SqlParameter("timeTo", timeT),
                       new SqlParameter("department_id", department_id)
                       ).ToList();
                int totalrows = DBContext.Database.SqlQuery<int>("select count(f.[date])" + from_clause,
                       new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                       new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                       new SqlParameter("timeFrom", timeF),
                       new SqlParameter("timeTo", timeT),
                       new SqlParameter("department_id", department_id)
                       ).FirstOrDefault();

                return Json(new { success = true, data = listFuelConsump, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrows }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        [Route("phong-cdvt/oto/cap-nhat-hoat-dong")]
        [HttpPost]
        public ActionResult GetData()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            //
            using (QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities())
            {
                List<ActivityDB> incidents = db.Database.SqlQuery<ActivityDB>(@"select q.[date], q.equipment_id, t.equipment_name, q.activity_name, q.hours_per_day, q.quantity,q.activity_id
                    from (select distinct e.equipment_id, e.equipment_name
                    from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                    on ea.Equipment_category_id = e.Equipment_category_id and 
                    ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = 'Số máy') 
                    as t inner join Equipment.Activity q on t.equipment_id = q.equipment_id order by q.[date] desc").ToList();


                int totalrows = incidents.Count;
                int totalrowsafterfiltering = incidents.Count;
                //sorting
                incidents = incidents.OrderBy(sortColumnName + " " + sortDirection).ToList<ActivityDB>();
                //paging
                incidents = incidents.Skip(start).Take(length).ToList<ActivityDB>();

                return Json(new { success = true, data = incidents, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);
            }
        }

        public void EditSupply_duphong(String supplyid, int quantity)
        {
            QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
            RepairRegularly1 duphong = db.RepairRegularly1.Where(x => x.supply_id == supplyid).FirstOrDefault();
            if (duphong != null)
            {
                duphong.quantity -= quantity;
                db.Entry(duphong).State = EntityState.Modified;
            }
            db.SaveChanges();
        }
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/getdataactivity")]
        [HttpPost]
        public ActionResult getActivityID(int activityid)
        {
            try
            {
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                ActivityDB activity = DBContext.Database.SqlQuery<ActivityDB>(
                    @"select q.[date], q.equipment_Id, t.equipment_name, q.activity_name, q.hours_per_day, q.quantity,q.activity_id 
                    from (select distinct e.equipment_Id, e.equipment_name 
                    from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                    on ea.Equipment_category_id = e.Equipment_category_id and 
                    ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = 'Số máy')
                    as t inner join Equipment.Activity q on t.equipment_Id = q.equipment_Id where activity_id=@activity_id", new SqlParameter("activity_id", activityid)
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

        [Auther(RightID = "15,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/editoto")]
        [HttpPost]
        public ActionResult Edit(float quantity, string activity_name, int hours_per_day, string date1, String equipmentId, int activityid)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {

                try
                {
                    // only taken by each department.
                    string department_id = Session["departID"].ToString();
                    Equipment i = DBContext.Equipments.Find(equipmentId);

                    //check vehicle eq exist in department
                    FuelDB f = DBContext.Database.SqlQuery<FuelDB>(@"select equipment_id , equipment_name from 
                         (select distinct e.equipment_id, e.equipment_name ,e.department_id from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                          on ea.Equipment_category_id = e.Equipment_category_id where 
                         ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') as t 
                         where department_id = @department_id
                         AND equipment_id = @equipmentId "
                        , new SqlParameter("department_id", department_id)
                        , new SqlParameter("equipmentId", equipmentId)
                    ).First();

                    //Activity q = DBContext.Activities.Where(x => x.activityid == activityid).SingleOrDefault();
                    Activity q = DBContext.Activities.Find(activityid);
                    Activity fixBug = DBContext.Activities.Find(activityid);
                    string oldEq = fixBug.equipment_id;
                    q.equipment_id = i.equipment_id;
                    string date = DateTime.ParseExact(date1, "dd/MM/yyyy", null).ToString("MM-dd-yyyy");
                    q.date = DateTime.Parse(date);
                    q.hours_per_day = hours_per_day;
                    q.quantity = quantity;
                    q.activity_name = activity_name;
                    q.activity_id = activityid;
                    DBContext.Entry(q).State = EntityState.Modified;
                    DBContext.SaveChanges();

                    //after update activity.
                    //get old and new.
                    //string oldEq = q.equipmentid;
                    string newEq = equipmentId;

                    //update old:
                    double hoursOld = DBContext.Database.SqlQuery<double>(
                        @" select case when sum(hours_per_day) is null then 0 else sum(hours_per_day) end as total  from Equipment.Activity 
                        where equipment_id = @equipmentId"
                        , new SqlParameter("", oldEq)).First();
                    int totalHourOld = (int)hoursOld;
                    DBContext.Database.ExecuteSqlCommand("update Equipment.Equipment set total_operating_hours = @hour where equipment_id = @equipmentId",
                        new SqlParameter("hour", totalHourOld),
                        new SqlParameter("equipmentId", oldEq));

                    //update new:
                    double hoursNew = DBContext.Database.SqlQuery<double>("" +
                        " select sum(hours_per_day) as total  from Equipment.Activity " +
                        " where equipment_id = @equipmentId"
                        , new SqlParameter("equipmentId", newEq)).First();
                    int totalHourNew = (int)hoursNew;
                    DBContext.Database.ExecuteSqlCommand("update Equipment.Equipment set total_operating_hours = @hour where equipment_id = @equipmentId",
                        new SqlParameter("hour", totalHourNew),
                        new SqlParameter("equipmentId", newEq));

                    transaction.Commit();
                    return new HttpStatusCodeResult(201);
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    string output = "";
                    if (DBContext.Database.SqlQuery<Equipment>("SELECT * FROM Equipment.Equipment WHERE equipment_id = N'" + equipmentId + "'").Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";

                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        [Auther(RightID = "14,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/addactivity")]
        [HttpPost]
        public ActionResult AddActivity(float quantity, string activity_name, int hours_per_day, string date1, String equipmentId)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            Activity a = new Activity();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                string output = "";
                //fix bug negative number.
                if (quantity < 0 || hours_per_day <= 0)
                {
                    return new HttpStatusCodeResult(400);
                }
                try
                {
                    // only taken by each department.
                    string department_id = Session["departID"].ToString();

                    //note : need to be fixed
                    Equipment e = DBContext.Equipments.Find(equipmentId);
                    //check vehicle eq exist in department
                    FuelDB f = DBContext.Database.SqlQuery<FuelDB>(@"select equipment_id , equipment_name from 
                         (select distinct e.equipment_id, e.equipment_name ,e.department_id from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                          on ea.Equipment_category_id = e.Equipment_category_id where
                         ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') as t 
                         where department_id = @department_id
                         AND equipment_id = @equipmentId "
                        , new SqlParameter("department_id", department_id)
                        , new SqlParameter("equipmentId", equipmentId)
                    ).First();

                    a.equipment_id = e.equipment_id;
                    string date = DateTime.ParseExact(date1, "dd/MM/yyyy", null).ToString("yyyy-MM-dd");
                    a.date = DateTime.Parse(date);
                    a.quantity = quantity;
                    a.hours_per_day = hours_per_day;
                    a.activity_name = activity_name;

                    DBContext.Activities.Add(a);
                    DBContext.SaveChanges();

                    //update total_hour
                    int count = DBContext.Database.SqlQuery<int>("select total_operating_hours from Equipment.Equipment where equipment_id = @equipmentId", new SqlParameter("equipmentId", equipmentId)).First();
                    if (count == 0)
                    {
                        //add first
                        DBContext.Database.ExecuteSqlCommand("update Equipment.Equipment set total_operating_hours = @hour where equipment_id = @equipmentId",
                            new SqlParameter("hour", hours_per_day),
                            new SqlParameter("equipmentId", equipmentId));
                    }
                    else
                    {
                        //count total hours.
                        double hours = DBContext.Database.SqlQuery<double>("" +
                        " select sum(hours_per_day) as total  from Equipment.Activity " +
                        " where equipment_id = @equipmentId"
                        , new SqlParameter("equipmentId", equipmentId)).First();
                        //fix bug
                        int totalHour = (int)hours;

                        DBContext.Database.ExecuteSqlCommand("update Equipment.Equipment set total_operating_hours = @hour where equipment_id = @equipmentId",
                            new SqlParameter("hour", totalHour),
                            new SqlParameter("equipmentId", equipmentId));
                    }
                    transaction.Commit();
                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    if (DBContext.Database.SqlQuery<Equipment>("SELECT * FROM Equipment.Equipment WHERE equipment_id = N'" + equipmentId + "'").Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";

                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/nhienlieu")]
        [HttpPost]
        public ActionResult GetNhienLieu()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            //
            using (QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities())
            {

                List<FuelDB> nhienlieu = db.Database.SqlQuery<FuelDB>(@"select f.[date],f.equipment_id, t.equipment_name, f.fuel_type, f.consumption_value, s.unit,s.supply_name,fuel_id from
                    (select distinct e.equipment_id, e.equipment_name from Equipment.Equipment e inner 
                    join Equipment.CategoryAttribute ea 
                    on ea.Equipment_category_id = e.Equipment_category_id where 
                    ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') 
                    as t join Equipment.FuelActivitiesConsumption f 
                    on t.equipment_id = f.equipment_id 
                    join Supply.Supply s on s.supply_id = f.fuel_type 
                    order by f.[date] ASC").ToList();

                int totalrows = nhienlieu.Count;
                int totalrowsafterfiltering = nhienlieu.Count;
                //sorting
                nhienlieu = nhienlieu.OrderBy(sortColumnName + " " + sortDirection).ToList<FuelDB>();
                //paging
                nhienlieu = nhienlieu.Skip(start).Take(length).ToList<FuelDB>();

                return Json(new { success = true, data = nhienlieu, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);
            }
        }

        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/getFuel")]
        [HttpPost]
        public ActionResult getFuelID(int fuelid)
        {
            //DateTime date = DateTime.Parse(date1);
            try
            {
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                FuelDB activity = DBContext.Database.SqlQuery<FuelDB>(@"select f.[date], f.equipment_id, t.equipment_name, f.fuel_type, f.consumption_value, s.unit,s.supply_name,fuel_id from(select distinct e.equipment_id, e.equipment_name
                                                 from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                                                  on ea.Equipment_category_id = e.Equipment_category_id where 
                                                  ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = 'Số máy')
                                                  as t join Equipment.FuelActivitiesConsumption f 
                                                  on t.equipment_id = f.equipment_id 
                                                   join Supply.Supply s on s.supply_id = f.fuel_type where fuel_id=@fuelid", new SqlParameter("fuelid", fuelid)).First();
                activity.stringDate = activity.date.ToString("dd/MM/yyyy");
                return Json(activity);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/returnEquipmentName")]
        [HttpPost]
        public JsonResult returnname(string id)
        {
            try
            {
                QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
                var equipment = db.Database.SqlQuery<FuelDB>(@"select equipment_name from 
                     (select distinct e.equipment_id, e.equipment_name from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                     on ea.Equipment_category_id = e.Equipment_category_id where 
                     ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') as t 
                     where equipment_id = @id", new SqlParameter("id", id)).SingleOrDefault();

                return Json(equipment.equipment_name, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("Mã thiết bị cơ giới không tồn tại", JsonRequestBehavior.AllowGet);
            }

        }

        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/returnsupplyName")]
        [HttpPost]
        public JsonResult returnsupplyname(String fuel_type)
        {
            try
            {
                QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
                var equipment = db.Supplies.Where(x => (x.supply_id == fuel_type)).SingleOrDefault();
                String item = equipment.supply_name + "^" + equipment.unit;
                return Json(item, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json("Mã nhien lieu không tồn tại", JsonRequestBehavior.AllowGet);
            }

        }

        [Auther(RightID = "15,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/edit-fuel")]
        [HttpPost]
        public ActionResult EditFuel(int consumption_value, string fuel_type, string date1, String equipmentId, int fuelid)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    // only taken by each department.
                    string department_id = Session["departID"].ToString();

                    //update 
                    Equipment i = DBContext.Equipments.Find(equipmentId);
                    //check vehicle eq exist in department
                    FuelDB check = DBContext.Database.SqlQuery<FuelDB>(@"select equipment_id , equipment_name from 
                         (select distinct e.equipment_id, e.equipment_name ,e.department_id from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                          on ea.Equipment_category_id = e.Equipment_category_id where 
                         ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') as t 
                         where department_id = @department_id
                         AND equipment_id = @equipmentId "
                        , new SqlParameter("department_id", department_id)
                        , new SqlParameter("equipmentId", equipmentId)
                    ).First();

                    Supply s = DBContext.Database.SqlQuery<Supply>("select * from Supply.Supply where supply_id=@supply_id", new SqlParameter("supply_id", fuel_type)).First();
                    FuelDB f = DBContext.Database.SqlQuery<FuelDB>("select * from Equipment.FuelActivitiesConsumption where fuel_id=" + fuelid + "").First();
                    string date = DateTime.ParseExact(date1, "dd/MM/yyyy", null).ToString("MM-dd-yyyy");
                    DBContext.Database.ExecuteSqlCommand("UPDATE Equipment.FuelActivitiesConsumption  set fuel_type =@fuel_type, [date] =@date1, consumption_value = @consumption_value, equipment_id = @equipmentId where fuel_id= @fuelid",
                        new SqlParameter("fuel_type", fuel_type), new SqlParameter("date1", date), new SqlParameter("consumption_value", consumption_value), new SqlParameter("equipmentId", equipmentId), new SqlParameter("fuelId", fuelid));

                    EditSupply_duphong(fuel_type, consumption_value);
                    //get old and new.

                    DBContext.SaveChanges();

                    transaction.Commit();
                    return new HttpStatusCodeResult(201);
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    string output = "";
                    if (DBContext.Database.SqlQuery<Equipment>("SELECT * FROM Equipment.Equipment WHERE equipment_id = N'" + equipmentId + "'").Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";
                    if (DBContext.Supplies.Where(x => (x.supply_id == fuel_type)).Count() == 0)
                        output += "Mã Nhiên Liệu không tồn tại\n";
                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        [Auther(RightID = "14,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/oto/cap-nhat-hoat-dong/addfuel")]
        [HttpPost]
        public ActionResult AddFuel(int consumption_value, string fuel_type, string date1, String equipmentId)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            //bug : depend on supply_tieuhao.
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    // only taken by each department.
                    string department_id = Session["departID"].ToString();

                    Equipment e = DBContext.Equipments.Find(equipmentId);
                    //check vehicle eq exist in department
                    FuelDB check = DBContext.Database.SqlQuery<FuelDB>(@"select equipment_id , equipment_name from
                         (select distinct e.equipment_id, e.equipment_name ,e.department_id from Equipment.Equipment e inner join Equipment.CategoryAttribute ea 
                          on ea.Equipment_category_id = e.Equipment_category_id where 
                         ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') as t 
                         where department_id = @department_id
                         AND equipment_id = @equipmentId "
                        , new SqlParameter("department_id", department_id)
                        , new SqlParameter("equipmentId", equipmentId)
                    ).First();

                    DateTime date = DateTime.ParseExact(date1, "dd/MM/yyyy", null);
                    Supply s = DBContext.Supplies.Where(x => x.supply_id == fuel_type).First();


                    EditSupply_duphong(fuel_type, consumption_value);


                    FuelActivitiesConsumption f = DBContext.Database.SqlQuery<FuelActivitiesConsumption>("select * from Equipment.FuelActivitiesConsumption " +
                       "where fuel_type=@fueltype and equipment_id=@equipmentid and date=@date", new SqlParameter("fueltype", fuel_type), new SqlParameter("equipmentid", equipmentId), new SqlParameter("date", date)).FirstOrDefault();
                    if (f != null)
                    {
                        f.consumption_value = f.consumption_value + consumption_value;
                        DBContext.Entry(f).State = EntityState.Modified;

                    }
                    else
                    {

                        FuelActivitiesConsumption fuel_Activities_Consumption = new FuelActivitiesConsumption()
                        {
                            department_id = department_id,
                            consumption_value = consumption_value,
                            equipment_id = equipmentId,
                            fuel_type = fuel_type,
                            date = DateTime.ParseExact(date1, "dd/MM/yyyy", null)
                        };
                        DBContext.FuelActivitiesConsumptions.Add(fuel_Activities_Consumption);
                        DBContext.SaveChanges();
                    }

                    //Update : 
                    //get new


                    DBContext.SaveChanges();
                    transaction.Commit();
                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    string output = "";
                    if (DBContext.Equipments.Where(x => x.equipment_id == equipmentId).Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";

                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }
    }
    public class ActivityDB : Activity
    {
        public string stringDate { get; set; }
        public String equipment_name { get; set; }
    }
    public class FuelDB : FuelActivitiesConsumption
    {
        public String IDitem { get; set; }
        public string stringDate { get; set; }
        public String equipment_name { get; set; }
        public String unit { get; set; }
        public String supply_name { get; set; }
    }
}