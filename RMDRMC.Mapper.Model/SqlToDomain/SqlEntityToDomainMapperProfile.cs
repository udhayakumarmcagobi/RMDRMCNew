using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.SqlToDomain
{
    public class SqlEntityToDomainMapperProfile : AutoMapper.Profile
    {
        public override string ProfileName
        {
            get { return "SqlEntityToDomainMapperProfile"; }
        }
    }
}
