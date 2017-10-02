using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Domain.Core.Services;
using RMDRMC.Model.Reference;
using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Core.ClientServices
{
    public interface ICommonClientService
    {

        #region Country

        List<CountryVM> GetAllCountryList();

        List<CountryVM> GetAllCountryList(long selectedCountryID);


        #endregion

        #region State

        List<StateVM> GetAllStateList();


        #endregion

        #region Department

        List<DepartmentVM> GetAllDepartmentList();

        List<DepartmentVM> GetAllDepartmentList(long selectedDepartmentID);

        #endregion

        #region Designation

        List<DesignationVM> GetAllDesignationList();

        List<DesignationVM> GetAllDesignationList(long selectedDesignationID);

        #endregion

        #region Payment Terms

        List<PaymentTermVM> GetAllPaymentTermList();

        List<PaymentTermVM> GetAllPaymentTermList(long selectedPaymentTermID);

        #endregion

    }
}
