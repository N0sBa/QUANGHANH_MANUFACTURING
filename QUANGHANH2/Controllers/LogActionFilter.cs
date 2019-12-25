﻿using QUANGHANH2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace QUANGHANH2.Controllers
{
    public class LogActionFilter : IActionFilter
    {
        public void OnActionExecuted(ActionExecutedContext filterContext)
        {
            Log("OnActionExecuted", filterContext.RouteData);
        }

        public void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Log("OnActionExecuting", filterContext.RouteData);
        }

        private void Log(string methodName, RouteData routeData)
        {
            if (HttpContext.Current.Session["userID"] == null || methodName.Equals("OnActionExecuting"))
                return;
            var Request = HttpContext.Current.Request;
            List<string> except = new List<string>() { "/Notifi/CDVT", "/" };     //  thêm path loại trừ tại đây
            bool hasMatch = except.Any(x => x.Equals(Request.FilePath));
            if (hasMatch)
                return;
            //string ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            //if (!string.IsNullOrEmpty(ip))
            //{
            //    if (ip.IndexOf(",") > 0)
            //    {
            //        string[] ipRange = ip.Split(',');
            //        int le = ipRange.Length - 1;
            //        ip = ipRange[le];
            //    }
            //}
            //else
            //{
            //    ip = Request.UserHostAddress;
            //}
            using (QUANGHANHABCEntities db = new QUANGHANHABCEntities())
            {
                User_Action_Log log = new User_Action_Log();
                int AccountID = int.Parse(HttpContext.Current.Session["userID"].ToString());
                log.AccountID = AccountID;
                log.Action_Time = DateTime.Now;
                log.Browser = Request.Browser.Browser;
                log.Method = "GET";
                log.Url = Request.UrlReferrer.AbsolutePath;
                User_Action_Log l = db.User_Action_Log.Where(x => x.AccountID.Equals(AccountID) && x.Browser.Equals(Request.Browser.Browser) && x.Url.Equals(Request.FilePath)).OrderByDescending(x => x.Action_Time).FirstOrDefault();
                if (l == null || DateTime.Now.Subtract(l.Action_Time.Value).TotalSeconds > 10)
                {
                    db.User_Action_Log.Add(log);
                    db.SaveChanges();
                }
            }
        }
    }
}