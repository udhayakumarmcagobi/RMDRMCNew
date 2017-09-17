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

        public ManageRoleController()
        {
            roleClientService = new RoleClientService();
        }
        // GET: UserManagement/ManageRole
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "UserManagement";
            return View();
        }

        // GET: UserManagement/ManageRole/Create
        public ActionResult Create()
        {
            ViewBag.page = "Create";
            ViewBag.PageName = "Create Role";
            ViewBag.ActionMethod = "CreateRole";
            ViewBag.Sidemenu = "UserManagement";

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

            return View(rolesVM);
        }
    }
}