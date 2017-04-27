<%@ Page Language="C#" AutoEventWireup="true" CodeFile="smessage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
	    <form id="form1" runat="server">
	<h1 id="head">计算机协会报修管理系统</h1>
	<ul id="navigation">
    <li><a href="admin.aspx">概要管理</a></li>
			<li><a href="imessage.aspx">通知信息发布</a></li>
            <li><span class="active">授课信息发布</span></li>
			<li><a href="look.aspx">查看报修信息</a></li>
            <li><a href="find.aspx">查找报修信息</a></li>
		</ul>
			<div id="content" class="container_16 clearfix">
				<div class="grid_16">
					<h2>授课信息发布</h2>
					<p class="error">管理员请认真核实后发布信息</p>
				</div>
				<div class="grid_5">
					<p>
						<label for="title">维修课信息发布<small>Must contain alpha-numeric characters.</small></label>
						<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
					</p>
				</div>

				<div class="grid_5">
					<p>
						<label for="title">编程课信息发布<small>Must contain alpha-numeric characters.</small></label>
						<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					</p>	
				</div>

				<div class="grid_5">
					<p>
						<label for="title">设计课信息发布<small>Must contain alpha-numeric characters.</small></label>
						<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
					</p>	
				</div>
                <div class="grid_16">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="提交" onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="提交" onclick="Button3_Click" />
                    <br />
                </div>
				<div class="grid_16">
					<p>
						<label>Article <small>Markdown Syntax.</small></label>
                      
					    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
					</p>
					<p class="submit">
						&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="提交" onclick="Button1_Click" />
					</p>
				</div>
			</div>
		
		<div id="foot">
			<a href="#">Contact Me</a>
		</div>
	    </form>
	</body>
</html>
