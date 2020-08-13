<!DOCTYPE html>

<?php
$con = mysqli_connect("localhost", "root", "", "social");

if(mysqli_connect_errno()) {
	echo "Failed to connect: " . mysqli_connect_errno();
}

$query = mysqli_query($con, "INSERT INTO test VALUES('', 'Mike')");
?>

<html>
<head>
	<title>Social Network Site</title>
</head>
<body>
Hello World!!
</body>
</html>