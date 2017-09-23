using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class ProcessDepartmentController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "ProcessDepartment";

        public ProcessDepartmentController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/ProcessDepartment
        public ActionResult Index()
        {
            return View();
        }
    }
}