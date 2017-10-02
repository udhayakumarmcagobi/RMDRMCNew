using RMDRMC.Data.Sql;
using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.Mapper.Model;
using System.Collections.Generic;
using System.Linq;

namespace RMDRMC.DataRepository.Sql.Repositories
{
    public class DesignationRepository : EFRepository<Designation>, IDesignationRepository
    {
        public DesignationRepository() : base(new EFUnitOfWork()) { }

        public IEnumerable<RMDRMC.Model.Reference.Designation> GetAllDesignationList()
        {
            var DesignationList = GetAll().ToList();

            return AutoMappers.Map<IEnumerable<Designation>, IEnumerable<RMDRMC.Model.Reference.Designation>>(DesignationList);
        }
    }
}
