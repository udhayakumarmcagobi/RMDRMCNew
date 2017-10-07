using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Web.Infrastructure.Helper
{
    public sealed class Utility
    {
        public static string RemoveSpaceSlash(string value)
        {
            return value.Replace(" ", "").Replace("/", "");
        }
    }
}
