<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="st1.css">
<%@ page errorPage="error.jsp" %> 
    <%@page import="java.sql.*"%>
<style type="text/css">
table ,th{
margin: 10px 40px;
width:50%;
text-align: center;
}
</style>
</head>
<body bgcolor="black">
	<center><h1 class="h11" style="background-color:Tomato;">WELCOME ADMIN</h1></center>
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
String sql="select * from worker_data;";
ResultSet rs=st.executeQuery(sql);
if("1"==(String)session.getAttribute("a"))
{%>
<div align="center">
<table border=1  style="color:white">
      <thead>
          <tr>         
             <th height="40">Mail</th>
             <th>Phone Number</th>	
	<th>Password</th>	
          </tr>
      </thead>
      <tbody>
<%
while(rs.next())
{
%>
 <tr>     
     <td height="40"><%=rs.getString("mail") %></td>
     <td><%=rs.getString("number") %></td>
     <td><%=rs.getString("password") %></td>
 </tr>
           <% }
}
else
{
response.sendRedirect("sleep.jsp");
}
%>

           </tbody>
        </table>
</div>
<br>
<%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
%>
</body>
</html>