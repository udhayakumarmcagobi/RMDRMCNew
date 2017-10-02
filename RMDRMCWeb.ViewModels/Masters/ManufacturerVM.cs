using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Masters
{
    public class ManufacturerVM
    {
        public long ManufacturerID { get; set; }
        public string ManufacturerName { get; set; }
        public string Code { get; set; }
        public long Rating { get; set; }
        public List<PaymentTermVM> PaymentTermList { get; set; }
        public AddressVM AddressVM { get; set; }
        public OtherDetailVM OtherDetailVM { get; set; }
        public bool IsActive { get; set; }
        public bool Selected { get; set; }

        public List<ContactVM> ContactsVM { get; set; }
    }
}
