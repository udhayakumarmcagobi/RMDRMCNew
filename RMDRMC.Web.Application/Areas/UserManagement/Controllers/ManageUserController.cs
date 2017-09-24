using RMDRMC.Web.Application.Helpers;
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
            ViewBag.PageName = "Manage User";

            return View();
        }

        // GET: UserManagement/ManageUser/Create
        public ActionResult Create()
        {
            ViewBag.PageName = "Create User";

            UsersVM usersVM = userClientService.GetEmptyUser();
            usersVM.IsActive = true;
            return View(usersVM);
        }

        // GET: UserManagement/ManageUser/Search
        [HttpPost]
        public ActionResult Search()
        {
            var usersList = userClientService.GetUsers("");

            return View("_UserSearch", usersList);
        }

        // POST: UserManagement/ManageUser/Create
        [HttpPost]
        public ActionResult Create(UsersVM usersVM)
        {
            usersVM.IsActive = true;
            if (ModelState.IsValid)
            {
                usersVM = userClientService.CreateNewUser(usersVM);
                return UtilityHelpers.GetJsonResult(true, usersVM);
            }

            return UtilityHelpers.GetJsonResult(false, usersVM);
        }
    }
}