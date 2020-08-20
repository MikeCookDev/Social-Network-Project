<!DOCTYPE html>
<?php
require 'config/config.php';

if(isset($_SESSION['username'])) {
	$userLoggedIn = $_SESSION['username'];
	$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
	$user = mysqli_fetch_array($user_details_query);
}
else {
	header("Location: register.php");
}

?>

<html>
<head>
	<title>Social Network Site</title>

	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>

	<!-- CSS -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">


</head>
<body>
	<div class="top_bar">

		<div class="logo">
			<a href="index.php">Swirlfeed!</a>
		</div>

		<nav>	
			<a href="#">
				<?php echo $user['first_name'];?>
			</a>
			<a href="index.php">
				<i class="fas fa-home fa-lg"></i>
			</a>		
			<a href="#">
				<i class="fas fa-envelope fa-lg"></i>
			</a>
			<a href="#">
				<i class="fas fa-bell fa-lg"></i>
			</a>
			<a href="#">
				<i class="fas fa-users fa-lg"></i>
			</a>		
			<a href="#">
				<i class="fas fa-cogs fa-lg"></i>
			</a>
			<a href="#">
				<i class="fas fa-sign-out-alt fa-lg"></i>
			</a>

		</nav>

	</div>
