using RMDRMC.Data.Sql;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Interfaces
{
    public interface IUserRepository
    {
        bool CreateUser(Users user);

        bool UpdateUser(Users user);

        IEnumerable<Users> GetAllUsers();

        Users GetUserByID(long userID);

        Users GetUserByName(string userName);

        bool DeleteUser(long userID);
    }
}
