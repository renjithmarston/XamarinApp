using MarstonEventsApp.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace MarstonEventsApp.DataBase
{
    public class Database
    {
        private readonly SQLiteAsyncConnection _datbase;
        public Database(string dbPath) 
        {
            _datbase= new SQLiteAsyncConnection(dbPath);
            _datbase.CreateTableAsync<Users>();
            
        }
        public Task<List<Users>> GetUsersAsync()
        {
            return _datbase.Table<Users>().ToListAsync();
        }
        public Task<int> SaveUserAsync(Users user)
        {
            return _datbase.InsertAsync(user);
        }
        public Task<int> UpdateUserAsync(Users user)
        {
            return _datbase.UpdateAsync(user);
        }
        public  Task<int> DeleteUserAsync()
        {
            return  _datbase.DeleteAllAsync<Users>();
        }
    }
}
