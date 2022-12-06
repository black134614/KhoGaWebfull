using KhoGaWebfull.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Dynamic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace KhoGaWebfull.Controllers
{
    public class ProductController : Controller
    {
        DBEntities db = new DBEntities();
        // GET: Product
        public async Task<ActionResult> Index(int CategoryID)
        {
            var productList = await db.Products.Where(x => x.CategoryID == CategoryID && x.Status == true && x.ProductAvailable == true)
                .Join(db.Categories,
                x => x.CategoryID,
                y => y.CategoryID,
                (x, y) => new { Product = x, Category = y })
                .Select(x => new ProductVM
                {
                    ProductID = x.Product.ProductID,
                    ProductTitle = x.Product.Title,
                    CategoryTitle = x.Category.Title,
                    CategoryID = x.Product.CategoryID,
                    UnitInStock = x.Product.UnitInStock,
                    Description = x.Product.Description,
                    UnitPrice = x.Product.UnitPrice,
                    Discount = x.Product.Discount,
                    Detail = x.Product.Detail,
                    PicturePath = x.Product.PicturePath,
                    UnitOldPrice = (double)x.Product.UnitPrice + (double)x.Product.Discount

                }).ToListAsync();

            return View(productList);
        }
        public async Task<ActionResult> ProductDetail(int CategoryID, int ProductID)
        {
            var product = await db.Products.Where(x => x.ProductID == ProductID).FirstOrDefaultAsync();
            return View(product);
        }
       
    }
}