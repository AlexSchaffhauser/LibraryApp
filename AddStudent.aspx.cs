using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryApp
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.IsPostBack)
            {
                this.lblResultMessage.Text = "";
            }
        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            if (this.Page.IsValid)
            {
                BusinessLayer.Student student = new BusinessLayer.Student();
                student.FirstName = this.FirstNameBox.Text;
                student.LastName = this.LastNameBox.Text;
                student.BirthDate = this.DateBox.Text;
                student.Gender = this.GenderList.SelectedValue;
                student.Class = this.ClassList.SelectedValue;

                int result = DataAccessLayer.UtilityTools.InsertStudent(student);

                if (result == 1)
                    this.lblResultMessage.Text = "Submission Successful";
                else
                    this.lblResultMessage.Text = "There was an error submitting your data";
            }
        }
    }
}