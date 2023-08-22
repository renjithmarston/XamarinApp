using System;
using System.Collections.Generic;
using System.Text;

namespace MarstonEventsApp.Helpers
{
    public class APIHelper
    {
        public static string url = "http://10.1.20.75:8081/";
        public static string loginAPI = url + "api/token";
        public static string EventsAPI = url + "api/event";
        public static string OrderAPI = url + "api/order";
        public static string logoutAPI = "";
    }
}
