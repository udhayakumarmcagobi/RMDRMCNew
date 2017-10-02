using RMDRMC.Model.Reference;
using System.Collections.Generic;

namespace RMDRMC.DataRepository.Sql.Interfaces
{
    public interface IDesignationRepository
    {
        IEnumerable<Designation> GetAllDesignationList();
    }
}
