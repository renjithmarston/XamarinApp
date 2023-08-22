using MarstonEventsApp.Helpers;
using MarstonEventsApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using XamarinApp.Models;

namespace XamarinApp.Services
{
    public class Log : ILogin
    {
        public async Task<Logins> Logins(Logins login)
        {
            try
            {
                Logins login1 = new Logins();
                Logins login2 = new Logins();
                login1.UserName = login.UserName;
                login1.Password = login.Password;
                string webURL = APIHelper.loginAPI;
                HttpHelper httpHelper = new HttpHelper();
                APIResponse res = await httpHelper.callAPI(webURL, JsonConvert.SerializeObject(login1));
                if (res.result == true)
                {
                    string obj = JsonConvert.SerializeObject(res.response);
                    login2 = JsonConvert.DeserializeObject<Logins>(obj);
                }
                return login2;

               
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}
