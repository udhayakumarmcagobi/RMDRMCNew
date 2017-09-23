using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InvoiceManagement.Controllers
{
    public class DCController : Controller
    {
        private const string SideMenu = "InvoiceManagement";
        private const string sideMenuName = "DC";

        public DCController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: InvoiceManagement/DC
        public ActionResult Index()
        {
            return View();
        }
    }
}