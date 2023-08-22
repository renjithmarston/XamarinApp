using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using XamarinApp.Models;

namespace MarstonEventsApp.Common
{
    public class Request : IRequest
    { 
        //public async Task<T>  GetMethod<T>(string name) 
        //{
        //     T rslt;
        //    try
        //    {
        //        var authHeader = new AuthenticationHeaderValue("bearer", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJKV1RTZXJ2aWNlQWNjZXNzVG9rZW4iLCJqdGkiOiI2Yzg4NDNkOS1kOWZmLTRkODktYTI3NC00ZjExMjE1MWJkNDkiLCJpYXQiOiIwMy8wMi8yMDIzIDEwOjQ5OjQyIiwiVXNlcklkIjoiMTI4NDQiLCJVc2VyTmFtZSI6IlJlbmppdGggRGV2YXNzeSIsImV4cCI6MTY3NTQyMTQ0MiwiaXNzIjoiSldUQXV0aGVudGljYXRpb25TZXJ2ZXIiLCJhdWQiOiJKV1RTZXJ2aWNlUG9zdG1hbkNsaWVudCJ9.TFnWwRdmrAp_XhUaKYmkMqsBHsXgCQPlfBW1KiX51EA");
        //        HttpClient client = new HttpClient();
        //        client.DefaultRequestHeaders.Authorization = authHeader;

        //        string apiUrl = "http://10.1.20.75:8081/api/" + name;

        //        var message = client.GetAsync(apiUrl).Result;

        //        if (message.IsSuccessStatusCode)
        //        {
        //             var apiResponse = await message.Content.ReadAsStringAsync();
        //            rslt = JsonConvert.DeserializeObject<T>(apiResponse);
        //        }  
                
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {

        //    }
        //    return rslt;

        //}
    }
}
