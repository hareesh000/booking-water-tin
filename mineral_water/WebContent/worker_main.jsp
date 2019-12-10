<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@page import="java.sql.*"%>
<link rel="stylesheet" type="text/css" href="st1.css">
<style type="text/css">
body
{
background-image: url("zz.jpg");
background-repeat:no-repeat;
background-size:1540px 14000px;
}
.a11 {
  padding-right: 240px;
  padding-left: 240px;
}
</style>
</head>
<body>
<%
String a=(String)session.getAttribute("b");
if(a=="1")
{
%>
<center><font  color="white"> <h1 >WELCOME DISTRIBUTOR </h1></font></center>
<div class="a11">
	<br><br> 
	<div class="forbuttonsgrouping">
		<div class="dropdown">	
			<button onclick="window.location.href='main1.jsp'" class="dropbtn">Home</button>
		</div>
		<div class="dropdown">
			<button onclick="window.location.href='worker_logout.jsp'" class="dropbtn">Logout</button>
		 </div>

	</div>
</div>
<br><br>    
<%
String s3=request.getParameter("street");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="select * from user_data where (street='"+s3+"') and  (today_tins >=1 )order by today_tins desc;";
ResultSet rs=st.executeQuery(sql);
%>
<center><h1>Mineral water tins table for <%=s3%></h1></center>
<center><table border=1 style="color:white">
      <thead>
          <tr>
        <th>user name</th>
        <th>phone number</th>
	<th>tins </th>
          </tr>
      </thead>
      <tbody>
<%
while(rs.next())
{
%>
 <tr>
     <td><%=rs.getString("user_name") %></td>
     <td><%=rs.getString("phone_number") %></td>
     <td><%=rs.getString("today_tins") %></td>
 </tr>
           <% }%>
           </tbody>
        </table></center>      
<%} 
else
{
response.sendRedirect("s_sleep.jsp");
}%>               
</body>
</html>