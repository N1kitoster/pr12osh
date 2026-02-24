<?php
	session_start();
	
	$_SESSION = array();
	if (ini_get("session.use_cookies")) {
		$params = session_get_cookie_params();
		setcookie(session_name(), '', time() - 42000,
			$params["path"], $params["domain"],
			$params["secure"], $params["httponly"]
		);
	}
	session_destroy();
	
	setcookie("user_auth", "", [
		'expires' => time() - 3600,
		'path' => '/'
	]);
	setcookie("user_id", "", [
		'expires' => time() - 3600,
		'path' => '/'
	]);
	
	header("Location: /index.php");
?>