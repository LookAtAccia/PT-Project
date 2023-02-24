<?php 
session_start(); 

if (isset($_POST['uname']) && isset($_POST['password'])) {
	function validate($data){
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}

	$uname = validate($_POST['uname']);
	$pass = validate($_POST['password']);

	if (empty($uname)) {
		header("Location: index.php?error=Enter a username");
		exit();
	}else if(empty($pass)){
		header("Location: index.php?error=Enter your password");
		exit();
	}else{
		$host = 'db';
		$db_uname = 'MYSQL_USER';
		$db_psw = 'MYSQL_PASSWORD';
		$db = 'MYSQL_DATABASE';
		
		$conn = new mysqli($host, $db_uname, $db_psw, $db);		

		$sql = "SELECT * FROM users WHERE username='$uname'";

		$result = mysqli_query($conn, $sql);

		if ($result != null && mysqli_num_rows($result) == 1) {
			$row = mysqli_fetch_assoc($result);
			if (password_verify($pass, $row['password'])) {
				$_SESSION['username'] = $row['username'];
				$_SESSION['id'] = $row['id'];
				header("Location: home.php");
				exit();
			}else{
			header("Location: index.php?error=Incorrect username or password");
				exit();
			}
		}else{
			header("Location: index.php?error=Incorrect username or password");
			exit();
		}
	}	
}else{
	header("Location: index.php");
	exit();
}