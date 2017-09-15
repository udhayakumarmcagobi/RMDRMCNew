using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Domain
{
    public class RequestBase : UserBase
    {
        public RequestBase() { }
        public Guid SessionID { get; set; }
    }
}
