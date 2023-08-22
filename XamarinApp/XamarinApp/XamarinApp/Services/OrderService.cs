using MarstonEventsApp.Helpers;
using MarstonEventsApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using XamarinApp.Models;

namespace MarstonEventsApp.Services
{
    public class OrderService
    {
        public async Task<OrderModel> LoadOrder(int orderId)
        {
            try
            {
                string webURL = APIHelper.OrderAPI + "?OrderId={0}";
                HttpHelper httpHelper = new HttpHelper();
                APIResponse res = await httpHelper.callAPI(string.Format(webURL, orderId), null);
                OrderModel order = new OrderModel();
                if (res.result == true)
                {
                    string obj = JsonConvert.SerializeObject(res.response);
                    order = JsonConvert.DeserializeObject<OrderModel>(obj);
                }
                return order;
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}
