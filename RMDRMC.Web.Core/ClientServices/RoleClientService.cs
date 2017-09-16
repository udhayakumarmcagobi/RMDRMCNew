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

            return AutoMappers.Map<Roles, RolesVM>(emptyRole);
        }
    }
}
