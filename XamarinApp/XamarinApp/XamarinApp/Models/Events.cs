using System;
using System.Collections.Generic;
using System.Text;

namespace XamarinApp.Models
{
    public class Events
    {
        public int EventID { get; set; }
        public string EventType { get; set; }
        public string OrganizationName { get; set; }
        public string EventManager { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
    }
}
