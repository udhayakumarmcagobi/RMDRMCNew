﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class ComponentWiseController : Controller
    {
        private const string SideMenu = "Reports";
        private const string sideMenuName = "ComponentWise";

        public ComponentWiseController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Reports/ComponentWise
        public ActionResult Index()
        {            
            return View();
        }
    }
}