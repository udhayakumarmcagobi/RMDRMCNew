using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class MachineController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Machine";

        public MachineController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Machine
        public ActionResult Index()
        {
            return View();
        }
    }
}