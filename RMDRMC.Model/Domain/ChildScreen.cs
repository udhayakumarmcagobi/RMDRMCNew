using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Domain
{
    public class Screen
    {
        public long ScreenID { get; set; }
        public string ScreenName { get; set; }
        public string ParentScreenID { get; set; }
        public string ParentScreen { get; set; }
    }
}
