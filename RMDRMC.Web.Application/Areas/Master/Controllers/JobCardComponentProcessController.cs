﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class JobCardComponentProcessController : Controller
    {
        // GET: Master/JobCardComponentProcess
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "Masters";
            return View();
        }
    }
}