using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.DataRepository.Sql.Repositories;
using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Model.Reference;
using System.Collections.Generic;

namespace RMDRMC.Domain.Core.Services
{
    public class BaseService : IBaseService
    {
        #region Fields

        protected readonly IScreenRepository screenRepository;
        protected readonly ICountryRepository countryRepository;
        protected readonly IStateRepository stateRepository;
        protected readonly IDepartmentRepository departmentRepository;
        protected readonly IDesignationRepository designationRepository;
        protected readonly IPaymentTermRepository paymentTermRepository;

        #endregion

        #region Constructors

        public BaseService()
        {
            screenRepository = new ScreenRepository();
            countryRepository = new CountryRepository();
            stateRepository = new StateRepository();
            departmentRepository = new DepartmentRepository();
            designationRepository = new DesignationRepository();
            paymentTermRepository = new PaymentTermRepository();
        }

        #endregion

        #region Public Methods

        public IEnumerable<Screen> GetAllScreens()
        {
            return screenRepository.GetAllScreenList();
        }

        public IEnumerable<Country> GetAllCountryList()
        {
            return countryRepository.GetAllCountryList();
        }

        public IEnumerable<State> GetAllStateList()
        {
            return stateRepository.GetAllStateList();
        }

        public IEnumerable<Department> GetAllDepartmentList()
        {
            return departmentRepository.GetAllDepartmentList();
        }

        public IEnumerable<Designation> GetAllDesignationList()
        {
            return designationRepository.GetAllDesignationList();
        }

        public IEnumerable<PaymentTerm> GetAllPaymentTermList()
        {
            return paymentTermRepository.GetAllPaymentTermList();
        }

        #endregion

    }
}
