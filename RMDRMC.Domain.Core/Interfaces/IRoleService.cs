using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Domain.Core.Interfaces
{
    public interface IRoleService
    {
        IEnumerable<Roles> GetAllRoles();
        Roles GetAllRoleByID();
        Roles GetEmptyRole();
        bool CreateNewRole(Roles roles);
    }
}
