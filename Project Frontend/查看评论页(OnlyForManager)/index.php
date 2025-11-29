<?php
// 数据库配置信息
$servername = "alist.tlljyang.pp.ua";
$port = 16599;
$db_username = "projectUser";
$db_password = "pj1234";
$dbname = "project";

try {
    // 创建数据库连接
    $conn = new PDO("mysql:host=$servername;port=$port;dbname=$dbname", $db_username, $db_password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // 查询feedback表数据
    $stmt = $conn->query("SELECT * FROM feedback ORDER BY date DESC");
    $feedbacks = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch(PDOException $e) {
    die("数据库连接失败: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户评价预览</title>
    <style>
        body { font-family: 'Microsoft YaHei', sans-serif; margin: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background-color: #f2f2f2; font-weight: bold; }
        tr:hover { background-color: #f5f5f5; }
        .rating { color: #FFA500; font-weight: bold; }
        .comments { max-width: 300px; word-wrap: break-word; }
        h1 { color: #333; }
    </style>
</head>
<body>
    <h1>用户评价预览</h1>
    
    <?php if (count($feedbacks) > 0): ?>
        <table>
            <thead>
                <tr>
                    <th>评价ID</th>
                    <th>客户ID</th>
                    <th>订单ID</th>
                    <th>评分</th>
                    <th>评论内容</th>
                    <th>评价日期</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($feedbacks as $feedback): ?>
                    <tr>
                        <td><?= htmlspecialchars($feedback['feedback_id']) ?></td>
                        <td><?= htmlspecialchars($feedback['customer_id']) ?></td>
                        <td><?= htmlspecialchars($feedback['order_id']) ?></td>
                        <td class="rating"><?= str_repeat('★', $feedback['rating']) . str_repeat('☆', 5 - $feedback['rating']) ?></td>
                        <td class="comments"><?= htmlspecialchars($feedback['comments']) ?></td>
                        <td><?= date('Y-m-d H:i', strtotime($feedback['date'])) ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p>暂无评价数据</p>
    <?php endif; ?>
</body>
</html>