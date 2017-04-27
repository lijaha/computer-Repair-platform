<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible"content="IE=edge"/>
		<meta name="viewport" content="width = device - width,initial-scale=1"/>
		<title>主页面</title>
		<link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/bt-frage.css"/>
		<link rel="stylesheet" href="bootstrap-3.3.5-dist/animate.css" />   //引入动画插件
	</head>
	<body>
		
		<!--导航栏-->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<!--小屏幕导航按钮和brand-->
				<div class="navbar-header">
					<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>  
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">计协报修平台</a>
				</div>				
				<!--导航-->
				<div class="navbar-collapse collapse" >
                
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#home">首页</a></li>
						<li><a href="#bbs">信息通知</a></li>
						<li><a href="#scenery">义务维修</a></li>	
						<li><a href="#travel">定期授课</a></li>	
						<li><a href="#"><span class="glyphicon glyphicon-option-vertical"></span></a></li>
						<li><a href="#contact">电脑报修</a></li>
						<li><a href="login.aspx">登录</a></li>
						<li><a href="http://www.jsjxh.com.cn/">极光工作室</a></li>
                    </ul>
				</div>
			</div>	
		</nav>
		<!--end--> 	
		
		<!--主屏幕介绍区域-->
		<section id="home">
			<div class="lj"><!--这是滤镜效果-->
				<div class="row wow bounceInDown" data-wow-duration = "1s">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<h1>韶关学院信息学院计算机协会</h1> 
						<h5>计算机协会是由原计算机系爱好者自发组织，在院系领导及团委大力支持下于1997年成立的学生社团。计算机协会致力于提高学生计算机技术水平，定期向会员干事授课，举行义务维修，普及电脑知识。
						<br />
						</h5>
                        <h2><asp:Label ID="Label7" runat="server" Text="我们，可能是最好的义修服务组织"></asp:Label></h2>
						<br />
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4">
							<br /><br />
							</div>	
						</div>
					<div class="col-md-1"></div>
				</div>
			</div>   
		</section>
		<!--end--> 
		<section id="bbs">
			<div class="container">
				<div class="alert alert-danger wow bounceIn" data-wow-duration = "1.5s">
					<p>信息通知</p>
				</div>
				<!--栅格系统排版-->
				<div class="row">
					<div class="col-md-4 wow bounceInLeft" data-wow-duration = "1.5s">
						<img src="img/102.jpg" class="img-responsive" alt="picture" />
						<h3>会议通知</h3>
                        <asp:Label ID="Label1" runat="server" Text="本周信工三楼召开会议"></asp:Label>
					</div>
					<div class="col-md-4 wow bounce" data-wow-duration = "1.5s">
						<img src="img/108.jpg" class="img-responsive" alt="picture" />
						<h3>义修通知</h3>
						<asp:Label ID="Label2" runat="server" Text="本月15日在西区芙蓉举行义务维修"></asp:Label>
					</div>
					<div class="col-md-4 wow bounceInRight" data-wow-duration = "2s">
						<img src="img/0.jpg" class="img-responsive" alt="picture" />
						<h3>聚会通知</h3>
                        <asp:Label ID="Label3" runat="server" Text="本周日晚7:30东门集合聚餐"></asp:Label>
					</div>
				</div>
			</div>
			<hr /><hr />
		</section>
		<!--end--> 
		
		<!--风景,文化和其他链接到发表文档区域-->
		<section id="scenery">	
			<div class="container">				
				<div class="row">
					<div class="col-md-6 wow rotateInDownLeft">
						<h2><strong>交流&nbsp;&nbsp;互助&nbsp;&nbsp;创新&nbsp;&nbsp;发展</strong></h2>
						<br/>
						<h4><span class="dero glyphicon glyphicon-film"></span>&nbsp;&nbsp;&nbsp;&nbsp;
						计算机协会定期在学校苑区举行义务维修活动
						<br/>
						<br/>
						<p><span class="dero glyphicon glyphicon-film"></span>&nbsp;&nbsp;&nbsp;&nbsp;
						感谢广大师生对我们义务维修的活动支持与理解
						<br/>
						<p><span class="dero glyphicon glyphicon-film"></span>&nbsp;&nbsp;&nbsp;&nbsp;
						我们将继续为广大师生提供义务维修服务
						<br/>
						</h4>
					</div>
					<div class="col-md-6 wow rotateInDownRight">
						<!--风景轮播图区域-->
						<!--<img src="img/103.jpg" class="img-responsive img-thumbnail" alt="picture" />-->
						<div class="carousel slide" data-ride="carousel" id="carId">
							<!--轮播图的图片-->
							<div class="carousel-inner">
								<div class="item"><img src="img/106.jpg" alt="picture" class="img-responsive img-thumbnail"/></div>
								<div class="item active"><img src="img/103.jpg" alt="picture" class="img-responsive img-thumbnail"/></div>
								<div class="item"><img src="img/104.jpg" alt="picture" class="img-responsive img-thumbnail"/></div>
								<div class="item"><img src="img/105.jpg" alt="picture" class="img-responsive img-thumbnail"/></div>
							</div>
							<!--轮播图的小圆圈-->
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carId"></li>
								<li data-slide-to="1" data-target="#carId"></li>
								<li data-slide-to="2" data-target="#carId"></li>
								<li data-slide-to="3" data-target="#carId"></li>
							</ol>
							<!--轮播图的左右箭头-->
							<a href="#carId" data-slide = "prev" class="left carousel-control">
								<span class="glyphicon glyphicon-chevron-left"></span>
							</a>
							<a href="#carId" data-slide = "next" class="right carousel-control">
								<span class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<hr /><hr />
		</section>
		<!--end--> 
		
		<section id="travel">
			<div class="container">
				<div class="row">
						<div class="col-md-4 wow rotateInUpLeft">
							<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>会员定期授课</strong></h3>
							<img src="img/129.jpg" class="img-responsive img-circle"/>
						</div>
						<div class="col-md-8 wow rotateInUpRight">
							<h3>会员授课通知：</h3>
							<p>
								<br /><span class="dero glyphicon glyphicon-film"></span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="计算机协会网编部将于周六进行授课"></asp:Label>
								<br /><br /><br/><span class="dero glyphicon glyphicon-film"></span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="计算机协会网编部将于周六进行授课"></asp:Label>
								<br /><br /><br/><span class="dero glyphicon glyphicon-film"></span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="计算机协会网编部将于周六进行授课"></asp:Label>
								<br/><br/><br/>
							</p>
						</div>
				</div>
			</div>
		</section>
		<!--end-->
		
		<!--联系与反馈-->
		<section id="contact">
			<div class="lj">
				<div class="container">
					<div class="row">
						<!--左边区域-->
						<div class="col-md-6 wow flipInX">
							<h3>加入我们:</h3>
							<p>计算机协会每学年将进行招新
							<br /> <br/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们致力提供更好的学习平台
							</p>
							<br/>
							<h3>联系我们:</h3>
							<address>
								<p>
									<span class="glyphicon glyphicon-home"></span>
									地址：信工楼计算机协会
								</p>
								<p>
									<span class="glyphicon glyphicon-send"></span>
									邮箱：@Ertsul'mail
								</p>
							</address>
							<br/>
							<h3>商家合作:</h3>
							<p>
								请邮电联系我们，我们将与你详谈
							</p>
						</div>
						
						<div class="col-md-1"></div>
						
						<!--右边区域-->
						<div class="col-md-5 wow flipInY">
                        <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server"  placeholder="您的姓名" class="form-control"></asp:TextBox>
						性别：&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            RepeatDirection="Horizontal" RepeatLayout="Flow" Height="35px" Width="86px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>
                        <br/>
                        职业：&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                            RepeatDirection="Horizontal" RepeatLayout="Flow" Height="35px" Width="121px">
                        <asp:ListItem Value="student">学生</asp:ListItem>
                        <asp:ListItem Value="teacher">老师</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="您的修机地点" class="form-control"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="您的短号" class="form-control"></asp:TextBox>
                        
                        <asp:TextBox ID="TextBox4" runat="server" rows="3" placeholder="问题描述" 
                            class="form-control" Height="51px" TextMode="MultiLine" ></asp:TextBox>
                        如有需要是否同意拆机：&nbsp;&nbsp;
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                            RepeatDirection="Horizontal" RepeatLayout="Flow" Height="35px" Width="124px">
                        <asp:ListItem>同意</asp:ListItem>
                        <asp:ListItem>不同意</asp:ListItem>
                        </asp:RadioButtonList>
                        <h5 class="lastSaying">
											本次维修最终解释权归计算机协会所有。
						</h5>
                          <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" class="btn btn-primary form-control" />
                        </form>								
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--end-->

		<!--底部-->
		<section id="bottomThing">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<ul class="breadcrumb wow shake">
						<li>计算机协会</li>
						<li>极光工作室</li>
					</ul>
				</div>
			</div>
		</section>
		<!--end-->
		
		<script src="bootstrap-3.3.5-dist/jquery-2.1.4.min.js"></script>
		<script src="bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script src="bootstrap-3.3.5-dist/jquery.singlePageNav.min.js"></script>  <!--引入设置状态栏链接跳转的动态效果所需的插件-->
		<script src="bootstrap-3.3.5-dist/wow.min.js"></script>   <!--wow与animate结合使用-->
			<script type="text/javascript">
			    $(function () {
			        //设置状态栏链接跳转的动态效果
			        $('.nav').singlePageNav({
			            offset: 80  //设置偏移量
			        });
			        $(function () {
			            //设置小屏幕点击跳转自动隐藏的效果
			            $('.navbar-collapse a').click(function () {
			                $('.navbar-collapse').collapse('hide');
			            })
			        })
			        new WOW().init()     //执行动画语句
			    })
			</script>
	</body>
</html>











