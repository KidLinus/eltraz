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
		//Put data
	}else {
		$query = "SELECT `data` FROM `json` WHERE `key` = 'test_1'";

		if ($stmt = mysqli_prepare($mysqli, $query)) {
		    mysqli_stmt_execute($stmt);
		    mysqli_stmt_bind_result($stmt, $data);
		    while (mysqli_stmt_fetch($stmt)) {
		        echo $data;
		    }
		    mysqli_stmt_close($stmt);
		}

	}
	mysqli_close($mysqli);
}
?>