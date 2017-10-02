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
    public class CommonClientService : ICommonClientService
    {
        #region Fields

        private readonly IBaseService baseService;

        #endregion

        #region Constructors

        public CommonClientService()
        {
            baseService = new BaseService();
        }

        #endregion

        #region public Methods

        #region Country

        public List<CountryVM> GetAllCountryList()
        {
            var countryList = baseService.GetAllCountryList();

            if (countryList == null || !countryList.Any()) return new List<CountryVM>() ;

            return Mapper.Model.AutoMappers.Map<IEnumerable<Country>, List<CountryVM>>(countryList);
        }

        public List<CountryVM> GetAllCountryList(long selectedCountryID)
        {
            var countryList = baseService.GetAllCountryList();

            if (countryList == null || !countryList.Any()) return new List<CountryVM>();

            var countryVMList =  Mapper.Model.AutoMappers.Map<IEnumerable<Country>, List<CountryVM>>(countryList);

            if (countryVMList == null || !countryVMList.Any()) return new List<CountryVM>();

            countryVMList.Where(x => x.CountryID == selectedCountryID).ToList().ForEach(x => x.Selected = true);

            return countryVMList;
        }

        #endregion

        #region State

        public List<StateVM> GetAllStateList()
        {
            var stateList = baseService.GetAllStateList();

            if (stateList == null || !stateList.Any()) return new List<StateVM>();

            return Mapper.Model.AutoMappers.Map<IEnumerable<State>, List<StateVM>>(stateList);
        }

        #endregion

        #region Department

        public List<DepartmentVM> GetAllDepartmentList()
        {
            var departmentList = baseService.GetAllDepartmentList();

            if (departmentList == null || !departmentList.Any()) return new List<DepartmentVM>();

            return Mapper.Model.AutoMappers.Map<IEnumerable<Department>, List<DepartmentVM>>(departmentList);
        }

        public List<DepartmentVM> GetAllDepartmentList(long selectedDepartmentID)
        {
            var departmentList = baseService.GetAllDepartmentList();

            if (departmentList == null || !departmentList.Any()) return new List<DepartmentVM>();

            var departmentVMList = Mapper.Model.AutoMappers.Map<IEnumerable<Department>, List<DepartmentVM>>(departmentList);

            if (departmentVMList == null || !departmentVMList.Any()) return new List<DepartmentVM>();

            departmentVMList.Where(x => x.DepartmentID == selectedDepartmentID).ToList().ForEach(x => x.Selected = true);

            return departmentVMList;
        }

        #endregion

        #region Designation

        public List<DesignationVM> GetAllDesignationList()
        {
            var designationList = baseService.GetAllDesignationList();

            if (designationList == null || !designationList.Any()) return new List<DesignationVM>();

            return Mapper.Model.AutoMappers.Map<IEnumerable<Designation>, List<DesignationVM>>(designationList);
        }

        public List<DesignationVM> GetAllDesignationList(long selectedDesignationID)
        {
            var designationList = baseService.GetAllDesignationList();

            if (designationList == null || !designationList.Any()) return new List<DesignationVM>();

            var designationVMList = Mapper.Model.AutoMappers.Map<IEnumerable<Designation>, List<DesignationVM>>(designationList);

            if (designationVMList == null || !designationVMList.Any()) return new List<DesignationVM>();

            designationVMList.Where(x => x.DesignationID == selectedDesignationID).ToList().ForEach(x => x.Selected = true);

            return designationVMList;
        }

        #endregion

        #region Payment Terms

        public List<PaymentTermVM> GetAllPaymentTermList()
        {
            var paymentTermList = baseService.GetAllPaymentTermList();

            if (paymentTermList == null || !paymentTermList.Any()) return new List<PaymentTermVM>();

            return Mapper.Model.AutoMappers.Map<IEnumerable<PaymentTerm>, List<PaymentTermVM>>(paymentTermList);
        }

        public List<PaymentTermVM> GetAllPaymentTermList(long selectedPaymentTermID)
        {
            var paymentTermList = baseService.GetAllPaymentTermList();

            if (paymentTermList == null || !paymentTermList.Any()) return new List<PaymentTermVM>();

            var paymentTermVMList = Mapper.Model.AutoMappers.Map<IEnumerable<PaymentTerm>, List<PaymentTermVM>>(paymentTermList);

            if (paymentTermVMList == null || !paymentTermVMList.Any()) return new List<PaymentTermVM>();

            paymentTermVMList.Where(x => x.PaymentTermID == selectedPaymentTermID).ToList().ForEach(x => x.Selected = true);

            return paymentTermVMList;
        }

        #endregion

        #endregion

    }
}
