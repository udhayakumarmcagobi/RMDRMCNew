using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Interfaces
{
    public interface IRoleRepository
    {
        bool CreateRole(Roles role);

        bool UpdateRole(Roles role);

        IEnumerable<Roles> GetAllRoles();

        Roles GetRolesByID(long roleID);

        Roles GetRolesByName(string roleName);

        bool DeleteRole(long roleID);
       
    }
}
