using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class RMDRMCBaseVM :UserBaseVM
    {
        public DateTime? CreatedOn { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public bool IsActive { get; set; }
    }
}
