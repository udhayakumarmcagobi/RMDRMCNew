using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class UsersVM : RMDRMCBaseVM
    {        
        public string FirstName { get; set; }        
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Comments { get; set; }
        public string Phone { get; set; }        
        public string Mobile { get; set; }        
        public string Email { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public long RoleID { get; set; }
    }
}
