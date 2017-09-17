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
        private readonly IRoleService roleService;
        public RoleClientService()
        {
            roleService = new RoleService();
        }

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

        private List<ScreenVM> GetCustomOrderScreen(List<ScreenVM> parentScreens)
        {
            return parentScreens.OrderBy(x => x.ScreenName.StartsWith("M") ? 1 
                    : x.ScreenName.StartsWith("V") ? 2
                    : x.ScreenName.StartsWith("P") ? 3
                    : x.ScreenName.StartsWith("Inven") ? 4
                    : x.ScreenName.StartsWith("J") ? 5
                    : x.ScreenName.StartsWith("R") ? 6 : 7).ToList();
        }

        public bool CreateNewRole(RolesVM rolesVM)
        {
            if (rolesVM == null) return false;

            var roles = AutoMappers.Map<RolesVM, Roles>(rolesVM);

            roles.AccessScreens = GetAccessScreens(rolesVM.ParentScreens);

            roleService.CreateNewRole(roles);

            rolesVM = AutoMappers.Map<Roles, RolesVM>(roles);

            rolesVM.ParentScreens = roles.AccessScreens.GroupBy(a => a.ParentScreenID,
                                    (aKey, aData) =>
                                    new ScreenVM()
                                    {
                                        ScreenID = aKey,
                                        ScreenName = aData.FirstOrDefault().ParentScreen,
                                        ChildScreens = AutoMappers.Map<IEnumerable<Screen>, List<ScreenVM>>(aData)

                                    }).OrderBy(x => x.ScreenName).ToList();

            return true;
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

        private ScreenAccess GetScreenAccess(ScreenVM screenVM)
        {
            if (screenVM.IsModifier) return ScreenAccess.Modify;

            if (screenVM.IsViewer) return ScreenAccess.ViewOnly;

            return ScreenAccess.None;
        }
    }
}
