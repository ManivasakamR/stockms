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

public partial class Admin : System.Web.UI.Page
{
    SqlClass obj = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }
    public void BindData()
    {
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select users_id,passwords,user_names,user_grade from login_table";
        obj.adp.SelectCommand = obj.cmd;
        DataTable dt = new DataTable();
        obj.adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        obj.conn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool che = obj.cheack("select users_id from login_table where user_names ='" + TextBox1.Text + "'");
        if (che == false)
        {
            if (TextBox1.Text != null && TextBox2.Text != null && TextBox3.Text != null && DropDownList1.SelectedIndex != null)
            {
                obj.insert("insert into login_table values('"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox1.Text+"','"+DropDownList1.SelectedItem+"')");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                DropDownList1.SelectedIndex = -1;
                BindData();
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
