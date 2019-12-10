<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
body
{
background-image: url("z12.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}
</style>
</head>
<body>
<%
String un1=request.getParameter("uname");
String pw1=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="select * from admincheck where uname='"+un1+"' and password='"+pw1+"';";
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
con.close();
session.setAttribute("a","1");
response.sendRedirect("admin_all_data.jsp");
}
else
%><center><h1>
	Plese Enter Valid Email And Password
</h1></center>
<%con.close();
%>
</body>
</html>