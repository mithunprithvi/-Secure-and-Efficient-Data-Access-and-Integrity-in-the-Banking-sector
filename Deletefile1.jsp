<!DOCTYPE html>
<%@page import="dbcon.Dbcon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
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
      background: linear-gradient(to bottom right, #00ff00 0%, #00ffff 100%);
      height: 606px;
   color:violet;
	text-align:center;
	font-size:30px;
	margin-top:200px;    
} 
  a
    {
     color:white;
    }
    </style>
</head>
 <body>     
	<%
	 
	  String f1=request.getParameter("filename");
	  System.out.println("FNAME==="+f1);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM bank.upload WHERE Filename="+f1);
out.println("File Deleted Successfully!");
}
catch(Exception e)
 {
System.out.print(e);
out.println("INVALID ID!!!");
e.printStackTrace();
} 
%>
</body>
</html>

   