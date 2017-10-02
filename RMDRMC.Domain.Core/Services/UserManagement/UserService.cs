using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.Domain.Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RMDRMC.Model.Reference;
using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.DataRepository.Sql.Repositories;

namespace RMDRMC.Domain.Core.Services
{
    public class UserService : BaseService, IUserService
    {
        #region Fields

        private readonly IUserRepository userRepository;

        #endregion

        #region Constructors

        public UserService()
        {
            userRepository = new UserRepository();
        }

        #endregion

        #region Public Methods

        public bool CreateNewUser(Users users)
        {
            return userRepository.CreateUser(users);
        }

        public bool DeleteUser(long userID)
        {
            return userRepository.DeleteUser(userID);
        }

        public Users GetAllUserByID(long userID)
        {
            return userRepository.GetUserByID(userID);
        }

        public IEnumerable<Users> GetAllUsers()
        {
            return userRepository.GetAllUsers();
        }

        public bool UpdateUser(Users users)
        {
            return userRepository.UpdateUser(users);
        }

        #endregion
    }
}
