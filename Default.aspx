<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title>Steal My Admin</title>
		<link rel="stylesheet" href="css/960.css" type="text/css" media="screen" charset="utf-8" />
		<!--<link rel="stylesheet" href="css/fluid.css" type="text/css" media="screen" charset="utf-8" />-->
		<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" charset="utf-8" />
		<link rel="stylesheet" href="css/colour.css" type="text/css" media="screen" charset="utf-8" />
	</head>
	<body>
	<h1 id="head">计算机协会报修管理系统</h1>
	<ul id="navigation">
			<li><a href="admin.aspx">概要管理</a></li>
	       	<li><a href="imessage.aspx">通知信息发布</a></li>
			<li><a href="smessage.aspx">授课信息发布</a></li>
            <li><a href="look.aspx">查看报修信息</a></li>
            <li><span class="find.aspx">查找报修信息</span></li>
            <li><span class="active">修改删除信息</span></li>

		</ul>
<div id="content" class="container_16 clearfix">
				<div class="grid_16">
					<h2>修改删除信息</h2>
					<p class="error">请认真核实后再操作</p>
                </div>
    <form id="form1" runat="server">
    <br /> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="104px">
    <asp:ListItem Value="teacher">教师</asp:ListItem>
    <asp:ListItem Value="student">学生</asp:ListItem>
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="确定" 
    Width="179px" onclick="Button1_Click" />
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
    <div>
    <asp:GridView ID="GridView1" runat="server" 
        onrowcancelingedit="GridView1_RowCancelingEdit1" 
        onrowediting="GridView1_RowEditing1" onrowupdating="GridView1_RowUpdating1" 
        Width="562px" Height="126px" onrowdeleting="GridView1_RowDeleting">
        <Columns>
            <asp:CommandField ShowEditButton="True" >
            <ItemStyle Width="90px" Wrap="False" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True">
            <ItemStyle Wrap="False" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    </div>
   </form>
  </div>
</body>
</html>
    
