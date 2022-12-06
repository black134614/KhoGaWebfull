using KhoGaWebfull.Models;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace KhoGaWebfull.Controllers
{
    public class AdminProductController : Controller
    {
        DBEntities db = new DBEntities();
        // GET: AdminProduct
        public async Task<ActionResult> index()
        {
            var ProductList = await db.Products.ToListAsync();
            return View(ProductList);
        }
        public ActionResult Edit(int id)
        {
            var product = db.Products.Where(x => x.ProductID == id).FirstOrDefault();
            ViewBag.categoryList = new SelectList(db.Categories, "CategoryID", "Title");
            return View(product);
        }

        public ActionResult Create()
        {
            return View();
        }
        public ActionResult Details(int id)
        {
            var product = db.Products.Where(x=>x.ProductID == id).FirstOrDefault();
            return View(product);
        }
        public ActionResult Delete()
        {
            return View();
        }
    }
}