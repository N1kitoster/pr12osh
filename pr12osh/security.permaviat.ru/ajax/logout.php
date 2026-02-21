<?php
	setcookie("user_auth", "", [
		'expires' => time() - 3600,
		'path' => '/'
	]);
	setcookie("user_id", "", [
		'expires' => time() - 3600,
		'path' => '/'
	]);
?>