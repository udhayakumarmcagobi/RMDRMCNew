using RMDRMC.Web.Core.ClientServices;
using RMDRMC.Web.Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Controllers
{
    public class BaseController : Controller
    {
        protected readonly IRoleClientService roleClientService;

        public BaseController()
        {
            roleClientService = new RoleClientService();
        }

        [HttpGet]
        public ActionResult GetAllScreens()
        {
            return View();
        }

        public ActionResult GetScreensByRole(long roleID)
        {
           var roleVM =  roleClientService.GetRolesByID(roleID);

            return PartialView("_ScreenAccessSelection", roleVM);
        }
    }
}