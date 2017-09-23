﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class DepartmentWiseController : Controller
    {
        private const string SideMenu = "Reports";
        private const string sideMenuName = "DepartmentWise";

        public DepartmentWiseController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Reports/DepartmentWise
        public ActionResult Index()
        {
            return View();
        }
    }
}