<?php
$data_type = "";
if (!isset($_REQUEST["type"])) {$_REQUEST["type"] = "";}
if ($_REQUEST["type"] == "user") {$data_type = "user";}

if ($data_type != "" && isset($_REQUEST["id"])) {
	//MYSQL
	$host='localhost';
	$user='root';
	$pass='';
	$database='eltraz';

	$mysqli = new mysqli($host, $user, $pass, $database);
	if ($mysqli->connect_errno) { die("Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error); }
	$mysqli->set_charset("utf8");

	echo $_POST["data"];

	/*if (isset($_REQUEST["data"])) {
		//
	}else {
		$req = $mysqli->prepare("SELECT `data` FROM `user` WHERE `id` = ?");
		$req->bind_param("i", (int)$_REQUEST["id"]);
		$data = $req->execute();
		if (!$data) {
			echo '{"success":false}';
		}else {
			echo '{"success":true, "data":' . $data["data"] . '}';
		}
	}*/
}else {
	echo '{"success":false}';
}
?>