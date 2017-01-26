using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using bill_payment_ENTITY;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using bill_payment_DAL;
using System.Web;



namespace bill_payment_BAL
{
   public class bill_payment_bal
    {
        bill_payment_dal pay_dal = new bill_payment_dal();
        public int insert(bill_payment_entity a)
        {
            try
            {

                pay_dal.CreateCon();
                return pay_dal.insertdata(a);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public SqlDataReader Balmethod(bill_payment_entity balobj)
        {
            try
            {
                pay_dal.CreateCon();
                return pay_dal.dalmethod(balobj);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int balsendbalance(bill_payment_entity balobj)
        {
            try
            {
                pay_dal.CreateCon();
                return pay_dal.dalsendbalance(balobj);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public SqlDataReader balget_amt_name(bill_payment_entity balobj)
        {
            try
            {
                pay_dal.CreateCon();
                return pay_dal.dalget_amt_name(balobj);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
