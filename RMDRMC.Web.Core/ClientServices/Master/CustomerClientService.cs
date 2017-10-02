using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Domain.Core.Interfaces.Masters;
using RMDRMC.Domain.Core.Services.Masters;
using RMDRMC.Mapper.Model;
using RMDRMCWeb.ViewModels.Masters;
using System;
using System.Collections.Generic;
using System.Linq;
using RMDRMC.Model.Master;
using System.Text;
using System.Threading.Tasks;
using RMDRMC.Web.Core.Interfaces.Master;

namespace RMDRMC.Web.Core.ClientServices.Master
{
    public class CustomerClientService : ICustomerClientService
    {
        #region Fields

        private readonly ICustomerService customerService;
        private readonly ICommonClientService commonClientService;

        #endregion

        #region Constructors

        public CustomerClientService()
        {
            customerService = new CustomerService();
            commonClientService = new CommonClientService();
        }

        #endregion

        #region Public Methods

        public CustomerVM GetEmptyCustomer()
        {
            var customerVM = new CustomerVM();
            AddCustomerWithMasterDetails(customerVM);

            return customerVM;
        }

        public CustomerVM CreateNewCustomer(CustomerVM customerVM)
        {
            if (customerVM == null) return customerVM;

            var customer = AutoMappers.Map<CustomerVM, Customer>(customerVM);

            customerService.CreateNewCustomer(customer);

            customerVM = AutoMappers.Map<Customer, CustomerVM>(customer);

            return customerVM;
        }

        public CustomerVM UpdateCustomer(CustomerVM customerVM)
        {
            if (customerVM == null) return customerVM;

            var customers = AutoMappers.Map<CustomerVM, Customer>(customerVM);

            customerService.UpdateCustomer(customers);

            customerVM = AutoMappers.Map<Customer, CustomerVM>(customers);

            return customerVM;
        }

        public bool DeleteCustomer(long customerID)
        {
            if (customerID <= 0) return false;

            customerService.DeleteCustomer(customerID);

            return true;
        }

        public List<CustomerVM> GetCustomers(string customerPrefix)
        {
            var allCustomers = customerService.GetAllCustomers();

            var allCustomersVM = AutoMappers.Map<IEnumerable<Customer>, List<CustomerVM>>(allCustomers);

            if (string.IsNullOrWhiteSpace(customerPrefix)) return allCustomersVM;

            return allCustomersVM.Where(x => x.CustomerName.ToUpper().StartsWith(customerPrefix.ToUpper())).ToList();

        }

        public CustomerVM GetCustomerByID(long customerID)
        {
            var customer = customerService.GetAllCustomerByID(customerID);

            var customersVM = AutoMappers.Map<Customer, CustomerVM>(customer);

            return customersVM;
        }

        #endregion

        #region Private Methods

        private void AddCustomerWithMasterDetails(CustomerVM customerVM)
        {
            if (customerVM == null) return;

            customerVM.PaymentTermList = commonClientService.GetAllPaymentTermList();
            customerVM.AddressVM.CountryList = commonClientService.GetAllCountryList();            
        }

        #endregion
    }
}
