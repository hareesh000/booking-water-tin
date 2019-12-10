<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page import="java.io.*"  %>
<%@ page errorPage="error.jsp" %> 
<%@ page import="java.sql.*"  %>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
String s=(String)session.getAttribute("mail1");
String user_name=request.getParameter("uun");
String phone_number=request.getParameter("phnumber");
String gender=request.getParameter("gender");
String ad=request.getParameter("address");
String td=request.getParameter("tins/day");
String et=request.getParameter("extra tins");
Statement st1=con.createStatement();
int i=st1.executeUpdate("UPDATE user_data set user_name='"+user_name+"',phone_number='"+phone_number+"',gender='"+gender+"',address='"+ad+"',tinsday='"+td+"',extratins='"+et+"' where mail='"+s+"'");
con.close();
response.sendRedirect("user_data.jsp");
%>
</body>
</html>