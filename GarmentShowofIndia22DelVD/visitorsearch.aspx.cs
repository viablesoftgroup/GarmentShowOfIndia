using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace DistribuelecMay22BlrVD
{
    public partial class visitorsearch : System.Web.UI.Page
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
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

            Label2.Text = null;
            try
            {
                if (mobile.Text != "")
                {
                    con = new SqlConnection(constring);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    da = new SqlDataAdapter("SELECT * FROM GarmentOfIndiaVISITOR WHERE Mobile_number = '" + mobile.Text + "'", con);
                    da.SelectCommand.CommandTimeout = 72000;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["Mobile_number"].ToString() == mobile.Text)
                        {
                            //Response.Redirect("registrationbyinvitation.aspx", false);
                            Response.Redirect("visitorbadgedownload.aspx?d=" + mobile.Text + "");
                        }
                    }
                    else
                    {
                        mobile.Text = "";
                        Label2.Text = "Record Not Found.. ! Kindly Register";

                    }
                }
            }
            catch (SystemException ex)
            {
                Label2.Text = ex.Message;
            }
        }
    }
}
