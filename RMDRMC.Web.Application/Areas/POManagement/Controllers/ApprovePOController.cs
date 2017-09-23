using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.POManagement.Controllers
{
    public class ApprovePOController : Controller
    {
        private const string SideMenu = "POManagement";
        private const string sideMenuName = "ApprovePO";

        public ApprovePOController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: POManagement/ApprovePO
        public ActionResult Index()
        {
            return View();
        }
    }
}