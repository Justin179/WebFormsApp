using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsApp
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            string message = string.Format("your name is {0} and your email is {1}, and your favorite color is {2}", 
                txtName.Text,
                txtEmail.Text,
                ddlColor.SelectedValue);
            ltMessage.Text = message;
        }
    }
}