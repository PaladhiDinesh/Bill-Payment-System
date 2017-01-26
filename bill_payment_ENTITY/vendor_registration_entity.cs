using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace bill_payment_ENTITY
{
   public class vendor_registration_entity
    {
        private int vendor_id;
        private string vendor_name;
        private string vendor_type;
        private int company_registration_number;
        private string contact_number;
        private string Email_id;
        private string website;
        private string address_details;
        private string country_id;
        private DateTime certificate_issue_date;
        private int employees_count;
        private int customer_count;
        private int year_of_establishment;
        private int certificate_id;
        private DateTime certificate_validity_date;
        private string country_name;
        private string state_name;
        public int Vendor_id
        {
            get { return vendor_id; }
            set { vendor_id = value; }
        }

        public string Vendor_name
        {
            get { return vendor_name; }
            set { vendor_name = value; }
        }
        public string Vendor_type
        {
            get { return vendor_type; }
            set { vendor_type = value; }
        }
        public int Company_registration_number
        {
            get { return company_registration_number; }
            set { company_registration_number = value; }
        }
        public string Contact_number
        {
            get { return contact_number; }
            set { contact_number = value; }
        }

        public string Email_id1
        {
            get { return Email_id; }
            set { Email_id = value; }
        }

        public string Website
        {
            get { return website; }
            set { website = value; }
        }

        public string Address_details
        {
            get { return address_details; }
            set { address_details = value; }
        }

        public string Country_id
        {
            get { return country_id; }
            set { country_id = value; }
        }

        public string Country_name
        {
            get { return country_name; }
            set { country_name = value; }
        }

        public string State_name
        {
            get { return state_name; }
            set { state_name = value; }
        }
        public DateTime Certificate_issue_date
        {
            get { return certificate_issue_date; }
            set { certificate_issue_date = value; }
        }

        public int Employees_count
        {
            get { return employees_count; }
            set { employees_count = value; }
        }

        public int Customer_count
        {
            get { return customer_count; }
            set { customer_count = value; }
        }

        public int Year_of_establishment
        {
            get { return year_of_establishment; }
            set { year_of_establishment = value; }
        }

        public int Certificate_id
        {
            get { return certificate_id; }
            set { certificate_id = value; }
        }

        public DateTime Certificate_validity_date
        {
            get { return certificate_validity_date; }
            set { certificate_validity_date = value; }
        }
    }
}
