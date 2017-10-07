using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class UserBaseVM
    {
        public long UserID { get; set; }
        public string LoginID { get; set; }
        public bool IsAdmin { get; set; }
        public RolesVM UserRoleSelected { get; set; }
        public List<RolesVM> AllUserRoles { get; set; }
    }
}
