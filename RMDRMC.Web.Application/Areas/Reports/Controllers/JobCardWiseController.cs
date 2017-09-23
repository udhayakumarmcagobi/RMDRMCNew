using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class JobCardWiseController : Controller
    {
        private const string SideMenu = "Reports";
        private const string sideMenuName = "JobCardWise";

        public JobCardWiseController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Reports/JobCardWise
        public ActionResult Index()
        {
            return View();
        }
    }
}