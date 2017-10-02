﻿using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Interfaces
{
    public interface IPaymentTermRepository
    {
        IEnumerable<PaymentTerm> GetAllPaymentTermList();
    }
}
