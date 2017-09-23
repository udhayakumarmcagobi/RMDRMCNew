using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class ManufacturerController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Manufacturer";

        public ManufacturerController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Manufacturer
        public ActionResult Index()
        {
            return View();
        }
    }
}