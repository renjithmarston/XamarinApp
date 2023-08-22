using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using XamarinApp.Models;
using XamarinApp.ViewModels;

namespace XamarinApp.Views
{
	public partial class OrderPage : ContentPage 
	{
        private int _Id;
        public OrderPage()
        {
            InitializeComponent();
            //NavigationPage.SetHasBackButton(this, false);
            BindingContext = new OrderViewModels();
        }
        protected override bool OnBackButtonPressed()
        {
            return true;
        }
        //      public OrderPage (int Id)
        //{
        //	InitializeComponent ();
        //          _Id = Id;
        //          BindingContext = new OrderViewModels();
        //      }
    }
}