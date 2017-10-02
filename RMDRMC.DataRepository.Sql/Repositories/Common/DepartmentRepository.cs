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
    public class DepartmentRepository : EFRepository<Department>, IDepartmentRepository
    {
        public DepartmentRepository() : base(new EFUnitOfWork()) { }

        public IEnumerable<RMDRMC.Model.Reference.Department> GetAllDepartmentList()
        {
            var DepartmentList = GetAll().ToList();

            return AutoMappers.Map<IEnumerable<Department>, IEnumerable<RMDRMC.Model.Reference.Department>>(DepartmentList);
        }
    }
}
