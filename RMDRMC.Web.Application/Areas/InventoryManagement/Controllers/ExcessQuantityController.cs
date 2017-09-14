using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InventoryManagement.Controllers
{
    public class ExcessQuantityController : Controller
    {
        // GET: InventoryManagement/ExcessQuantity
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "InventoryManagement";
            return View();
        }
    }
}