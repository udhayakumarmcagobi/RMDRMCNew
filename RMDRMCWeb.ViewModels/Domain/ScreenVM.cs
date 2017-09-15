using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class ScreenVM
    {
        public long ScreenID { get; set; }
        public string ScreenName { get; set; }
        public bool ScreenSelected { get; set; }
        public string ScreenAccess { get; set; }
        public List<ScreenVM> ChildScreens { get; set; }
    }
}
