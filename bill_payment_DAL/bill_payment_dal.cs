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
    public class bill_payment_dal
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rd = null;
      

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

        public int insertdata(bill_payment_entity a)
        {
            try
            {
                cmd = new SqlCommand("get_company_registration_number", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@vendorType", a.VendorType);
                cmd.Parameters.AddWithValue("@vendorname", a.Vendorname);
                con.Open();
                rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read();
                    a.Company_registration_number = (int)rd["company_registration_number"];   
                }
              //  con.Dispose();
                cmd.Dispose();
               // rd.Dispose();
                con.Close();
                cmd = new SqlCommand("insert_bill_details", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@customer_id", a.Customerid);
                cmd.Parameters.AddWithValue("@company_registration_number", a.Company_registration_number);
                cmd.Parameters.AddWithValue("@card_number", a.Cardnumber);
                cmd.Parameters.AddWithValue("@amount_paid", a.Amounttopay);
                cmd.Parameters.AddWithValue("@payment_date", a.Paymentdate);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                cmd.Dispose();
               // con.Dispose();
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int dalsendbalance(bill_payment_entity balobj)
        {
            try
            {
                cmd = new SqlCommand("updating_balance", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@customerid", balobj.Customerid);
                cmd.Parameters.AddWithValue("@amount_paid", balobj.Amounttopay);
                cmd.Parameters.AddWithValue("@pending_amount", balobj.Pendingamount);
                con.Open();
                int result1 = cmd.ExecuteNonQuery();
                cmd.Dispose();
              //  con.Dispose();
                return result1;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public SqlDataReader dalmethod(bill_payment_entity objbl)
        {
            try
            {
                cmd = new SqlCommand("verify_customerid", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@customerid", objbl.Customerid);
                con.Open();
                rd = cmd.ExecuteReader();
                cmd.Dispose();
              //  con.Dispose();
               // rd.Dispose();
                return rd;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public SqlDataReader dalget_amt_name(bill_payment_entity balobj)
        {
            try
            {
                cmd = new SqlCommand("get_vname_pamount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@customer_id", balobj.Customerid);
                cmd.Parameters.AddWithValue("@vendor_type", balobj.VendorType);
                con.Open();
                 rd = cmd.ExecuteReader();
                cmd.Dispose();
             //   con.Dispose();
              //  rd.Dispose();
                return rd;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
