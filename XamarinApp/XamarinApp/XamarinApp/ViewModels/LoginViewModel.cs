using MarstonEventsApp.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Security.Cryptography;
using System.Text;
using Xamarin.Forms;
using XamarinApp.Models;
using XamarinApp.Services;
using XamarinApp.Views;
using static System.Net.Mime.MediaTypeNames;

namespace XamarinApp.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        private string userName;
        private string password;
        private string success;
        public ObservableCollection<Logins> l { get; }
        public Command LoginCommand { get; }
        Log _login = new Log();
        public LoginViewModel()
        {
            UserName = "";
            Password = "";
            l = new ObservableCollection<Logins>();
            LoginCommand = new Command(OnLoginClicked);
        }
        public string UserName
        {
            get => userName;
            set => SetProperty(ref userName, value);
        }

        public string Password
        {
            get => password;
            set => SetProperty(ref password, value);
        }
        public string Success
        {
            get => success;
            set => SetProperty(ref success, value);
        }
        private async void OnLoginClicked(object obj)
        {
            Logins logins=new Logins();
            Logins logins1 = new Logins();
            logins.UserName= userName;
            logins.Password = password;
            logins.UserId = 0;
            logins1 = await _login.Logins(logins);
            if (logins1 == null)
            {
                Success = "Failed";
            }
            else
            {
                Success = "Success";
                await App.Database.DeleteUserAsync();
                await App.Database.SaveUserAsync(new Users
                {
                    UserId = logins1.UserId,
                    Name= logins1.UserName,
                    Token= logins1.Token
                });
                await Shell.Current.GoToAsync($"//{nameof(AboutPage)}");
            }
        }
        public void OnAppearing()
        {
            UserName = "";
            Password = "";
        }


    }
}
