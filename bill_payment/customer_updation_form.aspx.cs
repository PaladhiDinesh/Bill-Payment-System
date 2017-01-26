using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bill_payment_BAL;
using bill_payment_ENTITY;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using bill_payment_DAL;
using System.Windows.Forms;


namespace bill_payment
{
    public partial class customer_updation_form : System.Web.UI.Page
    {
        customer_updation_entity obj1 = new customer_updation_entity();
        customer_updation_bal obj2 = new customer_updation_bal();

        string vendor_name1 = " ";
        string vendor_type1 = " ";
        string customer_name1 = " ";
        string contact_number1 = " ";
        string email_id1 = " ";
        string addres_details1 = " ";
        string country_id1 = " ";
        string document_detail_number1 = " ";
        string registration_date1 = " ";
        string card_number1 = " ";
        string country_name1 = " ";
        string state_name1 = " ";
        decimal balance1 = 0;
        string country_id2;


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

                    DropDownList_UCust_Country.Items.Add(new ListItem("Select Country", "0", true));
                    DropDownList_UCust_State.Items.Add(new ListItem("Select State", "0", true));
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

        protected void update_button_Click(object sender, EventArgs e)
        {
            try
            {
                obj1.Customer_id = Convert.ToInt16(cust_id.Text);
                obj1.Vendor_name = vname_id.Text;
                obj1.Vendor_type = vtype_id.Text;
                obj1.Customer_name = cname_id.Text;
                obj1.Contact_number = contact_id.Text;
                obj1.Balance = Convert.ToDecimal(balance_txt.Text);
                obj1.Email_id = email_id.Text;
                obj1.Addres_details = add_id.Text;
                obj1.Country_id = country_id.Text;
                obj1.Document_detail_number = document_id.Text;
                obj1.Registration_date = registration_id.Text;
                obj1.Card_number = card_number.Text;
                obj1.Country_name = DropDownList_UCust_Country.Text;
                obj1.State_name = DropDownList_UCust_State.Text;



                SqlDataReader rd4 = obj2.get_country_id_bl(obj1);
                if (rd4.HasRows)
                {
                    rd4.Read();
                    country_id2 = (string)rd4["country_id"];
                    LabelSelectStates.Text = " ";
                    country_id.Text = country_id2;
                    int r = obj2.update_all_details_bl(obj1);
                    obj1.Country_id = country_id2;
                    int f = obj2.update_country_id_bl(obj1);
                    if (r > 0)
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
                    LabelSelectStates.Text = "Select Valid Country and State";
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





        protected void cust_id_TextChanged1(object sender, EventArgs e)
        {
           

        }


        protected void document_id_TextChanged(object sender, EventArgs e)
        {
            try
            {
                string s = document_id.Text;
                if (s.Length < 2)
                {
                    Label.Text = "*Please Enter Valid Document Number";
                }

                else if (s.Substring(0, 3) == "PAN" || s.Substring(0, 3) == "GMV")
                {
                    Label.Text = " ";
                }

                else if (s.Length >= 2)
                {
                    if (s.Substring(0, 2) == "DL")
                    {
                        Label.Text = " ";
                    }
                    else
                    {
                        if (s.Length >= 4)
                        {
                            if (s.Substring(0, 4) == "PASS")
                            {

                                Label.Text = " ";
                            }
                            else
                            {
                                Label.Text = "*Please Enter Valid Document Number";
                            }
                        }
                        else
                        {
                            Label.Text = "*Please Enter Valid Document Number";
                        }
                    }
                }
                else
                {

                    Label.Text = "*Please Enter Valid Document Number";


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
            Response.Redirect("admin_home.aspx");
        }

        protected void DropDownList_UCust_Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string c = DropDownList_UCust_Country.Text;
                customer_registration_entity customer = new customer_registration_entity();
                customer_registration_bal cust_bal = new customer_registration_bal();
                customer.Country_name = c;
                DataSet ds = cust_bal.populate_state_bl(customer);
                DropDownList_UCust_State.DataSource = ds;
                DropDownList_UCust_State.DataTextField = "state_name";
                DropDownList_UCust_State.DataValueField = "state_name";
                DropDownList_UCust_State.DataBind();
                DropDownList_UCust_State.Items.Insert(0, new ListItem("Select State", "0"));
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

        protected void DropDownList_UCust_State_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelSelectStates.Text = " ";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cust_id.Text = GridView1.SelectedRow.Cells[1].Text;
            try
            {

                obj1.Customer_id = Convert.ToInt32(cust_id.Text);


                SqlDataReader rd1 = obj2.get_details_from_text_bl(obj1);
                if (rd1.HasRows)
                {
                    Label_U_Cust.Text = " ";
                    rd1.Read();
                    vendor_name1 = (rd1["vendor_name"].ToString());
                    vendor_type1 = (rd1["vendor_type"].ToString());
                    customer_name1 = (rd1["customer_name"].ToString());
                    contact_number1 = (rd1["contact_number"].ToString());
                    balance1 = (Convert.ToDecimal(rd1["balance"]));
                    email_id1 = (rd1["email_id"].ToString());
                    addres_details1 = (rd1["addres_details"].ToString());
                    country_id1 = (rd1["country_id"].ToString());
                    document_detail_number1 = (rd1["document_detail_number"].ToString());
                    registration_date1 = (rd1["registration_date"].ToString());
                    card_number1 = (rd1["card_number"].ToString());
                    vname_id.Enabled = false;
                    vtype_id.Enabled = false;
                    obj1.Country_id = country_id1;
                    SqlDataReader rd2 = obj2.get_country_state_bl(obj1);

                    if (rd2.HasRows)
                    {
                        rd2.Read();
                        country_name1 = (string)rd2["country_name"];
                        state_name1 = (string)rd2["state_name"];

                    }

                    vname_id.Text = vendor_name1;
                    vtype_id.Text = vendor_type1;
                    cname_id.Text = customer_name1;
                    contact_id.Text = contact_number1;
                    balance_txt.Text = balance1.ToString();
                    email_id.Text = email_id1;
                    add_id.Text = addres_details1;
                    country_id.Text = country_id1;
                    DropDownList_UCust_Country.SelectedIndex = DropDownList_UCust_Country.Items.IndexOf(DropDownList_UCust_Country.Items.FindByValue(country_name1));
                    {
                        string c = DropDownList_UCust_Country.Text;
                        customer_registration_entity customer = new customer_registration_entity();
                        customer_registration_bal cust_bal = new customer_registration_bal();
                        customer.Country_name = c;
                        DataSet ds = cust_bal.populate_state_bl(customer);
                        DropDownList_UCust_State.DataSource = ds;
                        DropDownList_UCust_State.DataTextField = "state_name";
                        DropDownList_UCust_State.DataValueField = "state_name";
                        DropDownList_UCust_State.DataBind();
                        DropDownList_UCust_State.Items.Insert(0, new ListItem("Select State", "0"));
                    }
                    DropDownList_UCust_State.SelectedIndex = DropDownList_UCust_State.Items.IndexOf(DropDownList_UCust_State.Items.FindByValue(state_name1));
                    document_id.Text = document_detail_number1;
                    registration_id.Text = registration_date1;
                    card_number.Text = card_number1;
                    cust_id.Enabled = false;

                    //rd2.Close();


                }
                else
                {
                    Label_U_Cust.Text = "Enter Valid Customer ID";
                    cust_id.Enabled = true;
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

        protected void vname_id_TextChanged(object sender, EventArgs e)
        {

        }
    }
}