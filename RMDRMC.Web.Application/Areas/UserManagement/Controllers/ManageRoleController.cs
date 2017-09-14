using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.UserManagement.Controllers
{
    public class ManageRoleController : Controller
    {
        // GET: UserManagement/ManageRole
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "UserManagement";
            return View();
        }
    }
}