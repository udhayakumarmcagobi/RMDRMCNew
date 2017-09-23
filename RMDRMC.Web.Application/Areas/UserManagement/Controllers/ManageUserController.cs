using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.UserManagement.Controllers
{
    public class ManageUserController : Controller
    {
        private const string SideMenu = "UserManagement";
        private const string sideMenuName = "ManageUser";

        public ManageUserController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: UserManagement/ManageUser
        public ActionResult Index()
        {
            return View();
        }

        // GET: UserManagement/ManageRole/Create
        public ActionResult Create()
        {
            return View();
        }
    }
}