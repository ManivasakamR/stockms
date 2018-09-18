using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace OSMS
{
    class SQLCLASS
    {
       public string stratPath = Application.StartupPath;
       public SqlConnection conn = new SqlConnection("datasource = *\\SQLEXPRESS;initial catalog = OSMS;integrated security= true");
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
       public decimal rowCounter(DataGridView gridname, int rowIndex)
        {
            decimal result=0;
            try
            {
                for (int i = 0; i <= gridname.Rows.Count - 1; i++)
                {
                    result = Convert.ToDecimal(gridname.Rows[i].Cells[rowIndex].Value) + result;
                }

            }
            catch (Exception x)
            {
                MessageBox.Show(x.Message);
            }
            return (result);
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
            cmd.CommandText = str;
            try
            {
                total = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch (Exception )
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
            cmd.CommandText = str;
            try
            {
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    che = true;
                }
            }
            catch (Exception )
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
            cmd.CommandText = str;
            try
            {
                name = cmd.ExecuteScalar().ToString();
            }
            catch (Exception )
            {
                name = "0";
            }
            conn.Close();
            return name;
        }
        public double Calcula_all_row_value(DataGridView name, int index)//---------------Very Imp Function.....---//
        {
           double total_new = 0;
            try
            {
                for (int i = 0; i <= name.Rows.Count - 1; i++)
                {
                    total_new = Convert.ToDouble(name.Rows[i].Cells[index].Value) + total_new;
                }

            }
            catch (Exception x)
            {
                MessageBox.Show(x.Message);
            }
            return (total_new);
        }
        public void RecursiveClearTextBoxes(Control.ControlCollection cc)
        {
            foreach (Control ctrl in cc)
            {
                TextBox tb = ctrl as TextBox;
                if (tb != null)
                {
                    tb.Clear();
                }
                else
                {
                    RecursiveClearTextBoxes(ctrl.Controls);
                }
            }
        }
    }
}

