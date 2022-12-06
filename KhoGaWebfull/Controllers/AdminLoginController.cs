using KhoGaWebfull.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace KhoGaWebfull.Controllers
{
    public class AdminLoginController : Controller
    {
        DBEntities db = new DBEntities();
        // GET: AdminLogin
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(AdminSession login)
        {
            @ViewBag.ErrorMessage = "";
            if (ModelState.IsValid)
            {
                var model = (from m in db.Users
                             where m.UserName == login.UserName && m.Password == login.Password && m.RoleID == 1
                             select m).Any();

                if (model)
                {
                    var loginInfo = db.Users.Where(x => x.UserName == login.UserName && x.Password == login.Password).FirstOrDefault();

                    Session["AdminSession"] = loginInfo.UserName;
                    return RedirectToAction("Index", "AdminHome");
                }
                else
                {
                    //ModelState.AddModelError(nameof(AdminSession.UserName), "Tài khoản hoặc mật khẩu sai!");
                    //Hoặc in viewbag
                    @ViewBag.ErrorMessage = "Tài khoản hoặc mật khẩu sai!";
                }
            }
            return View();
        }
    }
}