using RMDRMC.Web.Application.Controllers;
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
        private const string SideMenuName = "UserManagement";

        public ManageRoleController():base()
        {
            roleClientService = new RoleClientService();
            ViewBag.Sidemenu = SideMenuName;
        }
        // GET: UserManagement/ManageRole
        public ActionResult Index()
        {
            var rolesVMList = roleClientService.GetRoles(string.Empty);
            return View(rolesVMList);
        }

        // GET: UserManagement/ManageRole/Create
        public ActionResult Create()
        {
            ViewBag.page = "Create";
            ViewBag.PageName = "Create Role";
            ViewBag.ActionMethod = "CreateRole";

            RolesVM rolesVM = roleClientService.GetEmptyRole();
            rolesVM.IsActive = true;

            return View(rolesVM);
        }

        // POST: UserManagement/ManageRole/Create
        [HttpPost]
        public ActionResult Create(RolesVM rolesVM)
        {
            string str = string.Empty;

            roleClientService.CreateNewRole(rolesVM);

            return new JsonResult
            {
                Data = new
                {
                    result = true,
                    data = rolesVM
                }

            };
        }

        // POST: UserManagement/ManageRole/Update
        [HttpPost]
        public ActionResult Update(RolesVM rolesVM)
        {
            string str = string.Empty;

            roleClientService.UpdateRole(rolesVM);

            return new JsonResult
            {
                Data = new
                {
                    result = true,
                    data = rolesVM
                }

            };
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