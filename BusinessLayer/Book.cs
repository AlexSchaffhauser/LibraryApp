using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryApp.BusinessLayer
{
    public class Book
    {
        public string Title { get; set; }
        public int PageCount { get; set; }
        public double Price { get; set; }
    }
}