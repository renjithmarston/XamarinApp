using System.Threading.Tasks;
using XamarinApp.Models;

namespace XamarinApp.Services
{
    public interface ILogin
    {
        Task<Logins> Logins(Logins login);
    }
}