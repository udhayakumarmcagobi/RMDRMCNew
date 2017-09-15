using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.DomainToSql
{
    public class DomainToSqlEntityMapperProfile : AutoMapper.Profile
    {
        public override string ProfileName
        {
            get { return "DomainToSqlEntityMapperProfile"; }
        }
    }
}
