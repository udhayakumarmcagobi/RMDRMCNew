﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InventoryManagement.Controllers
{
    public class MaterialIssueReturnsController : Controller
    {
        // GET: InventoryManagement/MaterialIssueReturns
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "InventoryManagement";
            return View();
        }
    }
}