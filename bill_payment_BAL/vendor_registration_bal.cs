using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using bill_payment_ENTITY;
using bill_payment_DAL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace bill_payment_BAL
{
    public class vendor_registration_bal
    {
        vendor_registration_dal objdal = new vendor_registration_dal();

        public DataSet getstatelist(vendor_registration_entity objbl)
            {
            try
            {
                objdal.databaseconnection();

                return objdal.getstate_dal(objbl);
            }
            catch(Exception ex)
            {
                throw ex;
            }
            }


            public int insert(vendor_registration_entity objbl)
            {
                try
                {
                    objdal.databaseconnection();
                    return objdal.Insert_Details_dal(objbl);
                }

                catch
                {
                    throw;
                }
            }

            public SqlDataReader vendor_details(vendor_registration_entity objjbl)
            {
                try
                {
                objdal.databaseconnection();
                return objdal.vendor_details_dal(objjbl);
                }
                catch(Exception ex)
                {
                    throw ex;
                }
            }


            public int validate_vendor_bal(vendor_registration_entity objjbl)
            {
                try
                {
                    objdal.databaseconnection();
                    return objdal.validate_vendor_dal(objjbl);

                }
                catch (Exception ex)
                {
                    throw ex;
                      
                }
            }

        }
        
    }

