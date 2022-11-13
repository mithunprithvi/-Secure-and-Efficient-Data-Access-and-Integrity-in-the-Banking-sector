 <!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbcon.Dbcon" %>
<head>
<title>CC08	</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Infirmary Responsive web template, Bootstrap Web Templates, Flat Web Template"/>
</head>
<style>
body
{
      background-image: linear-gradient(to left, red,orange,yellow,green,blue,indigo,violet);
}
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px; 
    font-size: 20px;
    color: black;
    font-family: Philosopher; 
    text-align: center;
}
button
{
font-size: 15px;
font-family: Vermin Vibes V; 
margin-left: 21%;
}
</style>
<body>
	<table>
 <table border="1" align="center" class="table"  style="color:black; width:90%; text-align:center; font-family: initial; 
 border-color:black; background-color:#ffffff78; border-collapse: unset;">
			<tr>
			<br><br><br><br><br><br><br><br><br>
<th style="text-align:center; color:#00fc0d; font-family: The Devil Net; font-size: 19px;">FROM WHICH BRANCH</th>
<th style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 19px;">FILENAME</th>
<th style="text-align:center; color:#00fc0d; font-family: The Devil Net; font-size: 19px;">FILETYPE</th>
<th style="text-align:center; color:#7600fc; font-family: The Devil Net; font-size: 19px;">STATUS</th>
	</tr>
   
   <%
   String oname=request.getSession().getAttribute("Email").toString();
	System.out.println("username7777777777777777777"+oname);
	
   String branch="";
   String filename="";
   String filetype="";
   String filekey="";
   
	Connection con=null;
    con=Dbcon.CreateConnection();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM bank.upload");
	ResultSet rs=ps.executeQuery();

	while(rs.next()){	
		
		
		filename=rs.getString(1);
		filetype=rs.getString(2); 
		filekey=rs.getString(3);
		branch=rs.getString(9);
	
	%>
				
<tr>
<td style="text-align:center"><%=branch%></td>
<td style="text-align:center"><%=filename%></td>
<td style="text-align:center"><%=filetype%></td>
<td align="left"><a href="Request1?name1=<%=oname%>&&brname=<%=branch%>&&filename=<%=rs.getString(1)%>
&&filetype=<%=rs.getString(2)%>&&filekey=<%=rs.getString(3)%>"><button>REQUEST</button></a></td>

		</tr>	
	<%} %>
</table>
</table>	   	   
</body>
</html>

