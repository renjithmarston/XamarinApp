using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using XamarinApp.ViewModels;
using ZXing.Mobile;
using ZXing;
using ZXing.Net.Mobile.Forms;

namespace XamarinApp.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class BarcodeScannerPage : ContentPage
    {
        private ZXingScannerView _scannerView;
        public BarcodeScannerPage()
        {
            InitializeComponent();

            BindingContext = new BarcodeScannerViewModel();

        }

        protected override void OnAppearing()
        {
            if (zxing.IsScanning == false) { zxing.IsScanning = true; }

            base.OnAppearing();
            zxing.OnScanResult += (result) => Device.BeginInvokeOnMainThread(() =>
            {
                lblResult.Text = result.Text;
                Shell.Current.GoToAsync($"{nameof(OrderPage)}?{nameof(OrderViewModels.OrderId)}={lblResult.Text}");
            });

        }
        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            //zxing.IsScanning = false;
            //zxing.OnScanResult += (result) => Device.BeginInvokeOnMainThread(() =>
            //{   
            //});





        }
    }
}