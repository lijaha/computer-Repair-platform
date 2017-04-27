using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sum();
        getmessage();
        repair();
        admin();
        Label11.Text = Request.UserHostAddress;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update message_table set title =@title " + "where ID = 1";
            cmd.Parameters.Add("@title", SqlDbType.VarChar);
            cmd.Parameters["@title"].Value = TextBox1.Text;
            conn.Open();
            int num = cmd.ExecuteNonQuery();
        }
    }
    public void getmessage()
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select imessage1,imessage2,imessage3,smessage1,smessage2,smessage3,title from message_table";
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Label1.Text = dr[0].ToString();
            Label2.Text = dr[1].ToString();
            Label3.Text = dr[2].ToString();
            Label4.Text = dr[3].ToString();
            Label5.Text = dr[4].ToString();
            Label6.Text = dr[5].ToString();
            Label7.Text = dr[6].ToString();
            dr.Close();
            conn.Close();
        }
    }
    public void sum()
    {
        if (Convert.ToInt32(Application["Numvists"]) < 1)
        {
            Application["Numvists"] = 1;
        }
        Application.Lock();
        Application["Numvists"] = int.Parse(Application["Numvists"].ToString()) + 1;
        Application.UnLock();
        string info = "{0}";
        info = string.Format(info, Application["vistorCount"]);
        Label9.Text = info;
        string numcount = "{0}";
        numcount = string.Format(numcount, Application["Numvists"]);
        Label8.Text = numcount;
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd1 = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();
            cmd1.Connection = conn;
            cmd1.CommandText = "select count(*) from teacher";
            cmd2.Connection = conn;
            cmd2.CommandText = "select count(*) from student";
            conn.Open();
            int num1 = (int)cmd1.ExecuteScalar();
            int num2 = (int)cmd2.ExecuteScalar();
            Label10.Text = (num1 + num2).ToString();
        }
    }
    public void repair()
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd1 = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();
            cmd1.Connection = conn;
            cmd1.CommandText = "select top 1 * from teacher order by tname desc";
            cmd2.Connection = conn;
            cmd2.CommandText = "select top 1 * from student order by sname desc";
            conn.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Read();
            StringBuilder text1 = new StringBuilder();
            text1.Append(dr1[0].ToString()+" ");
            text1.Append(dr1[1].ToString()+" ");
            text1.Append(dr1[2].ToString()+" ");
            text1.Append(dr1[3].ToString()+" ");
            text1.Append(dr1[4].ToString()+" ");
            text1.Append(dr1[5].ToString()+" "+"<br/>");
            Label12.Text = text1.ToString();
            dr1.Close();
            SqlDataReader dr2 = cmd2.ExecuteReader();
            dr2.Read();
            StringBuilder text2 = new StringBuilder();
            text2.Append(dr2[0].ToString() + " ");
            text2.Append(dr2[1].ToString() + " ");
            text2.Append(dr2[2].ToString() + " ");
            text2.Append(dr2[3].ToString() + " ");
            text2.Append(dr2[4].ToString() + " ");
            text2.Append(dr2[5].ToString() + " ");
            Label13.Text = text2.ToString();
            dr2.Close();
        }
    }
    public void admin()
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select lname from login_table ";
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            Label14.Text = "当前管理员：  "+dr[0].ToString();
        }
    }
}