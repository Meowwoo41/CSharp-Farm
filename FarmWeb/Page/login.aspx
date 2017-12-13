<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FarmWeb.Page.member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>小農之家</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<!-- Custom Theme files -->
    <link href="../css/login.css" rel="stylesheet" />
<!-- //Custom Theme files --> 
<!-- web font --> 
<link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/cwtexyen.css"/>
<!-- //web font -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- main --> 
	<div class="main-agileinfo slider ">
		<div class="items-group">
			<div class="item agileits-w3layouts">
				<div class="block text main-agileits"> 
					<span class="circleLight"></span> 
					<!-- login form -->
					<div class="login-form loginw3-agile"> 
						<div class="agile-row">
							<h1>會員登入</h1> 
							<div class="login-agileits-top"> 	
								<form action="#" method="post"> 
									<p>帳號：</p>
									<input type="text" class="name" name="user name" required=""/>
									<p>密碼：</p>
									<input type="password" class="password" name="Password" required=""/>  
									<label class="anim">
										<input type="checkbox" class="checkbox"/>
										<span> 記住帳號</span> 
									</label>   
									<input type="submit" value="登入"/> 
								</form> 	
							</div> 
							<div class="login-agileits-bottom wthree"> 
                                <%--<h6><a href="#">未加入會員嗎?點我</a></h6>--%>
								<h6><a href="#">忘記密碼了嗎?點我</a><a href="member.aspx">未加入會員嗎?點我</a></h6>
							</div> 
						</div>  
					</div>   
				</div>
				<div class="w3lsfooteragileits">
					<p> &copy; 2017 小農之家 </p>
				</div> 
			</div>   
		</div>
	</div>	 
	<!-- //main --> 
    </form>
</body>
</html>
