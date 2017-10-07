using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class JobCardProcessandComponentController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "JobCardProcessandComponent";

        public JobCardProcessandComponentController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/JobCardProcessandComponent
        public ActionResult Index()
        {
            return View();
        }
    }
}