using RMDRMC.Data.Sql;
using System.Threading.Tasks;

namespace RMDRMC.DataRepository.Sql.Infrastructure
{
    public sealed class DBFactory : Disposable, IDBFactory
    {
        RMDRMCContext dbContext;
        public RMDRMCContext GetContext()
        {
            return dbContext ?? (dbContext = new RMDRMCContext());
        }

        protected override void DisposeCore()
        {
            if (dbContext != null)
                dbContext.Dispose();
        }

        internal class Instance
        {
            static Instance() { }

            internal static readonly RMDRMCContext dbContext = new RMDRMCContext();
        }
    }
}
