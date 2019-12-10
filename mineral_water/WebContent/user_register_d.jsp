<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.io.*"  %>
<%@ page errorPage="error.jsp" %> 
<%@ page import="java.sql.*"  %>
<style type="text/css">
body
{
background-image: url("z10.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
.h111 { 
	display: table;     
    	background-color: red;
	padding:5px; 
	border-radius: 25px;
}
</style>
</head>
<body>
<%@ page import="java.io.*"  %>
<%@ page errorPage="error.jsp" %> 
<%@ page import="java.sql.*"  %>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
String user_name=request.getParameter("uname");
String phone_number=request.getParameter("phnumber");
String mail=request.getParameter("mail");
String gender=request.getParameter("gender");
String password=request.getParameter("password");
String street=request.getParameter("street");
String address=request.getParameter("address");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into user_data(user_name,phone_number,mail,gender,address,street,password) values('"+user_name+"','"+phone_number+"','"+mail+"','"+gender+"','"+address+"','"+street+"','"+password+"')");
con.close();
response.sendRedirect("user_login.jsp");
 }
catch(SQLException e) {%>
<br><br>
<br><br><br><br><br><br><br><br>
<center><font  color="white"> <h1 class="h111">Plese Enter Another Email It is already exists</h1></font></center>
 <% }%>
</body>
</html>