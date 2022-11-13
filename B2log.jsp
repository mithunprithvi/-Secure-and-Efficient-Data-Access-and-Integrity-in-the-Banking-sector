<!DOCTYPE HTML>
<html>
<head>
	<title>Spin Login Form Responsive Widget Template :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Spin Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css7/font-awesome.css" rel="stylesheet">
	<link href="css7/style.css" rel='stylesheet' type='text/css' />
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
</head>
<style>
.id
{
color: white;
font-family:Castellar;
font-weight: bold;
}
a
{
color: white;
font-family: Castellar;
font-weight: bold;
}
::placeholder {
  color: white;
}
</style>
<body>
	<h1>Branch 2 Login Form </h1>
	<div class="clear-loading spinner">
		<span></span>
	</div>
	<div class="w3ls-login box box--big">
		<form action="B2log" method="post">
			<div class="agile-field-txt">
				<label><i class="fa fa-user" aria-hidden="true"></i> Email </label>
				<input type="email" name="email" placeholder="Enter Your Email" required="" />
			</div>
			<div class="agile-field-txt">
				<label><i class="fa fa-unlock-alt" aria-hidden="true"></i> password </label>
				<input type="password" name="password" placeholder="Enter Password" required="" id="myInput" />
			</div>
			<script>
				function myFunction() {
					var x = document.getElementById("myInput");
					if (x.type === "password") {
						x.type = "text";
					} else {
						x.type = "password";
					}
				}
			</script>
				<input type="submit" value="LOGIN">
					<span class="id">NEW USER?</span><a href="B2.jsp">&nbsp;&nbsp;REGISTER HERE...!!!</a>
		</form>
	</div>
</body>
</html>