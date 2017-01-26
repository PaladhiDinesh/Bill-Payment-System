using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using bill_payment_DAL;
using bill_payment_ENTITY;
using bill_payment_BAL;

namespace bill_payment
{
    public partial class vendor_updation_form : System.Web.UI.Page
    {

        vendor_updation_entity obj1 = new vendor_updation_entity();
        vendor_updation_bal obj2 = new vendor_updation_bal();

        int year_of_survival;
        int employees_count;

        string Company_Registration_Number1;
        string Vendor_Type1;
        string Vendor_Name1;
        string Certificate_Name1;
        string Certificate_Issue_Date1;
        string Certificate_Validation_Date1;
        string Year_Of_Establishment1;
        string country_id2;
        string Country1;
        string State1;
        string Address1;
        string Contact_Number1;
        string Email_Id1;
        string Website1;
        string Employee_Count1;
        string Customer_Count1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_name"] == null)
            {
                Response.Redirect("error_login_page.aspx");
            }

           if (!IsPostBack)
            {
                DropDownListVendor_id.Items.Add(new ListItem("Select", "0", true));
                DropDownList_UVend_Country.Items.Add(new ListItem("Select Country", "0", true));
                DropDownList_UVend_State.Items.Add(new ListItem("Select State", "0", true));

            }
        }


        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {
                obj1.vendor_id = DropDownListVendor_id.SelectedValue.ToString();
                obj1.Certificate_name = certificate_name.Text;
                obj1.Certificate_issue_date = c_i_d.Text;
                obj1.Certificate_validity_date = c_v_d.Text;
                obj1.Country_name = DropDownList_UVend_Country.Text;
                obj1.State_name = DropDownList_UVend_State.Text;
                obj1.Address_details = address.Text;
                obj1.Contact_number = contact_number.Text;
                obj1.Email_id1 = email_id.Text;
                obj1.Website = website.Text;
                obj1.Employees_count = emp_count.Text;
                obj1.Customer_count = cust_count.Text;


                SqlDataReader rd4 = obj2.get_country_id_bl(obj1);
                if (rd4.HasRows)
                {
                    rd4.Read();
                    Label_UVend_Country.Text = " ";
                    country_id2 = (string)rd4["country_id"];
                    obj1.Country_id = country_id2;
                    int r = obj2.bal_update_country_in_vendor_table(obj1);



                    int f = obj2.updateallbal(obj1);


                    if (f > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Update is successfull')", true);

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Try Again')", true);
                    }
                }
                else
                {
                    Label_UVend_Country.Text = "Select Valid Country and State";
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

        protected void emp_count_TextChanged(object sender, EventArgs e)
        {
            //year_of_survival=current year-year_of_survival ArgumentOutOfRangeException establishment
            //calculating certificate_id
            try
            {
                year_of_survival = DateTime.Now.Year - (Convert.ToInt16(yoe.Text));

                employees_count = Convert.ToInt32(emp_count.Text);

                if (year_of_survival >= 1 && year_of_survival < 5 && employees_count >= 30 && employees_count < 50)
                {
                    obj1.Certificate_id = 1;
                    obj1.Certificate_name = "A+";
                    certificate_name.Text = "A+";
                    c_i_d.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    c_v_d.Text = DateTime.Now.AddYears(15).ToString("yyyy-MM-dd");

                }
                else if (year_of_survival >= 5 && year_of_survival < 10 && employees_count >= 50 && employees_count < 75)
                {
                    obj1.Certificate_id = 2;
                    obj1.Certificate_name = "B+";
                    certificate_name.Text = "B+";
                    c_i_d.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    c_v_d.Text = DateTime.Now.AddYears(15).ToString("yyyy-MM-dd");
                }
                else if (year_of_survival >= 10 && year_of_survival < 15 && employees_count >= 75 && employees_count < 100)
                {
                    obj1.Certificate_id = 3;
                    obj1.Certificate_name = "C+";
                    certificate_name.Text = "C+";
                    c_i_d.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    c_v_d.Text = DateTime.Now.AddYears(15).ToString("yyyy-MM-dd");
                }
                else if (year_of_survival >= 15 && year_of_survival < 25 && employees_count >= 100 && employees_count < 200)
                {
                    obj1.Certificate_id = 4;
                    obj1.Certificate_name = "D+";
                    certificate_name.Text = "D+";
                    c_i_d.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    c_v_d.Text = DateTime.Now.AddYears(15).ToString("yyyy-MM-dd");
                }
                else if (year_of_survival >= 25 && year_of_survival < 50 && employees_count >= 200 && employees_count < 500)
                {
                    obj1.Certificate_id = 5;
                    obj1.Certificate_name = "E+";
                    certificate_name.Text = "E+";
                    c_i_d.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    c_v_d.Text = DateTime.Now.AddYears(15).ToString("yyyy-MM-dd");
                }
                else if (year_of_survival >= 50 && employees_count >= 500)
                {
                    obj1.Certificate_id = 6;
                    obj1.Certificate_name = "F+";
                    certificate_name.Text = "F+";
                    c_i_d.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    c_v_d.Text = DateTime.Now.AddYears(15).ToString("yyyy-MM-dd");
                }

                else
                {
                    Response.Redirect("vendor_updation_certificate_error.aspx");
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

        protected void DropDownListVendor_id_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                obj1.Vendor_id = DropDownListVendor_id.SelectedValue;

                SqlDataReader rd1 = obj2.insert1(obj1);
                if (rd1.HasRows)
                {
                    rd1.Read();
                    Company_Registration_Number1 = (rd1["Company_Registration_Number"].ToString());
                    Vendor_Type1 = (rd1["Vendor_Type"].ToString());
                    Vendor_Name1 = (rd1["Vendor_Name"].ToString());
                    Certificate_Name1 = (rd1["Certificate_Name"].ToString());
                    Certificate_Issue_Date1 = (rd1["Certificate_Issue_Date"].ToString());
                    Certificate_Validation_Date1 = (rd1["certificate_validity_date"].ToString());
                    Year_Of_Establishment1 = (rd1["Year_Of_Establishment"].ToString());
                    Country1 = rd1["country_name"].ToString();
                    State1 = rd1["state_name"].ToString();

                    Address1 = (rd1["address_details"].ToString());
                    Contact_Number1 = (rd1["Contact_Number"].ToString());
                    Email_Id1 = (rd1["Email_Id"].ToString());
                    Website1 = (rd1["Website"].ToString());
                    Employee_Count1 = (rd1["employees_count"].ToString());
                    Customer_Count1 = (rd1["customer_count"].ToString());


                }


                c_r_n.Text = Company_Registration_Number1;
                vendor_type.Text = Vendor_Type1;
                vendor_name.Text = Vendor_Name1;
                certificate_name.Text = Certificate_Name1;
                c_i_d.Text = Certificate_Issue_Date1;
                c_v_d.Text = Certificate_Validation_Date1;
                yoe.Text = Year_Of_Establishment1;

                DropDownList_UVend_Country.SelectedIndex = DropDownList_UVend_Country.Items.IndexOf(DropDownList_UVend_Country.Items.FindByValue(Country1));
                {
                    string d = DropDownList_UVend_Country.Text;
                    customer_registration_entity customer = new customer_registration_entity();
                    customer_registration_bal cust_bal = new customer_registration_bal();
                    customer.Country_name = d;
                    DataSet ds = cust_bal.populate_state_bl(customer);
                    DropDownList_UVend_State.DataSource = ds;
                    DropDownList_UVend_State.DataTextField = "state_name";
                    DropDownList_UVend_State.DataValueField = "state_name";
                    DropDownList_UVend_State.DataBind();
                    DropDownList_UVend_State.Items.Insert(0, new ListItem("Select State", "0"));
                }
                DropDownList_UVend_State.SelectedIndex = DropDownList_UVend_State.Items.IndexOf(DropDownList_UVend_State.Items.FindByValue(State1));
                address.Text = Address1;
                contact_number.Text = Contact_Number1;
                email_id.Text = Email_Id1;
                website.Text = Website1;
                emp_count.Text = Employee_Count1;
                cust_count.Text = Customer_Count1;
                DropDownListVendor_id.Enabled = false;
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_home.aspx");
        }

        protected void DropDownList_UVend_Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string d = DropDownList_UVend_Country.Text;
                customer_registration_entity customer = new customer_registration_entity();
                customer_registration_bal cust_bal = new customer_registration_bal();
                customer.Country_name = d;
                DataSet ds = cust_bal.populate_state_bl(customer);
                DropDownList_UVend_State.DataSource = ds;
                DropDownList_UVend_State.DataTextField = "state_name";
                DropDownList_UVend_State.DataValueField = "state_name";
                DropDownList_UVend_State.DataBind();
                DropDownList_UVend_State.Items.Insert(0, new ListItem("Select State", "0"));
            }
            catch (Exception)
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

        protected void DropDownList_UVend_State_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label_UVend_Country.Text = " ";
        }
    }
}