<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="st1.css">
<style type="text/css">
body
{
background-image: url("z2.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
</style>
</head>
<body>
<% String a=(String)session.getAttribute("a");
if(a=="1")
{%>
<div align="center"><h1 style="background-color:Tomato;">WELCOME ADMIN</h1></div>
<br><br> 
<div align="center">
	<div class="forbuttonsgrouping">
		<div class="dropdown"><button class="dropbtn">Admin Page</button></div>

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
</div>
<%
}
else
{
response.sendRedirect("s_sleep.jsp");
}%>
</body>
</html>