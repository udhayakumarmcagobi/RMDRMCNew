using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class DepartmentVM
    {
        public long DepartmentID { get; set; }
        public string DepartmentName { get; set; }
        public bool Selected { get; set; }
    }
}
