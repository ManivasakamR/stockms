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

public partial class In_stock : System.Web.UI.Page
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
        obj.cmd.CommandText = "Select * from bill where types = 'Supplier'";
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
}
