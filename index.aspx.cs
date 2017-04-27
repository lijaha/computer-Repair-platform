using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    StringBuilder sql = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        imessage();
        smessage();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        if (RadioButtonList2.SelectedValue == "teacher")
        {
            sql.Append("Insert into teacher(tname,tsex,taddress,tphone,tquestion,trepair,tstate) values(");
            sql.Append("'" + TextBox1.Text + "'" + ",");
            sql.Append("'" + RadioButtonList1.SelectedValue + "'" + ",");
            sql.Append("'" + TextBox2.Text + "'" + ",");
            sql.Append("'" + TextBox3.Text + "'" + ",");
            sql.Append("'" + TextBox4.Text + "'" + ",");
            sql.Append("'" + RadioButtonList3.SelectedValue + "'"+",");
            sql.Append("'" + "新的报修" + "'");
            sql.Append(")");
        }
        else
        {
            sql.Append("Insert into student(sname,ssex,saddress,sphone,squestion,srepair,sstate) values(");
            sql.Append("'" + TextBox1.Text + "'" + ",");
            sql.Append("'" + RadioButtonList1.SelectedValue + "'" + ",");
            sql.Append("'" + TextBox2.Text + "'" + ",");
            sql.Append("'" + TextBox3.Text + "'" + ",");
            sql.Append("'" + TextBox4.Text + "'" + ",");
            sql.Append("'" + RadioButtonList3.SelectedValue + "'"+",");
            sql.Append("'" + "新的报修" + "'");
            sql.Append(")");
        }
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql.ToString();
            conn.Open();
            int num = cmd.ExecuteNonQuery();
            conn.Close();
        }
    }

    public void imessage()
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select imessage1,imessage2,imessage3 from message_table";
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Label1.Text = dr[0].ToString();
            Label2.Text = dr[1].ToString();
            Label3.Text = dr[2].ToString();
            dr.Close();
            conn.Close();
        }
    }
    public void smessage()
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select smessage1,smessage2,smessage3,title from message_table";
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Label4.Text = dr[0].ToString();
            Label5.Text = dr[1].ToString();
            Label6.Text = dr[2].ToString();
            Label7.Text = dr[3].ToString();
            dr.Close();
            conn.Close();
        }
    }
    
}