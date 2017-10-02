using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Masters
{
    public class VendorVM : RMDRMCBaseVM
    {
        public long VendorID { get; set; }
        public string VendorName { get; set; }
        public string Code { get; set; }
        public long Rating { get; set; }
        public string POName { get; set; }
        public List<PaymentTermVM> PaymentTermList { get; set; }
        public AddressVM AddressVM { get; set; }
        public OtherDetailVM OtherDetailVM { get; set; }
        public bool Selected { get; set; }

        public List<ContactVM> ContactsVM { get; set; }
    }
}
