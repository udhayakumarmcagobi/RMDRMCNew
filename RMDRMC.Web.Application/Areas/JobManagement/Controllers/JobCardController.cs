using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.JobManagement.Controllers
{
    public class JobCardController : Controller
    {
        // GET: JobManagement/JobCard
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "JobManagement";
            return View();
        }
    }
}