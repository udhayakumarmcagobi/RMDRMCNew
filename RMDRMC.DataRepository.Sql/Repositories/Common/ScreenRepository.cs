using RMDRMC.Data.Sql;
using RMDRMC.DataRepository.Sql.Infrastructure;
using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.Mapper.Model;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Repositories
{
    public class ScreenRepository : EFRepository<ChildScreen>, IScreenRepository
    {
        public ScreenRepository() : base(new EFUnitOfWork()) { }

        public IEnumerable<Screen> GetAllScreenList()
        {
            var screenList = GetAll().ToList();

            return AutoMappers.Map<IEnumerable<ChildScreen>, IEnumerable<Screen>>(screenList);
        }
    }
}
