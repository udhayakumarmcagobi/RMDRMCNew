using RMDRMC.Model.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.DomainToSql
{
    public class DomainToSqlEntityCustomMapper
    {
        public static int GetAccessID(ScreenAccess screenAccess)
        {
            if (screenAccess == ScreenAccess.None) return 1;
            if (screenAccess == ScreenAccess.ViewOnly) return 2;
            if (screenAccess == ScreenAccess.Modify) return 3;

            return 1;
        }
    }
}
