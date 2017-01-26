using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bill_payment_ENTITY;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using bill_payment_BAL;
using System.Text.RegularExpressions;

namespace bill_payment
{
    public partial class bill_payment_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_name"] == null)
            {
                Response.Redirect("error_login_page.aspx");
            }

        }

        bill_payment_entity bill = new bill_payment_entity();
        bill_payment_bal balobj = new bill_payment_bal();
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                bill.Customerid = Convert.ToInt32(TextBoxCID.Text);
                bill.VendorType = DropDownVType.Text;
                bill.Vendorname = TextBoxVNAME.Text;
                bill.Pendingamount = Convert.ToDecimal(TextBoxPndAmt.Text);
                bill.Paymentdate = TextBoxPayDate.Text;
                bill.Amounttopay = Convert.ToDecimal(TextBoxAMTPAY.Text);
                bill.Cardnumber = TextBoxCNUM.Text;
                int s = balobj.insert(bill);
                if (s != 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bill Paid Successfully')", true);

                    int k = balobj.balsendbalance(bill);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failure')", true);
                }
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

        protected void TextBoxCID_TextChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    int count = 0;
            //    string s=TextBoxCID.Text;
            //    foreach (char a in s)
            //    {
            //        if (char.IsLetter(a))

            //        {
            //            count++;
            //            //TextBoxCID.Text = "999999";count
            //        }
            //    }
            //    if (count == 0)
            //    {
            //        DropDownVType.Enabled = true;
            //        bill.Customerid = Convert.ToInt32(TextBoxCID.Text);
            //        SqlDataReader rd1 = balobj.Balmethod(bill);
            //        if (rd1.HasRows)
            //        {
            //            rd1.Read();
            //            TextBoxCID.Text = rd1["customer_id"].ToString();
            //            labelvalid.Text = " ";
            //        }
            //        else
            //        {
            //            labelvalid.Text = "Enter Valid Customer ID";
            //            DropDownVType.Enabled = false;
            //        }
            //       // rd1.Close();
            //    }
            //    else
            //    {
            //        labelvalid.Text = "Enter Valid Customer ID";
            //        DropDownVType.Enabled = false;
            //    }
            //}
            //catch (Exception ex)
            //{
                
            //    //if(bill.Customerid)
            //    throw ex;
            //}

        }

        protected void DropDownVType_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                bill.Customerid = Convert.ToInt32(TextBoxCID.Text);
                bill.VendorType = DropDownVType.Text;
                SqlDataReader rd4 = balobj.balget_amt_name(bill);
                if (rd4.HasRows)
                {
                    rd4.Read();
                    TextBoxVNAME.Text = rd4["vendor_name"].ToString();
                    TextBoxPndAmt.Text = rd4["balance"].ToString();
                    LableVtype.Text = " ";

                }
                else
                {
                    LableVtype.Text = "*This Customer is not registered with this vendor type";
                    TextBoxVNAME.Text = " ";
                    TextBoxPndAmt.Text = " ";
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

        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {
                TextBoxCID.Text = " ";
                TextBoxAMTPAY.Text = " ";
                TextBoxCCNUM.Text = " ";
                TextBoxCNUM.Text = " ";
                TextBoxCVV.Text = " ";
                TextBoxPayDate.Text = " ";
                TextBoxPndAmt.Text = " ";
                TextBoxVNAME.Text = " ";
                DropDownLSelectMonth.SelectedIndex = 0;
                DropDownSelectYear.SelectedIndex = 0;
                DropDownVType.SelectedIndex = 0;
                DropDownCardType.SelectedIndex = 0;



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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_home.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox.Checked)
            {
                Button2.Enabled = false;
            }
            else

                Button2.Enabled = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBoxCID.Text = GridView1.SelectedRow.Cells[1].Text;
        }
        

      
    }
}