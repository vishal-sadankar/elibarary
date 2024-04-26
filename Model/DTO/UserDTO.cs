using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace furniture.Model.DTO
{
    public class UserDTO
    {
        public string full_name { get; set; }
        public string DOB { get; set; }
        public string number{ get; set; }
        public string Email { get; set; }
        public string city { get; set; }
        public string pincode { get; set; }
        public string full_address { get; set; }
        
        public string member_id { get; set; }
        public string password { get; set; }
    }
}