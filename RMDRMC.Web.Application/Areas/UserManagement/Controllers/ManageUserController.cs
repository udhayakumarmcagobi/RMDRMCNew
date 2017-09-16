using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.UserManagement.Controllers
{
    public class ManageUserController : Controller
    {
        // GET: UserManagement/ManageUser
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "UserManagement";
            return View();
        }

        // GET: UserManagement/ManageRole/Create
        public ActionResult Create()
        {
            ViewBag.Sidemenu = "UserManagement";
            return View();
        }
    }
}