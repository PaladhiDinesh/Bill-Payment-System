using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace bill_payment
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            
                // Code that runs when an unhandled error occurs
                Exception exception = Server.GetLastError();

                // Response.Write("<h2>Global Page Error</h2>\n");

                // Response.Write("<p>" + exception.Message + "</p>\n");

                ExceptionClass.LogException(exception);

                Server.Transfer("~/ErrorPage.aspx?message=http " + exception.Message);

                // Clear the error from the server

                Server.ClearError();
            
        }

     

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}