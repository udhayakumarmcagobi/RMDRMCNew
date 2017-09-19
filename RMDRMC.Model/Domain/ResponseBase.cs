using RMDRMC.Model.Reference;
using System.Collections.Generic;

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
