using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class StateVM
    {
        public long StateID { get; set; }
        public string StateName { get; set; }
        public bool Selected { get; set; }
    }
}
