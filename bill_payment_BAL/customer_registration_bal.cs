using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using bill_payment_ENTITY;
using bill_payment_DAL;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace bill_payment_DAL
{
    public class customer_registration_bal
    {
        public int insert(customer_registration_entity c)
        {
            try
            {

                customer_registration_dal cust_dal = new customer_registration_dal();
                cust_dal.CreateCon();
                return cust_dal.insertdata(c);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet populate_state_bl(customer_registration_entity c)
        {
            try
            {
                customer_registration_dal cust_dal = new customer_registration_dal();
                cust_dal.CreateCon();
                return cust_dal.populate_state(c);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int validate_customer(customer_registration_entity c)
        {
            try
            {
                customer_registration_dal cust_dal = new customer_registration_dal();
                cust_dal.CreateCon();
                return cust_dal.validate_customer_dal(c);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet populate_vendor_bl(customer_registration_entity c)
        {
            try
            {
                customer_registration_dal cust_dal = new customer_registration_dal();
                cust_dal.CreateCon();
                return cust_dal.populate_vendor(c);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public string validate_doc(customer_registration_entity c)
        {
            try
            {
                customer_registration_dal cust_dal = new customer_registration_dal();
                cust_dal.CreateCon();
                return cust_dal.validate_doc_dl(c);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public double populate_balance_bl(customer_registration_entity c)
        {
            try
            {
                customer_registration_dal cust_dal = new customer_registration_dal();
                cust_dal.CreateCon();
                return cust_dal.populate_balance_dl(c);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
