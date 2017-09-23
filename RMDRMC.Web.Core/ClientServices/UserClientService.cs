using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Domain.Core.Services;
using RMDRMC.Mapper.Model;
using RMDRMC.Model.Enum;
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
    public class UserClientService : IUserClientService
    {
        #region Fields

        private readonly IUserService userService;
        private readonly IRoleClientService roleClientService;
        

        #endregion

        #region Constructors

        public UserClientService()
        {
            userService = new UserService();
            roleClientService = new RoleClientService();
        }

        #endregion

        #region Public Methods

        public UsersVM GetEmptyUser()
        {            
            var usersVM = new UsersVM();

            usersVM.AllUserRoles = roleClientService.GetRoles(string.Empty);                        

            return usersVM;
        }

        public bool CreateNewUser(UsersVM usersVM)
        {
            if (usersVM == null) return false;

            var users = AutoMappers.Map<UsersVM, Users>(usersVM);            

            userService.CreateNewUser(users);

            usersVM = AutoMappers.Map<Users, UsersVM>(users);            

            return true;
        }

        public bool UpdateUser(UsersVM usersVM)
        {
            if (usersVM == null) return false;

            var users = AutoMappers.Map<UsersVM, Users>(usersVM);            

            userService.UpdateUser(users);

            usersVM = AutoMappers.Map<Users, UsersVM>(users);

            return true;
        }

        public bool DeleteUser(long userID)
        {
            if (userID <=0) return false;

            userService.DeleteUser(userID);            

            return true;
        }

        public List<UsersVM> GetUsers(string userPrefix)
        {
            var allUsers = userService.GetAllUsers();

            var allUsersVM  = AutoMappers.Map<IEnumerable<Users>, List<UsersVM>>(allUsers);

            if (string.IsNullOrWhiteSpace(userPrefix)) return allUsersVM;

            return allUsersVM.Where(x => x.UserName.StartsWith(userPrefix)).ToList();

        }

        public UsersVM GetUsersByID(long userID)
        {
            var user = userService.GetAllUserByID(userID);

            return AutoMappers.Map<Users, UsersVM>(user);                        
        }

        #endregion

        #region Private Methods

        private List<ScreenVM> GetCustomOrderScreen(List<ScreenVM> parentScreens)
        {
            return parentScreens.OrderBy(x => x.ScreenName.StartsWith("M") ? 1 
                    : x.ScreenName.StartsWith("V") ? 2
                    : x.ScreenName.StartsWith("P") ? 3
                    : x.ScreenName.StartsWith("Inven") ? 4
                    : x.ScreenName.StartsWith("J") ? 5
                    : x.ScreenName.StartsWith("R") ? 6 : 7).ToList();
        }

        private List<Screen> GetAccessScreens(List<ScreenVM> accessScreensVMList)
        {
            if (accessScreensVMList == null || !accessScreensVMList.Any()) return null;

            var newScreens = accessScreensVMList.Where(x => x.ChildScreens != null).SelectMany(x => x.ChildScreens, (parent, child) =>
                            new Screen()
                            {
                                ParentScreenID = parent.ScreenID,
                                ParentScreen = parent.ScreenName,
                                ScreenID = child.ScreenID,
                                ScreenName = child.ScreenName,
                                ScreenAccess = GetScreenAccess(child),
                            }).ToList();

            return newScreens;
        }

        #endregion

        #region Helper Methods

        private ScreenAccess GetScreenAccess(ScreenVM screenVM)
        {
            if (screenVM.IsModifier) return ScreenAccess.Modify;

            if (screenVM.IsViewer) return ScreenAccess.ViewOnly;

            return ScreenAccess.None;
        }

        #endregion
    }
}
