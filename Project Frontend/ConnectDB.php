<?php
$servername = "alist.tlljyang.pp.ua";
$port = 16599;
$db_username = "projectUser";
$db_password = "pj1234";
$dbname = "project";
$conn = new mysqli($servername, $db_username, $db_password, $dbname, $port);
if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}
?>