using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.JobManagement.Controllers
{
    public class JobCardController : Controller
    {
        private const string SideMenu = "JobManagement";
        private const string sideMenuName = "JobCard";

        public JobCardController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: JobManagement/JobCard
        public ActionResult Index()
        {
            return View();
        }
    }
}