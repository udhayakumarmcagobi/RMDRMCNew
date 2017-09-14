using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.InvoiceManagement.Controllers
{
    public class DCController : Controller
    {
        // GET: InvoiceManagement/DC
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "InvoiceManagement";
            return View();
        }
    }
}