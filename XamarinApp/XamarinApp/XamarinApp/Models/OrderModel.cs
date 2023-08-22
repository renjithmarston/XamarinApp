using System;
using System.Collections.Generic;
using System.Text;

namespace XamarinApp.Models
{
    public class OrderModel
    {
        public int OrderId { get; set; }
        public string FirstName { get; set; }
        public string SurName { get; set; }
        public string Email { get; set; }
        public int EventId { get; set; }
    }
}
