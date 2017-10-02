using RMDRMC.Model.Master;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Interfaces.Master
{
    public interface ICustomerRepository
    {
        bool CreateCustomer(Customer Customer);

        bool UpdateCustomer(Customer Customer);

        IEnumerable<Customer> GetAllCustomers();

        Customer GetCustomerByID(long CustomerID);

        Customer GetCustomerByName(string CustomerName);

        bool DeleteCustomer(long CustomerID);
    }
}
