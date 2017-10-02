using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class PaymentTermVM
    {
        public long PaymentTermID { get; set; }
        public string PaymentTermName { get; set; }
        public bool Selected { get; set; }
    }
}
