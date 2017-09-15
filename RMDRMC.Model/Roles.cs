using RMDRMC.Model.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model
{
    public class Roles
    {
        public long RoleID { get; set; }
        public string RoleName {get;set;}
        public List<Screen> Screens { get; set; }
        public bool IsActive { get; set; }
    }
}
