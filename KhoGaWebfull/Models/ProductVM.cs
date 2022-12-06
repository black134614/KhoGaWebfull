using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KhoGaWebfull.Models
{
    public class ProductVM
    {
        public int ProductID { get; set; }
        public string ProductTitle { get; set; }
        public string Description { get; set; }
        public Nullable<double> UnitPrice { get; set; }
        public Nullable<double> Discount { get; set; }
        public Nullable<double> ProductCost { get; set; }
        public Nullable<int> UnitInStock { get; set; }
        public Nullable<bool> ProductAvailable { get; set; }
        public string Detail { get; set; }
        public string PicturePath { get; set; }
        public string Note { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public Nullable<int> CreateBy { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public Nullable<System.DateTime> OpenSellingDate { get; set; }
        public Nullable<System.DateTime> UpdateTime { get; set; }
        public Nullable<bool> IsChoice { get; set; }
        public string CategoryTitle { get; set; }

        public double UnitOldPrice { get; set; }
    }
}