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
  background-image: linear-gradient(to bottom, rgba(255,0,0,0), rgba(255,0,0,1));
  height: 606px;
    }
table, th, td {
    font-family: Philosopher;
    border: 2px dashed black;
    border-collapse: collapse;
    text-align: center;  
    color:black;
    font-size:20px;
    padding-bottom: 5px;
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
button{
margin-left:-180px; 
font-family:The Devil Net; 
font-size:15px;
}
 </style>
</head>
<body>
<a href="Umainpage.jsp">BACK</a>

<%
String filename=""; 
String filetype="";
String filekey="";
String name="";
%>
	
 <table border="2" align="center" style="color:black; width: 90%; margin-top:10px;  background-color:transparent;">
		

	<tr>
	
	<td style="text-align:center; font-size:25px;">BRANCH NEEDS ACCESS</td>
	
	<td style="text-align:center; font-size:25px;">FILENAME</td>
	
	<td style="text-align:center; font-size:25px;">FILETYPE</td>
	
	<td style="text-align:center; font-size:25px;">STATUS</td>
	
	<td style="text-align:center; font-size:25px;">STATUS</td>

	</tr>
	
<% 


Connection d = Dbcon.CreateConnection();
PreparedStatement p = d.prepareStatement("SELECT * FROM bank.request WHERE status='Request'");
ResultSet s=p.executeQuery();

	while(s.next())
	{									
        filename=s.getString(2);
		filetype=s.getString(3);
		filekey=s.getString(4);
		name=s.getString(1);
		String email=s.getString(6);
	%>
<tr>
<td><%=name%></td>  
<td><%=filename%></td>  
<td><%=filetype%></td>
<td align="left"><a href="Fileaccept?fname=<%=filename%>&&ftype=<%=filetype%>&&key=<%=filekey%>"><button>FILE <br> ACCEPT</button></a></td>
<td align="left"><a href="MailSend?name=<%=s.getString(6)%>&&filekey=<%=s.getString(4)%>"><button>SEND <br> KEY</button></a></td>

<%}%>
</table>   
</body>
</html>