<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="st1.css">
<link rel="stylesheet" type="text/css" href="st2.css">
<style type="text/css">
body
{
background-image: url("z14.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
.h111 { 
	display: table;    
    	background-color: white;
	padding:5px; 
	border-radius: 25px;
}
.loginbox
{
	top:30%;
	left:65%;

}
.a11 {
  padding-right: 240px;
  padding-left: 240px;
}
.h11 { 
	display: table;    
    	background-color: blue;
	padding:5px; 
	border-radius: 25px;
}
</style>
</head>
<body background="pic111.jpg">	
<marquee behavior="alternate"><h1 class="h11"><font color="white">WELCOME TO MINERAL WATER BOOKING</font></h1></marquee>
<div class="a11">
<br><br> 
<div class="forbuttonsgrouping">
<div class="dropdown">	
<button onclick="window.location.href='main1.jsp'" class="dropbtn">Home</button>
</div>
 </div>
</div>
<div class="loginbox">
	<h1>login here</h1>
	<form method="post" action="user_check.jsp" autocomplete="off" >
		<p>Enter mail</p><input type="email" name="mail" required>
		<p>password</p><input type="password" name="password" required>
		<input type="submit" value="login">
		<a href="user_register.jsp">create account</a>
	</form>
</div>
</body>
</html>