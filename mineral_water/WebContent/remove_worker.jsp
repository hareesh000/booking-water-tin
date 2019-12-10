<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page errorPage="error.jsp" %>
</head>
<body>
<%
String un1=request.getParameter("uname");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="DELETE FROM worker_data  where mail='"+un1+"'";
st.executeUpdate(sql);
con.close();
response.sendRedirect("admin_all_data.jsp");
con.close();
%>
</body>
</html>