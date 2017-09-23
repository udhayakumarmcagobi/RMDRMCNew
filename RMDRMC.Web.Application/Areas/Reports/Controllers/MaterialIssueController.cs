using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class MaterialIssueController : Controller
    {
        private const string SideMenu = "Reports";
        private const string sideMenuName = "MaterialIssue";

        public MaterialIssueController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Reports/MaterialIssue
        public ActionResult Index()
        {
            return View();
        }
    }
}