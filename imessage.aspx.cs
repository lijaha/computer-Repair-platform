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
            cmd.CommandText = "update message_table set imessage1 =@imessage1 " + "where ID = 1";
            cmd.Parameters.Add("@imessage1", SqlDbType.VarChar);
            cmd.Parameters["@imessage1"].Value = TextBox1.Text;
            conn.Open();
            int num = cmd.ExecuteNonQuery();
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update message_tabel set imessage2 = @imessage2 " + "where ID = 1";
            cmd.Parameters.Add("@imessage1", SqlDbType.VarChar);
            cmd.Parameters["@imessage1"].Value = TextBox1.Text;
            conn.Open();
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update message_tabel set imessage3 = @imessage3 " + "where ID = 1";
            cmd.Parameters.Add("@imessage3", SqlDbType.VarChar);
            cmd.Parameters["@imessage3"].Value = TextBox3.Text;
            conn.Open();
        }
    }
}