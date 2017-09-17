using RMDRMC.Model.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Reference
{
    public class Screen
    {
        public long ScreenID { get; set; }
        public string ScreenName { get; set; }
        public long ParentScreenID { get; set; }
        public string ParentScreen { get; set; }
        public ScreenAccess ScreenAccess { get; set; }
    }
}
