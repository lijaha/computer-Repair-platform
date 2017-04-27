using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    string s;
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
            cmd.CommandText = "select lpassword from login_table where lname = @name";
            SqlParameter parameter = new SqlParameter("@name", SqlDbType.VarChar);
            parameter.Value = TextBox1.Text;
            cmd.Parameters.Add(parameter);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                s = reader[0].ToString();
            }
            reader.Close();
            conn.Close();
            if (s == TextBox2.Text)
            {
                Response.Redirect("admin.aspx");
            }

        }
    }
}