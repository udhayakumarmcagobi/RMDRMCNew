using RMDRMC.Web.Core.ClientServices;
using RMDRMC.Web.Core.Interfaces;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.UserManagement.Controllers
{
    public class ManageUserController : Controller
    {
        private readonly IUserClientService userClientService;

        private const string SideMenu = "UserManagement";
        private const string sideMenuName = "ManageUser";

        
        public ManageUserController()
        {
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;

            userClientService = new UserClientService();
        }

        // GET: UserManagement/ManageUser
        public ActionResult Index()
        {
            return View();
        }

        // GET: UserManagement/ManageUser/Create
        public ActionResult Create()
        {
            UsersVM usersVM = userClientService.GetEmptyUser();
            usersVM.IsActive = true;
            return View(usersVM);
        }
    }
}