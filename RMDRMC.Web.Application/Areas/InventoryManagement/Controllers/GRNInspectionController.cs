﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InventoryManagement.Controllers
{
    public class GRNInspectionController : Controller
    {
        // GET: InventoryManagement/GRNInspection
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "InventoryManagement";
            return View();
        }
    }
}