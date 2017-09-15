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
        public string UserName { get; set; }
        public RolesVM UserRole { get; set; }
    }
}
