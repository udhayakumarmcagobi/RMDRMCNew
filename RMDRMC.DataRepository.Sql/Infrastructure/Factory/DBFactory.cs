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

        public async Task<RMDRMCContext> GetContextAsync()
        {
            if (dbContext != null) return dbContext;

            await Task.Run(() =>
            {
                dbContext = new RMDRMCContext();
            });

            return dbContext;
        }

        internal class Instance
        {
            static Instance() { }

            internal static readonly RMDRMCContext dbContext = new RMDRMCContext();
        }
    }
}
