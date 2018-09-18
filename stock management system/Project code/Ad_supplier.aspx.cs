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

public partial class Ad_supplier : System.Web.UI.Page
{
    SqlClass obj = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        ItemFill();
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
        obj.cmd.CommandText = "Select names from customer";
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
        obj.cmd.CommandText = "Select names,mobile,types,addre,remark from customer";
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            obj.insert("insert into customer values('" + TextBox2.Text + "','" + TextBox4.Text + "','Coustomer','" + TextBox5.Text + "','" + TextBox6.Text + "','"+TextBox3.Text+"')");
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        if (RadioButtonList1.SelectedIndex == 1)
        {
            obj.insert("insert into customer values('" + TextBox2.Text + "','" + TextBox4.Text + "','Supplier','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "')");
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        if (RadioButtonList1.SelectedIndex == 2)
        {
            obj.insert("insert into customer values('" + TextBox2.Text + "','" + TextBox4.Text + "','Other','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "')");
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        ItemFill();
        BindData2();
    }
    protected void ListBox1_PreRender(object sender, EventArgs e)
    {
        
     }
    protected void  ListBox1_SelectedIndexChanged(object sender, EventArgs e)
   {
    if (IsPostBack)
    {
        string type = "";
        if (obj.conn.State == ConnectionState.Open)
        {
            obj.conn.Close();
        }
        ListBox1.Items.Clear();
        obj.conn.Open();
        obj.cmd.Connection = obj.conn;
        obj.cmd.CommandText = "Select * from customer where names ='" + ListBox1.SelectedItem + "''";
        obj.dr = obj.cmd.ExecuteReader();
        if (obj.dr.Read())
        {
            TextBox2.Text = obj.dr[1].ToString();
            TextBox4.Text = obj.dr[2].ToString();
            type = obj.dr[3].ToString();
            if (type == "customer")
            {
                RadioButtonList1.SelectedIndex = 0;
            }
            if (type == "Supplier")
            {
                RadioButtonList1.SelectedIndex = 1;
            }
            if (type == "Other")
            {
                RadioButtonList1.SelectedIndex = 2;
            }
            TextBox5.Text = obj.dr[4].ToString();
            TextBox6.Text = obj.dr[5].ToString();
            TextBox3.Text = obj.dr[6].ToString();
        }
    }
  }
    protected void ListBox1_Disposed(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            obj.insert("update customer set names = '" + TextBox2.Text + "',mobile = '" + TextBox4.Text + "',types ='customer',addre = '" + TextBox5.Text + "',remark = '" + TextBox6.Text + "',company ='" + TextBox3.Text + "' where names = '" + ListBox1.SelectedItem + "'");
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        if (RadioButtonList1.SelectedIndex == 1)
        {
            obj.insert("update customer set names = '" + TextBox2.Text + "',mobile = '" + TextBox4.Text + "',types ='Supplier',addre = '" + TextBox5.Text + "',remark = '" + TextBox6.Text + "',company ='" + TextBox3.Text + "'where names = '" + ListBox1.SelectedItem + "'");
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        if (RadioButtonList1.SelectedIndex == 2)
        {
            obj.insert("update customer set names = '" + TextBox2.Text + "',mobile = '" + TextBox4.Text + "',types ='Other',addre = '" + TextBox5.Text + "',remark = '" + TextBox6.Text + "',company ='" + TextBox3.Text + "'where names = '" + ListBox1.SelectedItem + "'");
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        ItemFill();
        BindData2();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        obj.insert("delete from customer where where names = '" + ListBox1.SelectedItem + "'");
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
}

