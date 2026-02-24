<?
    session_start();
	include("../settings/connect_datebase.php");


	$IdUser = -1;
	
	if (isset($_SESSION['user']) && $_SESSION['user'] != -1) {
		$IdUser = $_SESSION['user'];
	} else if (isset($_COOKIE['user_id']) && isset($_COOKIE['user_auth'])) {
		$user_id = intval($_COOKIE['user_id']);
		$token = $_COOKIE['user_auth'];
		if($user_id != -1 && $token === md5(md5($user_id))) {
			$IdUser = $user_id;
			$_SESSION['user'] = $user_id;
		}
	}
	
	if($IdUser == -1) {
		echo "Ошибка авторизации";
		exit;
	}
	
    $Message = $_POST["Message"];
    $IdPost = $_POST["IdPost"];

    $mysqli->query("INSERT INTO `comments`(`IdUser`, `IdPost`, `Messages`) VALUES ({$IdUser}, {$IdPost}, '{$Message}');");
?>