using System.Collections.Generic;
using System.Threading.Tasks;
using XamarinApp.Models;

namespace MarstonEventsApp.Services
{
    public interface IEventss
    {
        Task<List<Events>> LoadEvents();
    }
}