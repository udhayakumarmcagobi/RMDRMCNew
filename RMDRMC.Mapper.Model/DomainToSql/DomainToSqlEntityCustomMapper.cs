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
            switch (screenAccess)
            {
                case ScreenAccess.None:
                    return 1;
                case ScreenAccess.ViewOnly:
                    return 2;
                case ScreenAccess.Modify:
                    return 3;
                default:
                    return 1;
            }
        }
    }
}
