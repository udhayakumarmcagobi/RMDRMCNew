using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.VendorManagement.Controllers
{
    public class EnquiryController : Controller
    {
        private const string SideMenu = "VendorManagement";
        private const string sideMenuName = "Enquiry";

        public EnquiryController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: VendorManagement/Enquiry
        public ActionResult Index()
        {
            return View();
        }
    }
}