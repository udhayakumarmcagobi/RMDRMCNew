﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class PropertyController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Property";

        public PropertyController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Property
        public ActionResult Index()
        {
            return View();
        }
    }
}