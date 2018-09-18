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
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for database
/// </summary>
public class database
{
    SqlConnection sqlcon = new SqlConnection("Data Source=DELL-PC;Initial Catalog=OSMS;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string str;
	public database()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
}
