﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class VendorController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Vendor";

        public VendorController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Vendor
        public ActionResult Index()
        {
            return View();
        }
    }
}