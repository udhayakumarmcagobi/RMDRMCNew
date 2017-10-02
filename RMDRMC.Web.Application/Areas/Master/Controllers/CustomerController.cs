using RMDRMC.Web.Core.ClientServices.Master;
using RMDRMC.Web.Core.Interfaces.Master;
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
        #region Fields

        private readonly ICustomerClientService customerClientService;
        private const string SideMenu = "Masters";
        private const string sideMenuName = "Customer";

        #endregion

        #region Constructors

        public CustomerController()
        {
            customerClientService = new CustomerClientService();
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }

        #endregion

        // GET: Master/Customer
        public ActionResult Index()
        {
            ViewBag.Title = "Create Customer";

            CustomerVM customerVM = customerClientService.GetEmptyCustomer();

            return View(customerVM);
        }
    }
}