using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.POManagement.Controllers
{
    public class IndentController : Controller
    {
        // GET: POManagement/Indent
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "POManagement";
            return View();
        }
    }
}