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
using System.Net;
using QRCoder;
using System.Drawing;
using System.IO;
using System.Net.Mail;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Text;
using System.Drawing.Imaging;

namespace DistribuelecMay22BlrVD
{
    public partial class thankyou : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["IEEMA"].ToString();
        SqlConnection con;
        SqlDataAdapter da;
        string RegID;
        string code;
        string ReferenceId;
        string SendSMS1 = "0";
        string EmailSent = "0";
        int count = 0;
        int countsms = 0;
        string Title, Fullname, Designation, CompanyName, City, Country, Mobile_number, Email, Vaccinated;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["rId"] = Request.QueryString["rId"];
            con = new SqlConnection(constring);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            da = new SqlDataAdapter("select	RegID, Title, concat(FirstName,' ' ,LastName)as Fullname, CompanyName, Designation, Mobile_number, Email, City, Country, ReferenceId from GarmentOfIndiaVISITOR  where ReferenceId='" + Request.QueryString["rId"] + "'", con);
            da.SelectCommand.CommandTimeout = 7200;
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                RegID = dt.Rows[0]["RegID"].ToString();
                Title = dt.Rows[0]["Title"].ToString();
                Fullname = dt.Rows[0]["Fullname"].ToString();
                Designation = dt.Rows[0]["Designation"].ToString();
                CompanyName = dt.Rows[0]["CompanyName"].ToString();
                Mobile_number = dt.Rows[0]["Mobile_number"].ToString();
                Email = dt.Rows[0]["Email"].ToString();
                City = dt.Rows[0]["City"].ToString();
                Country = dt.Rows[0]["Country"].ToString();
                ReferenceId = dt.Rows[0]["ReferenceId"].ToString();


                code = RegID + "\t" + Fullname + "\t" + Designation + "\t" + CompanyName + "\t" + Country + "\t" + Email + "\t" + Mobile_number;

                QRCodeGenerator qrGenerator = new QRCodeGenerator();
                QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
                System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                imgBarCode.Height = 150;
                imgBarCode.Width = 150;
                using (Bitmap bitMap = qrCode.GetGraphic(20))
                {
                    using (MemoryStream ms = new MemoryStream())
                    {
                        bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                        byte[] byteImage = ms.ToArray();
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                        MemoryStream ms1 = new MemoryStream(byteImage, 0, byteImage.Length);
                        ms1.Write(byteImage, 0, byteImage.Length);
                        // System.Drawing.Image image = System.Drawing.Image.FromStream(ms1, true);
                        System.Drawing.Image.FromStream(ms1, true).Save(Server.MapPath("./QRIMAGES/QR" + Session["rId"] + ".png"));
                        imgBarCode.ImageUrl = "~/QRIMAGES/" + ReferenceId + ".png";
                    }
                }
                // PlaceHolder1.Controls.Add(imgBarCode);
                con.Close();

                SendSMS1 = Session["SendSMS1"].ToString();
                if (SendSMS1 == "1" && countsms == 0)
                {
                    //sendsms(Mobile_number, ReferenceId);
                    // sendWP(Mobile_number, ReferenceId);
                }

                sentmail(RegID, Title, Fullname, Designation, CompanyName, Email, Mobile_number, Country, ReferenceId);
            }
            else
            {
                Response.Write("<h2 color=red> Invalid Entry Please Register Again</h2>");
            }
            Session["SendSMS1"] = "0";
            Session["EmailSent"] = "0";
        }
        private void sentmail(string REGNO, string TITLE, string NAME, string DESIGNATION, string COMPANY, string EMAIL_ID, string MOBILE, string COUNTRY, string REFERANCEID)
        {
            try
            {
                string Emtemp = "";

                Emtemp = "ieemavisitor.html";

                EmailSent = Session["EmailSent"].ToString();
                string STRQR;
                string MailText;
                StreamReader str;
                string FilePath;
                FilePath = Server.MapPath("EmailTemplates\\" + Emtemp + "");
                str = new StreamReader(FilePath);
                MailText = str.ReadToEnd();
                str.Close();
                //Repalce [newusername] = signup user name 
                MailText = MailText.Replace("[REGNO]", REGNO);
                MailText = MailText.Replace("[TITLE]", TITLE);
                MailText = MailText.Replace("[COUNTRY]", COUNTRY);
                MailText = MailText.Replace("[NAME]", NAME);
                MailText = MailText.Replace("[DESIGNATION]", DESIGNATION);
                MailText = MailText.Replace("[COMPANY]", COMPANY);
                MailText = MailText.Replace("[EMAIL_ID]", EMAIL_ID);
                MailText = MailText.Replace("[MOBILE]", MOBILE);
                MailText = MailText.Replace("[REFERANCEID]", REFERANCEID);
                MailText = MailText.Replace("�", "\"");
                EmailSent = Session["EmailSent"].ToString();
                if (EmailSent == "1" && count == 0)
                {
                    string CCEMAIL = "";
                    //CCEMAIL = "panaceanaturalexpoindia@gmail.com";
                    MailMessage msg = new MailMessage();
                    msg.To.Add(EMAIL_ID.Trim());
                    //msg.CC.Add(CCEMAIL.Trim());

                    string fromEMail = ConfigurationManager.AppSettings["FromEmail"].ToString();
                    string _LoginEmail = ConfigurationManager.AppSettings["emailLogin"].ToString();
                    string _LoginPassword= ConfigurationManager.AppSettings["emailPassword"].ToString();

                    ////Configure the address we are sending the mail from
                    //MailAddress address = new MailAddress("Distribuelec - Buildelec - Intelect 2022<ebadge@e-badge.in>");
                    MailAddress address = new MailAddress(fromEMail.ToString());
                    msg.From = address;
                    msg.Subject = "Garment Show of India- 2022 - Visitor Registration Confirmation";
                    msg.Body = MailText;
                    msg.IsBodyHtml = true;
                    SmtpClient client = new SmtpClient();
                    client.Host = "relay-hosting.secureserver.net";
                    client.Port = 25;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential(_LoginEmail.ToString(), _LoginPassword.ToString());
                    client.Send(msg);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Your Details Sent Successfull.');", true);
                    count = 1;
                }

                Response.Write(MailText);
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }


    }
}