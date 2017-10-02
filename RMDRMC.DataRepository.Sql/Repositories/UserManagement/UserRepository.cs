using RMDRMC.Data.Sql;
using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.Mapper.Model;
using RMDRMC.Model.Reference;
using System.Collections.Generic;
using System.Linq;

namespace RMDRMC.DataRepository.Sql.Repositories
{
    public class UserRepository : EFRepository<User>, IUserRepository
    {
        #region Constructors

        public UserRepository() : base(new EFUnitOfWork()) { }

        #endregion

        #region Public Methods

        public bool CreateUser(Users user)
        {
            if (user == null) return false;

            var entity = GetFirstOrDefault(x => x.LoginID.Equals(user.LoginID));
            if (entity != null) return false;

            User userEntity = AutoMappers.Map<Users, User>(user);

            Insert(userEntity);
            Commit();

            user.UserID = userEntity.UserID;
            return true;
        }

        public bool UpdateUser(Users user)
        {
            if (user == null || user.UserID <= 0) return false;

            var entity = GetFirstOrDefault(x => x.UserID == user.UserID);
            if (entity == null) return false;
            
            entity = AutoMappers.Map<Users, User>(user, entity);                       

            Update(entity);
            Commit();

            return true;
        }

        public IEnumerable<Users> GetAllUsers()
        {
            var userEntityList =  GetAll().ToList();

            return AutoMappers.Map<IEnumerable<User>, IEnumerable<Users>>(userEntityList);
        }

        public Users GetUserByID(long userID)
        {
            if (userID <= 0) return null;

            var userEntity = GetFirstOrDefault(x => x.UserID == userID);

            return AutoMappers.Map<User, Users>(userEntity);
        }

        public Users GetUserByName(string userName)
        {
            if (string.IsNullOrWhiteSpace(userName)) return null;

            var userEntity = GetFirstOrDefault(x => x.LoginID.Equals(userName));

            return AutoMappers.Map<User, Users>(userEntity);
        }

        public bool DeleteUser(long userID)
        {
            Delete(userID);
            Commit();
            return true;
        }

        #endregion

    }
}
