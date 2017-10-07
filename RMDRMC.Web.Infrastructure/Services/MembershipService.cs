using RMDRMC.Web.Infrastructure.Interfaces;
using System.Linq;
using RMDRMCWeb.ViewModels.Domain;
using RMDRMC.Model.Reference;

namespace RMDRMC.Web.Infrastructure.Services
{
    public class MembershipService : BaseClientService, IMembershipService
    {
        public MembershipService() : base() { }

        public bool ValidateUser(string loginID, string password)
        {
            if (string.IsNullOrWhiteSpace(loginID) || string.IsNullOrWhiteSpace(password)) return false;

            var users = userService.GetAllUsers();

            if (users == null || !users.Any()) return false;

            var currentUser = users.Where(x => x.LoginID.ToLower().Equals(loginID.ToLower()) && x.Password.Equals(password)).FirstOrDefault();

            if (currentUser == null) return false;

            return true;
        }

        public UserBaseVM GetUserByLoginID(string loginID)
        {
            if (string.IsNullOrWhiteSpace(loginID)) return null;

            var users = userService.GetAllUsers();

            if (users == null || !users.Any()) return null;

            var currentUser = users.Where(x => x.LoginID.ToLower().Equals(loginID.ToLower())).FirstOrDefault();

            if (currentUser == null) return null;

            return Mapper.Model.AutoMappers.Map<Users, UserBaseVM>(currentUser);
          
        }
    }
}
