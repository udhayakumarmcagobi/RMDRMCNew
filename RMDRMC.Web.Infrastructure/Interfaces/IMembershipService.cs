using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Infrastructure.Interfaces
{
    public interface IMembershipService
    {
        bool ValidateUser(string loginID, string password);
        UserBaseVM GetUserByLoginID(string loginID);
    }
}
