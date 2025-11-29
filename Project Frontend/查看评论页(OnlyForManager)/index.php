<?php
$servername = "alist.tlljyang.pp.ua";
$port = 16599;
$db_username = "projectUser";
$db_password = "pj1234";
$dbname = "project";

try {
    $conn = new PDO("mysql:host=$servername;port=$port;dbname=$dbname", $db_username, $db_password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->query("SELECT * FROM feedback ORDER BY date DESC");
    $feedbacks = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch(PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback (Only For Manager)</title>
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
    <h1>Feedback Preview</h1>
    
    <?php if (count($feedbacks) > 0): ?>
        <table>
            <thead>
                <tr>
                    <th>Feedback ID</th>
                    <th>Customer ID</th>
                    <th>Order ID</th>
                    <th>Rating</th>
                    <th>Comments</th>
                    <th>Date</th>
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
        <p>No feedback found.</p>
    <?php endif; ?>
</body>
</html>