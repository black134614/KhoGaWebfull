using KhoGaWebfull.ClassHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KhoGaWebfull.Controllers
{
    [SessionCheck]
    public class AdminHomeController : Controller
    {
        // GET: Default1
        public ActionResult Index()
        {

            return View();
        }
    }
}