using RMDRMCWeb.ViewModels.Masters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Master.Controllers
{
    public class CustomerController : Controller
    {
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Customer";

        public CustomerController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        // GET: Master/Customer
        public ActionResult Index()
        {
            ViewBag.Title = "Create Customer";

            CustomerVM customerVM = new CustomerVM();

            return View(customerVM);
        }
    }
}