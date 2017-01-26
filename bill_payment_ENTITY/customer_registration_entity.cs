using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace bill_payment_ENTITY
{
    public class customer_registration_entity
    {
        private string customer_name;

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
        private string address_details;

        public string Address_details
        {
            get { return address_details; }
            set { address_details = value; }
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
        private double balance;

        public double Balance
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
        private string document_name;

        public string Document_name
        {
            get { return document_name; }
            set { document_name = value; }
        }

        public customer_registration_entity()
        {

        }
        public customer_registration_entity(string Customer_name, string Contact_number, string Email_id, string Address_details, string Document_detail_number, string Registration_date, string Card_number, string Vendor_name, string Country_name, string State_name, string Vendor_type, double Balance, string Country_id, string Document_name)
        {

            this.customer_name = Customer_name;
            this.contact_number = Contact_number;
            this.email_id = Email_id;
            this.address_details = Address_details;
            this.document_detail_number = Document_detail_number;
            this.registration_date = Registration_date;
            this.card_number = Card_number;
            this.vendor_type = Vendor_name;
            this.vendor_type = Vendor_type;
            this.country_name = Country_name;
            this.state_name = State_name;
            this.balance = Balance;
            this.country_id = Country_id;
            this.document_name = Document_name;
        }
    }
}
