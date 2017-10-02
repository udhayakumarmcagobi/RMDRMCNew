using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class CountryVM
    {
        public long CountryID { get; set; }
        public string CountryName { get; set; }
        public bool Selected { get; set; }
    }
}
