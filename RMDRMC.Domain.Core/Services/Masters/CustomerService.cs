using RMDRMC.DataRepository.Sql.Interfaces.Master;
using RMDRMC.DataRepository.Sql.Repositories.Masters;
using RMDRMC.Domain.Core.Interfaces.Masters;
using RMDRMC.Model.Master;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Domain.Core.Services.Masters
{
    public class CustomerService : MasterBaseService, ICustomerService
    {
        #region Fields

        private readonly ICustomerRepository customerRepository;

        #endregion

        #region Constructors

        public CustomerService()
        {
            customerRepository = new CustomerRepository();
        }

        #endregion

        #region Public Methods

        public bool CreateNewCustomer(Customer customer)
        {
            return customerRepository.CreateCustomer(customer);
        }

        public bool DeleteCustomer(long customerID)
        {
            return customerRepository.DeleteCustomer(customerID);
        }

        public Customer GetAllCustomerByID(long customerID)
        {
            return customerRepository.GetCustomerByID(customerID);
        }

        public IEnumerable<Customer> GetAllCustomers()
        {
            return customerRepository.GetAllCustomers();
        }

        public bool UpdateCustomer(Customer customers)
        {
            return customerRepository.UpdateCustomer(customers);
        }

        #endregion
    }
}
