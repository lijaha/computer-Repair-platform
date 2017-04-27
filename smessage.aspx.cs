using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update message_table set smessage1 =@smessage1 " + "where ID = 1";
            cmd.Parameters.Add("@smessage1", SqlDbType.VarChar);
            cmd.Parameters["@smessage1"].Value = TextBox1.Text;
            conn.Open();
            int num = cmd.ExecuteNonQuery();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update message_table set smessage2 =@smessage2 " + "where ID = 1";
            cmd.Parameters.Add("@smessage2", SqlDbType.VarChar);
            cmd.Parameters["@smessage2"].Value = TextBox1.Text;
            conn.Open();
            int num = cmd.ExecuteNonQuery();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update message_table set smessage3 =@smessage3 " + "where ID = 1";
            cmd.Parameters.Add("@smessage3", SqlDbType.VarChar);
            cmd.Parameters["@smessage3"].Value = TextBox1.Text;
            conn.Open();
            int num = cmd.ExecuteNonQuery();
        }
    }
}