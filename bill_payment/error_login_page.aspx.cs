using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bill_payment
{
    public partial class error_login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["u_name"] == null)
            //{
            //    Response.Redirect("start_screen.aspx");
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
}