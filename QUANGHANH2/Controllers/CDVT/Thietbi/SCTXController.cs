﻿using QUANGHANH2.Models;
using QUANGHANH2.SupportClass;
using QUANGHANHCORE.Controllers.CDVT.History;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Linq.Dynamic;
using System.Web.Mvc;
using System.Web.Routing;

namespace QUANGHANH2.Controllers.CDVT.Thietbi
{
    public class SCTXController : Controller
    {
        [Auther(RightID = "179,180,181,183,184,185,186,187,189,195")]
        [Route("phong-cdvt/thiet-bi/sctx")]
        [HttpGet]
        public ActionResult Index()
        {
            string departID = Session["departID"].ToString();
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            //List<FuelDB> listEQ = db.Database.SqlQuery<FuelDB>("select e.equipmentId, e.equipment_name from Equipment e  " +
            //        "EXCEPT " +
            //        "select distinct e.equipmentId,e.equipment_name " +
            //        "from Equipment e inner join Equipment_category_attribute ea on e.Equipment_category_id = ea.Equipment_category_id " +
            //        "where ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy'").ToList();
            List<Supply> listSupply = db.Supplies.Where(x => x.unit != "L" && x.unit != "kWh").ToList();
          
            List<EquipmentDB> listEQ = db.Database.SqlQuery<EquipmentDB>("select e.equipmentId, e.equipment_name from Equipment e where e.department_id = @departID", new SqlParameter("departID", departID)).ToList();

          
       
            ViewBag.listSupply = listSupply;
            ViewBag.listEQ = listEQ;
            return View("/Views/CDVT/Thietbi/SCTX.cshtml");
        }

        //?
        //[Route("phong-cdvt/thiet-bi/sctx")]
        //[HttpPost]
        //public ActionResult GetData()
        //{
        //    //Server Side Parameter
        //    int start = Convert.ToInt32(Request["start"]);
        //    int length = Convert.ToInt32(Request["length"]);
        //    string searchValue = Request["search[value]"];
        //    string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
        //    string sortDirection = Request["order[0][dir]"];


        //    using (QUANGHANHABCEntities db = new QUANGHANHABCEntities())
        //    {

        //        List<MaintainDB> maintainCar = db.Database.SqlQuery<MaintainDB>("select m.[date], e.equipment_name, m.equipmentid, d.department_name, m.maintain_content, m.maintain_id " +
        //                        "from Equipment_SCTX m inner join Equipment e on m.equipmentid = e.equipmentId " +
        //                        "inner join Department d on d.department_id = m.department_id  " +
        //                        "inner join (select e.equipmentId, e.equipment_name from Equipment e  " +
        //                        "EXCEPT " +
        //                        "select distinct e.equipmentId,e.equipment_name " +
        //                        "from Equipment e inner join Equipment_category_attribute ea on e.Equipment_category_id = ea.Equipment_category_id " +
        //                        "where ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') a on m.equipmentid = a.equipmentId ").ToList();
        //        int totalrows = maintainCar.Count;
        //        int totalrowsafterfiltering = maintainCar.Count;
        //        //sorting
        //        maintainCar = maintainCar.OrderBy(sortColumnName + " " + sortDirection).ToList<MaintainDB>();
        //        //paging
        //        maintainCar = maintainCar.Skip(start).Take(length).ToList<MaintainDB>();
        //        foreach (MaintainDB item in maintainCar)
        //        {

        //            item.stringDate = item.date.ToString("dd/MM/yyyy");
        //        }
        //        return Json(new { success = true, data = maintainCar, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);
        //    }
        //}

        [Auther(RightID = "179,180,181,183,184,185,186,187,189,195")]
        [Route("phong-cdvt/thiet-bi/sctx/insertMaintainCar")]
        [HttpPost]
        public JsonResult InsertMaintainCar(List<Maintain_DetailDB> maintain, string equipmentId, string date, string maintain_content)
        {
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                string department_id = Session["departID"].ToString();
                //Truncate Table to delete all old records.
                //Check for NULL.

                try
                {
                    Equipment e = db.Equipments.Find(equipmentId);
                    //Department d = db.Departments.Find(department_name);
                   
                    DateTime dateTime = DateTime.ParseExact(date, "dd/MM/yyyy", null);

                    db.Database.ExecuteSqlCommand("insert into Equipment_SCTX values(@equipmentId, @date, @departmentid,@maintain_content)",
                     new SqlParameter("equipmentId", equipmentId),
                     new SqlParameter("date", DateTime.ParseExact(date, "dd/MM/yyyy", null)),
                     new SqlParameter("departmentid", department_id),
                     new SqlParameter("maintain_content", maintain_content));

                    //Loop and insert records.
                    string bulk_insert = string.Empty;
                    //Loop and insert records.
                    foreach (Maintain_DetailDB item in maintain)
                    {
                        string sub_insert = $"insert into Equipment_SCTX_Detail(maintain_id, supplyid, used, thuhoi) " +
                              $"VALUES((select top 1 maintain_id from Equipment_SCTX order by maintain_id desc), '{item.supplyid}', {item.used}, {item.thuhoi});" +
                              " update Supply_DuPhong " +
                              $"set quantity = (select quantity from Supply_DuPhong where supply_id = '{item.supplyid}' and equipmentId='{equipmentId}') - {item.used} " +
                              $" where supply_id = '{item.supplyid}' and equipmentId='{equipmentId}'";
                        bulk_insert = string.Concat(bulk_insert, sub_insert);

                        //update new supply du phong if it doesn't exist
                        Supply_DuPhong duphong = db.Supply_DuPhong.Where(x => (x.supply_id == item.supplyid && x.equipmentId == equipmentId)).FirstOrDefault();
                        if (duphong == null)
                        {
                            AddSupply_duphong(equipmentId, item.supplyid, item.used);
                        }

                    }
                    db.Database.ExecuteSqlCommand(bulk_insert);

                    transaction.Commit();
                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    string output = "";
                    if (db.Equipments.Where(x => x.equipmentId == equipmentId).Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";
                   
                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return Json("Có lỗi xảy ra vui lòng nhập lại ", JsonRequestBehavior.AllowGet);
                }
            }
        }

        private void AddSupply_duphong(string newEquipmentId, string newSupplyid, int newQuantity) 
        {
            //find old supplies by device.
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    Supply_DuPhong sp = new Supply_DuPhong()
                    {
                        supply_id = newSupplyid,
                        equipmentId = newEquipmentId,
                        quantity = -newQuantity
                    };
                    db.Supply_DuPhong.Add(sp);
                    db.SaveChanges();
                    transaction.Commit();
                }
                catch (Exception)
                {
                    transaction.Rollback();
                }
            }
        }

        [Auther(RightID = "179,180,181,183,184,185,186,187,189,195")]
        [Route("phong-cdvt/thiet-bi/sctx/getMaintainCarDetail")]
        [HttpPost]
        public JsonResult getMaintainCarDetail(int maintainId)
        {
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();

            {
                List<Maintain_DetailDB> m = db.Database.SqlQuery<Maintain_DetailDB>("select m.supplyid,s.supply_name,s.unit,equipmentid ,m.thuhoi, m.used,m.maintain_detail_id" +
                     " from Equipment_SCTX_Detail m inner join Equipment_SCTX ma on m.maintain_id = ma.maintain_id inner " +
                  " join Supply s on m.supplyid = s.supply_id " +
                 "where m.maintain_id  = @maintainId ", new SqlParameter("maintainId", maintainId)).ToList();

                return Json(m);
            }
        }
        [Route("phong-cdvt/thiet-bi/sctx/getMaintainCar")]
        [HttpPost]
        public JsonResult getMaintainCar(int maintainId)
        {
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();

            {
                //Truncate Table to delete all old records.
                MaintainDB maintainCar = db.Database.SqlQuery<MaintainDB>("select m.[date], e.equipment_name, m.equipmentid, m.maintain_content, m.maintain_id  " +
                                "from Equipment_SCTX m inner join Equipment e on m.equipmentid = e.equipmentId " +
                               
                                "inner join (select e.equipmentId, e.equipment_name from Equipment e  " +
                                "EXCEPT " +
                                "select distinct e.equipmentId,e.equipment_name " +
                                "from Equipment e inner join Equipment_category_attribute ea on e.Equipment_category_id = ea.Equipment_category_id " +
                                "where ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') a on m.equipmentid = a.equipmentId " +
                                " where m.maintain_id = @maintainId ", new SqlParameter("maintainId", maintainId)).SingleOrDefault();
                //Check for NULL.

                maintainCar.stringDate = maintainCar.date.ToString("dd/MM/yyyy");

                //Temp temp = new Temp();
                //temp.m = m;
                //temp.maintainCar = maintainCar;
                return Json(maintainCar);
            }
        }
        [Auther(RightID = "179,180,181,183,184,185,186,187,189,195")]
        [Route("phong-cdvt/thiet-bi/sctx/search")]
        [HttpPost]
        public ActionResult Search(string equipmentId, string equipmentName, string timeFrom, string timeTo, string content, string position)
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
                string base_select = "select m.[date],  e.equipment_name, m.equipmentid,d.department_name,m.maintain_content,m.maintain_id";
                string from_clause = " from Equipment_SCTX m inner join Equipment e on m.equipmentid = e.equipmentId "
                    + " inner join Department d on d.department_id = m.department_id" +
                    " inner join (select e.equipmentId, e.equipment_name from Equipment e" +
                    " EXCEPT" +
                    " select distinct e.equipmentId,e.equipment_name" +
                    " from Equipment e inner join Equipment_category_attribute ea on e.Equipment_category_id = ea.Equipment_category_id" +
                    " where ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy') a on m.equipmentid = a.equipmentId  "
                    + " Where m.equipmentId LIKE @equipmentId"
                    + " AND e.equipment_name LIKE @equipment_name AND m.[date] between @timeFrom AND @timeTo "
                    + " AND d.department_name LIKE @position AND m.maintain_content LIKE @content "
                    + " AND e.department_id = @department_id";

                List<MaintainDB> maintainCar = DBContext.Database.SqlQuery<MaintainDB>(base_select + from_clause + " order by " + sortColumnName + " " + sortDirection + " OFFSET " + start + " ROWS FETCH NEXT " + length + " ROWS ONLY",
                    new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                    new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                    new SqlParameter("timeFrom", timeF),
                    new SqlParameter("timeTo", timeT),
                    new SqlParameter("position", '%' + position + '%'),
                    new SqlParameter("content", '%' + content + '%'),
                    new SqlParameter("department_id", Session["departID"].ToString())
                    ).ToList();

                int totalrows = DBContext.Database.SqlQuery<int>("select count(m.[date])" + from_clause,
                    new SqlParameter("equipmentId", '%' + equipmentId + '%'),
                    new SqlParameter("equipment_name", '%' + equipmentName + '%'),
                    new SqlParameter("timeFrom", timeF),
                    new SqlParameter("timeTo", timeT),
                    new SqlParameter("position", '%' + position + '%'),
                    new SqlParameter("content", '%' + content + '%'),
                    new SqlParameter("department_id", Session["departID"].ToString())
                    ).FirstOrDefault();

                return Json(new { success = true, data = maintainCar, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrows }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                Response.Write("Có lỗi xảy ra, xin vui lòng nhập lại");
                return new HttpStatusCodeResult(400);
            }
        }

        [Route("phong-cdvt/thiet-bi/sctx/returnEquipmentName")]
        [HttpPost]
        public JsonResult returnname(string id)
        {
            try
            {
                QUANGHANHABCEntities db = new QUANGHANHABCEntities();
                var equipment = db.Database.SqlQuery<fuelDB>("select e.equipmentId, e.equipment_name from Equipment e  where  e.equipmentId = @id " +
                                "EXCEPT " +
                                "select distinct e.equipmentId,e.equipment_name " +
                                "from Equipment e inner join Equipment_category_attribute ea on e.Equipment_category_id = ea.Equipment_category_id " +
                                "where ea.Equipment_category_attribute_name = N'Số khung' or ea.Equipment_category_attribute_name = N'Số máy' " +
                        "", new SqlParameter("id", id)).SingleOrDefault();
                return Json(equipment.equipment_name, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                return Json("Mã thiết bị cơ giới không tồn tại", JsonRequestBehavior.AllowGet);
            }
        }


        [Auther(RightID = "179,180,181,183,184,185,186,187,189,195")]
        [Route("phong-cdvt/thiet-bi/sctx/edit")]
        [HttpPost]
        public ActionResult EditMaintain(string date, String equipmentId,String maintain_content, int maintainid)
        {
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            Equipment_SCTX m = new Equipment_SCTX();
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    string department_id = Session["departID"].ToString();

                    //get old value maintainid.
                    List<ListSupplyByEq> oldMaintain = db.Database.SqlQuery<ListSupplyByEq>("select ed.supplyid,ed.used,e.equipmentId from Equipment_SCTX_Detail ed , Equipment_SCTX e where ed.maintain_id = e.maintain_id and ed.maintain_id = @maintain_id "
                            , new SqlParameter("maintain_id", maintainid)).ToList();
                    string oldEquipmentId = null;
                    foreach (ListSupplyByEq item in oldMaintain)
                    {
                        //check oldEqId was taken or not
                        if (oldEquipmentId == null)
                        {
                            oldEquipmentId = item.equipmentId;
                        }
                        //after taken , comparing 2 new and old eqId.
                        if (oldEquipmentId != equipmentId)
                        {
                            EditSupply_duphong(oldEquipmentId, item.supplyid, item.used, equipmentId, item.supplyid, item.used);
                        }
                        else
                        {
                            break;
                        }

                    }

                    // Maintain_CarDB maintainCar = db.Database.SqlQuery<Maintain_CarDB>("select m.[date],  e.equipment_name, m.equipmentid,d.department_name,m.maintain_content " +
                    //"from Maintain_Car m inner join Equipment e on m.equipmentid = e.equipmentId " +
                    //  "inner join Department d on d.department_id = m.departmentid where m.maintainid = @maintainId ", new SqlParameter("maintainId", maintainid)).SingleOrDefault();

                    m.equipmentId = equipmentId;
                    m.department_id = department_id;
                    m.maintain_content = maintain_content;
                    m.date = DateTime.Parse(DateTime.ParseExact(date, "dd/MM/yyyy", null).ToString("yyyy-MM-dd"));
                    m.maintain_id = maintainid;
                    db.Entry(m).State = EntityState.Modified;

                    db.SaveChanges();
                    transaction.Commit();

                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    string output = "";
                    if (db.Equipments.Where(x => x.equipmentId == equipmentId).Count() == 0)
                        output += "Mã thiết bị không tồn tại\n";

                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        [Auther(RightID = "179,180,181,183,184,185,186,187,189,195")]
        [Route("phong-cdvt/thiet-bi/sctx/editMaintainDetail")]
        [HttpPost]
        public ActionResult EditMaintainDetail(List<Equipment_SCTX_Detail> supplyDetail, string equipmentID)
        {
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            Equipment_SCTX_Detail m = new Equipment_SCTX_Detail();
             
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                //note:  thiếu data db cho supply id
                try
                {
                    // 
                    string bulk_insert = string.Empty;
                    foreach (Equipment_SCTX_Detail item in supplyDetail)
                    {
                        //fix bug equipmentID = null
                        if (equipmentID == null)
                        {
                            equipmentID = db.Database.SqlQuery<string>("select equipmentId from Equipment_SCTX where maintain_id = @maintainID ", new SqlParameter("maintainID", item.maintain_id)).SingleOrDefault(); 
                        }

                        //fix bug : get old and new record.
                        string newSupplyId = item.supplyid;
                        int newQuantity = item.used;
                        Equipment_SCTX_Detail oldItem = db.Database.SqlQuery<Equipment_SCTX_Detail>("select * from Equipment_SCTX_Detail where maintain_detail_id = @maintain_detail_id "
                            , new SqlParameter("maintain_detail_id", item.maintain_detail_id)).SingleOrDefault();
                        string oldSupplyId = oldItem.supplyid;
                        int oldQuantity = oldItem.used;

                        //Last update query insert : 13/2/2020
                        string sub_insert = $"if exists (select * from Equipment_SCTX_Detail  where maintain_detail_id={item.maintain_detail_id} ) " +
                      "begin " +
                     "update Equipment_SCTX_Detail set " +
                     $"supplyid = '{item.supplyid}',used = {item.used},thuhoi = {item.thuhoi} " +
                    $" where maintain_detail_id = {item.maintain_detail_id}" +
                     " end " +
                     "else " +
                      "begin " +
                     $" insert into Equipment_SCTX_Detail(maintain_id, supplyid, used, thuhoi) VALUES({item.maintain_id}, '{item.supplyid}', {item.used}, {item.thuhoi}) " +
                  "end;  " +
                    " update Supply_DuPhong " +
                            $"set quantity = (select quantity from Supply_DuPhong where supply_id = '{item.supplyid}' and equipmentId='{equipmentID}') " +
                            $" where supply_id = '{item.supplyid}' and equipmentId='{equipmentID}'";
                        bulk_insert = string.Concat(bulk_insert, sub_insert);

                        //update supply du phong
                        EditSupply_duphong(equipmentID, oldSupplyId, oldQuantity, equipmentID, newSupplyId, newQuantity);
                    }

                    db.Database.ExecuteSqlCommand(bulk_insert);


                    transaction.Commit();

                    return Json("", JsonRequestBehavior.AllowGet);
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    string output = "";


                    if (output == "")
                        output += "Có lỗi xảy ra, xin vui lòng nhập lại";
                    Response.Write(output);
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        private void EditSupply_duphong(string oldEquipmentId, string oldSupplyid, int oldQuantity, string newEquipmentId, string newSupplyid, int newQuantity)
        {
            //find old supplies by device.
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            using (DbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    //if equipmentId and supplyId doesn't change after editing.
                    if (oldEquipmentId == newEquipmentId && oldSupplyid == newSupplyid)
                    {
                        Supply_DuPhong duphong = db.Supply_DuPhong.Where(x => (x.supply_id == newSupplyid && x.equipmentId == newEquipmentId)).FirstOrDefault();
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
                        Supply_DuPhong oldRecord = db.Supply_DuPhong.Where(x => (x.supply_id == oldSupplyid && x.equipmentId == oldEquipmentId)).FirstOrDefault();
                        Supply_DuPhong newRecord = db.Supply_DuPhong.Where(x => (x.supply_id == newSupplyid && x.equipmentId == newEquipmentId)).FirstOrDefault();
                        oldRecord.quantity += oldQuantity;

                        // if new doesn't exist => create new with quantity = -newQuantity
                        if (newRecord == null)
                        {
                            Supply_DuPhong sp = new Supply_DuPhong()
                            {
                                supply_id = newSupplyid,
                                equipmentId = newEquipmentId,
                                quantity = -newQuantity
                            };
                            db.Supply_DuPhong.Add(sp);
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

        [Route("phong-cdvt/thiet-bi/sctx/UpdateRemaining")]
        [HttpPost]
        public ActionResult returnUpdateRemaining(List<Maintain_DetailDB> maintain, string equipmentID)
        {
            QUANGHANHABCEntities db = new QUANGHANHABCEntities();
            try
            {
                string base_query = "select quantity from Supply_DuPhong where supply_id = @supply_id and equipmentId = @equipmentId";
                List <int> listRemaining = new List<int>();  
                foreach (Maintain_DetailDB item in maintain)
                {
                    int quantity = db.Database.SqlQuery<int>(base_query, 
                        new SqlParameter("supply_id", item.supplyid)
                        , new SqlParameter("equipmentId", equipmentID)).SingleOrDefault();
                    listRemaining.Add(quantity);
                }
                return Json(listRemaining, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return new HttpStatusCodeResult(400);
            }
        }

        [Route("phong-cdvt/thiet-bi/sctx/returnsupplymaintainName")]
        [HttpPost]
        public JsonResult returnsupplymaintainname(string supplyid, string equipmentId)
        {

            try
            {
                QUANGHANHABCEntities db = new QUANGHANHABCEntities();
                var supply = db.Supplies.Where(x => (x.supply_id == supplyid) && (x.unit != "L" && x.unit != "kWh")).SingleOrDefault();
                var remaining = db.Supply_DuPhong.Where(x => (x.supply_id == supplyid && x.equipmentId == equipmentId)).FirstOrDefault();
                //String item = equipment.supply_name + "^" + equipment.unit;
                if (remaining == null)
                {
                    return Json(new
                    {
                        supply_name = supply.supply_name,
                        unit = supply.unit,
                        remain_quantity = 0
                    }, JsonRequestBehavior.AllowGet);
                } else
                {
                    return Json(new
                    {
                        supply_name = supply.supply_name,
                        unit = supply.unit,
                        remain_quantity = remaining.quantity
                    }, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception)
            {
                return Json("Mã nhiên liệu không tồn tại", JsonRequestBehavior.AllowGet);
            }

        }
    }
    public class MaintainDB : Equipment_SCTX
    {

        public String stringDate { get; set; }

        public String equipment_name { get; set; }

        public String department_name { get; set; }

    }
    public class Maintain_DetailDB : Equipment_SCTX_Detail
    {

        public String supply_name { get; set; }
        public String unit { get; set; }

    }
    public class EquipmentDB
    {

        public String equipmentId { get; set; }
        public String equipment_name { get; set; }

    }

    public class ListSupplyByEq
    {
        public String supplyid { get; set; }
        public int used { get; set; }
        public String equipmentId { get; set; }
    }
}
