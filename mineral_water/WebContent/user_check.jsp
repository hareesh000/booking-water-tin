<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=yellow>
<%
String un=request.getParameter("mail");
String pw=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="select * from user_data where mail='"+un+"' and password='"+pw+"';";
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
session.setAttribute("mail1",un);
response.sendRedirect("user_data.jsp");
}
else
{
response.sendRedirect("s_sleep.jsp");
con.close();
}
%>
</body>
</html>