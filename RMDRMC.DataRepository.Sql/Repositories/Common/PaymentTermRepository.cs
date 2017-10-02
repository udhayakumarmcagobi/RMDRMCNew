using RMDRMC.Data.Sql;
using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.Mapper.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Repositories
{
    public class PaymentTermRepository : EFRepository<PaymentTerm>, IPaymentTermRepository
    {
        public PaymentTermRepository() : base(new EFUnitOfWork()) { }

        public IEnumerable<RMDRMC.Model.Reference.PaymentTerm> GetAllPaymentTermList()
        {
            var PaymentTermList = GetAll().ToList();

            return AutoMappers.Map<IEnumerable<PaymentTerm>, IEnumerable<RMDRMC.Model.Reference.PaymentTerm>>(PaymentTermList);
        }
    }
}
