using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Masters
{
    public class OtherDetailVM
    {
        public long OtherDetailID { get; set; }
        public string TIN { get; set; }
        public string CST { get; set; }
        public string ExciseNo { get; set; }
        public string Range { get; set; }
        public string Division { get; set; }
        public string VAT { get; set; }
        public bool Selected { get; set; }
    }
}
