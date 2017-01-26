using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bill_payment_DAL;
using bill_payment_ENTITY;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using bill_payment_BAL;


namespace bill_payment
{
    public partial class vendor_registration_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_name"] == null)
            {
                Response.Redirect("error_login_page.aspx");
            }
            if (!IsPostBack)
            {
                TextBoxcompanyno.Items.Add(new ListItem("Select", "0", true));
            }
        }
       
        vendor_registration_bal objbl = new vendor_registration_bal();
        vendor_registration_entity objentity = new vendor_registration_entity();
        string vendorname = "";
        string vendortype = "";
        int year_of_survival = 0;
        int employees_count = 0;

        //Auto population of state

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DataSet dt2 = new DataSet();
                objentity.Country_name = ddlcountry.Text;
                dt2 = objbl.getstatelist(objentity);

                ddlstate.DataSource = dt2;
                ddlstate.DataTextField = "state_name";
                ddlstate.DataValueField = "state_name";
                ddlstate.DataBind();
                ddlstate.Items.Insert(0, new ListItem("Select State", "0"));
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
        int f = 0;
        protected void buttonsubmit_Click(object sender, EventArgs e)
        {
            try

            {
                objentity.Company_registration_number = Convert.ToInt32(TextBoxcompanyno.Text);
                int b = objbl.validate_vendor_bal(objentity);

               if(b==1 )
               {
                   ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('This Vendor is already Registered')", true);
               }
                else
                {
                DateTime issue_date;
                DateTime validity_date;
                DateTime.TryParseExact(TextBoxcertiissueddate.Text, "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out issue_date);
                DateTime.TryParseExact(TextBoxcertivaliditydate.Text, "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out validity_date);

                //year_of_survival=current year-year_of_survival ArgumentOutOfRangeException establishment
                //calculating certificate_id

                year_of_survival = DateTime.Now.Year - (Convert.ToInt16(TextBoxyearestablishment.Text));

                employees_count = Convert.ToInt16(TextBoxemployeecount.Text);
                Label_Vend_Reg_Cert.Text = " ";
                if (year_of_survival >= 1 && year_of_survival < 5 && employees_count >= 30 && employees_count < 50)
                {
                    objentity.Certificate_id = 1;
                }
                else if (year_of_survival >= 5 && year_of_survival < 10 && employees_count >= 50 && employees_count < 75)
                {
                    objentity.Certificate_id = 2;
                }
                else if (year_of_survival >= 10 && year_of_survival < 15 && employees_count >= 75 && employees_count < 100)
                {
                    objentity.Certificate_id = 3;
                }
                else if (year_of_survival >= 15 && year_of_survival < 25 && employees_count >= 100 && employees_count < 200)
                {
                    objentity.Certificate_id = 4;
                }
                else if (year_of_survival >= 25 && year_of_survival < 50 && employees_count >= 200 && employees_count < 500)
                {
                    objentity.Certificate_id = 5;
                }
                else if (year_of_survival >= 50 && employees_count >= 500)
                {
                    objentity.Certificate_id = 6;
                }

                else
                {
                    Label_Vend_Reg_Cert.Text = "Enter Valid Employee Count as per the given data";
                    f = 1;

                }
                //passing textbox values to entity layer
                if (f == 0)
                {
                    objentity.Company_registration_number = Convert.ToInt32(TextBoxcompanyno.Text);
                    objentity.Vendor_name = TextBox2vendorname.Text;
                    objentity.Vendor_type = TextBoxvendortype.Text;
                    objentity.Contact_number = TextBoxcontact.Text;
                    objentity.Email_id1 = TextBoxemail.Text;
                    objentity.Website = TextBoxwebsite.Text;
                    objentity.Address_details = TextBoxaddress.Text;
                    objentity.Country_name = ddlcountry.Text;
                    objentity.State_name = ddlstate.Text;
                    objentity.Certificate_issue_date = issue_date;
                    objentity.Employees_count = Convert.ToInt16(TextBoxemployeecount.Text);
                    objentity.Customer_count = Convert.ToInt16(TextBoxcustomercount.Text);
                    objentity.Year_of_establishment = Convert.ToInt16(TextBoxyearestablishment.Text);
                    objentity.Certificate_validity_date = validity_date;

                    int result = objbl.insert(objentity);

                    if (result == 1)
                    {
                        //Response.Write("registration successful");
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully Registered')", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration Failed')", true);
                    }
                    if (Session["u_name"] == null)
                    {
                        Response.Redirect("admin_login.aspx");
                    }
                }
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

        //retrieval of vendor_name and vendor_type based on company_registration_number

        protected void TextBoxcompanyno_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (TextBoxcompanyno.SelectedValue == "Select")
                 {
                     Label_Vend_Reg.Text = "Select Valid Company Registration Number";
               
                }
                else
                {
                    objentity.Company_registration_number = Convert.ToInt32(TextBoxcompanyno.Text);
                    SqlDataReader rd2 = objbl.vendor_details(objentity);
                  
                    if (rd2.HasRows)
                    {
                        rd2.Read();
                        Label_Vend_Reg.Text = " ";
                        vendorname = rd2["vendor_name"].ToString();
                        vendortype = rd2["vendor_type"].ToString();
                    //    rd2.Close();
                        TextBox2vendorname.Text = vendorname;
                        TextBoxvendortype.Text = vendortype;
                    }
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

        //retrieval of certificate_isued_date and certificate_validity_date

        protected void TextBoxwebsite_TextChanged(object sender, EventArgs e)
        {
            try
            {
                TextBoxcertiissueddate.Text = DateTime.Now.ToString("yyyy-MM-dd");
                TextBoxcertivaliditydate.Text = DateTime.Now.AddYears(15).ToString("yyyy-MM-dd");
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



        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TextBoxcompanyno.Text = null;
                TextBox2vendorname.Text = "";
                TextBoxvendortype.Text = "";
                TextBoxcontact.Text = null;
                TextBoxemail.Text = "";
                TextBoxwebsite.Text = "";
                TextBoxaddress.Text = "";
                ddlcountry.SelectedIndex = 0;
                ddlstate.SelectedIndex = 0;
                TextBoxemployeecount.Text = null;
                TextBoxcustomercount.Text = null;
                TextBoxyearestablishment.Text = null;
                TextBoxcertiissueddate.Text = null;
                TextBoxcertivaliditydate.Text = null;
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

        protected void TextBoxemployeecount_TextChanged(object sender, EventArgs e)
        {
            Label_Vend_Reg.Text = " ";
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

    }
}