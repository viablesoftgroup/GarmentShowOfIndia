using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Reflection;
using Excel = Microsoft.Office.Interop.Excel;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data.OleDb;
using ClosedXML.Excel;
using System.Text;
using System.Net.Mail;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Threading;
using System.Net;
using System.Data.Common;


namespace DistribuelecMay22BlrVD
{
    public partial class alkdkliouoewncldeas : System.Web.UI.Page
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
            string constr = ConfigurationManager.ConnectionStrings["IEEMA"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM DISTRIBUELECVISITOR order by ID"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            using (XLWorkbook wb = new XLWorkbook())
                            {
                                wb.Worksheets.Add(dt, "DISTRIBUELECVISITOR");

                                Response.Clear();
                                Response.Buffer = true;
                                Response.Charset = "";
                                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                                Response.AddHeader("content-disposition", "attachment;filename=DISTRIBUELECVISITORLIST-" + DateTime.Now + ".xlsx");
                                using (MemoryStream MyMemoryStream = new MemoryStream())
                                {
                                    wb.SaveAs(MyMemoryStream);
                                    MyMemoryStream.WriteTo(Response.OutputStream);
                                    Response.Flush();
                                    Response.End();
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}