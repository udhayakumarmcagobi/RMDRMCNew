using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InventoryManagement.Controllers
{
    public class GRNController : Controller
    {
        private const string SideMenu = "InventoryManagement";
        private const string sideMenuName = "GRN";

        public GRNController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: InventoryManagement/GRN
        public ActionResult Index()
        {
            return View();
        }
    }
}