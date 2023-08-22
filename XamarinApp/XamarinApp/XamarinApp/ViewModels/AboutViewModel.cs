using MarstonEventsApp.Services;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using XamarinApp.Models;

namespace XamarinApp.ViewModels
{
    public class AboutViewModel : BaseViewModel
    {
         Eventss _eve = new Eventss();
        public ObservableCollection<Events> events { get; }
        public Command LoadCommand { get; }
        public AboutViewModel()
        {
            Title = "About";
            events = new ObservableCollection<Events>();
            LoadCommand = new Command(async () => await ExecuteLoadItemsCommand());
            //OpenWebCommand = new Command(async () => await Browser.OpenAsync("https://aka.ms/xamarin-quickstart"));
        }
        async Task ExecuteLoadItemsCommand()
        {
            IsBusy = true;
            List<Events> e = await _eve.LoadEvents();
            events.Clear();
            foreach (var item in e)
            {
                events.Add(item);
            }
            IsBusy = false;
        }
        public void OnAppearing()
        {
            IsBusy = true;
        }

        public ICommand OpenWebCommand { get; }
    }
}