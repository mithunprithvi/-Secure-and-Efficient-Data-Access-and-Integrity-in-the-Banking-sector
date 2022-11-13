<!DOCTYPE html>
<%@page import="dbcon.Dbcon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    background-image:url(images/bi.jpg);
   color: black;
	text-align:center;
	font-size:21px;
	margin-top: 115px;
    font-size: 34px;
} 
 
</style>
</head>
 <body>
   
	<%
	 
	  String fileid=request.getParameter("fname");
	  System.out.println("fileid>>>>>>>>>>"+fileid);
	  
	  
	  String content=request.getParameter("filecontent");
	  System.out.println("content======"+content);
	  
	  %>  
<%
     Connection con=Dbcon.CreateConnection();
     PreparedStatement ps=con.prepareStatement("UPDATE bank.upload1  SET Filecontent='"+content+"' , Decrypt='"+content+"' where Filename='"+fileid+"'");
       ps.executeUpdate();

    out.println("FILE UPDATED SUCCESSFULLY**");	
   
%>
<BR><br>
<a href="Center.jsp" style=color:red;>LOGOUT</a>
 </body>
</html>

  