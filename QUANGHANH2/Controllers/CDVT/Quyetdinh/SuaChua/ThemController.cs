﻿using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using Newtonsoft.Json.Linq;
using QUANGHANH2.Models;
using QUANGHANH2.SupportClass;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Linq.Dynamic;
using System.Text.RegularExpressions;
using System.Web.Hosting;
using System.Web.Mvc;
using System.Web.Routing;

namespace QUANGHANH2.Controllers.CDVT.Quyetdinh.SuaChua
{
    public class ThemController : Controller
    {
        [Auther(RightID = "83")]
        [Route("phong-cdvt/quyet-dinh/sua-chua/them")]
        public ActionResult Index(string selected)
        {
            try
            {
                ViewBag.selected = selected;

                JObject convertedJson = JObject.Parse(selected);

                List<_Equipment> listEquip = new List<_Equipment>();

                foreach (var item in convertedJson)
                {
                    if (item.Value.HasValues)
                        foreach (var i in (JObject)item.Value)
                        {
                            listEquip.Add(new _Equipment
                            {
                                attachTo = item.Key,
                                equipmentId = i.Key,
                                quantity = int.Parse(i.Value.ToString())
                            });
                        }
                    else
                        listEquip.Add(new _Equipment
                        {
                            attachTo = null,
                            equipmentId = item.Key,
                            quantity = 1
                        });
                }

                using (QuangHanhManufacturingEntities db = new QuangHanhManufacturingEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    List<string> listId = listEquip.Select(x => x.equipmentId).Distinct().ToList();

                    var dict = db
                        .Equipments
                        .Where(x => listId.Contains(x.equipment_id))
                        .Select(x => new { x.equipment_id, x.equipment_name })
                        .AsEnumerable()
                        .ToDictionary(d => d.equipment_id, d => d.equipment_name);

                    listEquip.ForEach(x => x.equipment_name = dict[x.equipmentId]);

                    JArray output = new JArray();
                    foreach (var item in listEquip)
                    {
                        output.Add(new JObject {
                            { "equipmentId", item.equipmentId },
                            { "attachTo", item.attachTo },
                            { "quantity", item.quantity },
                        });
                    }

                    ViewBag.DataThietBi = listEquip;
                    ViewBag.output = output;

                    List<Department> departments = db.Departments.ToList();

                    ViewBag.Departments = departments;

                    ViewBag.supply_inverse = db.Supplies.Take(10).ToList();
                }
                return View("/Views/CDVT/Quyetdinh/SuaChua/Them.cshtml");
            }
            catch (Exception)
            {
                return Redirect("/phong-cdvt/quyet-dinh/sua-chua/chon-thiet-bi");
            }
        }

        public class _Equipment
        {
            public string equipmentId { get; set; }
            public string equipment_name { get; set; }
            public string attachTo { get; set; }
            public int quantity { get; set; }
        }

        [Auther(RightID = "83")]
        [Route("phong-cdvt/quyet-dinh/sua-chua/them")]
        [HttpPost]
        public ActionResult Add(string out_in_come, string data, string department_id_to, string reason)
        {
            JArray json = JArray.Parse(data);
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            using (DbContextTransaction transaction = DBContext.Database.BeginTransaction())
            {
                try
                {
                    Documentary documentary = new Documentary
                    {
                        documentary_type = 1,
                        department_id_to = department_id_to,
                        date_created = DateTime.Now,
                        person_created = Session["Name"] + "",
                        reason = reason,
                        out_income = out_in_come,
                        documentary_status = 1
                    };
                    DBContext.Documentaries.Add(documentary);
                    DBContext.SaveChanges();

                    // Vị trí của thiết bị con được lấy theo vị trí của thiết bị to
                    List<string> list = new List<string>();
                    foreach (JObject item in json)
                    {
                        list.Add(item["attachTo"].Type == JTokenType.Null ? item["equipmentId"].ToString() : item["attachTo"].ToString());
                    }

                    var dict = (from e in DBContext.Equipments
                                join d in DBContext.Departments on e.department_id equals d.department_id
                                where list.Contains(e.equipment_id)
                                select new
                                {
                                    e.equipment_id,
                                    d.department_id
                                })
                        .Select(x => new { x.equipment_id, x.department_id })
                        .AsEnumerable()
                        .ToDictionary(d => d.equipment_id, d => d.department_id);

                    foreach (JObject item in json)
                    {
                        DateTime finish_date_plan = DateTime.ParseExact((string)item["date"], "dd/MM/yyyy", null);
                        string equipmentId = item["equipmentId"].ToString();
                        string attach_to = item["attachTo"].Type == JTokenType.Null ? null : item["attachTo"].ToString();

                        RepairDetail drd = new RepairDetail
                        {
                            department_id_from = attach_to == null ? dict[equipmentId] : dict[attach_to],
                            equipment_repair_status = 0,
                            repair_type = item["type"].ToString(),
                            repair_reason = item["reason"].ToString(),
                            finish_date_plan = finish_date_plan,
                            documentary_id = documentary.documentary_id,
                            equipment_id = equipmentId,
                            attach_to = attach_to,
                            is_visible = true,
                            quantity = int.Parse(item["quantity"].ToString())
                        };
                        DBContext.RepairDetails.Add(drd);
                        DBContext.SaveChanges();
                        bool used = false;

                        JObject vattu = (JObject)item["supply"];
                        if (vattu != null)
                        {
                            foreach (var jObject in vattu)
                            {
                                RepairEquipment sde = new RepairEquipment
                                {
                                    documentary_repair_id = drd.documentary_repair_id,
                                    supply_id = jObject.Key,
                                    quantity_plan = int.Parse(jObject.Value.ToString()),
                                };
                                used = true;
                                DBContext.RepairEquipments.Add(sde);
                            }
                            DBContext.SaveChanges();
                        }

                        JObject thietbi = (JObject)item["equipment"];
                        if (thietbi != null)
                        {
                            foreach (var jObject in thietbi)
                            {
                                RepairEquipment sde = new RepairEquipment
                                {
                                    documentary_repair_id = drd.documentary_repair_id,
                                    equipment_id = jObject.Key,
                                    quantity_plan = int.Parse(jObject.Value.ToString()),
                                };
                                used = true;
                                DBContext.RepairEquipments.Add(sde);
                            }
                            DBContext.SaveChanges();
                        }

                        if (!used)
                        {
                            transaction.Rollback();
                            string message = "Thiết bị " + (attach_to == null ? (equipmentId + " chưa được chọn thiết bị con hoặc vật tư") : (attach_to + $" ({equipmentId}) chưa được chọn vật tư"));
                            return Json(new { success = false, message = "Thiết bị chưa được chọn" });
                        }
                    }

                    transaction.Commit();
                    return Json(new { success = true });
                }
                catch (Exception)
                {
                    transaction.Rollback();
                    return Json(new { success = false, message = "Có lỗi xảy ra" });
                }
            }
        }

        private class _Location
        {
            public string equipmentId { get; set; }
            public string department_id { get; set; }
        }

        [Auther(RightID = "83")]
        [Route("phong-cdvt/quyet-dinh/sua-chua/them/export")]
        [HttpGet]
        public ActionResult ExportQuyetDinh(string out_in_come, string data, string department_id_to, string reason)
        {
            using (QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities())
            {
                try
                {
                    Department department = DBContext.Departments.Find(department_id_to);
                    if (department == null)
                    {
                        return Json(new { success = false, message = "Mã phòng ban không tồn tại" }, JsonRequestBehavior.AllowGet);
                    }

                    //string Flocation = "/doc/CDVT/QD/quyetdinh.docx";
                    string fileName = HostingEnvironment.MapPath("/doc/CDVT/QD/quyetdinh-template.docx");
                    byte[] byteArray = System.IO.File.ReadAllBytes(fileName);
                    using (var stream = new MemoryStream())
                    {
                        stream.Write(byteArray, 0, byteArray.Length);
                        using (var doc = WordprocessingDocument.Open(stream, true))
                        {
                            ////////////////////////////////////replace/////////////////////////////////
                            string docText = null;
                            using (StreamReader sr = new StreamReader(doc.MainDocumentPart.GetStream()))
                            {
                                docText = sr.ReadToEnd();
                            }

                            Regex regexText = new Regex("%ngay%");
                            docText = regexText.Replace(docText, DateTime.Now.Day.ToString());

                            regexText = new Regex("%thang%");
                            docText = regexText.Replace(docText, DateTime.Now.Month.ToString());

                            regexText = new Regex("%nam%");
                            docText = regexText.Replace(docText, DateTime.Now.Year.ToString());

                            regexText = new Regex("%noidung%");
                            docText = regexText.Replace(docText, reason);

                            regexText = new Regex("%px%");
                            docText = regexText.Replace(docText, department.department_id.Contains("PX") ? department.department_name.Substring(11) : department.department_name);

                            regexText = new Regex("%loaiquyetdinh%");
                            docText = regexText.Replace(docText, "quyết định sửa chữa");

                            regexText = new Regex("%nguon%");
                            docText = regexText.Replace(docText, out_in_come);

                            using (StreamWriter sw = new StreamWriter(doc.MainDocumentPart.GetStream(FileMode.Create)))
                            {
                                sw.Write(docText);
                            }
                            /////////////////////////////////////////////////////////////////////
                            JArray json = JArray.Parse(data);
                            Table table =
                            doc.MainDocumentPart.Document.Body.Elements<Table>().ElementAt(1);
                            foreach (JObject item in json)
                            {
                                string equipmentId = item["attachTo"].Type == JTokenType.Null ? item["equipmentId"].ToString() : item["equipmentId"].ToString() + $" ({item["attachTo"]})";

                                if (item["supply"] != null)
                                {
                                    AppendRow((JObject)item["supply"], equipmentId, table, true);
                                }
                                if (item["equipment"] != null)
                                {
                                    AppendRow((JObject)item["equipment"], equipmentId, table, false);
                                }
                                doc.MainDocumentPart.Document.Save();
                            }
                            stream.Position = 0;
                            string handle = Guid.NewGuid().ToString();
                            TempData[handle] = stream.ToArray();

                            if (TempData[handle] != null)
                            {
                                byte[] output = TempData[handle] as byte[];
                                return File(output, "application/vnd.ms-excel", "Quyết định sửa chữa.docx");
                            }
                            else
                            {
                                return new HttpStatusCodeResult(400);
                            }
                        }

                    }
                }
                catch (Exception)
                {
                    return new HttpStatusCodeResult(400);
                }
            }
        }

        private void AppendRow(JObject vattu, string equipmentId, Table table, bool isSupply)
        {
            QuangHanhManufacturingEntities DBContext = new QuangHanhManufacturingEntities();
            foreach (var jObject in vattu)
            {
                string id = jObject.Key;
                int quantity = int.Parse(jObject.Value.ToString());
                string name, unit;

                if (isSupply)
                {
                    Supply s = DBContext.Supplies.Find(id);
                    name = s.supply_name;
                    unit = s.unit;
                }
                else
                {
                    Equipment e = DBContext.Equipments.Find(id);
                    name = e.equipment_name;
                    unit = "Cái";
                }
                TableRow tr = new TableRow();

                TableCell tc1 = new TableCell();
                tc1.Append(new Paragraph(new Run(new Text("1"))));
                tr.Append(tc1);

                TableCell tc2 = new TableCell();
                tc2.Append(new Paragraph(new Run(new Text(equipmentId))));
                tr.Append(tc2);

                TableCell tc3 = new TableCell();
                tc3.Append(new Paragraph(new Run(new Text(name))));
                tr.Append(tc3);

                TableCell tc4 = new TableCell();
                tc4.Append(new Paragraph(new Run(new Text(unit))));
                tr.Append(tc4);

                TableCell tc5 = new TableCell();
                tc5.Append(new Paragraph(new Run(new Text(quantity.ToString()))));
                tr.Append(tc5);

                TableCell tc6 = new TableCell();
                tc6.Append(new Paragraph(new Run(new Text(""))));
                tr.Append(tc6);

                TableCell tc7 = new TableCell();
                tc7.Append(new Paragraph(new Run(new Text(""))));
                tr.Append(tc7);

                table.Append(tr);
            }
        }
    }
}