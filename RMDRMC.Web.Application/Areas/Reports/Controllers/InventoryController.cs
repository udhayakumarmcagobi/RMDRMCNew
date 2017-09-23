using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class InventoryController : Controller
    {
        private const string SideMenu = "Reports";
        private const string sideMenuName = "Inventory";

        public InventoryController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Reports/Inventory
        public ActionResult Index()
        {
            return View();
        }
    }
}