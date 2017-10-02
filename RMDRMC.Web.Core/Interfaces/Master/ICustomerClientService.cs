using RMDRMCWeb.ViewModels.Masters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Core.Interfaces.Master
{
    public interface ICustomerClientService
    {
        CustomerVM GetEmptyCustomer();
        CustomerVM CreateNewCustomer(CustomerVM customerVM);
        CustomerVM UpdateCustomer(CustomerVM customerVM);
        bool DeleteCustomer(long customerID);
        List<CustomerVM> GetCustomers(string customerPrefix);
        CustomerVM GetCustomerByID(long customerID);
    }
}
