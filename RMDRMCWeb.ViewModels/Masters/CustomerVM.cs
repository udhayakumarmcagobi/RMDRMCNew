using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Masters
{
    public class CustomerVM : RMDRMCBaseVM
    {
        public long CustomerID { get; set; }
        public string CustomerName { get; set; }
        public string Code { get; set; }
        public List<RatingVM> RatingList { get; set; }
        public string InvCustomerName { get; set; }
        public List<CustomerVM> ParentCustomerVM { get; set; }
        public string ParentCustomerName { get; set; }
        public string ParentCustomerCode { get; set; }
        public long CustomerRRPLID { get; set; }
        public string CreditLimit { get; set; }
        public List<AccountManagerVM> AccountManagerList { get; set; }
        public List<PaymentTermVM> PaymentTermList { get; set; }
        public AddressVM AddressList { get; set; }
        public OtherDetailVM OtherDetailVM { get; set; }
        public bool Selected { get; set; }

        public List<ContactVM> ContactsVM { get; set; }
    }
}
