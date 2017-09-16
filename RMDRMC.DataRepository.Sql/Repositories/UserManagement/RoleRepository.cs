using RMDRMC.Data.Sql;
using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.Mapper.Model;
using RMDRMC.Model.Reference;
using System.Collections.Generic;
using System.Linq;

namespace RMDRMC.DataRepository.Sql.Repositories
{
    public class RoleRepository : EFRepository<Role>, IRoleRepository
    {
        public RoleRepository() : base(new EFUnitOfWork()) { }

        public bool CreateRole(Roles role)
        {
            if (role == null) return false;

            var entity = GetFirstOrDefault(x => x.Name.Equals(role.RoleName));
            if (entity != null) return false;

            Role roleEntity = AutoMappers.Map<Roles, Role>(role);

            Insert(roleEntity);
            Commit();

            role.RoleID = roleEntity.RoleID;
            return true;
        }

        public bool UpdateRole(Roles role)
        {
            if (role == null || role.RoleID <= 0 || string.IsNullOrWhiteSpace(role.RoleName)) return false;

            var entity = GetFirstOrDefault(x => x.RoleID == role.RoleID && x.Name.Equals(role.RoleName));
            if (entity == null) return false;

            Role roleEntity = AutoMappers.Map<Roles, Role>(role);

            Update(roleEntity);
            Commit();

            return true;
        }

        public IEnumerable<Roles> GetAllRoles()
        {
            var roleEntityList =  GetAll().ToList();

            return AutoMappers.Map<IEnumerable<Role>, IEnumerable<Roles>>(roleEntityList);
        }

        public Roles GetRolesByID(long roleID)
        {
            if (roleID <= 0) return null;

            var roleEntity = GetFirstOrDefault(x => x.RoleID == roleID);

            return AutoMappers.Map<Role, Roles>(roleEntity);
        }

        public Roles GetRolesByName(string roleName)
        {
            if (string.IsNullOrWhiteSpace(roleName)) return null;

            var roleEntity = GetFirstOrDefault(x => x.Name.Equals(roleName));

            return AutoMappers.Map<Role, Roles>(roleEntity);
        }

        public bool DeleteRole(int roleID)
        {
            Delete(roleID);
            Commit();
            return true;
        }

    }
}
