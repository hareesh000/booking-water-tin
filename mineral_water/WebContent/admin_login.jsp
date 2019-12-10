<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="st1.css">
<style type="text/css">
body
{
background-image: url("z2.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
.loginbox
{
	background:black;
	color:#fff;
	top:20%;
	left:5%;
	position:absolute;

	padding:70px 35px;
	border-radius:20px;
}
h1
{
	margin:0;
	padding:0 0 30px;
	text-align:center;
}
.loginbox p
{
	margin:0;
	padding:0;
	font-weight:bold;
}
.loginbox input
{
	width:100%;
	margin-bottom:20px;
}
.loginbox input[type="password"],input[type="text"]
{
	border:none;
	border-bottom:1px solid #fff;
	background:transparent;
	outline:none;
	height:40px;
	color:#fff;
	font-size:16px;
}
.loginbox input[type="submit"]
{
	border:none;
	outline:none;
	background:#fb2525;
	height:40px;
	color:#fff;
	font-size:16px;	
	border-radius:20px;
}
a {
  color: white;
}
.h11 { 
	display: table;
     
    	background-color: blue;
	padding:5px; 
	border-radius: 25px;
}
.h111 { 
	display: table;
     
    	background-color: white;
	padding:5px; 
	border-radius: 25px;
}
.a11 {
  padding-right: 240px;
  padding-left: 240px;
}
</style>
</head>
<body>
<div align="center"><h1 class="h111"><font  color="blue"> WELCOME TO MINERAL WATER TIN BOOKING</font></h1></div>
<div class="a11">
<br><br> 
<div class="forbuttonsgrouping">
<div class="dropdown">	
<button onclick="window.location.href='main1.jsp'" class="dropbtn">Home</button>
</div>
 </div>
</div>
<br><br>
<div class="loginbox">
	<h1><b>Admin Login Here</b></h1>
	<form method="post" action="admincheck.jsp"autocomplete="off">
		<p>Username</p><input type="text" name="uname" required>
		<p>Password</p><input type="password" name="pass" required>
		<input type="submit" name="" value="login">
	</form>
</div>
</body>
</html>