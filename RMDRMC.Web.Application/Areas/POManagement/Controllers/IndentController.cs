using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.POManagement.Controllers
{
    public class IndentController : Controller
    {
        private const string SideMenu = "POManagement";
        private const string sideMenuName = "Indent";

        public IndentController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: POManagement/Indent
        public ActionResult Index()
        {
            return View();
        }
    }
}