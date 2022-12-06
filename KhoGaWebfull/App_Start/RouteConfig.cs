using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace KhoGaWebfull
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Product",
                url: "{CategoryTitle}-{CategoryID}",
                defaults:new { controller = "Product", action = "Index", CategoryID = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Product-Detail",
                url: "{CategoryTitle}-{CategoryID}/{productTitle}-{ProductID}",
                defaults: new { controller = "Product", action = "ProductDetail", CategoryID = UrlParameter.Optional, ProductID = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Admin-Home",
                url: "Admin",
                defaults: new { controller = "AdminHome", action = "Index" }
            );

        }
    }
}
