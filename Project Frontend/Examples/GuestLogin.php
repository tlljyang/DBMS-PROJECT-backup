<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
$servername = "alist.tlljyang.pp.ua:16599";
$username = "projectUser";
$password = "pj1234";
$dbname = "project";

// 创建数据库连接
$conn = new mysqli($servername, $username, $password, $dbname);

// 检查连接
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["message" => "数据库连接失败: " . $conn->connect_error]);
    exit();
}

// 查询customer表中的id
$sql = "SELECT customer_id as id FROM customer";
$result = $conn->query($sql);

$customers = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $customers[] = $row;
    }
    http_response_code(200);
    echo json_encode($customers);
} else {
    http_response_code(404);
    echo json_encode(["message" => "未找到顾客记录"]);
}

$conn->close();
?>