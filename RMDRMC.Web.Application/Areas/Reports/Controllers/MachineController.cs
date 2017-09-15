using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.Reports.Controllers
{
    public class MachineController : Controller
    {
        // GET: Reports/Machine
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "Reports";
            return View();
        }
    }
}