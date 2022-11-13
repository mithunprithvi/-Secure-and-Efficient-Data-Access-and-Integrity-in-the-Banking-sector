<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbcon.Dbcon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
 {
background: linear-gradient(to bottom, #33ccff 0%, #ffff66 100%);
height: 606px;
  }
table, th, td {
    font-family: Imprint MT Shadow;
    border: 1px dashed black;
    border-collapse: collapse;
    text-align: center;  
    color: red;
    font-size:20px;
    padding-bottom: 5px;
    padding-right: 10px;
}
button{
font-family:The Devil Net; 
font-size:17px;
}
</style>
<body>
<table  style="margin-left: 25%; padding-left: 60px; width:50%; color:white; text-align:center; font-family: initial;">
			<tr>
			<br><br><br><br><br><br><br><br><br>
<td style="text-align:center; color: white; font-family:Algerian;">FILENAME</td>
<td style="text-align:center; color: white; font-family:Algerian;">FILETYPE</td>
<td style="text-align:center; color: white; font-family:Algerian;">STATUS</td>
	</tr>
   
   <%

   String fname="";
   String ftype="";
   
   
	Connection con=null;
    con=Dbcon.CreateConnection();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM bank.upload");
	ResultSet rs=ps.executeQuery();

	while(rs.next()){	
		
		fname=rs.getString(1);
		ftype=rs.getString(2);
	%>
				
<tr>
<td align="left"><%=fname%></td>
<td align="left"><%=ftype%></td>
<td align="left"><a href="Updatefile.jsp?filename=<%=fname%>"><button>Update file</button></a></td>

		</tr>	
	<%} %>
</table>
</body>
</html>