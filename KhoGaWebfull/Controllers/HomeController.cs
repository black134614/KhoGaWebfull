using KhoGaWebfull.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace KhoGaWebfull.Controllers
{
    public class HomeController : Controller
    {
        DBEntities db = new DBEntities();
        public async Task<ActionResult> Index()
        {
            ViewBag.NewProducts = await db.Products.Where(x => x.Status == true && x.ProductAvailable == true).OrderBy(x => x.OpenSellingDate).Take(8).ToListAsync(); 
            ViewBag.ChoiceProducts = await db.Products.Where(x => x.Status == true && x.ProductAvailable == true && x.IsChoice == true).OrderBy(x => x.OpenSellingDate).ToListAsync(); 
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }
        // GET: Header
        [ChildActionOnly]
        public ActionResult RenderHeader()
        {
            ViewBag.Category = db.Categories.Where(x => x.Status == true).OrderBy(x => x.Position).ToList();
            return PartialView("_Header");
        }

        // GET: Header
        [ChildActionOnly]
        public ActionResult HomeBanner()
        {
            ViewBag.Banner = db.Banners.Where(x => x.Status == true).OrderBy(x => x.CreateTime).ToList();
            return PartialView("_HomeBanner");
        }

        // GET: Header
        [ChildActionOnly]
        public ActionResult FutureProduct()
        {
            ViewBag.FutureProduct = db.Products.Where(x => x.Status == false).OrderBy(x => x.OpenSellingDate).ToList();
            return PartialView("_FutureProduct");
        }
    }
}