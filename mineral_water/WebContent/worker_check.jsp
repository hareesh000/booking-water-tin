<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="st1.css">
<style type="text/css">

.a11 {

  padding-right: 240px;
  padding-left: 240px;
}
.loginbox
{
	background:black;
	color:#fff;
	top:20%;
	left:55%;
	position:absolute;
	padding:70px 35px;
	border-radius:20px;
}
.loginbox input
{
	width:80%;
	margin-bottom:20px;
}
.loginbox input[list="street"]
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

body
{
background-image: url("z7.jpg");
background-repeat:no-repeat;
background-size:1540px 750px;
}

::placeholder 
{ /* Firefox, Chrome, Opera */ 
    color: orange; 
}
</style>
</head>
<body>
<%
String un1=request.getParameter("mail1");
String pw1=request.getParameter("password1");
session.setAttribute("b","1");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
Statement st=con.createStatement();
String sql="select * from worker_data where mail='"+un1+"' and password='"+pw1+"';";
ResultSet rs=st.executeQuery(sql);
if(rs.next())
{
con.close();
%>
<center><font  color="blue"> <h1 >WELCOME DISTRIBUTOR </h1></font></center>
<div class="a11">
	<br><br> 
	<div class="forbuttonsgrouping">
		<div class="dropdown">	
			<button  class="dropbtn">Home</button>
		</div>
		<div class="dropdown">
			<button onclick="window.location.href='worker_logout.jsp'" class="dropbtn">Logout</button>
		 </div>
	</div>
</div>
<br><br>
<div class="loginbox">
	<form method="post" action="worker_main.jsp">
	<table >
		<tr>
		<td><h1><font color="white">select street to transport water</font></h1></td>
		</tr>
		<tr><td><center><input list="street" name="street" style="padding: 0px 20px;" placeholder="Select  Street" required>
 		 <datalist id="street">
    		<option value="tammiraju nagar">
    		<option value="chaitanya college road">
    		<option value="juvvalapalem road">
    		<option value="rto office road">
  			</datalist></center>
  		</td></tr>
	</table>
	<center><input type="submit" value="click here"></input></center>
	</form>	
</div>
<%}
else
response.sendRedirect("s_sleep.jsp");
con.close();
%>
</body>
</html>