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
background-image: url("z10.png");
background-repeat:no-repeat;
background-size:1540px 750px;
}

table {
  border-collapse: collapse;
width: 40%;

margin: 10px 850px;
}

</style>
</head>
<body>

	<center><h1 style="background-color:Tomato;">WELCOME ADMIN</h1></center>


	<br><br> 
<center>
	<div class="forbuttonsgrouping">

	

		<div class="dropdown"><button class="dropbtn" onclick="window.location.href='admin_all_data.jsp'">Admin Page</button></div>

		<div class="dropdown">
			<button class="dropbtn">Distributor</button>
				<div class="dropdown-content">
					<a href="worker_d.jsp">Distributor Data</a>
					<a href="worker_adding.jsp">Edit Distributor Data</a>
				</div>
		</div>
			
		<div class="dropdown">
			<button class="dropbtn">User</button>
				<div class="dropdown-content">
					<a href="user_d.jsp">User Data</a>
					<a href="user_remove.jsp">Edit User Data</a>
				</div>
		</div>
	
		<div class="dropdown">
			<button class="dropbtn">Tins Schedule</button>
				<div class="dropdown-content">
					<a href="update_today_data.jsp">Update Today Data</a>
					<a href="tomorrow_data_table.jsp">Today Total Tins</a>
			</div>
				
		</div>		
		<div class="dropdown"><button class="dropbtn" onclick="window.location.href='s_close.jsp'">Logout</button></div>

	</div>
</center>

<br><br><br>
<%!String[] a={"tammiraju nagar","rto office road","chitanya college road","juvvala palem road"};%>
<% 
	Class.forName("com.mysql.jdbc.Driver");

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");

	Statement st=con.createStatement();


	java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); 
 	String  s=df.format(new java.util.Date());	
	String sql="select * from today where date='"+s+"'";
	ResultSet rs=st.executeQuery(sql);%>
	<table border=1 bgcolr="red" style="text-align:center" bgcolor="#F5FFFA">
      	<thead>
          <tr>
             <th>Date</th>
             <th>Tammiraju Nagar</th>
             <th>rto office road</th>
             <th>Chitanya College Road</th>
	     <th>Juvvala Palem Road</th>
	
           </tr>
      	</thead>
      	<tbody>
	<%
	if(rs.next())
	{
	%>
 	<tr>
     		<td><%=rs.getString("date") %></td>
     		<td><%=rs.getString("tammiraju_nagar") %></td>
     		<td><%=rs.getString("rto_office_road") %></td>
     		<td><%=rs.getString("chitanya_college_road") %></td>
     		<td><%=rs.getString("juvvala_palem_road") %></td>
	</tr>
	<%}%>


</body>
</html>