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

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ad_category.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ad_brand.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ad_item.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sell_BIl.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Current_stock.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("Email.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Out_stock.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("In_stock.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {

    }
}
