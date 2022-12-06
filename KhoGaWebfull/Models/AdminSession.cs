using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KhoGaWebfull.Models
{
    public class AdminSession
    {
        public int UserID { get; set; }
        [Required]

        public string UserName { get; set; }
        [Required]
        public string Password { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public string Note { get; set; }
        public Nullable<int> RoleID { get; set; }
    }
}