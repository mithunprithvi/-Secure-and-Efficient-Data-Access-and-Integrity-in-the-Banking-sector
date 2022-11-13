<%@page import=" dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="web1.jpg" type="image/gif" sizes="20X20">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <style>
    body
    {
   background: linear-gradient(to bottom, #33ccff 0%, #ffff66 100%);
 height: 606px;
    }
table, th, td {
    font-family:Philosopher;
    border: 3px double black;
    border-collapse: collapse;
    text-align: center;  
    color:black;
    font-size:20px;
}

 a {
  font-size:34px;
  font-family:Times new roman;
  display: block;
  color: black;
  text-align: center;
  margin-left:80%;
  margin-top: 3%;
}
button
{
font-size: 15px;
font-family: USSR STENCIL; 
margin-left: -173px;
}
    </style>
</head>
<body>
<a href="Ownermain.jsp">BACK</a>


					<%
														
String ownername="";
String filename=""; 
String filetype="";
String branch="";

%>
	
 <table border="2" align="center" style="color:black; width: 90%; margin-top:10px;  background-color:transparent;">
		

	<tr>
		
	<td style="text-align:center; color:#00fc0d; font-family: The Devil Net; font-size: 21px;">OWNERNAME</td>
	
	<td style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 21px;">BRANCHNAME</td>
	
	<td style="text-align:center; color:#00fc0d; font-family: The Devil Net; font-size: 21px;">FILENAME</td>
	
	<td style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 21px;">FILETYPE</td>
	
	<td style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 21px;">STATUS</td>

	</tr>
	
<% 


Connection d = Dbcon.CreateConnection();
PreparedStatement p = d.prepareStatement("SELECT * FROM bank.upload");
ResultSet s=p.executeQuery();

	while(s.next())
	{									

		filename=s.getString(1);
		ownername=s.getString(8);
		filetype=s.getString(2);
		branch=s.getString(9);
		
	%>
<tr>
<td><%=ownername%></td>
<td><%=filename%></td>
<td><%=filetype%></td>
<td style="text-align: center;"><a href="Encrypteddata.jsp?filename=<%=filename%>"><button>VIEW ENCRYPTED FILE</button></a></td>
<%}%>
</table>   
</body>
</html>