using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using XamarinApp.Models;
using MarstonEventsApp.Common;
using MarstonEventsApp.Helpers;
using MarstonEventsApp.Models;

namespace MarstonEventsApp.Services
{
    public class Eventss : IEventss
    {
        private readonly IRequest _request;
        public Eventss()
        {
        }
        public async Task<List<Events>> LoadEvents()
        {
            try
            {
                string webURL = APIHelper.EventsAPI;
                HttpHelper httpHelper = new HttpHelper();
                APIResponse res = await httpHelper.callAPI(webURL, null);
                List<Events> events = new List<Events>();
                if(res.result==true)
                {
                    string obj = JsonConvert.SerializeObject(res.response);
                    events = JsonConvert.DeserializeObject<List<Events>>(obj);
                }
                return events;
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}
