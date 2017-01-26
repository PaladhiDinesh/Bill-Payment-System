using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bill_payment_ENTITY;
using bill_payment_DAL;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace bill_payment
{
    public partial class customer_registration_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["u_name"] == null)
                {
                    Response.Redirect("error_login_page.aspx");
                }


                if (!IsPostBack)
                {
                    country.Items.Add(new ListItem("Select Country", "0", true));
                    state.Items.Add(new ListItem("Select State","0",true));
                    
                    vendor_type.Items.Add(new ListItem("Select Vendor Type", "0", true));
                    vendor_name.Items.Add(new ListItem("Select Vendor Name", "0", true));
                    id_doc.Items.Add(new ListItem("Select Identification Document", "0", true));


                }
            }
            catch (Exception )
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

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                customer_registration_entity customer = new customer_registration_entity();
                customer.Customer_name = Cust_name.Text;
                customer.Address_details = address.Text;
                customer.Country_name = country.Text;
                customer.State_name = state.Text;
                customer.Contact_number = (contact.Text);
                customer.Document_detail_number = doc_num.Text;
                customer.Email_id = email.Text;
                customer.Registration_date = reg_date.Text;
                customer.Vendor_name = vendor_name.Text;
                customer.Card_number = card.Text;
                customer.Balance = Convert.ToSingle(bal.Text);
                customer.Vendor_type = vendor_type.Text;
                customer_registration_bal cust_bal = new customer_registration_bal();
                int a = cust_bal.validate_customer(customer);
                if (a == 1)
                {
                    int s = cust_bal.insert(customer);
                    if (s > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Registered')", true);
                    }
                    else if (s == -1)
                    {
                        Label_Cus_Reg_State.Text = "Select Valid Country and State";
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failure')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Customer is already Registered')", true);
                }
            }
            catch (Exception )
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
        }
        protected void country_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string c = country.Text;
                customer_registration_entity customer = new customer_registration_entity();
                customer_registration_bal cust_bal = new customer_registration_bal();
                customer.Country_name = c;
                DataSet ds = cust_bal.populate_state_bl(customer);
                state.DataSource = ds;
                state.DataTextField = "state_name";
                state.DataValueField = "state_name";
                state.DataBind();
                state.Items.Insert(0, new ListItem("Select State", "0"));
            }
            catch (Exception )
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

        }

        protected void vendor_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                customer_registration_entity customer = new customer_registration_entity();
                customer_registration_bal cust_bal = new customer_registration_bal();
                customer.Vendor_type = vendor_type.Text;
                DataSet ds = cust_bal.populate_vendor_bl(customer);
                double balance_amount = cust_bal.populate_balance_bl(customer);
                bal.Text = balance_amount.ToString();
                vendor_name.DataSource = ds;
                vendor_name.DataTextField = "vendor_name";
                vendor_name.DataValueField = "vendor_name";
                vendor_name.DataBind();
                vendor_name.Items.Insert(0, new ListItem("Select Vendor Name", "0"));
            }
            catch (Exception )
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
        }
       

        protected void vendor_name_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                reg_date.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
            catch (Exception )
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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                Cust_name.Text = " ";
                address.Text = " ";
                country.SelectedIndex = 0;
                state.SelectedIndex = 0;
                contact.Text = " ";
                email.Text = " ";
                id_doc.SelectedIndex = 0;
                doc_num.Text = " ";
                vendor_type.SelectedIndex = 0;
                vendor_name.SelectedIndex = 0;
                reg_date.Text = " ";
                card.Text = " ";
                bal.Text = " ";
            }
            catch (Exception )
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
        }

        protected void Cust_name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void state_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Label_Cus_Reg_State.Text = " ";
        }

        protected void id_doc_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void doc_num_TextChanged(object sender, EventArgs e)
        {
            try
            {
               
                customer_registration_entity customer = new customer_registration_entity();
                customer_registration_bal cust_bal = new customer_registration_bal();
                customer.Document_name = id_doc.Text;
                customer.Document_detail_number = doc_num.Text;
                if (doc_num.Text != "")
                {

                    LabelDocDetNum.Text = " ";
                    string s = cust_bal.validate_doc(customer);
                    if (s == "invalid")
                    {
                        LabelDocDetNum.Text = "The document number you entered is invalid.!!";
                    }
                    else
                    {
                        LabelDocDetNum.Text = " ";
                    }
                }
                else
                {
                    LabelDocDetNum.Text = "Document Number is Required";
                }
            }
            catch (Exception )
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
        }
    }
}