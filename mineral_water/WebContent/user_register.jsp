<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="st1.css">

	<style type="text/css">
.select-css {
     font-size: 16px;
    font-weight: 700;
    padding: 10px;
    width: 100%;
    max-width: 100%; 
border-radius: 12px;
}
::selection {
  color: red;
  background: yellow;
}
body
{
background-image: url("z12.jpg ");
background-repeat:no-repeat;
background-size:1540px 750px;
}

.loginbox
{

	background:black;
	color:#fff;
	top:10%;
	left:65%;
	position:absolute;
	padding:70px 50px;
	border-radius:20px;
}
h1
{
	margin:0;
	padding:0 0 20px;
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
	margin-bottom:10px;
}
.loginbox input[type="text"],input[type="password"],select,input[type="email"],select
{
	border:none;
	border-bottom:1px solid #fff;
	background:transparent;
	outline:none;
	height:40px;
	color:white;
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
::placeholder 
{  
    color: orange; 
}
::select 
{ 
    color: orange; 
}
</style>
</head>
<body>
<marquee behavior="scroll" direction="left">
<font color="black"><h1>WELCOME TO MINERAL WATER BOOKING</h1></font></marquee>
<center>
	<div class="forbuttonsgrouping">
		<div class="dropdown"><button class="dropbtn" onclick="window.location.href='main1.jsp'">Home</button></div>
</div>
<form method="post" action="user_register_d.jsp" autocomplete="off">
<div class="loginbox">
	<h1>User Regester Here</h1>
<table >
	<tr><td><input type="text" name="uname" style="padding: 0px 20px;" placeholder="Enter user name..." required ></td></tr>
	<tr><td><input type="text" name="phnumber" style="padding: 0px 20px;" placeholder="Enter Phone number..." maxlength="10" pattern="[6789]{1}[0-9]{9}" title="enter valid 10 digit number" required ></td></tr>
	<tr><td><input type="email" name="mail"style="padding: 0px 20px;" placeholder="Enter mail address..." required></td></tr><br>
	<tr><td>
<select name="gender" style="padding: 0px 120px;" required>
<option value="male"><font color="red">male</font></option>
<option value="female">female</option>
<option value="others">others</option>
</select>
  	</td></tr>
	<tr><td><input type="text" name="address"style="padding: 0px 20px;" placeholder="Enter address.." required></td></tr>
	<tr><td>
<select name="street" class="select-css">
<option value="tammiraju nagar">tammiraju nagar</option>
<option value="rto office road">rto office road</option>
<option value="chitanya college road">chaitanya college road</option>
<option value="juvvala palem road"> juvvalapalem road</option>
</select>
  	</td></tr>
	<tr><td><input type="password" name="password"style="padding: 0px 20px;" placeholder="Create password.." minlength="8" maxlength="16" required title="length is 8 to 16 characters"></td></tr>
	<tr><td><input type="submit" value="submit"></td></tr>
	<tr><td><a href="user_login.jsp">login here</a></td></tr>

</table>
</div>
</form>
</body>
</html>