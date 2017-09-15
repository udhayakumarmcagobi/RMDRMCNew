using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Domain
{
    public class RMDRMCBase : UserBase
    {
        public DateTime? CreatedOn { get; set; }
        public DateTime? ModifiedOn { get;set;}
        public bool IsActive { get; set; }
    }
}
