using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.VendorManagement.Controllers
{
    public class QuotationAcceptanceController : Controller
    {
        private const string SideMenu = "VendorManagement";
        private const string sideMenuName = "QuotationAcceptance";

        public QuotationAcceptanceController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: VendorManagement/QuotationAcceptance
        public ActionResult Index()
        {
            return View();
        }
    }
}