using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
public partial class Default2 : System.Web.UI.Page
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
            sql = "select ID as 'id',tname as '姓名',tsex as '性别',tphone as '电话',tstate as '状态' from teacher";
        }
        else
        { 
            sql = "select ID as 'id', sname as '姓名',ssex as '性别',sphone as '电话',sstate as '状态' from student";
        
        }
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            this.GridView1.DataKeyNames = new  string[]{"id"};
            GridView1.DataBind();
            dr.Close();
            cmd.Dispose();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        get();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        get();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //GridViewRow row = GridView1.Rows[e.RowIndex];
        string id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString().Trim();
        string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.ToString().Trim();
        string sex = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.ToString().Trim();
        string phone = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text.ToString().Trim();
        string state = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.ToString().Trim();
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        string sql;
        string sql1;
        if (DropDownList1.SelectedValue == "teacher")
        {
            sql = "update teacher set tname = @name,tsex = @sex,tphone = @phone,tstate = @state where ID = @id";
            sql1 = "select ID as 'id',tname as '姓名',tsex as '性别',tphone as '电话',tstate as '状态' from teacher";
        }
        else 
        {
            sql = "update student set sname = @name,ssex = @sex,sphone = @phone,sstate = @state where ID = @id";
            sql1 = "select ID as 'id',sname as '姓名',ssex as '性别',sphone as '电话',sstate as '状态' from student";       
        }
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.Parameters.AddWithValue("@id",id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@sex", sex);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("state", state);
            int num = cmd.ExecuteNonQuery();
            cmd.CommandText = sql1;
            cmd.Parameters.Clear();
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.EditIndex = -1;
            GridView1.DataBind();
            dr.Close();
            cmd.Dispose();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        get();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int num = e.RowIndex;
        GridView1.DataKeyNames = new string[]{ "id" };
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        string sql;
        if (DropDownList1.SelectedValue == "teacher")
        {
            sql = "delete from teacher where id = "+"'"+GridView1.DataKeys[e.RowIndex].Value.ToString()+"'";
        }
        else 
        {
            sql = "delete from student where id = "+"'"+GridView1.DataKeys[e.RowIndex].Value.ToString()+"'";
                    
        }
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            get();
        }
    }
}