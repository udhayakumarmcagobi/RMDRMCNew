﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.POManagement.Controllers
{
    public class ApprovePOController : Controller
    {
        // GET: POManagement/ApprovePO
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "POManagement";
            return View();
        }
    }
}