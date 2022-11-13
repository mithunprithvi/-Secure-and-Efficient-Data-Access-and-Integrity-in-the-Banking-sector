<!DOCTYPE HTML>
<html lang="zxx">
<head>
	<title>Classic Register Form Responsive Widget Template :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Classic Register Form Responsive Widget,Login form widgets,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" href="css1/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css1/font-awesome.css">
	<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
	<h1>
		<span>B</span>ranch 1
		<span>R</span>egister
		<span>F</span>orm</h1>
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form action="B1reg" method="post">
				<div class="form-style-agile">
		        <label>YOUR BANK NAME</label>
					<div class="pom-agile">
						         <select name="bank"  required="">
                                             <option value="select" style="color:black;">Select your bank</option>
                                             <option value="axis" style="color:black;">Axis Bank</option>
                                             <option value="canara" style="color:black;">Canara Bank</option>
                                             <option value="cityunion" style="color:black;">City Union Bank</option>
											 <option value="federal" style="color:black;">Federal Bank</option>
											 <option value="hdfc" style="color:black;">HDFC Bank LTD</option>
											 <option value="icici" style="color:black;">ICICI Bank</option>
											 <option value="indianoverseas" style="color:black;">Indian Overseas Bank</option>
						                     <option value="karurvysya" style="color:black;">karur Vysya Bank</option>
											 <option value="lakshmivilas" style="color:black;">Lakshmi Vilas Bank</option>
											 <option value="sbi" style="color:black;">State Bank of India</option>
								</select>
					</div>
				</div>
				<div class="form-style-agile">
		        <label>YOUR Branch NAME</label>
					<div class="pom-agile">
						         <select name="branch"  required="">
                                            <option value="select" style="color:black;">Select your branch</option>
                                            <option value="adayar" style="color:black;">Adayar</option>
                                            <option value="besantnagar" style="color:black;">Besant Nagar</option>
                                            <option value="guindy" style="color:black;">Guindy</option>
                                            <option value="kodambakkam" style="color:black;">Kodambakkam</option>
                                            <option value="medavakkam" style="color:black;">Medavakkam</option>
                                            <option value="perungalathur" style="color:black;">Perungalathur</option>
                                            <option value="redhills" style="color:black;">Red Hills</option>
											<option value="sholinganallur" style="color:black;">Sholinganallur</option>
											<option value="tambaram" style="color:black;">Tambaram</option>
											<option value="velachery" style="color:black;">Velachery</option>
								</select>
					</div>
				</div>
				
				<div class="form-style-agile">
					<label>Email</label>
					<div class="pom-agile">
						<input placeholder="Email" name="Email" type="email" required="">
						<span class="fa fa-envelope" aria-hidden="true"></span>
					</div>
				</div>
					<div class="form-style-agile">
					<label>Mobile number</label>
					<div class="pom-agile">
						<input placeholder="Your Number" name="Number" type="tel" required="">
						<span class="fa fa-phone" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Password</label>
					<div class="pom-agile">
						<input placeholder="Password" name="Password" type="password" id="password1" required="">
						<span class="fa fa-key" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Confirm Password</label>
					<div class="pom-agile">
						<input placeholder="Confirm Password" name="Confirm Password" type="password" id="password2" required="">
						<span class="fa fa-key" aria-hidden="true"></span>
					</div>
				</div>
				<div class="clear"></div>
				<input type="submit" value="Register">
			</form>
		</div>
	</div>

	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Doesn't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
</body>
</html>