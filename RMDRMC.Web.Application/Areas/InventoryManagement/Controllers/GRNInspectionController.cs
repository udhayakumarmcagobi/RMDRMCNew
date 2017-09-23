using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InventoryManagement.Controllers
{
    public class GRNInspectionController : Controller
    {
        private const string SideMenu = "InventoryManagement";
        private const string sideMenuName = "GRNInspection";

        public GRNInspectionController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: InventoryManagement/GRNInspection
        public ActionResult Index()
        {
            return View();
        }
    }
}