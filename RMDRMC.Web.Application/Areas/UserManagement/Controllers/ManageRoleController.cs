﻿using RMDRMC.Web.Application.Controllers;
using RMDRMC.Web.Application.Helpers;
using RMDRMC.Web.Core.ClientServices;
using RMDRMC.Web.Core.Interfaces;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.UserManagement.Controllers
{
    public class ManageRoleController : Controller
    {
        private readonly IRoleClientService roleClientService;        
        private const string SideMenu = "UserManagement";
        private const string sideMenuName = "ManageRole";

        public ManageRoleController():base()
        {
            roleClientService = new RoleClientService();
            ViewBag.Sidemenu = SideMenu;
            ViewBag.sideMenuName = sideMenuName;
        }
        // GET: UserManagement/ManageRole
        public ActionResult Index()
        {
            ViewBag.PageName = "Manage Roles";
            var rolesVMList = roleClientService.GetRoles(string.Empty);
            return View(rolesVMList);
        }

        // GET: UserManagement/ManageRole/Create
        public ActionResult Create()
        {            
            ViewBag.PageName = "Create Role";

            RolesVM rolesVM = roleClientService.GetEmptyRole();
            rolesVM.IsActive = true;

            return View(rolesVM);
        }

        // POST: UserManagement/ManageRole/Create
        [HttpPost]
        public ActionResult Create(RolesVM rolesVM)
        {
            roleClientService.CreateNewRole(rolesVM);

            return UtilityHelpers.GetJsonResult(true, rolesVM);
        }

        // POST: UserManagement/ManageRole/Update
        [HttpPost]
        public ActionResult Update(RolesVM rolesVM)
        {
            roleClientService.UpdateRole(rolesVM);

            return UtilityHelpers.GetJsonResult(true, rolesVM);
        }

        // POST: UserManagement/ManageRole/Delete
        [HttpPost]
        public ActionResult Delete(long roleID)
        {
            roleClientService.DeleteRole(roleID);

            return UtilityHelpers.GetJsonResult(true, null);
        }

        [HttpGet]
        [ActionName("GetScreenAccessByRoleID")]
        public ActionResult GetScreensByRole(long roleID)
        {
            var roleVM = roleClientService.GetRolesByID(roleID);

            return PartialView("_ScreenAccessSelection", roleVM);
        }
    }
}