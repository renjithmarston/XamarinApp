using MarstonEventsApp.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Essentials;
using Xamarin.Forms;
using XamarinApp.Models;
using XamarinApp.ViewModels;
using XamarinApp.Views;

namespace XamarinApp.ViewModels
{
    public class BarcodeScannerViewModel : BaseViewModel
    {
        private INavigation _navigation;

        public Command SearchClick { get; }
        public BarcodeScannerViewModel()
        {
            Title = "Barcode Scanner";
            SearchClick = new Command(OnSearchClicked);
        }

        private async void OnSearchClicked(object obj)
        {
            //await _navigation.PushAsync(new OrderPage());
            //await Shell.Current.GoToAsync(nameof(OrderViewModels));
            await Shell.Current.GoToAsync($"{nameof(OrderPage)}?{nameof(OrderViewModels.OrderId)}={2}");
            //await Shell.Current.GoToAsync($"//OrderPage/OrderViewModels?OrderId={2}");
        }
    }
}
