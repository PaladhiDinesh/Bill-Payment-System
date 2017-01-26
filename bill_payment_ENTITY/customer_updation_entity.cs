using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace bill_payment_ENTITY
{
  public class customer_updation_entity
    {
        private string customer_name;
        private int customer_id;

        public int Customer_id
        {
            get { return customer_id; }
            set { customer_id = value; }
        }



        public string Customer_name
        {
            get { return customer_name; }
            set { customer_name = value; }
        }
        private string contact_number;

        public string Contact_number
        {
            get { return contact_number; }
            set { contact_number = value; }
        }


        private string email_id;

        public string Email_id
        {
            get { return email_id; }
            set { email_id = value; }
        }
        private string addres_details;

        public string Addres_details
        {
            get { return addres_details; }
            set { addres_details = value; }
        }
        private string document_detail_number;

        public string Document_detail_number
        {
            get { return document_detail_number; }
            set { document_detail_number = value; }
        }



        private string registration_date;

        public string Registration_date
        {
            get { return registration_date; }
            set { registration_date = value; }
        }
        private string card_number;

        public string Card_number
        {
            get { return card_number; }
            set { card_number = value; }
        }
        private string vendor_name;

        public string Vendor_name
        {
            get { return vendor_name; }
            set { vendor_name = value; }
        }
        private string country_name;

        public string Country_name
        {
            get { return country_name; }
            set { country_name = value; }
        }
        private string state_name;

        public string State_name
        {
            get { return state_name; }
            set { state_name = value; }
        }
        private string vendor_type;

        public string Vendor_type
        {
            get { return vendor_type; }
            set { vendor_type = value; }
        }
        private decimal balance;

        public decimal Balance
        {
            get { return balance; }
            set { balance = value; }
        }

         private string country_id;

        public string Country_id
        {
            get { return country_id; }
            set { country_id = value; }
        }
    }
}
