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

public partial class Ad_item : System.Web.UI.Page
{
    SqlClass obj = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
            //item name Fill----------
            ItemFill();
            BindData2();
        }
        BindData2();
    }
    public void ItemFill()
    {
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        ListBox1.Items.Clear();
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select itemName from item";
        obj.dr = obj.cmd.ExecuteReader();
        while (obj.dr.Read())
        {
            ListBox1.Items.Add(obj.dr[0].ToString());
        }
        obj.conn.Close();
    }
    public void BindData2()
    {
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select category,brandname,itemName,unit,tax from item";
        obj.adp.SelectCommand = obj.cmd;
        DataTable dt = new DataTable();
        obj.adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        obj.conn.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex !=  -1 && DropDownList2.SelectedIndex != -1 && DropDownList3.SelectedIndex != -1 && TextBox1.Text != null && TextBox2.Text != null)
        {
        obj.insert("insert into item values('" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + TextBox1.Text + "','" + DropDownList3.SelectedItem + "',"+TextBox2.Text+")");
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        TextBox1.Text = "";
        TextBox2.Text = "";
        BindData2();
        ItemFill();
        }
        else
        {
            return;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
    public void BindData()
    {
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        DropDownList2.Items.Clear();
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select brandname from brand where category='" + DropDownList1.SelectedItem + "'";
        obj.dr = obj.cmd.ExecuteReader();
        while (obj.dr.Read())
        {
            DropDownList2.Items.Add(obj.dr[0].ToString());
        }
        obj.conn.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Button1.Enabled = false;
        obj.insert("update item set category = '" + DropDownList1.SelectedItem + "',brandname =  '" + DropDownList2.SelectedItem + "',itemName = '" + TextBox1.Text + "',unit='"+DropDownList2.SelectedItem+"',tax = "+TextBox2.Text+"");
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        TextBox1.Text = "";
        TextBox2.Text = "";
        Button1.Enabled = true;
        BindData2();
        ItemFill();
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        ListBox1.Items.Clear();
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select itemName from item where itemName like '"+TextBox3.Text+"%'";
        obj.dr = obj.cmd.ExecuteReader();
        while (obj.dr.Read())
        {
            ListBox1.Items.Add(obj.dr[0].ToString());
        }
        obj.conn.Close();
    }
    protected void DropDownList1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        BindData2();
        ItemFill();
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (obj.conn.State == ConnectionState.Open)
            {
                obj.conn.Close();
            }
            obj.conn.Open();
            obj.cmd.Connection = obj.conn;
            obj.cmd.CommandText = "Select * from item where itemName ='" + ListBox1.SelectedItem + "'";
            obj.dr = obj.cmd.ExecuteReader();
            if (obj.dr.Read())
            {
                DropDownList1.Text = obj.dr[1].ToString();
                DropDownList2.Text = obj.dr[2].ToString();
                TextBox1.Text = obj.dr[3].ToString();
                DropDownList3.Text = obj.dr[4].ToString();
                TextBox2.Text = obj.dr[5].ToString();
            }
            else
            {
                return;
            }
        }
    }
}
