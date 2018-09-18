using System;
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
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    
    public static string grade="";
    string str;
    SqlClass obj = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "select * from login_table where users_id = @user and passwords = @pass";
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }

        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = str;
        obj.cmd.Parameters.AddWithValue("@user", TextBox1.Text);
        obj.cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
        obj.dr = obj.cmd.ExecuteReader();
        if (obj.dr.Read())
        {
            //grade = dr["user_grade"].ToString();
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            Label3.Visible = true;
        }
        obj.conn.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
