<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Upload Page </title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Classic Enquiry Form Responsive Widget, Audio and Video players, Login Form Web Template"/>
	<script type="application/x-javascript">
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
	</script>
	<link href="css0/style.css" rel='stylesheet' type='text/css' media="all">
	<link rel="stylesheet" href="css0/font-awesome.min.css" />
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<style>
body {margin:0;}
.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}
select
{
font-family: algerian;
}
.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: right;
  padding:10px 10px;
  text-decoration: none;
  font-size: 17px;
}
.navbar a:hover {
  background: #ddd;
  color: black;
}
.main {
  padding: 50px;
  margin-top: 30px;
  height: 1500px;
}
table, th, td {
    border: 2px solid black;
   /*  border-collapse: collapse; */
}	
</style>
</head>
 <%
Random r=new Random(); 
		 String key2="ABCDE1234567890";
		 					char c5=key2.charAt(r.nextInt(key2.length()));
		 					char c6=key2.charAt(r.nextInt(key2.length()));
		 					char c7=key2.charAt(r.nextInt(key2.length()));
		 					char c8=key2.charAt(r.nextInt(key2.length()));
		 					char c9=key2.charAt(r.nextInt(key2.length()));
		 					String t6=""+c5+""+c6+""+c7+""+c8+""+c9; 
		 			%>

<body>
<div class="navbar">
</div>
	<h1 class="header-w3ls">
		Upload Your File</h1>
	<div class="appointment-w3">
		<form action="Fileupload" method="post" enctype="multipart/form-data">
                  <div class="line-w3ls"> </div>
				 <div class="login-w3ls">
					<div class="icons-agile">
					 <select name="branch"  required="">
                                            <option style="color:black;">Select your branch</option>
                                            <option style="color:black;">Adayar</option>
                                            <option style="color:black;">Besant Nagar</option>
                                            <option style="color:black;">Guindy</option>
                                            <option style="color:black;">Kodambakkam</option>
                                            <option style="color:black;">Medavakkam</option>
                                            <option style="color:black;">Perungalathur</option>
                                            <option style="color:black;">Red Hills</option>
											<option style="color:black;">Sholinganallur</option>
											<option style="color:black;">Tambaram</option>
											<option style="color:black;">Velachery</option>
								</select>
					&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="fa fa-key" aria-hidden="true"></span>
						 <input type="text" name="filekey" value=<%=t6%> readonly> 
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
					<div class="file-upload">
 				<div class="file-select">
   				 <div class="file-select-button" id="fileName">Choose File</div>
   				 <div class="file-select-name" id="noFile">No file chosen...</div> 
    			<input type="file" name="chooseFile" id="chooseFile">
  				</div>
		</div>
					<div class="btnn">
						<input type="submit" value="Submit">
					</div>
				</div>
		</form>
	</div>
	<script type='text/javascript' src='js0/jquery-2.2.3.min.js'></script>
<script>
	$('#chooseFile').bind('change', function () {
  var filename = $("#chooseFile").val();
  if (/^\s*$/.test(filename)) {
    $(".file-upload").removeClass('active');
    $("#noFile").text("No file chosen..."); 
  }
  else {
    $(".file-upload").addClass('active');
    $("#noFile").text(filename.replace("C:\\fakepath\\", "")); 
  }
});
</script>
<script>
	$('#chooseFile1').bind('change', function () {
  var filename1 = $("#chooseFile1").val();
  if (/^\s*$/.test(filename1)) {
    $(".file-upload").removeClass('active');
    $("#noFile1").text("No file chosen..."); 
  }
  else {
    $(".file-upload").addClass('active');
    $("#noFile1").text(filename1.replace("C:\\fakepath\\", "")); 
  }
});
</script>
</body>
</html>