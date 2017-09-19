using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class RolesVM
    {
        public long RoleID { get; set; }
        public string RoleName { get; set; }
        public List<ScreenVM> ParentScreens { get; set; }
        public bool IsActive { get; set; }
        public bool Selected { get; set; }
    }
}
