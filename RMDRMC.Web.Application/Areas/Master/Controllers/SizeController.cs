﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class SizeController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Size";

        public SizeController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Size
        public ActionResult Index()
        {
            return View();
        }
    }
}