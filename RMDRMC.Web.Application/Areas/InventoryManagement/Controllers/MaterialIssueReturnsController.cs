using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InventoryManagement.Controllers
{
    public class MaterialIssueReturnsController : Controller
    {
        private const string SideMenu = "InventoryManagement";
        private const string sideMenuName = "MaterialIssueReturns";

        public MaterialIssueReturnsController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: InventoryManagement/MaterialIssueReturns
        public ActionResult Index()
        {
            return View();
        }
    }
}