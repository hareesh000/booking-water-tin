<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="st1.css">
	<style type="text/css">
body
{
background-image: url("z44.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
</style>
</head>
<body>
	<br><br><br><br><br><br>
<br><br><br><br><br><br>
	<br> 
<br><br>
<%
String un=(String)session.getAttribute("mail1");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="select * from user_data where mail='"+un+"';";
ResultSet rs=st.executeQuery(sql);
	if(rs.next())
	{
		%>
		<center><table border=1 bgcolor="yellow">
          	<tr>
             	<th>user name</th>
             	<th>mail</th>
             	<th>phone number</th>
             	<th>gender</th>
	     	<th>address</th>
	     	<th>street</th>
	     	<th>tins/day</th>
	     	<th>extra tins</th>
          	</tr>
 		<tr>
     		<td><%=rs.getString("user_name") %></td>
     		<td><%=rs.getString("mail") %></td>
     		<td><%=rs.getString("phone_number") %></td>
     		<td><%=rs.getString("gender") %></td>
     		<td><%=rs.getString("address") %></td>
     		<td><%=rs.getString("street") %></td>
     		<td><%=rs.getString("tinsday") %></td>
     		<td><%=rs.getString("extratins") %></td>
		</tr>
		</table></center>
		<br>
<br><br>
<center>
	<div class="forbuttonsgrouping">
		<div class="dropdown"><button onclick="window.location.href='u_data_e.jsp'">edit data</button></div>
		<div class="dropdown"><button onclick="window.location.href='session_u_close.jsp'">logout</button></div>		
	</div>
</center>
<center><font color="white"><h3>Today <%=rs.getString("today_tins")%> Are Delivered To Your Home</h3></font></center>
<center></center>
<%		
}
	else
	{
		response.sendRedirect("s_sleep.jsp");
		con.close();
	}%>
</body>
</html>