using RMDRMC.Model.Master.Reference;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Master
{
    public class Manufacturer
    {
        public long ManufacturerID { get; set; }
        public string ManufacturerName { get; set; }
        public string Code { get; set; }
        public long Rating { get; set; }
        public PaymentTerm PaymentTerm { get; set; }
        public Address Address { get; set; }
        public OtherDetail OtherDetail { get; set; }
        public bool IsActive { get; set; }

        public List<Contact> Contacts { get; set; }
    }
}
