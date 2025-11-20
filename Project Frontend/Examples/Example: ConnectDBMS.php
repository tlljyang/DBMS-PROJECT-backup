<!-- PHP连接范式 -->
<?php
$servername = "alist.tlljyang.pp.ua:16599";
$username = "projectUser";
$password = "pj1234";
$conn = new mysqli($servername, $username, $password);
if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>