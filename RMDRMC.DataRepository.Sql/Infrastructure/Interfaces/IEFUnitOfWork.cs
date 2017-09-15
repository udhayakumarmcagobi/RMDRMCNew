using System.Data.Entity;

namespace RMDRMC.DataRepository.Sql.Infrastructure
{
    public interface IEFUnitOfWork : IUnitOfWork
    {
        DbContext Context { get; }
    }
}
