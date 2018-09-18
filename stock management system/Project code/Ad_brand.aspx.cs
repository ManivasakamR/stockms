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

public partial class Ad_brand : System.Web.UI.Page
{
    SqlClass obj = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Clear();
            if (obj.conn.State == ConnectionState.Open)
            {
                obj.conn.Close();
            }
            DropDownList1.Items.Clear();
            obj.conn.Open();
            obj.cmd.Connection = obj.conn;
            obj.cmd.CommandText = "Select * from category";
            obj.dr = obj.cmd.ExecuteReader();
            while (obj.dr.Read())
            {
                DropDownList1.Items.Add(obj.dr[1].ToString());
            }
            obj.conn.Close();
            if (!IsPostBack)
                this.BindData();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            obj.insert("insert into brand values('" + DropDownList1.SelectedItem.Value + "','" + TextBox1.Text + "')");
        
        BindData();
        TextBox1.Text = "";
        DropDownList1.SelectedIndex = -1;
    }
    public void BindData()
    {
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select * from brand";
        obj.adp.SelectCommand = obj.cmd;
        DataTable dt = new DataTable();
        obj.adp.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
        obj.conn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
