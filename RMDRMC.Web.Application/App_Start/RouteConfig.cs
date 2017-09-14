using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace RMDRMC.Web.Application
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
            name: "HomePage",
             url: "{controller}/{action}/{id}",
            defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional, }
            , namespaces: new[] { "RMDRMC.Web.Application.Controllers" }
            );

            routes.MapRoute(
            name: "IncompletePath",
             url: "{controller}/{action}/{id}",
            defaults: new { controller = "Error", action = "NotFound", id = UrlParameter.Optional, }
            , namespaces: new[] { "RMDRMC.Web.Application.Controllers" }
            );
        }
    }
}
