﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class ComponentWiseController : Controller
    {
        // GET: Reports/ComponentWise
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "Reports";
            return View();
        }
    }
}