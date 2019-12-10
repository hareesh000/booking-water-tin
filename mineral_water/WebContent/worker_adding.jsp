<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import = "java.io.*,java.util.*" %>
<link rel="stylesheet" type="text/css" href="st1.css">
<style type="text/css">
body
{
background-image: url("z2.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
button {
  background-color:black; 
  border: 3px solid black; /*for combing borders*/
  color: white; 
  padding: 15px 40px; 
  float: center; 
}
button:hover {
  background-color: red;
}
.loginbox
{
	background:rgba(0.5,0.9,0,0.5);
	color:#fff;
	top:23%;
	left:5%;
	position:absolute;
	padding:40px 35px;
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
.loginbox input[type="password"],input[type="text"],input[type="email"]
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
</style>
</head>
<body>
<marquee behavior="scroll" direction="left">
<h1>WELCOME TO MINERAL WATER BOOKING</h1></marquee>
	<br><br> 
<center>
	<div class="forbuttonsgrouping">
		<div class="dropdown"><button class="dropbtn" onclick="window.location.href='admin_all_data.jsp'">Admin Page</button></div>
		<div class="dropdown">
			<button class="dropbtn">Distributor</button>
				<div class="dropdown-content">
					<a href="worker_d.jsp">Distributor Data</a>
					<a href="worker_adding.jsp">Edit Distributor Data</a>
				</div>
		</div>			
		<div class="dropdown">
			<button class="dropbtn">User</button>
				<div class="dropdown-content">
					<a href="user_d.jsp">User Data</a>
					<a href="user_remove.jsp">Edit User Data</a>
				</div>
		</div>	
		<div class="dropdown">
			<button class="dropbtn">Tins Schedule</button>
				<div class="dropdown-content">
					<a href="update_today_data.jsp">Update Today Data</a>
					<a href="tomorrow_data_table.jsp">Today Total Tins</a>
			</div>
				
		</div>				
		<div class="dropdown"><button class="dropbtn" onclick="window.location.href='s_close.jsp'">Logout</button></div>

	</div>
</center>
<%if("1"==(String)session.getAttribute("a"))
{%>
	<br><br><br><br>
<div class="loginbox">
	<h1>Adding Distributor</h1>
	<form method="post" action="workeradd.jsp" autocomplete="off" />
		<p>Enter Mail</p><input type="email" name="name" required>
		<p>Enter Phone Number</p><input type="text" name="phnumber" maxlength="10" pattern="[6789]{1}[0-9]{9}" title="enter valid 10 digit number" required>
		<p>Password</p><input type="password" minlength="8" name="password" placeholder="Enter password.." minlength="8" maxlength="16" required title="length is 8 to 16 characters">
		<input type="submit" value="Submit">
	</form>
	<a href="remove_sub_worker.jsp">Remove Distributor</a>
<br><br>
</div>
<%
}
else
{
response.sendRedirect("s_sleep.jsp");
}%>
</body>
</html>