using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Domain.Core.Interfaces
{
    public interface IBaseService
    {
        IEnumerable<Screen> GetAllScreens();
        IEnumerable<Country> GetAllCountryList();
        IEnumerable<State> GetAllStateList();
        IEnumerable<Department> GetAllDepartmentList();
        IEnumerable<Designation> GetAllDesignationList();
        IEnumerable<PaymentTerm> GetAllPaymentTermList();

    }
}
