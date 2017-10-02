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
    public class CountryRepository : EFRepository<Country>, ICountryRepository
    {
        public CountryRepository() : base(new EFUnitOfWork()) { }

        public IEnumerable<RMDRMC.Model.Reference.Country> GetAllCountryList()
        {
            var countryList = GetAll().ToList();

            return AutoMappers.Map<IEnumerable<Country>, IEnumerable<RMDRMC.Model.Reference.Country>>(countryList);
        }
    }
}
