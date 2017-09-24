using RMDRMCWeb.ViewModels.Domain;
using System.Collections.Generic;

namespace RMDRMC.Web.Core.Interfaces
{
    public interface IUserClientService
    {
        UsersVM GetEmptyUser();
        UsersVM CreateNewUser(UsersVM usersVM);
        bool UpdateUser(UsersVM usersVM);
        bool DeleteUser(long userID);
        List<UsersVM> GetUsers(string userPrefix);
        UsersVM GetUsersByID(long userID);
    }
}
