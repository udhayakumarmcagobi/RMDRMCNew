using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.ViewModelToDomain
{
    public class ViewModelToDomainCustomMapper
    {
        public static Roles GetSelectedUserRole(long roleID)
        {
            return new Roles()
            {
                 RoleID = roleID
            };
        }
    }
}
