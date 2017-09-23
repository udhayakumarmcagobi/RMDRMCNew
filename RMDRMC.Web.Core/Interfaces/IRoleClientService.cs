using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Core.Interfaces
{
    public interface IRoleClientService
    {
       RolesVM GetEmptyRole();
       bool CreateNewRole(RolesVM rolesVM);
        bool UpdateRole(RolesVM rolesVM);
        bool DeleteRole(long roleID);
        List<RolesVM> GetRoles(string rolePrefix);
       RolesVM GetRolesByID(long roleID);
    }
}
