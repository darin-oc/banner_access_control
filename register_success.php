<?php 
session_start();
if(!isset($_SESSION["new_user"])){
	header("location:register.php");
} else {
?>
<!doctype html>
<html>
<head>
<title>Welcome</title>
</head>
<body>
<h2>Welcome, <?=$_SESSION['new_user'];?>! <a href="logout.php">Logout</a></h2>
<p>
You have successfully logged into Banner Access Control! <br>
Please <a href="new_page.php">click here</a> to login to your Banner Access Account.
</p>
</body>
</html>
<?php
}
?>


