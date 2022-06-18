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
    public partial class visitorbadgedownload : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["IEEMA"].ToString();
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da1;
        string referenceId;
        Boolean blnInputValid = true;
        string refr;
        string prefix;
        string SendSMS1;
        string EmailSent;
        string RegNo;
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            if (!IsPostBack)
            {

                con = new SqlConnection(constring);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                da = new SqlDataAdapter("SELECT * FROM GarmentOfIndiaVISITOR  WHERE Mobile_number='" + Request.QueryString["d"] + "'", con);
                da.SelectCommand.CommandTimeout = 72000;
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = dt.Rows[0]["Title"].ToString();
                    Label11.Text = dt.Rows[0]["FirstName"].ToString();
                    Label12.Text = dt.Rows[0]["LastName"].ToString();
                    Label14.Text = dt.Rows[0]["RegID"].ToString();
                    TextBox1.Text = dt.Rows[0]["ReferenceId"].ToString();

                }
                else
                {
                    Response.Redirect("visitorsearch.aspx");
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ReferenceId1, RegistrationStatus;

            con = new SqlConnection(constring);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            da1 = new SqlDataAdapter("select * from GarmentOfIndiaVISITOR where  Mobile_number='" + Request.QueryString["d"] + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {

                Session["SendSMS1"] = 1;
                Session["EmailSent"] = 1;
                Response.Redirect("thankyou.aspx?rId=" + TextBox1.Text + "");
            }

        }

    }
}