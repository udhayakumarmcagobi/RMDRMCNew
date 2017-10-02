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
    public class Customer : RMDRMCBase
    {
        public long CustomerID { get; set; }
        public string CustomerName { get; set; }
        public string Code { get; set; }
        public long Rating { get; set; }
        public string InvCustomerName { get; set; }
        public Customer ParentCustomer { get; set; }
        public long CustomerRRPLID { get; set; }
        public string CreditLimit { get; set; }
        public AccountManager AccountManager { get; set; }
        public PaymentTerm PaymentTerm { get; set; }
        public Address Address { get; set; }
        public OtherDetail OtherDetail { get; set; }

        public List<Contact> Contacts { get; set; }
    }
}
