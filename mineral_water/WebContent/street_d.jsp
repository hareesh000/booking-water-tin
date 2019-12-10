<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>
</head>
<body bgcolor=yellow>

<%!String[] a={"tammiraju nagar","rto office road","chitanya college road","juvvala palem road"}; %>
    <%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");

Statement st=con.createStatement();
for(int i=0;i<a.length;i++)
{
	String sql="select * from user_data where street='"+a[i]+"';";
	ResultSet rs=st.executeQuery(sql);
	%>
	<center><h1><%=a[i]%></h1></center>

	<table border=1 align=center style="text-align:center">
  
        	<tr>
        	<th>user name</th>
        	<th>phone number</th>
		<th>address</th>
		<th>tins/day</th>
		<th>extra tins</th>
          	</tr>
		<%
		while(rs.next())
		{
		%>	
 		<tr>
     		<td><%=rs.getString("user_name") %></td>
     		<td><%=rs.getString("phone_number") %></td>
     		<td><%=rs.getString("address") %></td>
     		<td><%=rs.getString("tinsday") %></td>
     		<td><%=rs.getString("extratins") %></td>
		</tr>
		<%}%>
	</table>
 <% }%>


</body>
</html>