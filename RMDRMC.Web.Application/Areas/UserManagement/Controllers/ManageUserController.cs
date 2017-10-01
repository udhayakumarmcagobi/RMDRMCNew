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
        [ActionName("Create")]
        public ActionResult Create()
        {
            ViewBag.PageName = "Create User";
            ViewBag.Page = "Create";

            UsersVM usersVM = userClientService.GetEmptyUser();
            usersVM.IsActive = true;
            return View(usersVM);
        }

        // GET: UserManagement/ManageUser/Edit/1
        [HttpGet]
        [ActionName("Edit")]
        public ActionResult Create(string ID)
        {
            ViewBag.PageName = "Edit User";
            ViewBag.Page = "Edit";

            UsersVM usersVM = userClientService.GetUsersByID(Convert.ToInt64(ID));
            return View("Create",usersVM);
        }

        // GET: UserManagement/ManageUser/Search
        [HttpPost]
        public ActionResult Search(string firstName, string popup)
        {
            var usersList = userClientService.GetUsers(firstName);

            if(popup == "main") {
                return View("_UserSearch", usersList);
            }

            return View("_UserSearchResults", usersList);
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

        // POST: UserManagement/ManageUser/Update
        [HttpPost]
        [ActionName("Update")]
        public ActionResult Update(UsersVM usersVM)
        {            
            if (ModelState.IsValid)
            {
                usersVM = userClientService.UpdateUser(usersVM);
                return UtilityHelpers.GetJsonResult(true, usersVM);
            }

            return UtilityHelpers.GetJsonResult(false, usersVM);
        }

        // POST: UserManagement/ManageUser/Delete
        [HttpPost]
        public ActionResult Delete(long userID)
        {
            userClientService.DeleteUser(userID);

            return UtilityHelpers.GetJsonResult(true, null);
        }
    }
}