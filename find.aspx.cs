using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        string a = TextBox1.Text;
        string sql;
        if (DropDownList1.SelectedValue == "teacher")
        {
            sql = "select tname as '姓名',tsex as '性别',taddress as '维修地点',tphone as '电话',tquestion as '问题',trepair as '拆机',tstate as '状态' from teacher where tname like"+"'"+a+"%'";
        }
        else
        { 
           sql = "select sname as '姓名',ssex as '性别',saddress as '维修地点',sphone as '电话',squestion as '问题',srepair as '拆机',sstate as '状态' from student where sname like"+"'"+a+"%'";
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
    
}