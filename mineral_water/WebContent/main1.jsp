<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
</style>
</head >
<body >
<div align="center"><h1 class="h11" style="background-color:Tomato;">WELCOME TO MINERAL WATER TIN BOOKING</h1></div>
<br><br> 
<div align="center">
	<div class="forbuttonsgrouping">
		<div class="dropdown">
			<button onclick="window.location.href='main1.jsp'">Home</button>
		</div>
		<div class="dropdown">
			<button class="dropbtn">Contect US</button>
				<div class="dropdown-content">
					<a href="contact_us.jsp">Contact</a>
				</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">Customer</button>
				<div class="dropdown-content">
					<a href="user_login.jsp">Login</a>
					<a href="user_register.jsp">Sign up</a>
				</div>
		</div>			
		<div class="dropdown">
			<button class="dropbtn">Distributor</button>
				<div class="dropdown-content">
					<a href="worker_login.jsp">Login</a>
				</div>
		</div>	
		<div class="dropdown">
			<button class="dropbtn">Admin</button>
				<div class="dropdown-content">
					<a href="admin_login.jsp">Login</a>
				</div>	
		</div>		
	</div>
</div>
</body>
</html>