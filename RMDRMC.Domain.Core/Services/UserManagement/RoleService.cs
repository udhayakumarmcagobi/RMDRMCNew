using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.DataRepository.Sql.Repositories;
using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Domain.Core.Services
{
    public class RoleService :BaseService, IRoleService
    {
        private readonly IRoleRepository roleRepository;
        public RoleService():base()
        {
            roleRepository = new RoleRepository();           
        }

        public Roles GetAllRoleByID()
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Roles> GetAllRoles()
        {
            throw new NotImplementedException();
        }

        public Roles GetEmptyRole()
        {
            var role = new Roles();
            role.AccessScreens = GetAllScreens()?.Where(x => x.ParentScreenID != 1).ToList();

            return role;
        }
    }
}
