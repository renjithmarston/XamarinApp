﻿using System;
using System.Collections.Generic;
using System.Text;

namespace MarstonEventsApp.Models
{
    public class APIResponse
    {
        public bool result { get; set; }
        public string message { get; set; }
        public object response { get; set; }
    }
}
