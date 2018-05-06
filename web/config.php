<?php

$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "test";

//create PDO connection 
try {    
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}

// Create mysqli connection
$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
mysqli_set_charset($conn, "utf8");

// Check connection
if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}