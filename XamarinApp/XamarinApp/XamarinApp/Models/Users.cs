using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace MarstonEventsApp.Models
{
    public class Users
    {
        [PrimaryKey,AutoIncrement]
        public int Id { get; set; }
        public int UserId { get; set; }
        public string Name { get; set; }
        public string Token { get; set; }
    }
}
