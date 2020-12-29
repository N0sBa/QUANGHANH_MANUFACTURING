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
        [Auther(RightID = "7,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/cap-nhat-hoat-dong")]
        public ActionResult Index()
        {
            // only taken by each department.
            string department_id = Session["departID"].ToString();
            QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
            List<fuelDB> listEQ; List<Supply> listSupply;
            if (Session["departName"].ToString().Contains("Phân xưởng"))
            {
                listEQ = db.Database.SqlQuery<fuelDB>("select equipmentId , equipment_name from Equipment where department_id = @department_id", new SqlParameter("department_id", department_id)).ToList();
                listSupply = db.Supplies.ToList();
            }
            else
            {
                listEQ = db.Database.SqlQuery<fuelDB>("select equipmentId , equipment_name from Equipment").ToList();
                listSupply = db.Supplies.ToList();
            }
            ViewBag.listSupply = listSupply;
            ViewBag.listEQ = listEQ;
            return View("/Views/CDVT/History/Lichsu.cshtml");
        }

        //search acti
        [Route("phong-cdvt/cap-nhat-hoat-dong/search-acti")]
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
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                // only taken by each department.
                string department_id = Session["departID"].ToString();
                List<activitiesDB> listActi;
                string base_select = "select a.[date], a.equipment_id, e.equipment_name , a.activity_name, a.hours_per_day, a.quantity , a.[[activity_id]]";
                string from_clause = " from Equipment.Activity a ,Equipment.Equipment e "
                                    + " where e.equipment_id = a.equipment_id AND a.equipment_id LIKE @equipmentId "
                                    + " AND e.equipment_name LIKE @equipment_name AND a.[date] between @timeFrom AND @timeTo ";
                if (Session["departName"].ToString().Contains("Phân xưởng"))
                {
                    from_clause += " AND e.department_id = @department_id";
                }
                listActi = DBContext.Database.SqlQuery<activitiesDB>(base_select + from_clause + " order by " + sortColumnName + " " + sortDirection + " OFFSET " + start + " ROWS FETCH NEXT " + length + " ROWS ONLY",
                   new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                   new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                   new SqlParameter("timeFrom", timeF),
                   new SqlParameter("timeTo", timeT),
                   new SqlParameter("department_id", department_id)
                   ).ToList();
                int totalrows = DBContext.Database.SqlQuery<int>("select count(a.[date])" + from_clause,
                   new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                   new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                   new SqlParameter("timeFrom", timeF),
                   new SqlParameter("timeTo", timeT),
                   new SqlParameter("department_id", department_id)
                   ).FirstOrDefault();

                ViewBag.ListEQ = listActi;
                return Json(new { success = true, data = listActi, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrows }, JsonRequestBehavior.AllowGet);
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
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                // only taken by each department.
                string department_id = Session["departID"].ToString();
                string base_select = "select f.fuel_id, f.[date], f.equipment_id, e.equipment_name , s.supply_name , f.consumption_value , s.unit";
                string from_clause = @" from Equipment.FuelActivitiesConsumption f, Equipment.Equipment e , Supply.Supply s 
                                    where e.equipment_id = f.equipment_id and s.supply_id = f.fuel_type AND f.equipment_id LIKE @equipmentId 
                                    AND e.equipment_name LIKE @equipment_name AND f.[date] between @timeFrom AND @timeTo ";
                if (Session["departName"].ToString().Contains("Phân xưởng"))
                {
                    from_clause += " AND e.department_id = @department_id";
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

        private void EditSupply_duphong(string oldEquipmentId, string oldSupplyid, int oldQuantity, string newEquipmentId, string newSupplyid, int newQuantity)
        {
            //find old supplies by device.
            QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    //if equipmentId and supplyId doesn't change after editing.
                    if (oldEquipmentId == newEquipmentId && oldSupplyid == newSupplyid)
                    {
                        RepairRegularly1 duphong = db.RepairRegularly1.Where(x => (x.supply_id == newSupplyid && x.equipment_id == newEquipmentId)).FirstOrDefault();
                        if (duphong != null)
                        {
                            duphong.quantity += oldQuantity;
                            duphong.quantity -= newQuantity;
                            db.Entry(duphong).State = EntityState.Modified;
                        }
                    }
                    else
                    {
                        //update quantity of old and new supplies remaining by each eqID.
                        RepairRegularly1 oldRecord = db.RepairRegularly1.Where(x => (x.supply_id == oldSupplyid && x.equipment_id == oldEquipmentId)).FirstOrDefault();
                        RepairRegularly1 newRecord = db.RepairRegularly1.Where(x => (x.supply_id == newSupplyid && x.equipment_id == newEquipmentId)).FirstOrDefault();
                        oldRecord.quantity += oldQuantity;

                        // if new doesn't exist => create new with quantity = -newQuantity
                        if (newRecord == null)
                        {
                            RepairRegularly1 sp = new RepairRegularly1()
                            {
                                supply_id = newSupplyid,
                                equipment_id = newEquipmentId,
                                quantity = -newQuantity
                            };
                            db.RepairRegularly1.Add(sp);
                        }
                        else
                        {
                            newRecord.quantity -= newQuantity;
                        }
                    }
                    db.SaveChanges();
                    transaction.Commit();
                }
                catch (Exception)
                {
                    transaction.Rollback();
                }
            }
        }

        private void AddSupply_duphong(string newEquipmentId, string newSupplyid, int newQuantity)
        {
            //find old supplies by device.
            QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    RepairRegularly1 duphong = db.RepairRegularly1.Where(x => (x.supply_id == newSupplyid && x.equipment_id == newEquipmentId)).FirstOrDefault();
                    //if existed
                    if (duphong != null)
                    {
                        duphong.quantity -= newQuantity;
                        db.Entry(duphong).State = EntityState.Modified;
                    }
                    //if doesn't exist before
                    else
                    {
                        RepairRegularly1 sp = new RepairRegularly1()
                        {
                            supply_id = newSupplyid,
                            equipment_id = newEquipmentId,
                            quantity = -newQuantity
                        };
                        db.RepairRegularly1.Add(sp);
                    }
                    db.SaveChanges();
                    transaction.Commit();
                }
                catch (Exception)
                {
                    transaction.Rollback();
                }
            }
        }

        //get key of activity to edit
        [Route("phong-cdvt/cap-nhat-hoat-dong/getkeydata-acti")]
        [HttpPost]
        public ActionResult getActivityID(int activityid)
        {
            try
            {
                // only taken by each department.
                string department_id = Session["departID"].ToString();
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                activitiesDB activity = DBContext.Database.SqlQuery<activitiesDB>(@"select a.activity_id,a.[date], a.equipment_id, e.equipment_name , a.activity_name, a.hours_per_day, a.quantity 
                     from Equipment.Activity a ,Equipment.Equipment e 
                     where e.equipment_id = a.equipment_id  
                     and activity_id = @activityid AND e.department_id = @department_id "
                    , new SqlParameter("activityid", activityid)
                    , new SqlParameter("department_id", department_id)
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
                QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
                fuelDB activity = DBContext.Database.SqlQuery<fuelDB>(
                    @"select f.fuel_id, f.[date], f.equipment_id, f.fuel_type, e.equipment_name , s.supply_name , f.consumption_value , s.unit ,sd.quantity 
                     from Equipment.FuelActivitiesConsumption f, Equipment.Equipment e , Supply.Supply s , Supply.RepairRegularly sd
                     where e.equipment_id = f.equipment_id and s.supply_id = f.fuel_type and sd.supply_id = s.supply_id and sd.equipment_id = e.equipment_id and f.fuel_id = @fuelid 
                     order by f.[date] desc  ", new SqlParameter("fuelid", fuelid)).First();
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
        [Auther(RightID = "9,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/edit-activity")]
        [HttpPost]
        public ActionResult Edit(float quantity, string activity_name, int hours_per_day, string date1, String equipmentId, int activityid)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    //check
                    //need to check equipment of each department.
                    string department_id = Session["departID"].ToString();

                    Equipment i = DBContext.Equipments.Where(x => (x.department_id == department_id && x.equipment_id == equipmentId)).First();

                    Activity actiOldEq = DBContext.Activities.Find(activityid);
                    string oldEq = actiOldEq.equipment_id;
                    double oldHour = actiOldEq.hours_per_day;
                    int newHour = hours_per_day;

                    Activity q = DBContext.Activities.Find(activityid);
                    q.equipment_id = i.equipment_id;
                    q.date = DateTime.ParseExact(date1, "dd/MM/yyyy", null);
                    q.hours_per_day = hours_per_day;
                    q.quantity = quantity;
                    q.activity_name = activity_name;
                    q.activity_id = activityid;
                    DBContext.Entry(q).State = EntityState.Modified;
                    DBContext.SaveChanges();

                    //after update activity.
                    //get old and new.
                    string newEq = equipmentId;

                    if (newEq.Equals(oldEq))
                    {
                        i.total_operating_hours += (newHour - (int)oldHour);

                        DBContext.Entry(i).State = EntityState.Modified;
                    }
                    else
                    {
                        Equipment olds = DBContext.Equipments.Where(x => (x.department_id == department_id && x.equipment_id == oldEq)).First();
                        Equipment news = DBContext.Equipments.Where(x => (x.department_id == department_id && x.equipment_id == newEq)).First();
                        olds.total_operating_hours -= (int)oldHour;
                        news.total_operating_hours += newHour;

                        DBContext.Entry(news).State = EntityState.Modified;
                    }

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

                    if (output == "")
                        output += "Có lỗi xảy ra";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        //edit fuel
        [Auther(RightID = "97,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/edit-fuel")]
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

                    Equipment i = DBContext.Equipments.Where(x => (x.department_id == department_id && x.equipment_id == equipmentId)).First();

                    Supply s = DBContext.Database.SqlQuery<Supply>("select * from Supply.Supply where supply_id=@supply_id", new SqlParameter("supply_id", fuel_type)).First();
                    fuelDB f = DBContext.Database.SqlQuery<fuelDB>("select * from Equipment.FuelActivitiesConsumption where fuel_id=@fuelid", new SqlParameter("fuelid", fuelid)).First();
                    string date = DateTime.ParseExact(date1, "dd/MM/yyyy", null).ToString("MM-dd-yyyy");


                    DBContext.Database.ExecuteSqlCommand("UPDATE Equipment.FuelActivitiesConsumption  set fuel_type =@fuel_type, [date] =@date1, consumption_value = @consumption_value, equipment_id = @equipmentId where fuel_id= @fuelid",
                        new SqlParameter("fuel_type", fuel_type), new SqlParameter("date1", DateTime.ParseExact(date1, "dd/MM/yyyy", null)), new SqlParameter("consumption_value", consumption_value), new SqlParameter("equipmentId", equipmentId), new SqlParameter("fuelId", fuelid));


                    //edit supply du phong.
                    int oldQuantity = f.consumption_value;
                    string oldEquipmentId = f.equipment_id;
                    string oldSupplyId = f.fuel_type;
                    EditSupply_duphong(oldEquipmentId, oldSupplyId, oldQuantity, equipmentId, fuel_type, consumption_value);

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

        //auto get EquipmentName after entering EquipmentID.
        [Route("phong-cdvt/cap-nhat-hoat-dong/getEQname")]
        [HttpPost]
        public ActionResult returnname(string id)
        {
            try
            {
                // only taken by each department.
                QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
                var equipment = db.Equipments.Where(x => x.equipment_id == id).SingleOrDefault();
                return Json(equipment.equipment_name, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return new HttpStatusCodeResult(400);
            }
        }

        //Add activity
        [Auther(RightID = "8,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/add-acti")]
        [HttpPost]
        public ActionResult AddActivity(float quantity, string activity_name, int hours_per_day, string date1, String equipmentId)
        {
            string output = "";
            //fix bug negative number.
            if (quantity < 0 || hours_per_day <= 0 || hours_per_day > 24)
            {
                return new HttpStatusCodeResult(400);
            }

            // only taken by each department.
            string department_id = Session["departID"].ToString();

            //add function
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            Activity a = new Activity();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Equipment e = DBContext.Equipments.Where(x => (x.department_id == department_id && x.equipment_id == equipmentId)).First();
                    //Equipment e = DBContext.Equipments.Find(equipmentId);
                    a.equipment_id = e.equipment_id;
                    //fix bug
                    a.date = DateTime.ParseExact(date1, "dd/MM/yyyy", null);
                    a.quantity = quantity;
                    a.hours_per_day = hours_per_day;
                    a.activity_name = activity_name;

                    DBContext.Activities.Add(a);
                    DBContext.SaveChanges();

                    //update total_hour
                    int? count = DBContext.Database.SqlQuery<int?>("select total_operating_hours from Equipment.Equipment where equipment_id = @equipmentId", new SqlParameter("equipmentId", equipmentId)).First();
                    if (count == 0 || count == null)
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
                        " select sum(hours_per_day) as total  from Activity " +
                        " where equipmentid = @equipmentId"
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

        [Route("phong-cdvt/cap-nhat-hoat-dong/returnsupplyName")]
        [HttpPost]
        public JsonResult returnsupplyname(string fuel_type, string equipment_id)
        {
            QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    //if equipment doesn't exist  => catch exception to show error.
                    var equipment = db.Supplies.Where(x => (x.supply_id == fuel_type)).First();

                    //Last update : 11/2/2020 
                    //check Supply existed in Backup Supplies.

                    var remaining = db.RepairRegularly1.Where(x => (x.supply_id == fuel_type && x.equipment_id == equipment_id)).SingleOrDefault();
                    string item;
                    //add new if it doesn't exist before.
                    if (remaining == null)
                    {
                        item = equipment.supply_name + "^" + equipment.unit + "^" + 0;
                    }
                    else
                    {
                        item = equipment.supply_name + "^" + equipment.unit + "^" + remaining.quantity;
                    }
                    db.SaveChanges();
                    transaction.Commit();
                    return Json(item, JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    return Json("Mã nhiên liệu không tồn tại", JsonRequestBehavior.AllowGet);
                }
            }
        }

        //Add fuel
        [Auther(RightID = "8,179,180,181,183,184,185,186,187,189,195,003")]
        [Route("phong-cdvt/cap-nhat-hoat-dong/add-fuel")]
        [HttpPost]
        public ActionResult AddFuel(int consumption_value, string fuel_type, string date1, string equipmentId)
        {
            string output = "";

            // only taken by each department.
            string department_id = Session["departID"].ToString();

            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();

            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    //check eq in department.
                    //Only add equipment in deparment of user.
                    Equipment e = DBContext.Equipments.Where(x => (x.department_id == department_id && x.equipment_id == equipmentId)).First();
                    Supply s = DBContext.Database.SqlQuery<Supply>("select * from Supply.Supply where supply_id=@fueltype", new SqlParameter("fueltype", fuel_type)).First();

                    DateTime date = DateTime.ParseExact(date1, "dd/MM/yyyy", null);

                    FuelActivitiesConsumption f = DBContext.Database.SqlQuery<FuelActivitiesConsumption>("select * from Equipment.FuelActivitiesConsumption " +
                        "where fuel_type=@fueltype and equipment_id=@equipmentid and date=@date", new SqlParameter("fueltype", fuel_type), new SqlParameter("equipmentid", equipmentId), new SqlParameter("date", date)).FirstOrDefault();

                    //Handling old equipment and supplies
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
                    }

                    AddSupply_duphong(equipmentId, fuel_type, consumption_value);

                    DBContext.SaveChanges();
                    transaction.Commit();
                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
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

    public class activitiesDB : Activity
    {
        public string stringDate { get; set; }
        public String equipment_name { get; set; }

    }

    public class fuelDB : FuelActivitiesConsumption
    {
        public String IDitem { get; set; }
        public string stringDate { get; set; }
        public String equipment_name { get; set; }
        public String unit { get; set; }
        public String supply_name { get; set; }
        public int quantity { get; set; }
    }
}