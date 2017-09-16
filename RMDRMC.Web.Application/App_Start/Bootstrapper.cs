using RMDRMC.Mapper.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RMDRMC.Web.Application
{
    public class Bootstrapper
    {
        public static void RegisterComponents()
        {
            //Configure Auto Mapper
            AutoMapperConfiguration.Configure();
        }
    }
}