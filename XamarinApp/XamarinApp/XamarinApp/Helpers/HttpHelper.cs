using MarstonEventsApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using XamarinApp;

namespace MarstonEventsApp.Helpers
{
    public class HttpHelper
    {

        public async Task<APIResponse> callAPI(string url, string json)
        {
            APIResponse res = new APIResponse();
            try
            {
                List<Users> users = new List<Users>();
                users = await App.Database.GetUsersAsync();
                string token =users.Select(v=>v.Token).FirstOrDefault();
                string content = string.Empty;
                var authHeader = new AuthenticationHeaderValue("bearer", token);
                HttpClient httpClient = new HttpClient();
                httpClient.DefaultRequestHeaders.Authorization = authHeader;
                HttpResponseMessage httpResponse = null;
                if (String.IsNullOrWhiteSpace(json))
                {
                    httpResponse = await httpClient.GetAsync(url);
                }
                else
                {
                    var httpContent = new StringContent(json, Encoding.UTF8, "application/json");
                    httpResponse = await httpClient.PostAsync(url, httpContent);

                }

                if (httpResponse.IsSuccessStatusCode)
                {
                    content = await httpResponse.Content.ReadAsStringAsync();
                    res = JsonConvert.DeserializeObject<APIResponse>(content);
                }
                else
                {
                    res.response = null;
                    res.message = "Invalid Response";
                    res.result = false;
                }

                return res;
            }
            catch (Exception ex)
            {
                res.response = ex.Message.ToString();
                res.message = "Invalid Response";
                res.result = false;
                return res;
            }
        }

    }
}
