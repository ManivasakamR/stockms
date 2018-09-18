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
using FirebirdSql.Data.FirebirdClient;

/// <summary>
/// Summary description for FireClass
/// </summary>
public class FireClass
{
       public FbConnection conn = new FbConnection("User=sysdba;Password=masterkey;Database=D:\\cement.fdb;DataSource=localhost;Charset=NONE;");
       public FbCommand cmd = new FbCommand();
       public FbDataAdapter adp = new FbDataAdapter();
       public FbDataReader dr;
       public FbDataReader dr2;
       public DataSet ds = new DataSet();
       public void insert(string str)
       {
           if (conn.State == ConnectionState.Open)
           {
               conn.Close();
           }
           conn.Open();
           FbTransaction Transaction = conn.BeginTransaction();
           FbCommand cmd = new FbCommand(str, conn, Transaction);
           cmd.ExecuteNonQuery();
           Transaction.Commit();
           conn.Close();
       } 
	   public FireClass()
	    {
	    }
       public int calculate(string qry)
       {
           if (conn.State == ConnectionState.Open)
           {
               conn.Close();
           }
           int total = 0;
           conn.Open();
           FbTransaction Transaction = conn.BeginTransaction();
           FbCommand cmd = new FbCommand(qry, conn, Transaction);
           try
           {
               total = Convert.ToInt32(cmd.ExecuteScalar());
           }
           catch (Exception)
           {
               total = 0;
           }
           Transaction.Commit();
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
           FbDataReader dr;
           FbTransaction Transaction = conn.BeginTransaction();
           FbCommand cmd = new FbCommand(srt, conn, Transaction);
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
           FbTransaction Transaction = conn.BeginTransaction();
           FbCommand cmd = new FbCommand(qry, conn, Transaction);
           try
           {
               name = cmd.ExecuteScalar().ToString();
           }
           catch (Exception)
           {
               name = "0";
           }
           Transaction.Commit();
           conn.Close();
           return name;
       }

}
