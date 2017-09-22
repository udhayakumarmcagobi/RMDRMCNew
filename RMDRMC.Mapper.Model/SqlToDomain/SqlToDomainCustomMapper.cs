using RMDRMC.Model.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.SqlToDomain
{
    public class SqlToDomainCustomMapper
    {
        public static ScreenAccess GetAccess(int screenAccess)
        {
            switch (screenAccess)
            {
                case 1:
                    return ScreenAccess.None;
                case 2:
                    return ScreenAccess.ViewOnly;
                case 3:
                    return ScreenAccess.Modify;
                default:
                    return ScreenAccess.None;
            }
        }
    }
}
