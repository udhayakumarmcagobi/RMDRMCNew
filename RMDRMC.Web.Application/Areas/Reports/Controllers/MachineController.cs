using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class MachineReportsController : Controller
    {
        private const string SideMenu = "Reports";
        private const string sideMenuName = "MachineReports";

        public MachineReportsController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Reports/MachineReports
        public ActionResult Index()
        {
            return View();
        }
    }
}