using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
/// <summary>
/// Summary description for SqlClass
/// </summary>
public class SqlClass
{

    public SqlConnection conn = new SqlConnection("Data Source=DELL-PC;Initial Catalog=OSMS;Integrated Security=True");
    public SqlCommand cmd = new SqlCommand();
    public SqlDataAdapter adp = new SqlDataAdapter();
    public SqlDataReader dr;
    public DataSet ds = new DataSet();

    public void insert(string str)
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
        cmd.Connection = conn;
        cmd.CommandText = str;
        cmd.ExecuteNonQuery();
        conn.Close();
    }
   
    public int calculate(string qry)
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        int total = 0;
        conn.Open();
        cmd.Connection = conn;
        cmd.CommandText = qry;
        try
        {
            total = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception)
        {
            total = 0;
        }
        conn.Close();
        return total;
    }
    public bool cheack(string srt)
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        bool che = false;
        conn.Open();
        cmd.Connection = conn;
        cmd.CommandText = srt;
        try
        {
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                che = true;
            }
        }
        catch (Exception)
        {
        }
        return che;
    }
    public string getname(string qry)
    {
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        string name = "";
        conn.Open();
        cmd.Connection = conn;
        cmd.CommandText = qry;
        try
        {
            name = cmd.ExecuteScalar().ToString();
        }
        catch (Exception)
        {
            name = "0";
        }
        conn.Close();
        return name;
    }
   
   
}
