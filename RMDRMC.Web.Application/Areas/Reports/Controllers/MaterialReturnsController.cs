using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class MaterialReturnsController : Controller
    {
        private const string SideMenu = "Reports";
        private const string sideMenuName = "MaterialReturns";

        public MaterialReturnsController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Reports/MaterialReturns
        public ActionResult Index()
        {
            return View();
        }
    }
}