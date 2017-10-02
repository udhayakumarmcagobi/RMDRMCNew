using RMDRMC.Model.Master;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Domain.Core.Interfaces.Masters
{
    public interface ICustomerService
    {
        IEnumerable<Customer> GetAllCustomers();
        Customer GetAllCustomerByID(long CustomerID);
        bool CreateNewCustomer(Customer Customer);
        bool UpdateCustomer(Customer Customer);
        bool DeleteCustomer(long CustomerID);
    }
}
