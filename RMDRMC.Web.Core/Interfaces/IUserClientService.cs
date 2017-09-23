using RMDRMCWeb.ViewModels.Domain;
using System.Collections.Generic;

namespace RMDRMC.Web.Core.Interfaces
{
    public interface IUserClientService
    {
       UsersVM GetEmptyUser();
       bool CreateNewUser(UsersVM rolesVM);
        bool UpdateUser(UsersVM rolesVM);
        bool DeleteUser(long roleID);
        List<UsersVM> GetUsers(string userPrefix);
        UsersVM GetUsersByID(long roleID);
    }
}
