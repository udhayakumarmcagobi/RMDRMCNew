using RMDRMC.Data.Sql;
using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.DataRepository.Sql.Interfaces.Master;
using RMDRMC.Mapper.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Repositories.Masters
{
    public class CustomerRepository : EFRepository<Customer>, ICustomerRepository
    {
        #region Constructors

        public CustomerRepository() : base(new EFUnitOfWork()) { }

        #endregion

        #region Public Methods

        public bool CreateCustomer(RMDRMC.Model.Master.Customer Customer)
        {
            if (Customer == null) return false;

            var entity = GetFirstOrDefault(x => x.Name.Equals(Customer.CustomerName));
            if (entity != null) return false;

            Customer CustomerEntity = AutoMappers.Map<RMDRMC.Model.Master.Customer, Customer>(Customer);

            Insert(CustomerEntity);
            Commit();

            Customer.CustomerID = CustomerEntity.ID;
            return true;
        }

        public bool UpdateCustomer(RMDRMC.Model.Master.Customer Customer)
        {
            if (Customer == null || Customer.CustomerID <= 0) return false;

            var entity = GetFirstOrDefault(x => x.ID == Customer.CustomerID);
            if (entity == null) return false;

            entity = AutoMappers.Map<RMDRMC.Model.Master.Customer, Customer>(Customer, entity);

            Update(entity);
            Commit();

            return true;
        }

        public IEnumerable<RMDRMC.Model.Master.Customer> GetAllCustomers()
        {
            var CustomerEntityList = GetAll().ToList();

            return AutoMappers.Map<IEnumerable<Customer>, IEnumerable<RMDRMC.Model.Master.Customer>>(CustomerEntityList);
        }

        public RMDRMC.Model.Master.Customer GetCustomerByID(long CustomerID)
        {
            if (CustomerID <= 0) return null;

            var CustomerEntity = GetFirstOrDefault(x => x.ID == CustomerID);

            return AutoMappers.Map<Customer, RMDRMC.Model.Master.Customer>(CustomerEntity);
        }

        public RMDRMC.Model.Master.Customer GetCustomerByName(string CustomerName)
        {
            if (string.IsNullOrWhiteSpace(CustomerName)) return null;

            var CustomerEntity = GetFirstOrDefault(x => x.Name.Equals(CustomerName));

            return AutoMappers.Map<Customer, RMDRMC.Model.Master.Customer>(CustomerEntity);
        }

        public bool DeleteCustomer(long CustomerID)
        {
            Delete(CustomerID);
            Commit();
            return true;
        }

        #endregion
    }
}
