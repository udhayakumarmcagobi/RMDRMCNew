using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class DesignationVM
    {
        public long DesignationID { get; set; }
        public string DesignationName { get; set; }
        public bool Selected { get; set; }
    }
}
