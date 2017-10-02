using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Masters
{
    public class AddressVM
    {
        public long AddressID { get; set; }
        public string Area { get; set; }
        public string District { get; set; }
        public string City { get; set; }   
        public StateVM StateVM { get; set; }
        public CountryVM CountryVM { get; set; }   
        public string Pincode { get; set; }  
        public string Email { get; set; }
        public string Http { get; set; }
        public bool Selected { get; set; }
    }
}
