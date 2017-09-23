using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.POManagement.Controllers
{
    public class GeneratePOController : Controller
    {
        private const string SideMenu = "POManagement";
        private const string sideMenuName = "GeneratePO";

        public GeneratePOController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: POManagement/GeneratePO
        public ActionResult Index()
        {
            return View();
        }
    }
}