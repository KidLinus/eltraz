<?php
if (isset($_REQUEST["key"])) {
	//MYSQL
	$host='localhost';
	$user='root';
	$pass='';
	$database='eltraz';

	$mysqli = new mysqli($host, $user, $pass, $database);
	if ($mysqli->connect_errno) { die("Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error); }
	$mysqli->set_charset("utf8");

	//echo $_REQUEST["data"];
	if (isset($_REQUEST["data"])) {
		//Put 
		$query = "DELETE FROM `json` WHERE `key` = ?;";

		if ($stmt = mysqli_prepare($mysqli, $query)) {
			mysqli_stmt_bind_param($stmt, 's', $_REQUEST["key"]);
		    mysqli_stmt_execute($stmt);
		    mysqli_stmt_close($stmt);
		}

		$query = "INSERT INTO `json` (`key`, `data`) VALUES (?, ?);";

		if ($stmt = mysqli_prepare($mysqli, $query)) {
			mysqli_stmt_bind_param($stmt, 'ss', $_REQUEST["key"], $_REQUEST["data"]);
		    mysqli_stmt_execute($stmt);
		    mysqli_stmt_close($stmt);
		}

		echo '{"success":true}';
	}else {
		//Get data
		$query = "SELECT `data` FROM `json` WHERE `key` = ?";

		if ($stmt = mysqli_prepare($mysqli, $query)) {
			mysqli_stmt_bind_param($stmt, 's', $_REQUEST["key"]);
		    mysqli_stmt_execute($stmt);
		    mysqli_stmt_bind_result($stmt, $data);
		    if (mysqli_stmt_fetch($stmt)) {
		        echo '{"success":true, "data":'.$data.'}';
		    }else {
		    	echo '{"success":false}';
		    }
		    mysqli_stmt_close($stmt);
		}

	}
	mysqli_close($mysqli);
}
?>