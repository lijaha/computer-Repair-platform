﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find.aspx.cs" Inherits="_Default" %>

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
            <li><span class="active">查找报修信息</span></li>
            <li><a href="check.aspx">修改查询信息</a></li>
		</ul>
<div id="content" class="container_16 clearfix">
				<div class="grid_16">
					<h2>查找报修信息</h2>
					<p class="error">请认真核实后再操作</p>
			    </div>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="查找数据："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="可按姓名查询" 
            Width="178px"></asp:TextBox>
    
    &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="teacher">老师</asp:ListItem>
            <asp:ListItem Value="student">学生</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查找" 
            Width="55px" />
&nbsp;
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="521px">
        </asp:GridView>
        <br />
    
    </div>
    </form>
  </div>
</body>
</html>
