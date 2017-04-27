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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            get();
        }
    }

    public void get()
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        string sql;
        if (DropDownList1.SelectedValue == "teacher")
        {

            sql = "select tname as '姓名',tsex as '性别',tphone as '电话',tstate as '状态' from teacher_table";

        }
        else
        {
            sql = "select sname as '姓名',ssex as '性别',sphone as '电话',sstate as '状态' from student_table";
        }
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        string sql;
        if (DropDownList1.SelectedValue == "teacher")
        {

            sql = "select tname as '姓名',tsex as '性别',tphone as '电话',tstate as '状态' from teacher_table";

        }
        else
        {
            sql = "select sname as '姓名',ssex as '性别',sphone as '电话',sstate as '状态' from student_table";
        }

        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }
    }
    public void update1(string name, string sex,string phone,string state)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update teacher_table set tname = @name,tsex = @sex,tphone = @phone,tstate = @state where tid = '1'";
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@sex", sex);
            cmd.Parameters.AddWithValue("@phone",phone);
            cmd.Parameters.AddWithValue("@state", state);
            int num = cmd.ExecuteNonQuery();
            cmd.CommandText = @"select tname as '姓名',tsex as '性别',tphone as '电话',tstate as '状态' from teacher_table";
            cmd.Parameters.Clear();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.EditIndex = -1;
            GridView1.DataBind();
            dr.Close();
            cmd.Dispose();
        }
    }
    public void update2(string name, string sex,string phone,string state)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Update student_table set sname=@name,ssex=@sex,sphone=@phone,sstate=@state where sid='2'";
            conn.Open();
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@sex", sex);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.ExecuteNonQuery();
            cmd.CommandText = @"select sname as '姓名',ssex as '性别',sphone as '电话',sstate as '状态' from student_table where sid='2'";
            cmd.Parameters.Clear();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.EditIndex = -1;
            GridView1.DataBind();
            dr.Close();
            cmd.Dispose();
        }
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        get();
    }

    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        string name = ((TextBox)row.Cells[2].Controls[0]).Text.ToString().Trim();
        string sex = ((TextBox)row.Cells[3].Controls[0]).Text.ToString().Trim();
        string phone = ((TextBox)row.Cells[4].Controls[0]).Text.ToString().Trim() ;
        string state = ((TextBox)row.Cells[5].Controls[0]).Text.ToString().Trim();
        if (DropDownList1.SelectedValue == "teacher")
        {
            update1(name,sex,phone,state);
        }
        else
        {
            update2(name,sex,phone,state);
        }
    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        get();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        //string name = ((TextBox)row.Cells[1].Controls[0]).Text;
        string sql;
        if (DropDownList1.SelectedValue == "teacher")
        {
            
            sql = "delete from teacher_table where tname = 'zhangsan'";
        }
        else
        {
            //name = ((TextBox)row.Cells[1].Controls[0]).Text;
            sql = "delete from student_table where sname = " ;
        }
         string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
         using (SqlConnection conn = new SqlConnection(connstr))
         {
             SqlCommand cmd = new SqlCommand();
             cmd.Connection = conn;
             cmd.CommandText = sql;
             conn.Open();
             cmd.ExecuteNonQuery();
             //GridView1.DataBind();
             conn.Close();
             cmd.Dispose();
             get();

         }
    }
}
