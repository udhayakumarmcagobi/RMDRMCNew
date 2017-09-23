using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class JobCardProcessComponentController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "JobCardProcessComponent";

        public JobCardProcessComponentController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/JobCardProcessComponent
        public ActionResult Index()
        {
            return View();
        }
    }
}