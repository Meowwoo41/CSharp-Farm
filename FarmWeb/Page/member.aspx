<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="member.aspx.cs" Inherits="FarmWeb.Page.member1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>小農之家</title>
    <!-- metatags-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/><!--style_sheet-->
    <link href="../css/global.css" rel="stylesheet" />
    <link href="../css/member.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>會員加入</h1>
<div class="w3ls-main">
<div class="w3ls-form">
<form action="#" method="post">
<ul class="fields">
	<li>	
		<label class="w3ls-opt">電子信箱：<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">	
			<input type="text" name="username"   />
		</div>
	</li>
	<li>
		<label class="w3ls-opt">輸入密碼：<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">
			<input type="text" name="lastname"  />
		</div>
	</li>
    <li>
		<label class="w3ls-opt">再輸入一次密碼：<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">
			<input type="text" name="lastname"  />
		</div>
	</li>
    <li>
		<label class="w3ls-opt">姓名：<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">
			<input type="text" name="lastname" required=""/>
		</div>
	</li>
    <li>
		<label class="w3ls-opt">手機號碼：<span class="w3ls-star"> * </span></label>
		<div class="w3ls-name">
			<input type="text" name="lastname"  />
		</div>
	</li>
	<li>
		<label class="w3ls-opt">地址 <span class="w3ls-star"> * </span> </label>
		<div class="adderss">
			<span class="text">
				<input type="text" name="address"  />
			</span>
			<span class="text">
				<input type="text" name="address"  />
			</span>
			<span class="text">
				<input type="text" name="city"  />
				
			</span>
			<span class="text">
				<input type="text" name="street"  />
				
			</span>
			<span class="text">
				<input type="text" name="zipcode"  />
			</span>
			<span class="text">
				<input type="text" name="country"  />
			</span>
		</div>
	</li>
	
	
</ul>
<div class="clear"></div>
	<div class="w3ls-btn">
		<input type="submit" value="submit">
	</div>
</form>
</div>
</div>
    </form>
</body>
</html>
