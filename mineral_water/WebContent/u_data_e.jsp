<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page import="java.sql.*"%>
<style type="text/css">
body
{
background-image: url("z13.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
.h111 { 
	display: table;
     
    	background-color: white;
	padding:5px; 
	border-radius: 25px;
}
.a11 {

  padding-right: 240px;
  padding-left: 240px;
}


.loginbox
{

	background:rgba(0.5,0.9,0,0.5);
	color:#fff;
	top:15%;
	left:5%;
	position:absolute;

	padding:70px 35px;
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
.loginbox input[type="password"],input[type="email"]
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
.h11 { 
	display: table;
     
    	background-color: blue;
	padding:5px; 
	border-radius: 25px;
}
</style>

</head>
<body>
<%
String s=(String)session.getAttribute("mail1");
String ss1=s;
session.removeAttribute("mail2");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="select * from user_data where mail='"+s+"';";
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
	%>
	<br><br><br>
<div class="loginbox">
	<h1>Update Here</h1>
	<form method="post" action="update_u.jsp">
	<center><div align="left"><table>
		<tr>
		<td>user name</td>
		<td><input type="text" name="uun"  value="<%=rs.getString("user_name")%>"></td>
		</tr>
		<tr>
		<td>phone number</td>
		<td><input type="text" name="phnumber"  value="<%=rs.getString("phone_number")%>"></td>
		</tr>
		<tr>
		<td>gender</td>
		<td><input type="text" name="gender"  value="<%=rs.getString("gender")%>"></td>
		</tr>
		<tr>
		<td>address</td>
		<td><input type="text" name="address"  value="<%=rs.getString("address")%>"></td>
		</tr>

		<tr>
		<td>tins/day</td>
		<td><input type="text" name="tins/day"  value="<%=rs.getString("tinsday")%>"></td>
		</tr>
		<tr>
		<td>extra tins</td>
		<td><input type="text" name="extra tins"  value="<%=rs.getString("extratins")%>"></td>
		</tr>
	</table></div>

	<center><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;">
	</center>
	</form>
	<%
	con.close();
}
else
{
	response.sendRedirect("s_sleep.jsp");
}%>
</body>
</html>