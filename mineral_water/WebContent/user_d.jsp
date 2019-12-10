<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="st1.css">
<style type="text/css">
body
{
background-image: url("zz.jpg");
background-repeat:no-repeat;
background-size:1540px 50000px;
}
table {
  border-collapse: collapse;
width:80%;
margin: 0px 100px;
}
</style>
</head>
<body>
	<center><h1 style="background-color:Tomato;">WELCOME ADMIN</h1></center>
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
<br><br><br>
    <%
    try
    {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="select * from user_data;";
ResultSet rs=st.executeQuery(sql);
if("1"==(String)session.getAttribute("a"))
{
%>
<br><br><br>
<table border=1  style="color:white">
      <thead>
          <tr>
             <th><center>User Name</center></th>
             <th><center>Mail</center></th>
             <th><center>Phone Number</center></th>
             <th><center>Gender</center></th>
	<th><center>Address</center></th>
	<th><center>Street</center></th>
	<th><center>Password</center></th>
	<th><center>Tins/day</center></th>
	<th><center>Extra Tins</center></th>
	
          </tr>
      </thead>
      <tbody>
<%
while(rs.next())
{
%>
 <tr>
     <td><center><%=rs.getString("user_name") %></center></td>
     <td><center><%=rs.getString("mail") %></center></td>
     <td><center><%=rs.getString("phone_number") %></center></td>
     <td><center><%=rs.getString("gender") %></center></td>
     <td><center><%=rs.getString("address") %></center></td>
     <td><center><%=rs.getString("street") %></center></td>
     <td><center><%=rs.getString("password") %></center></td>
     <td><center><%=rs.getString("tinsday") %></center></td>
     <td><center><%=rs.getString("extratins") %></center></td>
 </tr>
           <% }
}
else
{
response.sendRedirect("sleep.jsp");
}
%>
           </tbody>
        </table><br>
<%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
%>
</body>
</html>