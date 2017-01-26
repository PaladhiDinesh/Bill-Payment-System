using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using bill_payment_ENTITY;
using bill_payment_DAL;

namespace bill_payment_BAL
{
   public class customer_updation_bal
    {
        public SqlDataReader get_details_from_text_bl(customer_updation_entity obj1)
        {

            try
            {
                customer_updation_dal cust_dal = new customer_updation_dal();
                cust_dal.CreateCon();
                return cust_dal.get_details_from_text_dl(obj1);

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public int update_all_details_bl(customer_updation_entity obj1)
        {
            try
            {
                customer_updation_dal dal1 = new customer_updation_dal();
                dal1.CreateCon();
                return dal1.update_all_details_dl(obj1);
                //return dal1.update1(obj1);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public SqlDataReader get_country_state_bl(customer_updation_entity obj1)
        {
            try
            {
                customer_updation_dal dal1 = new customer_updation_dal();
                dal1.CreateCon();
                return dal1.get_country_state_dl(obj1);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public SqlDataReader get_country_id_bl(customer_updation_entity obj1)
        {
            try
            {
                customer_updation_dal dal2 = new customer_updation_dal();
                dal2.CreateCon();
                return dal2.get_country_id_dl(obj1);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int update_country_id_bl(customer_updation_entity obj1)
        {
            try
            {
                customer_updation_dal dal3 = new customer_updation_dal();
                dal3.CreateCon();
                return dal3.update_country_id_dl(obj1);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
