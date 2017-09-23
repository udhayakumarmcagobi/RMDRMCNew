using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.POManagement.Controllers
{
    public class ApproveIndentController : Controller
    {
        private const string SideMenu = "POManagement";
        private const string sideMenuName = "ApproveIndent";

        public ApproveIndentController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: POManagement/ApproveIndent
        public ActionResult Index()
        {
            return View();
        }
    }
}