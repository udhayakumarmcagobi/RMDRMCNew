using RMDRMC.Model.Reference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Domain
{
    public class ResponseBase : UserBase
    {
        public ResponseBase() {  }

        public int InformationCount { get; set; }
        public int WarningCount { get; set; }
        public int ErrorCount { get; set; }
        public List<string> Messages { get; set; }
    }
}
