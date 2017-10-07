using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class DescriptionController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Description";

        public DescriptionController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Masters/Description
        public ActionResult Index()
        {
            return View();
        }
    }
}