using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using bill_payment_ENTITY;

namespace bill_payment_DAL
{
   public class customer_updation_dal
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
        public SqlDataReader get_details_from_text_dl(customer_updation_entity obj1)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("get_the_value_in_the_text", con);
                cmd.Parameters.AddWithValue("@customer_id", obj1.Customer_id);


                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader rd;
                rd = cmd.ExecuteReader();
                //   con.Dispose();
                return rd;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int update_all_details_dl(customer_updation_entity obj1)
        {
            try
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("update_the_value", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@customer_id", obj1.Customer_id);
                cmd1.Parameters.AddWithValue("@vendor_name", obj1.Vendor_name);
                cmd1.Parameters.AddWithValue("@vendor_type", obj1.Vendor_type);
                cmd1.Parameters.AddWithValue("@balance", obj1.Balance);
                cmd1.Parameters.AddWithValue("@customer_name", obj1.Customer_name);
                cmd1.Parameters.AddWithValue("@contact_number", obj1.Contact_number);
                cmd1.Parameters.AddWithValue("@email_id", obj1.Email_id);
                cmd1.Parameters.AddWithValue("@addres_details", obj1.Addres_details);
                //cmd1.Parameters.AddWithValue("@country_id", obj1.Country_id);
                cmd1.Parameters.AddWithValue("@document_detail_number", obj1.Document_detail_number);
                cmd1.Parameters.AddWithValue("@registration_date", obj1.Registration_date);
                cmd1.Parameters.AddWithValue("@card_number", obj1.Card_number);
                int r = cmd1.ExecuteNonQuery();
                //         con.Dispose();
                return r;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public SqlDataReader get_country_state_dl(customer_updation_entity obj1)
        {
            try
            {
                con.Open();
                SqlCommand cmd2 = new SqlCommand("get_country_state", con);
                cmd2.Parameters.AddWithValue("@country_id", obj1.Country_id);
                cmd2.CommandType = CommandType.StoredProcedure;
                SqlDataReader rd2;
                rd2 = cmd2.ExecuteReader();
                //con.Dispose();
                return rd2;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public SqlDataReader get_country_id_dl(customer_updation_entity obj1)
        {
            try
            {

                con.Open();

                SqlCommand cmd3 = new SqlCommand("get_country_id_update", con);
                cmd3.Parameters.AddWithValue("@country_name", obj1.Country_name);
                cmd3.Parameters.AddWithValue("@state_name", obj1.State_name);
                cmd3.CommandType = CommandType.StoredProcedure;
                SqlDataReader rd3 = cmd3.ExecuteReader();
                // con.Dispose();
                return rd3;
            }
            catch (Exception ex)
            { 
                throw ex;
            }


        }
        public int update_country_id_dl(customer_updation_entity obj1)
        {
            try
            {
                con.Open();
                SqlCommand cmd4 = new SqlCommand("update_country_id_2", con);


                cmd4.Parameters.AddWithValue("@country_id", obj1.Country_id);

                cmd4.CommandType = CommandType.StoredProcedure;
                int f = cmd4.ExecuteNonQuery();
                // con.Dispose();
                return f;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
