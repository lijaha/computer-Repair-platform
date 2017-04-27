<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>	
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="bootstrap-3.3.5-dist/css/login in.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>
<body>
<script>    $(document).ready(function (c) {
        $('.close').on('click', function (c) {
            $('.login-form').fadeOut('slow', function (c) {
                $('.login-form').remove();
            });
        });
    });
</script>
 <!--SIGN UP-->
 <h1>Login in</h1>
<div class="login-form">
	<div class="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="img/avtar.png" />
	</div>
			<form runat="server">
            <asp:TextBox ID="TextBox1" runat="server" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" ></asp:TextBox>
						<div class="key">
                        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></asp:TextBox>
						</div>
	<div class="signin">
    <asp:Button ID="Button1" runat="server" Text="Login" type="submit" value="Login" 
            onclick="Button1_Click" />
	</div>
    </form>
</div>

</body>
</html>
