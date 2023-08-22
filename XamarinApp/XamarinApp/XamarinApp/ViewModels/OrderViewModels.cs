using MarstonEventsApp.Models;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;
using XamarinApp.Models;
using XamarinApp;
using XamarinApp.Views;
using MarstonEventsApp.Services;
using System.Collections.ObjectModel;
using static System.Net.Mime.MediaTypeNames;
using XamarinApp.ViewModels;
using System.Web;
using System.Threading.Tasks;

namespace XamarinApp.ViewModels
{
    [QueryProperty(nameof(OrderId), "orderid")]
    public class OrderViewModels : BaseViewModel, IQueryAttributable
    {
        private int orderid;
        private string firstName;
        private string surName;
        private string email;
        private int eventId;
        private INavigation _navigation;
        OrderModel order = new OrderModel();
        public Command OrderCommand { get; }
        public Command ClickBackCommand { get; }
        OrderService orderService = new OrderService();

        public OrderViewModels()
        {
            //OrderId = orderid;
            OrderCommand = new Command(OnOrderSearchClicked);
            ClickBackCommand = new Command(BackClicked);
        }
        public void ApplyQueryAttributes(IDictionary<string, string> query)
        {
            if (query.Count > 0)
            {
                //get the Id here.  
                string id = HttpUtility.UrlDecode(query["OrderId"]);
                OrderId = int.Parse(id);
                Search(OrderId);
            }

        }
        public int OrderId
        {
            get => orderid;
            set => SetProperty(ref orderid, value);
        }
        public string FirstName
        {
            get => firstName;
            set => SetProperty(ref firstName, value);
        }
        public string Surname
        {
            get => surName;
            set => SetProperty(ref surName, value);
        }
        public string Email
        {
            get => email;
            set => SetProperty(ref email, value);
        }
        public int EventId
        {
            get => eventId;
            set => SetProperty(ref eventId, value);
        }
        private async void BackClicked(object obj)
        {
            //await _navigation.PushAsync(new BarcodeScannerPage());
            //await Shell.Current.GoToAsync("..");
            // await Shell.Current.GoToAsync($"{nameof(BarcodeScannerPage)}");
            await Shell.Current.GoToAsync("//BarcodeScannerPage");
            //await NavigationPage.PushAsync(new BarcodeScannerPage());
        }
        private async void OnOrderSearchClicked(object obj)
        {
            //OrderModel order =new OrderModel();



            order = await orderService.LoadOrder(orderid);
            if (order != null)
            {
                FirstName = order.FirstName;
                Surname = order.SurName;
                Email = order.Email;
                EventId = order.EventId;
            }
        }
        private async Task Search(int id)
        {
            order = await orderService.LoadOrder(id);
            if (order != null)
            {
                FirstName = order.FirstName;
                Surname = order.SurName;
                Email = order.Email;
                EventId = order.EventId;
            }
        }

    }

}
