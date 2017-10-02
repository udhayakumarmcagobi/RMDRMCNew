using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Master.Reference
{
    public class Address
    {
        public long AddressID { get; set; }
        public string Area { get; set; }
        public string District { get; set; }
        public string City { get; set; }   
        public State State { get; set; }
        public Country Country { get; set; }   
        public string Pincode { get; set; }  
        public string Email { get; set; }
        public string Http { get; set; }
    }
}
