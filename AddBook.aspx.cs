using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryApp
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit2_Click(object sender, EventArgs e)
        {
            if (this.Page.IsValid)
            {
                BusinessLayer.Author author = new BusinessLayer.Author();
                author.FirstName = this.AuFirstNameBox.Text;
                author.LastName = this.AuLastNameBox.Text;

                BusinessLayer.Type type = new BusinessLayer.Type();
                type.Name = this.TypeBox.Text;

                BusinessLayer.Book book = new BusinessLayer.Book();
                book.Title = this.TitleBox.Text;
                book.PageCount = Convert.ToInt32(this.PageCountBox.Text);
                book.Price = Convert.ToDouble(this.PriceBox.Text);

                int result = DataAccessLayer.UtilityTools.InsertBook(author, type, book);
            }
        }
    }
}