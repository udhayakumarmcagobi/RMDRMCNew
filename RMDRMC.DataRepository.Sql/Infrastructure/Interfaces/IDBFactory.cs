using RMDRMC.Data.Sql;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Infrastructure
{
    public interface IDBFactory
    {
        RMDRMCContext GetContext();
    }
}
