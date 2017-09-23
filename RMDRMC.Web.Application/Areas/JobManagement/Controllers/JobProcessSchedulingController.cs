using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.JobManagement.Controllers
{
    public class JobProcessSchedulingController : Controller
    {
        private const string SideMenu = "JobManagement";
        private const string sideMenuName = "JobProcessScheduling";

        public JobProcessSchedulingController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: JobManagement/JobProcessScheduling
        public ActionResult Index()
        {
            return View();
        }
    }
}