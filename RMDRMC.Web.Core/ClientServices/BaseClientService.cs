using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Domain.Core.Services;
using RMDRMC.Mapper.Model;
using RMDRMC.Model.Reference;
using RMDRMC.Web.Core.Interfaces;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Core.ClientServices
{
    public class BaseClientService
    {
        #region Fields

        protected readonly IUserService userService;
        protected readonly IRoleClientService roleClientService;

        #endregion

        #region Constructors

        public BaseClientService()
        {
            userService = new UserService();
            roleClientService = new RoleClientService();
        }

        #endregion

        #region Protected Methods

        public UsersVM GetUsersByID(long userID)
        {
            var user = userService.GetAllUserByID(userID);

            var usersVM = AutoMappers.Map<Users, UsersVM>(user);

            usersVM.AllUserRoles = roleClientService.GetRoles(string.Empty, usersVM.UserRoleSelected.RoleID);

            return usersVM;
        }

        #endregion
    }
}
