using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bill_payment
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
                Session["u_name"] = null;
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string u_name = username.Text;
            Session["u_name"] = username.Text;
            string pass = password.Text;
            if (u_name == "admin" && pass == "admin")
            {
                Response.Redirect("admin_home.aspx");
            }
            else
            {
               ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('UserName or Password Incorrect')", true);
                username.Text = "";
                password.Text = "";
            }

        }
    }
}