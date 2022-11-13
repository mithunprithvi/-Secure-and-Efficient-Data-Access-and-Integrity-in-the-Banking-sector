<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbcon.Dbcon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
    background-image:url(images/m3.jpg);
     color: yellow;
	text-align:center;
	font-size:21px;
} 
 textarea {
    margin-top: 25px;
    width: 900px;
    margin-top: 2px;
    font-size: 14px;
    height: 214px; 
    font-family: Imprint MT Shadow;
}
button
{
font-family: algerian;
font-size:21px;
font-weight: bold;
}

label
{
font-family: algerian;
font-size:21px;
font-weight: bold;
}
</style>
</head>
 <body>
	<%
	 
	  String fname=request.getParameter("fname");
	  System.out.println("FN==="+fname);
	  
	  %>
	  
<%

String filecontent="";

      Connection con=null;
      con=Dbcon.CreateConnection();
      PreparedStatement ps=con.prepareStatement("SELECT Filecontent FROM `bank`.`upload1` where Filename='"+fname+"'");
      ResultSet rs=ps.executeQuery();
 
      while(rs.next())
    {
    	
    	  filecontent=rs.getString(1);   
%>
<%} %>

<form action="Updatesuccess.jsp" method="post">
<center>
<label>FILENAME:</label>
<input name="fname" value="<%=fname%>" style="margin-top: 131px;" readonly ><BR>
<BR><BR><BR>
<label id="cont">FILE CONTENT:</label>

<textarea name='filecontent'><%=filecontent%></textarea>
 <br><br>
<button>UPDATE CONTENT</button>
</center>
</form>




 </body>
</html>

  