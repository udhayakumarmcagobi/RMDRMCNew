using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RMDRMC.Web.Application.Areas.VendorManagement.Controllers
{
    public class EnquiryController : Controller
    {
        // GET: VendorManagement/Enquiry
        public ActionResult Index()
        {
            ViewBag.Sidemenu = "VendorManagement";
            return View();
        }
    }
}