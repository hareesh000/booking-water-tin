<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="st1.css">
<style type="text/css">
.in1 {
  background-color:black; 
 border-radius:20px;
  color: white; 
  padding: 15px 40px; 
  float: center; 
}
body
{
background-image: url("z2.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
</style>
</head>
<body>
	<center><h1 class="h11" style="background-color:Tomato;">WELCOME ADMIN</h1></center>
	<br><br> 
<center>
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
</center>
<% String a=(String)session.getAttribute("a");
if(a=="1")
{%>

<center><h1><i>Enter The Mail To Delete User Data</i></h1>
	<form method="post" action="user_remove_fix.jsp">
		<input type="text" name="uname" style="padding: 8px 30px;" placeholder="enter mail..."><br><br>
		<input type="submit" value="Submit" class="in1">
	</form>

</center>
<%
}
else
{
response.sendRedirect("s_sleep.jsp");
}%>
</body>
</html>