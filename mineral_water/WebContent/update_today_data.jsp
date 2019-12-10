<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<% String a=(String)session.getAttribute("a");
if(a=="1")
{%>
<%!String[] a11={"tammiraju nagar","rto office road","chaitanya college road","juvvalapalem road"}; int[] sum5={0,0,0,0};%>
<% 
java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); 
 String  s=df.format(new java.util.Date());
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin2","root","");
	Statement st=con.createStatement();
	int sum1=0;
	String sql="select * from today";
	ResultSet rs=st.executeQuery(sql);
	int k=0;
	while(rs.next())
	{	if(rs.getString("date").equals(s))
		{
			k=1;
		}
	}
	if(k==0)
	{
		Statement st1=con.createStatement();
		String sql1="select mail,tinsday,extratins from user_data";
		ResultSet rs1=st1.executeQuery(sql1);
		while(rs1.next())
		{
			Statement st3=con.createStatement();
			String s2=rs1.getString("mail");
			sum1=Integer.parseInt(rs1.getString("tinsday"))+Integer.parseInt(rs1.getString("extratins"));
			st3.executeUpdate("UPDATE user_data set today_tins='"+sum1+"',extratins='"+"0"+"' where mail='"+s2+"'");
		}		
		Statement st2=con.createStatement();		
		String sql2="select street,today_tins from user_data;";
		ResultSet rs2=st2.executeQuery(sql2);
		while(rs2.next())
		{
			for(int i=0;i<a11.length;i++)
			{
			
				out.print("<br>");
				if(rs2.getString("street").equals(a11[i]))
				{
					sum5[i]=sum5[i]+Integer.parseInt(rs2.getString("today_tins"));
				}
			}
		}
	Statement st4=con.createStatement();
	st4.executeUpdate("insert into today(date,tammiraju_nagar,rto_office_road,chitanya_college_road,juvvala_palem_road) values('"+s+"','"+sum5[0]+"','"+sum5[1]+"','"+sum5[2]+"','"+sum5[3]+"')");
	for(int i=0;i<a11.length;i++)
			{
			sum5[i]=0;
			}		
		
con.close();		
	}	
	response.sendRedirect("admin_all_data.jsp");             
}
else
{
	response.sendRedirect("s_sleep.jsp");	
}
%>
</body>
</html>






