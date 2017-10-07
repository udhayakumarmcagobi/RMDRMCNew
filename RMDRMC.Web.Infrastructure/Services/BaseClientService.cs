using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Domain.Core.Services;
using RMDRMC.Mapper.Model;
using RMDRMC.Model.Reference;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Infrastructure.Services
{
    public class BaseClientService
    {
        #region Fields

        protected readonly IUserService userService;        

        #endregion

        #region Constructors

        public BaseClientService()
        {
            userService = new UserService();
        }

        #endregion

        #region Protected Methods

        public virtual UsersVM GetUsersByID(long userID)
        {
            var user = userService.GetAllUserByID(userID);

            var usersVM = AutoMappers.Map<Users, UsersVM>(user);

            return usersVM;
        }

        #endregion
    }
}
