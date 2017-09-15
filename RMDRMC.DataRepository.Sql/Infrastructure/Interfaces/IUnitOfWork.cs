using System;

namespace RMDRMC.DataRepository.Sql.Infrastructure
{
    public interface IUnitOfWork : IDisposable
    {
        void Commit();
        void Rollback();
    }
}
