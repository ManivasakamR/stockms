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

public partial class Sell_BIl : System.Web.UI.Page
{
    SqlClass obj = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label10.Text = DateTime.Now.ToString("dd/MM/yyyy");
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
        obj.cmd.CommandText = "Select * from bill";
        obj.adp.SelectCommand = obj.cmd;
        DataTable dt = new DataTable();
        obj.adp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        obj.conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text != null && TextBox2.Text != null && TextBox3.Text != null && TextBox4.Text != null && DropDownList3.SelectedIndex != -1 && DropDownList1.SelectedIndex != -1)
        {
            int bill_no = obj.calculate("select max(bill_no) +1  From bill");
            obj.insert("insert into bill values("+bill_no+",'"+TextBox5.Text+"','"+DropDownList2.SelectedItem+"','"+Label10.Text+"','"+TextBox1.Text+"','"+DropDownList3.SelectedItem+"','"+DropDownList1.SelectedItem+"',"+TextBox2.Text+","+TextBox3.Text+","+TextBox4.Text+","+Label2.Text+")");
              DropDownList2.Text = null;
              DropDownList3.Text = null;
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                Label2.Text = "0";
            BindData();
        }
        else
        {
            return;
        }
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
            if (obj.conn.State == ConnectionState.Open)
            {
                obj.conn.Close();
            }
            obj.ds.Clear();
            obj.conn.Open();
            obj.cmd.Connection = obj.conn;
            if (DropDownList2.SelectedIndex == 0)
            {
                obj.cmd.CommandText = "Select names from customer where types = 'Coustomer' and names like '"+TextBox5.Text+"%'";
            }
            if (DropDownList2.SelectedIndex == 1)
            {
                obj.cmd.CommandText = "Select names from customer where types = 'Supplier' and names like '" + TextBox5.Text + "%'";
            }
            obj.adp.SelectCommand = obj.cmd;
            obj.adp.Fill(obj.ds, "tab");
            obj.conn.Close();
            foreach (DataRow drr in obj.ds.Tables["tab"].Rows)
            {
                list2.InnerHtml += "<option>" + drr["names"].ToString() + "</option>";
            }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {   
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
            if (obj.conn.State == ConnectionState.Open)
            {
                obj.conn.Close();
            }
            obj.ds.Clear();
            obj.conn.Open();
            obj.cmd.Connection = obj.conn;
            obj.cmd.CommandText = "Select itemName from item where itemName like '"+TextBox1.Text+"%'";
            obj.adp.SelectCommand = obj.cmd;
            obj.adp.Fill(obj.ds,"tab");
            obj.conn.Close();
            foreach (DataRow drr in obj.ds.Tables["tab"].Rows)
            {
                list1.InnerHtml +="<option>"+ drr["itemName"].ToString() + "</option>";
            }
            DropDownList3.Items.Clear();
            DropDownList1.Items.Clear();
            TextBox2.Text = "";
            if (obj.conn.State == ConnectionState.Open)
            {
                obj.conn.Close();
            }
            obj.ds.Clear();
            obj.conn.Open();
            obj.cmd.Connection = obj.conn;
            obj.cmd.CommandText = "select * From item where itemName = '" + TextBox1.Text + "'";
            obj.dr = obj.cmd.ExecuteReader();
            while (obj.dr.Read())
            {
                DropDownList3.Items.Add(obj.dr[1].ToString());
                DropDownList1.Items.Add(obj.dr[2].ToString());
                TextBox2.Text = obj.dr[5].ToString();
            }
            obj.conn.Close();
            TextBox3.Text = obj.getname("select prize From bill where itemName ='" + TextBox1.Text + "' and types ='Supplier'");
    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        Label2.Text = (Convert.ToInt32(TextBox3.Text) * Convert.ToInt32(TextBox4.Text)).ToString();
    }
}
