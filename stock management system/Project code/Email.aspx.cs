using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
public partial class Email : System.Web.UI.Page
{
    SqlClass obj = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
          if (obj.conn.State == ConnectionState.Open)
            {
                obj.conn.Close();
            }
           
            obj.conn.Open();
            obj.cmd.Connection = obj.conn;
            obj.cmd.CommandText = "Select * from email";
            obj.dr = obj.cmd.ExecuteReader();
            while (obj.dr.Read())
            {
                TextBox6.Text = obj.dr[0].ToString();
                TextBox7.Text = obj.dr[1].ToString();
            }
            obj.conn.Close();
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient smtp = new SmtpClient();
            MailMessage msg = new MailMessage("" + TextBox6.Text + "@gmail.com",""+TextBox1.Text+"",""+TextBox4.Text+"",""+TextBox5.Text+"");
            msg.IsBodyHtml = true;
            if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("UPload/"+FileUpload1.FileName+""));
                msg.Attachments.Add(new Attachment(Server.MapPath("upload/"+FileUpload1.FileName+"")));
            }
            smtp.Credentials = new System.Net.NetworkCredential("" + TextBox6.Text + "@gmail.com", "" + TextBox7.Text + "");
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(msg);
        }
        catch (Exception )
        {

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(TextBox6.Text != null && TextBox7.Text != null)
        {
            obj.insert("update email set username = '"+TextBox6.Text+"',password= '"+TextBox7.Text+"'");
            Response.Redirect("Email.aspx");
        }
        else
        {
            return;
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
}
