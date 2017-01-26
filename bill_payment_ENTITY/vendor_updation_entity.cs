using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace bill_payment_ENTITY
{
    public class vendor_updation_entity
    {
         private string vendor_type;

        private string vendor_name;

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
        public string vendor_id;

        public string Vendor_id
        {
            get { return vendor_id; }
            set { vendor_id = value; }
        }
        private string company_registration_number;

        public string Company_registration_number
        {
            get { return company_registration_number; }
            set { company_registration_number = value; }
        }
        private string contact_number;

        public string Contact_number
        {
            get { return contact_number; }
            set { contact_number = value; }
        }

        private string Email_id;

        public string Email_id1
        {
            get { return Email_id; }
            set { Email_id = value; }
        }
        private string certificate_name;

        public string Certificate_name
        {
            get { return certificate_name; }
            set { certificate_name = value; }
        }
        private string website;

        public string Website
        {
            get { return website; }
            set { website = value; }
        }
        private string address_details;

        public string Address_details
        {
            get { return address_details; }
            set { address_details = value; }
        }
        private string country_id;

        public string Country_id
        {
            get { return country_id; }
            set { country_id = value; }
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


        private string certificate_issue_date;

        public string Certificate_issue_date
        {
            get { return certificate_issue_date; }
            set { certificate_issue_date = value; }
        }
        private string employees_count;

        public string Employees_count
        {
            get { return employees_count; }
            set { employees_count = value; }
        }

        private string customer_count;

        public string Customer_count
        {
            get { return customer_count; }
            set { customer_count = value; }
        }

        private string year_of_establishment;

        public string Year_of_establishment
        {
            get { return year_of_establishment; }
            set { year_of_establishment = value; }
        }

        private int certificate_id;

        public int Certificate_id
        {
            get { return certificate_id; }
            set { certificate_id = value; }
        }


        private string certificate_validity_date;

        public string Certificate_validity_date
        {
            get { return certificate_validity_date; }
            set { certificate_validity_date = value; }
        }

        public vendor_updation_entity()
        {

        }

    }
}
