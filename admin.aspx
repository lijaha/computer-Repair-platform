<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="_Default" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title>Steal My Admin</title>
		<link rel="stylesheet" href="css/960.css" type="text/css" media="screen" charset="utf-8" />
		<link rel="stylesheet" href="css/template.css" type="text/css" media="screen" charset="utf-8" />
		<link rel="stylesheet" href="css/colour.css" type="text/css" media="screen" charset="utf-8" />
		<!--[if IE]><![if gte IE 6]><![endif]-->
		<script src="js/glow/1.7.0/core/core.js" type="text/javascript"></script>
		<script src="js/glow/1.7.0/widgets/widgets.js" type="text/javascript"></script>
        <script type="text/javascript"src="http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js">
</script>
<script type="text/javascript" src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js">
</script>
		<link href="js/glow/1.7.0/widgets/widgets.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript">
		    glow.ready(function () {
		        new glow.widgets.Sortable(
					'#content .grid_5, #content .grid_6',
					{
					    draggableOptions: {
					        handle: 'h2'
					    }
					}
				);
	});
    $(function(){$(".p1").html("登录正常，本次登录的地点是："+remote_ip_info["province"] + remote_ip_info["city"])});
</script>
		<!--[if IE]><![endif]><![endif]-->
	</head>
	<body>

		<h1 id="head">计算机协会报修管理系统</h1>
		
		<ul id="navigation">
			<li><span class="active">概要管理</span></li>
			<li><a href="imessage.aspx">通知信息发布</a></li>
			<li><a href="smessage.aspx">授课信息发布</a></li>
			<li><a href="look.aspx">查看报修信息</a></li>
            <li><a href="find.aspx">查找报修信息</a></li>
            <li><a href="check.aspx">修改查询信息</a></li>


		</ul>
			<div id="content" class="container_16 clearfix">
				<div class="grid_5">
					<div class="box">
						<h2>登录信息</h2>
                        <div class="p1">

                        </div>
						<p>

							<strong>Last Signed In : </strong> 
							Wed 11 Nov, 7:31<br />
							<strong>IP Address : </strong>
                            <asp:Label ID="Label11" runat="server"></asp:Label> 
						</p>
                            
					</div>
					<div class="box">
						<h2>最近报修</h2>
						<table>
							<tbody>
								<tr>
									<asp:Label ID="Label12" runat="server"></asp:Label>
								</tr>
                          
								<tr>
									<asp:Label ID="Label13" runat="server"></asp:Label>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="box">
						<h2>最近通知信息</h2>
						&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                        <br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                        <br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                        <br/>
                        <br/>
						&nbsp;&nbsp;&nbsp;&nbsp;<p class="center">You have<b>3</b>unread messages.</p>
					</div>
					<div class="box">
						<h2>最近授课信息</h2>
						&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                        <br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
                        <br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
                        <br/>
                        <br/>
						&nbsp;&nbsp;&nbsp;&nbsp;<p class="center">You have<b>3</b> unread messages.</p>
					</div>
				</div>
				<div class="grid_6">
					<div class="box">
						<h2>网站信息统计</h2>
						<table>
							<tbody>
								<tr>
									<td>目前网站访问人数：</td>
									<td><asp:Label ID="Label8" runat="server"></asp:Label></td>
								</tr>
								<tr>
									<td>目前网站在线人数：</td>
									<td><asp:Label ID="Label9" runat="server"></asp:Label></td>
								</tr>
								<tr>
									<td>目前网站报修人数：</td>
									<td><asp:Label ID="Label10" runat="server"></asp:Label></td>
								</tr>
								<tr>
									<td>目前网站状态：</td>
									<td>安全</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="box">
						<h2>首页标题</h2>
						<form action="#" method="post" runat="server">
							<p>
								<label for="title">Title <small>请认真核实再发布！</small> </label>
								<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

							</p>
                            <br/>
                                <b>目前网站标题：</b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server"></asp:Label>
                            <br/>
							<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
						</form>
					</div>
				</div>
				<div class="grid_5">
					<div class="box">
						<h2>系统管理员</h2>
						<table>
							<tbody>
								<tr>
									<asp:Label ID="Label14" runat="server"></asp:Label>
								</tr>
								<tr>
									<asp:Label ID="Label15" runat="server"></asp:Label>
								</tr>
								<tr>
									<asp:Label ID="Label16" runat="server"></asp:Label>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="box">
						<h2>Schedule</h2>
						<div class="utils">
							<a href="#">View More</a>
						</div>
						<table class="date">
							<caption><a href="#">Prev</a> November 2009 <a href="#">Next</a> </caption>
							<thead>
								<tr>
									<th>Mon</th>
									<th>Tue</th>
									<th>Wed</th>
									<th>Thu</th>
									<th>Fri</th>
									<th>Sat</th>
									<th>Sun</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><a href="#">1</a></td>
								</tr>
								<tr>
									<td><a href="#">2</a></td>
									<td><a href="#">3</a></td>
									<td><a href="#">4</a></td>
									<td><a href="#">5</a></td>
									<td><a href="#">6</a></td>
									<td><a href="#">7</a></td>
									<td><a href="#">8</a></td>
								</tr>
								<tr>
									<td><a href="#">9</a></td>
									<td><a href="#">10</a></td>
									<td><a href="#" class="active">11</a></td>
									<td><a href="#">12</a></td>
									<td><a href="#">13</a></td>
									<td><a href="#">14</a></td>
									<td><a href="#">15</a></td>
								</tr>
								<tr>
									<td><a href="#">16</a></td>
									<td><a href="#">17</a></td>
									<td><a href="#">18</a></td>
									<td><a href="#">19</a></td>
									<td><a href="#">20</a></td>
									<td><a href="#">21</a></td>
									<td><a href="#">22</a></td>
								</tr>
								<tr>
									<td><a href="#">23</a></td>
									<td><a href="#">24</a></td>
									<td><a href="#">25</a></td>
									<td><a href="#">26</a></td>
									<td><a href="#">27</a></td>
									<td><a href="#">28</a></td>
									<td><a href="#">29</a></td>
								</tr>
								<tr>
									<td><a href="#">30</a></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
						<ol>
							<li>Draft contract template.</li>
							<li>Draft invoice template.</li>
							<li>Draft business cards.</li>
						</ol>
					</div>
				</div>
			</div>
		<div id="foot">
			<div class="container_16 clearfix">
				<div class="grid_16">
					<a href="#">Contact Me</a>
				</div>
			</div>
		</div>
	</body>
</html>