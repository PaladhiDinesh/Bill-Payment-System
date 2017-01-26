using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using bill_payment_ENTITY;
using bill_payment_DAL;

namespace bill_payment_BAL
{
   public class vendor_updation_bal
    {
        public SqlDataReader insert1(vendor_updation_entity obj1)
        {
            try
            {

                vendor_updation_dal vendor_dal = new vendor_updation_dal();
                vendor_dal.CreateCon();
                return vendor_dal.insert(obj1);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public int updateallbal(vendor_updation_entity obj1)
        {
            try
            {
                vendor_updation_dal dal1 = new vendor_updation_dal();
                dal1.CreateCon();
                return dal1.updatealldal(obj1);
                //return dal1.update1(obj1);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public SqlDataReader get_country_id_bl(vendor_updation_entity obj1)
        {
            try
            {
                vendor_updation_dal dal2 = new vendor_updation_dal();
                dal2.CreateCon();
                return dal2.get_country_id(obj1);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public int bal_update_country_in_vendor_table(vendor_updation_entity obj1)
        {
            try
            {
                vendor_updation_dal dal3 = new vendor_updation_dal();
                dal3.CreateCon();
                return dal3.dal_update_country_in_vendor_table(obj1);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
