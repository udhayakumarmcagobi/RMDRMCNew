using RMDRMC.Model.Domain;
using RMDRMC.Model.Master.Reference;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Master
{
    public class Vendor : RMDRMCBase
    {
        public long VendorID { get; set; }
        public string VendorName { get; set; }
        public string Code { get; set; }
        public long Rating { get; set; }
        public string POName { get; set; }
        public PaymentTerm PaymentTerm { get; set; }
        public Address Address { get; set; }
        public OtherDetail OtherDetail { get; set; }

        public List<Contact> Contacts { get; set; }
    }
}
