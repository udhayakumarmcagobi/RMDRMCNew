using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class ComponentController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Component";

        public ComponentController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Component
        public ActionResult Index()
        {
            return View();
        }
    }
}