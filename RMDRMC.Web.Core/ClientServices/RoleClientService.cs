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
 
                                    }).OrderByDescending(x => x.ChildScreens.Count).ToList();

            return rolesVM;
        }
    }
}
