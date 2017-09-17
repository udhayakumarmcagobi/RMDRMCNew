using RMDRMC.Model.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Mapper.Model.DomainToViewModel
{
    public class DomainToViewModelCustomMapper
    {
        public static bool IsViewer(ScreenAccess access)
        {
            if (access != ScreenAccess.None) return true;

            return false;
        }

        public static bool IsModfier(ScreenAccess access)
        {
            if (access == ScreenAccess.Modify) return true;

            return false;
        }
    }
}
