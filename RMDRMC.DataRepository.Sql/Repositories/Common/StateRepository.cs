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
    public class StateRepository : EFRepository<State>, IStateRepository
    {
        public StateRepository() : base(new EFUnitOfWork()) { }

        public IEnumerable<RMDRMC.Model.Reference.State> GetAllStateList()
        {
            var stateList = GetAll().ToList();

            return AutoMappers.Map<IEnumerable<State>, IEnumerable<RMDRMC.Model.Reference.State>>(stateList);
        }
    }
}
