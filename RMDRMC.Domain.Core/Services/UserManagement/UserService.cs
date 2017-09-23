using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.Domain.Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RMDRMC.Model.Reference;

namespace RMDRMC.Domain.Core.Services
{
    public class UserService : BaseService, IUserService
    {               
        public UserService()
        {
            
        }

        public bool CreateNewUser(Users users)
        {
            throw new NotImplementedException();
        }

        public bool DeleteUser(long userID)
        {
            throw new NotImplementedException();
        }

        public Users GetAllUserByID(long userID)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Users> GetAllUsers()
        {
            throw new NotImplementedException();
        }

        public bool UpdateUser(Users users)
        {
            throw new NotImplementedException();
        }
    }
}
