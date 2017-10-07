using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Domain.Core.Interfaces
{
    public interface IUserService
    {
        IEnumerable<Users> GetAllUsers();
        Users GetAllUserByID(long userID);        
        bool CreateNewUser(Users users);
        bool UpdateUser(Users users);
        bool DeleteUser(long userID);        
    }
}
