<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>
		Online Library Management System
	</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">

	.box
	{
		height: 300px;
		width: 450px;
		background-color: #030002;
		margin: 70px auto;
		opacity: .9;
		color: white;
		border-radius: 200px;
	}
	.box:hover
	{
		background-image: linear-gradient(45deg, white, grey);
		color: black;
	}

	nav
	{
		word-spacing: 60px;
		float: left;
		padding: 40px 150px;
		font-size:18px;
	}
	nav li 
	{
		display: inline-block;
		line-height: 30px;
	}
	nav li:hover{
		transform: scale(1.5);
		background-color: #ff5050;
		color: blue;
		border: 2px #ff5050 solid;
		border-radius: 10px;
	}

	.div1{
		float: right;
		padding-top: 15px;
		padding-right: 10px;
	}

	.button {
		background-color: #4CAF50;
		border: none;
		color: white;
		padding: 10px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		margin: 5px 5px;
		transition-duration: 0.4s;
		cursor: pointer;
		width: 150px;
	}
	.button1 {
		background-color: black; 
		color: #008CBA; 
		border: 2px solid #008CBA;
		border-radius: 10px;
	}

	.button1:hover {
		background-color: #008CBA;
		color: white;
	}

	.button2 {
		background-color: black; 
		color: #f44336; 
		border: 2px solid #f44336;
		border-radius: 10px;
	}

	.button2:hover {
		background-color: #f44336;
		color: white;
	}

</style>
</head>


<body>
	<div class="wrapper">
		<header>
		<div class="logo">
			<img src="images/devrev.png" height=100 width=300 style="padding-left: 25px;">
			<h1 style="color: white;">ONLINE LIBRARY MANAGEMENT SYSTEM</h1>
		</div>

		<?php
		if(isset($_SESSION['login_user']))
		{
			?>
				<nav>
					<ul>
						<li><a href="../index.html">HOME</a></li>
						<li><a href="books.php">BOOKS</a></li>
						<li><a href="logout.php">LOGOUT</a></li>
						<li><a href="feedback.php">FEEDBACK</a></li>
					</ul>
				</nav>
			<?php
		}
		else
		{
			?>
						<nav>
							<ul class="ul1">
								<li><a href="../index.html">HOME</a></li>
								<li><a href="books.php">BOOKS</a></li>
								<li><a href="about.html">ABOUT</a></li>
								<li><a href="feedback.php">FEEDBACK</a></li>
		
							</ul>
							
						</nav>
						<div class="div1">
								<ul>
								<li><button class="button button1"><a href="student_login_1.php">LOGIN</a></button></li>
								<li><button class="button button2"><a href="student_registration.php">SIGN-UP</a></button></li>
								</ul>
							</div>
		<?php
		}
			
		?>

			
		</header>
		<section>
		<div class="sec_img" style="background-image:url('images/lib1.jpg');">
			<br><br><br>
			<div class="box">
				<br><br><br><br>
				<h1 style="text-align: center; font-size: 35px;">Welcome to library Management System</h1><br><br>
				<h1 style="text-align: center;font-size: 25px;">Opens at: 09:00 a.m </h1><br>
				<h1 style="text-align: center;font-size: 25px;">Closes at: 10:00 p.m </h1><br>
			</div>
		</div>
		</section>
		

	</div>
	<?php  

		include "footer.php";
	?>
</body>
</html>