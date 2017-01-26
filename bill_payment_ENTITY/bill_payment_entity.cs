using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace bill_payment_ENTITY
{
  public class bill_payment_entity
    {
         private string vendorType;
        private int customerid;
        private string vendorname;
        private decimal pendingamount;
        private string paymentdate;
        private decimal amounttopay;
        private string cardnumber;
        private int company_registration_number;

        public int Company_registration_number
        {
            get { return company_registration_number; }
            set { company_registration_number = value; }
        }
       
        public string Cardnumber
        {
            get { return cardnumber; }
            set { cardnumber = value; }
        }
        public string VendorType
        {
            get { return vendorType; }
            set { vendorType = value; }
        }

        public decimal Amounttopay
        {
            get { return amounttopay; }
            set { amounttopay = value; }
        }

        public string Paymentdate
        {
            get { return paymentdate; }
            set { paymentdate = value; }
        }


        public decimal Pendingamount
        {
            get { return pendingamount; }
            set { pendingamount = value; }
        }

        public string Vendorname
        {
            get { return vendorname; }
            set { vendorname = value; }
        }

        public int Customerid
        {
            get { return customerid; }
            set { customerid = value; }
        }
        public bill_payment_entity()
        {

        }
    }
}
