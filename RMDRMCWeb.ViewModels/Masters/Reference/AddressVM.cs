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
        public AddressVM()
        {
            StateList = new List<Domain.StateVM>();
            CountryList = new List<Domain.CountryVM>();
        }

        public long AddressID { get; set; }
        public string Area { get; set; }
        public string District { get; set; }
        public string City { get; set; }   
        public List<StateVM> StateList { get; set; }
        public List<CountryVM> CountryList { get; set; }   
        public string Pincode { get; set; }  
        public string Email { get; set; }
        public string Http { get; set; }
        public bool Selected { get; set; }
    }
}
