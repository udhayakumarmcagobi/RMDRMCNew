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
    public class RoleClientService : IRoleClientService
    {
        #region Fields

        private readonly IRoleService roleService;

        #endregion

        #region Constructors

        public RoleClientService()
        {
            roleService = new RoleService();
        }

        #endregion

        #region Public Methods

        public RolesVM GetEmptyRole()
        {
            var emptyRole = roleService.GetEmptyRole();

            var rolesVM = AutoMappers.Map<Roles, RolesVM>(emptyRole);

            rolesVM.ParentScreens = emptyRole.AccessScreens.GroupBy(a => a.ParentScreenID,
                                    (aKey, aData) =>
                                    new ScreenVM()
                                    {
                                        ScreenID = aKey,
                                        ScreenName = aData.FirstOrDefault().ParentScreen,
                                        ChildScreens = AutoMappers.Map<IEnumerable<Screen>, List<ScreenVM>>(aData)

                                    }).ToList();

            rolesVM.ParentScreens = GetCustomOrderScreen(rolesVM.ParentScreens);

            return rolesVM;
        }

        public bool CreateNewRole(RolesVM rolesVM)
        {
            if (rolesVM == null) return false;

            var roles = AutoMappers.Map<RolesVM, Roles>(rolesVM);

            roles.AccessScreens = GetAccessScreens(rolesVM.ParentScreens);

            roleService.CreateNewRole(roles);

            rolesVM = AutoMappers.Map<Roles, RolesVM>(roles);            

            return true;
        }

        public bool UpdateRole(RolesVM rolesVM)
        {
            if (rolesVM == null) return false;

            var roles = AutoMappers.Map<RolesVM, Roles>(rolesVM);

            roles.AccessScreens = GetAccessScreens(rolesVM.ParentScreens);

            roleService.UpdateRole(roles);

            rolesVM = AutoMappers.Map<Roles, RolesVM>(roles);

            return true;
        }

        public bool DeleteRole(long roleID)
        {
            if (roleID <=0) return false;

            roleService.DeleteRole(roleID);            

            return true;
        }

        public List<RolesVM> GetRoles(string rolePrefix)
        {
            var allRoles = roleService.GetAllRoles();

            var allRolesVM  = AutoMappers.Map<IEnumerable<Roles>, List<RolesVM>>(allRoles);

            if (string.IsNullOrWhiteSpace(rolePrefix)) return allRolesVM;

            return allRolesVM.Where(x => x.RoleName.StartsWith(rolePrefix)).ToList();

        }

        public RolesVM GetRolesByID(long roleID)
        {
            var role = roleService.GetAllRoleByID(roleID);

            return AutoMappers.Map<Roles, RolesVM>(role);                        
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
