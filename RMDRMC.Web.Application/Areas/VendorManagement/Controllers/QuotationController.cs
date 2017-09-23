using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.VendorManagement.Controllers
{
    public class QuotationController : Controller
    {
        private const string SideMenu = "VendorManagement";
        private const string sideMenuName = "Quotation";

        public QuotationController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }
        // GET: VendorManagement/Quotation
        public ActionResult Index()
        {
            return View();
        }
    }
}