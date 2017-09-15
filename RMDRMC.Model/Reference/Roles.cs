using RMDRMC.Model.Domain;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Reference
{
    public class Roles
    {
        public long RoleID { get; set; }
        public string RoleName {get;set;}
        public List<Screen> AccessScreens { get; set; }
        public bool IsActive { get; set; }
    }
}
