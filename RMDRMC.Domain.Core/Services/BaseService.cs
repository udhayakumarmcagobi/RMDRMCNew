using RMDRMC.DataRepository.Sql.Interfaces;
using RMDRMC.DataRepository.Sql.Repositories;
using RMDRMC.Domain.Core.Interfaces;
using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Domain.Core.Services
{
    public class BaseService : IBaseService
    {
        private readonly IScreenRepository screenRepository;
        public BaseService()
        {
            screenRepository = new ScreenRepository();
        }

        public IEnumerable<Screen> GetAllScreens()
        {
            return screenRepository.GetAllScreenList();
        }
    }
}
