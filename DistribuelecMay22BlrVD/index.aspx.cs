using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;
using System.Linq;
using System.Net;
namespace DistribuelecMay22BlrVD
{
    public partial class index : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["IEEMA"].ToString();
        SqlConnection con;
        SqlDataAdapter da;
        SqlDataAdapter da1;
        SqlDataAdapter da2;
        SqlCommand cmd;
        SqlCommand cmdi;
        string pwd;
        string StrEventQuery = "";
        string RegNo;
        string prefix;
        string refr;
        string referenceId;
        string id;
        string SendSMS1;
        string EmailSent;
        string Position_in_the_Company;
        string Job_Title;
        Boolean blnInputValid = true;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             //   othernature.Visible = false;
            }
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(title1.SelectedItem.Text) || title1.SelectedItem.Text == "-- Select --")
            {
                blnInputValid = false;
                string message = "Please select title.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                return;
            }
            if (String.IsNullOrEmpty(FName.Text))
            {
                blnInputValid = false;
                string message = "Please enter first name";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }

            if (String.IsNullOrEmpty(LName.Text))
            {
                blnInputValid = false;
                string message = "Please enter last name.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }
            if (String.IsNullOrEmpty(compnay.Text))
            {
                blnInputValid = false;
                string message = "Please enter company name.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }




            if (String.IsNullOrEmpty(address.Text))
            {
                blnInputValid = false;
                string message = "Please enter Address.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }

            if (String.IsNullOrEmpty(City.Text))
            {
                blnInputValid = false;
                string message = "Please enter City";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }

            if (String.IsNullOrEmpty(postcode.Text))
            {
                blnInputValid = false;
                string message = "Please enter Postal / Zip code.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }

            if (String.IsNullOrEmpty(mobile.Text))
            {
                blnInputValid = false;
                string message = "Please enter mobile number";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }
            if (String.IsNullOrEmpty(email.Text))
            {
                blnInputValid = false;
                string message = "Please enter email.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                return;
            }

            con = new SqlConnection(constring);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            da1 = new SqlDataAdapter("select * from GarmentOfIndiaVISITOR where Mobile_number='" + mobile.Text + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            if (dt1.Rows.Count > 0)
            {
                blnInputValid = false;
                string message = "Mobile already registered";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                return;
            }

            da2 = new SqlDataAdapter("select * from GarmentOfIndiaVISITOR where Email='" + email.Text + "'", con);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);

            if (dt2.Rows.Count > 0)
            {
                blnInputValid = false;
                string message = "Email already registered";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                return;
            }



            //if (B1.Checked == false && B2.Checked == false && B3.Checked == false && B4.Checked == false && B5.Checked == false && B6.Checked == false && B7.Checked == false && B8.Checked == false && B9.Checked == false && B9.Checked == false && B10.Checked == false && B11.Checked == false && B12.Checked == false && B13.Checked == false && B14.Checked == false && B15.Checked == false && B16.Checked == false && B17.Checked == false && B18.Checked == false && B19.Checked == false && B20.Checked == false && B21.Checked == false && B22.Checked == false && B23.Checked == false && B24.Checked == false && B25.Checked == false && B26.Checked == false && B27.Checked == false && B28.Checked == false && B30.Checked == false && B31.Checked == false && B32.Checked == false && B33.Checked == false && B34.Checked == false && B35.Checked == false && B36.Checked == false && B37.Checked == false && B38.Checked == false && B39.Checked == false && B40.Checked == false && B41.Checked == false && B42.Checked == false && B43.Checked == false && B44.Checked == false && B45.Checked == false && B46.Checked == false)
            //{
            //    blnInputValid = false;
            //    string message = "Plese select Advance Distribution Management System from Question-2";
            //    string script = "window.onload = function(){ alert('";
            //    script += message;
            //    script += "')};";
            //    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            //    return;
            //}

            //if (B46.Checked == true && B46Other.Text == "")
            //{
            //    blnInputValid = false;
            //    string message = "Please specify Other from Question-2";
            //    string script = "window.onload = function(){ alert('";
            //    script += message;
            //    script += "')};";
            //    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            //    return;
            //}


            string BTOptions = "";


            string hostName = Dns.GetHostName(); // Retrive the Name of HOST  
            Console.WriteLine(hostName);
            // Get the IP  
            string myIP = Dns.GetHostByName(hostName).AddressList[0].ToString();

            con = new SqlConnection(constring);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            Regno();

            using (SqlCommand cmdi = new SqlCommand("insert into GarmentOfIndiaVISITOR(RegID, Title, FirstName, LastName, CompanyName, Designation, Address, Address1, City, State, PostalZip, Country, PhoneCountry_Code, PhoneCity_Code, Phone_number, Country_Code, Mobile_number, Email, Website, Q1natureoforganisation, Q1othernatureoforganisation, Q2_Advance_Distribution_Management_System, Q2_Advance_Energy_Management_System, Q2_Building_Solutions_ELV_Building_Management_Fire_Safety, Q2_Cables__Accessories, Q2_Cables__Communication, Q2_Cables__Control, Q2_Cables__House_wiring, Q2_Cables__Instrumentation, Q2_Cables__Power_HT_and_LT, Q2_Cables__Specialty, Q2_Capacitors__Electrolytic, Q2_Capacitors__Power, Q2_Conductors_and_Accessories, Q2_Control_and_Relay_and_Instrumentation_Panels, Q2_Design_and_Consultancy, Q2_Energy_Meters, Q2_Engineering_Projects, Q2_Generators_Alternators_AC_and_DC, Q2_Geographical_Information_System, Q2_Grid_Analytics, Q2_Industrial_Control_and_Automation_Systems, Q2_Instrument_Transformers_Current, Q2_Instrument_Transformers_CVT, Q2_Instrument_Transformers_Voltage, Q2_Instruments_Sensing_Measuring_Indicating_Testing_etc, Q2_Insulators_Composite, Q2_Insulators_Polymeric, Q2_Insulators_Porcelain, Q2_Lighting_and_Lighting_Accessories, Q2_Motors_AC, Q2_Motors_DC, Q2_Motors_Flame_Proof, Q2_Power_Electronics_UPS_Variable_Speed_AC_DC_Drives, Q2_SCADA, Q2_Stamping_and_Laminations, Q2_Surge_Arrestors, Q2_Switchgear_and_Controlgear_LV, Q2_Switchgear_and_Controlgear_EHV_and_HV, Q2_Switchgear_and_Controlgear_MV, Q2_TELECOM_Equipment, Q2_Transformers__Distribution, Q2_Transformers__Power, Q2_Transmission_Line_Accessories_and_Hardware, Q2_Transmission_Line_Towers, Q2_Winding_Wires, Q2_Other_Products_Please_Specify, IP, ReferenceId)values(@RegID, @Title, @FirstName, @LastName, @CompanyName, @Designation, @Address, @Address1, @City, @State, @PostalZip, @Country, @PhoneCountry_Code, @PhoneCity_Code, @Phone_number, @Country_Code, @Mobile_number, @Email, @Website, @Q1natureoforganisation, @Q1othernatureoforganisation, @Q2_Advance_Distribution_Management_System, @Q2_Advance_Energy_Management_System, @Q2_Building_Solutions_ELV_Building_Management_Fire_Safety, @Q2_Cables__Accessories, @Q2_Cables__Communication, @Q2_Cables__Control, @Q2_Cables__House_wiring, @Q2_Cables__Instrumentation, @Q2_Cables__Power_HT_and_LT, @Q2_Cables__Specialty, @Q2_Capacitors__Electrolytic, @Q2_Capacitors__Power, @Q2_Conductors_and_Accessories, @Q2_Control_and_Relay_and_Instrumentation_Panels, @Q2_Design_and_Consultancy, @Q2_Energy_Meters, @Q2_Engineering_Projects, @Q2_Generators_Alternators_AC_and_DC, @Q2_Geographical_Information_System, @Q2_Grid_Analytics, @Q2_Industrial_Control_and_Automation_Systems, @Q2_Instrument_Transformers_Current, @Q2_Instrument_Transformers_CVT, @Q2_Instrument_Transformers_Voltage, @Q2_Instruments_Sensing_Measuring_Indicating_Testing_etc, @Q2_Insulators_Composite, @Q2_Insulators_Polymeric, @Q2_Insulators_Porcelain, @Q2_Lighting_and_Lighting_Accessories, @Q2_Motors_AC, @Q2_Motors_DC, @Q2_Motors_Flame_Proof, @Q2_Power_Electronics_UPS_Variable_Speed_AC_DC_Drives, @Q2_SCADA, @Q2_Stamping_and_Laminations, @Q2_Surge_Arrestors, @Q2_Switchgear_and_Controlgear_LV, @Q2_Switchgear_and_Controlgear_EHV_and_HV, @Q2_Switchgear_and_Controlgear_MV,@Q2_TELECOM_Equipment, @Q2_Transformers__Distribution, @Q2_Transformers__Power, @Q2_Transmission_Line_Accessories_and_Hardware, @Q2_Transmission_Line_Towers, @Q2_Winding_Wires, @Q2_Other_Products_Please_Specify, @IP, @ReferenceId)", con))
            {
                cmdi.Parameters.AddWithValue("@RegID", RegNo.Trim());
                cmdi.Parameters.AddWithValue("@Title", title1.SelectedItem.Text.Trim());
                cmdi.Parameters.AddWithValue("@FirstName", FName.Text.Trim());
                cmdi.Parameters.AddWithValue("@LastName", LName.Text.Trim());
                cmdi.Parameters.AddWithValue("@CompanyName", compnay.Text.Trim());
                cmdi.Parameters.AddWithValue("@Designation", Position1.Text.Trim());
                cmdi.Parameters.AddWithValue("@Address", address.Text.Trim());
                cmdi.Parameters.AddWithValue("@Address1", address1.Text.Trim());
                cmdi.Parameters.AddWithValue("@City", City.Text.Trim());                
                cmdi.Parameters.AddWithValue("@State", state1.Text.Trim());
                cmdi.Parameters.AddWithValue("@PostalZip", postcode.Text.Trim());
                cmdi.Parameters.AddWithValue("@Country", country.SelectedItem.Text.Trim());
                cmdi.Parameters.AddWithValue("@PhoneCountry_Code", country.SelectedItem.Value.Trim());
                cmdi.Parameters.AddWithValue("@PhoneCity_Code", citycode.Text.Trim());
                cmdi.Parameters.AddWithValue("@Phone_number", phone.Text.Trim());
                cmdi.Parameters.AddWithValue("@Country_Code", country.SelectedItem.Value.Trim());
                cmdi.Parameters.AddWithValue("@Mobile_number", mobile.Text.Trim());
                cmdi.Parameters.AddWithValue("@Email", email.Text.Trim());
                cmdi.Parameters.AddWithValue("@Website", website.Text.Trim());
                cmdi.Parameters.AddWithValue("@Q1natureoforganisation", String.Empty); ;
                cmdi.Parameters.AddWithValue("@Q1othernatureoforganisation", String.Empty);
                cmdi.Parameters.AddWithValue("@Q2_Advance_Distribution_Management_System", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Advance_Energy_Management_System", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Building_Solutions_ELV_Building_Management_Fire_Safety", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Cables__Accessories", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Cables__Communication", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Cables__Control", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Cables__House_wiring", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Cables__Instrumentation", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Cables__Power_HT_and_LT", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Cables__Specialty", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Capacitors__Electrolytic", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Capacitors__Power", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Conductors_and_Accessories", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Control_and_Relay_and_Instrumentation_Panels", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Design_and_Consultancy", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Energy_Meters", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Engineering_Projects", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Generators_Alternators_AC_and_DC", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Geographical_Information_System", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Grid_Analytics", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Industrial_Control_and_Automation_Systems", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Instrument_Transformers_Current", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Instrument_Transformers_CVT", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Instrument_Transformers_Voltage", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Instruments_Sensing_Measuring_Indicating_Testing_etc", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Insulators_Composite", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Insulators_Polymeric", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Insulators_Porcelain", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Lighting_and_Lighting_Accessories", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Motors_AC", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Motors_DC", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Motors_Flame_Proof", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Power_Electronics_UPS_Variable_Speed_AC_DC_Drives", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_SCADA", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Stamping_and_Laminations", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Surge_Arrestors", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Switchgear_and_Controlgear_LV", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Switchgear_and_Controlgear_EHV_and_HV", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Switchgear_and_Controlgear_MV", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_TELECOM_Equipment", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Transformers__Distribution", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Transformers__Power", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Transmission_Line_Accessories_and_Hardware", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Transmission_Line_Towers", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Winding_Wires", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@Q2_Other_Products_Please_Specify", BTOptions.Trim());
                cmdi.Parameters.AddWithValue("@IP", myIP.Trim());
                cmdi.Parameters.AddWithValue("@ReferenceId", referenceId.Trim());
                cmdi.CommandTimeout = 72000;
                int k = cmdi.ExecuteNonQuery();
                if (k > 0)
                {
                    savelog();
                    if (SendSMS1 != "" && EmailSent != "")
                    {
                        Session["SendSMS1"] = SendSMS1;
                        Session["EmailSent"] = EmailSent;
                    }
                    Response.Redirect("thankyou.aspx?rId=" + referenceId);
                }

            }

        }
        private void Regno()
        {

            con = new SqlConnection(constring);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            da = new SqlDataAdapter("SELECT ISNULL(MAX(ID+1),0) AS ID FROM GarmentOfIndiaVISITOR", con);
            da.SelectCommand.CommandTimeout = 7200;
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                id = dt.Rows[0]["ID"].ToString();
            }
            // con.Close();

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            da1 = new SqlDataAdapter("select Prefix,SMSSent,EmailSent from TypeOfVisitor where Category='VISITOR'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            if (dt1.Rows.Count > 0)
            {
                prefix = dt1.Rows[0]["Prefix"].ToString();
                SendSMS1 = dt1.Rows[0]["SMSSent"].ToString();
                EmailSent = dt1.Rows[0]["EmailSent"].ToString();
            }

            if (id.Length == 1)
            {
                RegNo = prefix + "0000" + id;
            }
            else if (id.Length == 2)
            {
                RegNo = prefix + "000" + id;
            }
            else if (id.Length == 3)
            {
                RegNo = prefix + "00" + id;
            }
            else if (id.Length == 4)
            {
                RegNo = prefix + "0" + id;
            }
            else
            {
                RegNo = prefix + id;
            }

            Random ran = new Random();
            String b = "ABCDEFGHJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            int length = 5;
            // String random = "";
            char[] chars = new char[length];
            for (int i = 0; i < length; i++)
            {
                chars[i] = b[ran.Next(0, b.Length)];
                // int a = ran.Next(26);
                //  random = random + b.ElementAt(a);
            }
            refr = new string(chars);
            referenceId = RegNo + refr;

        }


        public void savelog()
        {
            con = new SqlConnection(constring);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            string hostName = Dns.GetHostName(); // Retrive the Name of HOST  
            Console.WriteLine(hostName);            // Get the IP  
            string myIP = Dns.GetHostByName(hostName).AddressList[0].ToString();
            string logsql = "Insert Into SMSEMAILDATADOWNLOADLOG(PageNAME,USERNAME,TYPEOFMESSAGE,StatusMessage,IP) values('index.aspx','" + RegNo + "','index.aspx','PANACEA VISITOR','" + myIP + "')";
            SqlCommand cmdil = new SqlCommand(logsql, con);
            cmdil.CommandTimeout = 72000;
            int k = cmdil.ExecuteNonQuery();
            if (k > 0)
            {
                Response.Write("Register Sucessfully");
            }
            con.Close();
        }
         

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("visitorsearch.aspx");
        }

       
    }
}