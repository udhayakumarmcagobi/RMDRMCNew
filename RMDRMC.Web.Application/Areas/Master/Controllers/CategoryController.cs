using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class CategoryController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Category";

        public CategoryController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Category
        public ActionResult Index()
        {
            return View();
        }
    }
}