using RMDRMC.Web.Application.Helpers;
using RMDRMC.Web.Core.ClientServices;
using RMDRMC.Web.Core.Interfaces;
using RMDRMC.Web.Infrastructure.Interfaces;
using RMDRMC.Web.Infrastructure.Services;
using RMDRMCWeb.ViewModels.Domain;
using System.Web.Mvc;
using System.Web.Security;

namespace RMDRMC.Web.Application.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        private readonly IUserClientService userClientService;
        private readonly IMembershipService membershipService;

        private const string InCorrectLoginIdOrPassword = "Incorrect LoginId or Password.";
        private const string LoginFailed = "Login Failed";

        public AccountController()
        {
            userClientService = new UserClientService();
            membershipService = new MembershipService();
        }

        // GET: Account/Login
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }

        // GET: Account/Login
        [HttpPost]
        [AllowAnonymous]
        public ActionResult Login(UsersVM userVM)
        {
            if (ModelState.IsValid)
            {
                if (membershipService.ValidateUser(userVM.LoginID, userVM.Password))
                {
                    FormsAuthentication.SetAuthCookie(userVM.LoginID, true);

                    return UtilityHelpers.GetJsonResult(true, null);
                }

                return UtilityHelpers.GetJsonResult(false, InCorrectLoginIdOrPassword);
            }

            return UtilityHelpers.GetJsonResult(false, LoginFailed);
        }

        [HttpGet]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "Account", null);
        }
    }
}