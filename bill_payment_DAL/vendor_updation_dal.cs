using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using bill_payment_ENTITY;

namespace bill_payment_DAL
{
    public class vendor_updation_dal
    {
        SqlConnection con;
       
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
        public SqlDataReader insert(vendor_updation_entity obj1)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("vendrdetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendor_id", obj1.vendor_id);
                SqlDataReader rd;
                rd = cmd.ExecuteReader();
               // con.Dispose();
                return rd;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int updatealldal(vendor_updation_entity obj1)
        {
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("updatevendor2", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@vendor_id", obj1.Vendor_id);
                cmd1.Parameters.AddWithValue("@contact_number", obj1.Contact_number);
                cmd1.Parameters.AddWithValue("@Email_id", obj1.Email_id1);

                cmd1.Parameters.AddWithValue("@website", obj1.Website);
                cmd1.Parameters.AddWithValue("@address_details", obj1.Address_details);
                cmd1.Parameters.AddWithValue("@country_id", obj1.Country_id);
                cmd1.Parameters.AddWithValue("@certificate_issue_date", obj1.Certificate_issue_date);
                cmd1.Parameters.AddWithValue("@employees_count", obj1.Employees_count);
                cmd1.Parameters.AddWithValue("@customer_count", obj1.Customer_count);
                cmd1.Parameters.AddWithValue("@certificate_validity_date", obj1.Certificate_validity_date);
                int r = cmd1.ExecuteNonQuery();
                //con.Dispose();
                return r;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public SqlDataReader get_country_id(vendor_updation_entity obj1)
        {
            try
            {
                con.Open();

                SqlCommand cmd3 = new SqlCommand("get_country_id3", con);
                cmd3.CommandType = CommandType.StoredProcedure;
                cmd3.Parameters.AddWithValue("@country_name", obj1.Country_name);
                cmd3.Parameters.AddWithValue("@state_name", obj1.State_name);

                SqlDataReader rd3 = cmd3.ExecuteReader();
                //con.Dispose();
                return rd3;
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
        public int dal_update_country_in_vendor_table(vendor_updation_entity obj1)
        {
            try
            {
                con.Open();
                SqlCommand cmd4 = new SqlCommand("country_id1", con);

                cmd4.CommandType = CommandType.StoredProcedure;
                cmd4.Parameters.AddWithValue("@country_id", obj1.Country_id);
                cmd4.Parameters.AddWithValue("@vendor_id", obj1.vendor_id);

                int f = cmd4.ExecuteNonQuery();
                //con.Dispose();
                return f;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
