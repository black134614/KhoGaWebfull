//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KhoGaWebfull.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Category
    {
        public int CategoryID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public Nullable<int> Position { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreateBy { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public Nullable<System.DateTime> UpdateTime { get; set; }
    }
}
