using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.POManagement.Controllers
{
    public class ApproveIndentController : Controller
    {
        // GET: POManagement/ApproveIndent
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "POManagement";
            return View();
        }
    }
}