<!DOCTYPE html>
<%@page import="dbcon.Dbcon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
<link href="assets/css/prettyPhoto.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> 
<head>
<style>
   body {
    background-image:url(images/b1.jpg);
     color:magenta;
	text-align:center;
	font-size:21px;
} 
 textarea {
margin-top: 131px;
  width: 900px;
    margin-top: 2;
    height: 214px; 
}
</style>
</head>
 <body>
	<%
	 
	  String fname=request.getParameter("filename");
	  System.out.println("FN==="+fname);
	  
	  %>
	  
<%

String filecontent="";

      Connection con=null;
      con=Dbcon.CreateConnection();
      PreparedStatement ps=con.prepareStatement("SELECT Filecontent FROM `bank`.`upload` where Filename='"+fname+"'");
      ResultSet rs=ps.executeQuery();
 
      while(rs.next())
    {
    	
    	  filecontent=rs.getString(1);
    	
    
%>
<%} %>

<form action="Updatesuccess.jsp" method="post">
<center>
FILENAME:
<input name="fname" value="<%=fname%>" style="margin-top: 131px;" readonly ><BR>
<BR><BR><BR>
FILE CONTENT:

<textarea name='filecontent'><%=filecontent%></textarea>
 <br><br>
<button>UPDATE CONTENT</button>
</center>
</form>




 </body>
</html>

  