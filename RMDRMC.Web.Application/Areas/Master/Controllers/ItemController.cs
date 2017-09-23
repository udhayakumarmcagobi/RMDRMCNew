﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class ItemController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Item";

        public ItemController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Item
        public ActionResult Index()
        {
            return View();
        }
    }
}