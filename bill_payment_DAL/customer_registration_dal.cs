using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using bill_payment_ENTITY;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace bill_payment_DAL
{
    public class customer_registration_dal
    {
       
       
        SqlCommand cmd;
        SqlDataReader rd = null;
        SqlDataReader rd1 = null;
        SqlDataReader rd2 = null;
        SqlConnection con;
        int flag;
        string cid;
        string doc;
        string sub;
        double balance;
        public void CreateCon()
        {
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["BillDBcon"].ConnectionString);
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int validate_customer_dal(customer_registration_entity c)
        {
            try
            {
                cmd = new SqlCommand("validate_customer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email_id", c.Email_id);
                cmd.Parameters.AddWithValue("@Vendor_name", c.Vendor_name);
                cmd.Parameters.AddWithValue("@Vendor_type", c.Vendor_type);
                con.Open();
                rd2 = cmd.ExecuteReader();
                if (rd2.HasRows)
                {
                    flag = 0;
                 //   con.Dispose();
                }
                else
                {
                    flag = 1;
                  //  con.Dispose();
                }
                cmd.Dispose();
                return flag;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int insertdata(customer_registration_entity c)
        {
            try
            {
                int result = -1;
                cmd = new SqlCommand("get_country_id", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@country_name", c.Country_name);
                cmd.Parameters.AddWithValue("@state_name", c.State_name);
                con.Open();
                rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read();
                    cid = (string)rd["country_id"];
                    c.Country_id = cid;
                    cmd.Dispose();
                    con.Close();
                    cmd = new SqlCommand("insert_cust_reg", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@customer_name", c.Customer_name);
                    cmd.Parameters.AddWithValue("@address_details", c.Address_details);
                    cmd.Parameters.AddWithValue("@contact_number", c.Contact_number);
                    cmd.Parameters.AddWithValue("@cid", c.Country_id);
                    cmd.Parameters.AddWithValue("@email_id", c.Email_id);
                    cmd.Parameters.AddWithValue("@registration_date", c.Registration_date);
                    cmd.Parameters.AddWithValue("@card_number", c.Card_number);
                    cmd.Parameters.AddWithValue("@document_detail_number", c.Document_detail_number);
                    cmd.Parameters.AddWithValue("@vendor_type", c.Vendor_type);
                    cmd.Parameters.AddWithValue("@vendor_name", c.Vendor_name);
                    cmd.Parameters.AddWithValue("@balance", c.Balance);
                   con.Open();
                    result = cmd.ExecuteNonQuery();
                    cmd.Dispose();
                  //  con.Dispose();


                }
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
 
        }
        public DataSet populate_state(customer_registration_entity c)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("autopopulate_state", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@country_name", c.Country_name);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
          //      con.Dispose();
                cmd.Dispose();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet populate_vendor(customer_registration_entity c)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("autopopulate_vendor", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendor_type", c.Vendor_type);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
               // con.Dispose();
                cmd.Dispose();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public string validate_doc_dl(customer_registration_entity c)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("validate_document", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@document_name", c.Document_name);
                if (c.Document_name == "Voter Id" || c.Document_name == "PAN card")
                {
                    sub = c.Document_detail_number.Substring(0, 3);
                }
                else if (c.Document_name == "Driving License")
                {
                    sub = c.Document_detail_number.Substring(0, 2);
                }
                else if (c.Document_name == "Pass port")
                {
                    sub = c.Document_detail_number.Substring(0, 4);
                }
               // Console.WriteLine(sub);
                rd1 = cmd.ExecuteReader();
                if (rd1.HasRows)
                {
                    
                    rd1.Read();
                    doc = (string)rd1["document_format"];

                }
             //   con.Dispose();
                cmd.Dispose();
                if (doc == sub)
                {
                    return "valid";
                }
                else
                {
                    return "invalid";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public double populate_balance_dl(customer_registration_entity c)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("populate_balance", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendor_type", c.Vendor_type);
                rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read();
                    balance = Convert.ToSingle(rd["amount"]);

                }
              //  con.Dispose();
                cmd.Dispose();
                return balance;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
