using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using bill_payment_ENTITY;

namespace bill_payment_DAL
{
   public class vendor_registration_dal
    {
        SqlConnection con = new SqlConnection();

        
        string cid;
        int flag=0;
        public void databaseconnection()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["BillDBcon"].ConnectionString); 
        }

        public DataSet getstate_dal( vendor_registration_entity ObjBO )
        {
            SqlCommand cmd2 = new SqlCommand("autopopulation_state", con);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.AddWithValue("@country_name", ObjBO.Country_name);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataSet ds = new DataSet();

            da.Fill(ds);
           // con.Dispose();
            return ds;
          
        }

        public int Insert_Details_dal(vendor_registration_entity ObjBO)
        {
            
           
          SqlCommand  cmd1 = new SqlCommand("get_countryid", con);
          cmd1.CommandType = CommandType.StoredProcedure;
          cmd1.Parameters.AddWithValue("@country_name", ObjBO.Country_name);
          cmd1.Parameters.AddWithValue("@state_name", ObjBO.State_name);
          con.Open();
            SqlDataReader rd = cmd1.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                cid = (string)rd["country_id"];
            }
                  ObjBO.Country_id = cid;
              //    rd.Close();
                  con.Close();
                SqlCommand cmd = new SqlCommand("insert_vendor_details", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@company_registration_number", ObjBO.Company_registration_number);

                cmd.Parameters.AddWithValue("@vendor_name", ObjBO.Vendor_name);

                cmd.Parameters.AddWithValue("@vendor_type", ObjBO.Vendor_type);

                cmd.Parameters.AddWithValue("@contact_number", ObjBO.Contact_number);

                cmd.Parameters.AddWithValue("@Email_id", ObjBO.Email_id1);

                cmd.Parameters.AddWithValue("@website", ObjBO.Website);

                cmd.Parameters.AddWithValue("@address_details", ObjBO.Address_details);

                cmd.Parameters.AddWithValue("@country_id", ObjBO.Country_id);

                cmd.Parameters.AddWithValue("@certificate_issue_date", ObjBO.Certificate_issue_date);

                cmd.Parameters.AddWithValue("@employees_count", ObjBO.Employees_count);

                cmd.Parameters.AddWithValue("@customer_count", ObjBO.Customer_count);

                cmd.Parameters.AddWithValue("@Year_of_establishment", ObjBO.Year_of_establishment);

                cmd.Parameters.AddWithValue("@certificate_id", ObjBO.Certificate_id);

                cmd.Parameters.AddWithValue("@certificate_validity_date", ObjBO.Certificate_validity_date);
              //  con.Dispose();
                con.Open();
                int result = cmd.ExecuteNonQuery();
                cmd.Dispose();
              //  con.Dispose();
                return result;
        
        }
        public SqlDataReader vendor_details_dal(vendor_registration_entity ObjBO)
        {
          
            SqlCommand cmd3 = new SqlCommand("get_vendor_details", con);
            cmd3.CommandType = CommandType.StoredProcedure;
            cmd3.Parameters.AddWithValue("@company_registration_number", ObjBO.Company_registration_number);
            con.Open();
            SqlDataReader rd1 = cmd3.ExecuteReader();
         //   con.Dispose();
            return rd1;
             
        }
        public int validate_vendor_dal(vendor_registration_entity ObjBO)
        {
            try
            {

                SqlCommand cmd4 = new SqlCommand("validate_vendor", con);
                cmd4.CommandType = CommandType.StoredProcedure;
                cmd4.Parameters.AddWithValue("@Company_registration_number", ObjBO.Company_registration_number);
                
                con.Open();
                SqlDataReader rd = cmd4.ExecuteReader();
                if (rd.HasRows)
                {
                   flag=1;
             //      con.Dispose();
                    
                }
                else
                {
                    flag=0;
                 //   con.Dispose();
                }
              return flag;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
   
}

