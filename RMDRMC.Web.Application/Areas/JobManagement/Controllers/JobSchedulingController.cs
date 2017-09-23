using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.JobManagement.Controllers
{
    public class JobSchedulingController : Controller
    {
        private const string SideMenu = "JobManagement";
        private const string sideMenuName = "JobScheduling";

        public JobSchedulingController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: JobManagement/JobScheduling
        public ActionResult Index()
        {
            return View();
        }
    }
}