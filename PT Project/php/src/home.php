<?php 
session_start();

if (isset($_SESSION['id'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>
	<link rel="stylesheet" type="text/css" href="style.css">
     <link rel="icon" type="image/x-icon" href="/Unifi_logo.png">
</head>
<body>
     <h1>Welcome, <?php echo $_SESSION['username'];?>!</h1>
     <a href="logout.php">Logout</a>
</body>
</html>

<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>