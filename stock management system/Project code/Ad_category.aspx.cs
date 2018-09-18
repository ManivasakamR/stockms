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

public partial class Ad_category : System.Web.UI.Page
{
    SqlClass obj = new SqlClass();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.BindGrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        obj.insert("insert into category values('" + TextBox1.Text + "')");
        TextBox1.Text = "";
        BindGrid();
    }
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        
    }
    public void BindGrid()
    {
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select * from category";
        obj.adp.SelectCommand = obj.cmd;
        DataTable dt = new DataTable();
        obj.adp.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }
}
