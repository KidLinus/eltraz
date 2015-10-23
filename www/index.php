<?php
if (isset($_REQUEST["command"])) {
	//MYSQL
	$host='localhost';
	$user='root';
	$pass='';
	$database='eltraz';

	$mysqli = new mysqli($host, $user, $pass, $database);
	if ($mysqli->connect_errno) { die("Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error); }
	$mysqli->set_charset("utf8");

	if (!isset($_REQUEST["var"])) {
		$_REQUEST["var"] = -1;
	}

	$command = $_REQUEST["command"];
	$var = $_REQUEST["var"];

	switch($command) {
		case 'signup':
		$query = "SELECT `username` FROM `user` WHERE LOWER(`username`) = LOWER(?)";
		$stmt = mysqli_prepare($mysqli, $query);
		mysqli_stmt_bind_param($stmt, 's', $_REQUEST["username"]);
		mysqli_stmt_execute($stmt);
		if (mysqli_stmt_fetch($stmt)) {
			die(json_encode(array("success" => false, "command" => $command, "reason" => "username_taken", "var" => $var)));
		}
		mysqli_stmt_close($stmt);

		$query = "SELECT `username` FROM `user` WHERE LOWER(`email`) = LOWER(?)";
		$stmt = mysqli_prepare($mysqli, $query);
		mysqli_stmt_bind_param($stmt, 's', $_REQUEST["email"]);
		mysqli_stmt_execute($stmt);
		if (mysqli_stmt_fetch($stmt)) {
			die(json_encode(array("success" => false, "command" => $command, "reason" => "email_taken", "var" => $var)));
		}
		mysqli_stmt_close($stmt);

		$query = "INSERT INTO `user` (`id`, `username`, `password`, `email`, `data`, `created`) VALUES (NULL, ?, ?, ?, ?, CURRENT_TIMESTAMP);";

		$playerJson = json_encode(array("name" => $_REQUEST["username"], "map" => "cave"));

		$stmt = mysqli_prepare($mysqli, $query);
		mysqli_stmt_bind_param($stmt, 'ssss', $_REQUEST["username"], $_REQUEST["password"], $_REQUEST["email"], $playerJson);
	    mysqli_stmt_execute($stmt);
	    echo json_encode(array("success" => true, "command" => $command, "id" => mysqli_stmt_insert_id($stmt), "var" => $var));
	    mysqli_stmt_close($stmt);
		break;

		case 'login':
		$query = "SELECT `id`, `username`, `status`, `data` FROM `user` WHERE LOWER(`username`) = LOWER(?) AND `password` = ?";
		$stmt = mysqli_prepare($mysqli, $query);
		mysqli_stmt_bind_param($stmt, 'ss', $_REQUEST["username"], $_REQUEST["password"]);
		mysqli_stmt_execute($stmt);
		mysqli_stmt_bind_result($stmt, $userId, $userName, $userStatus, $userData);
		if (mysqli_stmt_fetch($stmt)) {
			echo json_encode(array("success" => true, "command" => $command, "id" => $userId, "name" => $userName, "status" => $userStatus, "data" => json_decode($userData), "var" => $var));
		}else {
			die(json_encode(array("success" => false, "command" => $command, "reason" => "login_fail", "var" => $var)));
		}
		mysqli_stmt_close($stmt);
		break;

		case 'save':
		$query = "UPDATE `user` SET `data` = ? WHERE `id` = ?;";
		$stmt = mysqli_prepare($mysqli, $query);
		mysqli_stmt_bind_param($stmt, 'si', $_REQUEST["data"], $_REQUEST["user"]);
		mysqli_stmt_execute($stmt);
		echo json_encode(array("success" => true, "command" => $command, "id" => $_REQUEST["user"], "var" => $var));
		mysqli_stmt_close($stmt);
		break;
	}

	/*
	//echo $_REQUEST["data"];
	if (isset($_REQUEST["save"]))
		//Put 
		$query = "DELETE FROM `json` WHERE `key` = ?;";

		if ($stmt = mysqli_prepare($mysqli, $query)) {
			mysqli_stmt_bind_param($stmt, 's', $_REQUEST["key"]);
		    mysqli_stmt_execute($stmt);
		    mysqli_stmt_close($stmt);
		}

		$query = "INSERT INTO `json` (`key`, `data`) VALUES (?, ?);";

		if ($stmt = mysqli_prepare($mysqli, $query)) {
			mysqli_stmt_bind_param($stmt, 'ss', $_REQUEST["key"], $_REQUEST["save"]);
		    mysqli_stmt_execute($stmt);
		    mysqli_stmt_close($stmt);
		}

		echo '{"success":true}';
	}
	if (isset($_REQUEST["get"])) {
		//Get data
		$query = "SELECT `data` FROM `json` WHERE `key` = ?";

		if ($stmt = mysqli_prepare($mysqli, $query)) {
			mysqli_stmt_bind_param($stmt, 's', $_REQUEST["get"]);
		    mysqli_stmt_execute($stmt);
		    mysqli_stmt_bind_result($stmt, $data);
		    if (mysqli_stmt_fetch($stmt)) {
		        echo '{"success":true, "data":'.$data.'}';
		    }else {
		    	echo '{"success":false}';
		    }
		    mysqli_stmt_close($stmt);
		}

	}*/
	mysqli_close($mysqli);
}
?>