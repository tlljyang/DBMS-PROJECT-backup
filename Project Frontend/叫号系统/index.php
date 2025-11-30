<?php
session_start();
include '../ConnectDB.php';

header("Refresh: 10");

$cooking_sql = "SELECT o.order_id, o.order_time, o.total_amount, o.size, o.order_status,
                       d.dish_id, d.dish_name, d.price, d.flavour,
                       c.method
                FROM `order` o
                JOIN dish d ON o.dish_id = d.dish_id
                LEFT JOIN cook c ON d.dish_id = c.dish_id
                WHERE o.isTakeout = 0 AND o.order_status IN ('Pending', 'Confirmed', 'Cooking')
                GROUP BY o.order_id
                ORDER BY 
                    CASE 
                        WHEN o.order_status = 'Pending' THEN 1
                        WHEN o.order_status = 'Confirmed' THEN 2
                        WHEN o.order_status = 'Cooking' THEN 3
                    END,
                    o.order_time ASC";

$cooking_result = $conn->query($cooking_sql);

$completed_sql = "SELECT o.order_id, o.order_time, o.total_amount, o.size, o.order_status,
                         d.dish_id, d.dish_name, d.price, d.flavour,
                         c.method
                  FROM `order` o
                  JOIN dish d ON o.dish_id = d.dish_id
                  LEFT JOIN cook c ON d.dish_id = c.dish_id
                  WHERE o.isTakeout = 0 AND o.order_status = 'Completed'
                  GROUP BY o.order_id
                  ORDER BY o.order_time DESC
                  LIMIT 20";

$completed_result = $conn->query($completed_sql);

$completed_count = $completed_result ? $completed_result->num_rows : 0;

if (!isset($_SESSION['last_completed_count'])) {
    $_SESSION['last_completed_count'] = $completed_count;
}

$new_completed = false;
if ($completed_count > $_SESSION['last_completed_count']) {
    $new_completed = true;
    $_SESSION['last_completed_count'] = $completed_count;
    $_SESSION['show_notification'] = true;
}

$show_notification = isset($_SESSION['show_notification']) ? $_SESSION['show_notification'] : false;
if ($show_notification) {
    unset($_SESSION['show_notification']);
}
?>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calling System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: #333;
            line-height: 1.6;
            min-height: 100vh;
        }
        
        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 20px;
        }
        
        .header {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 1.5rem;
            margin-bottom: 2rem;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            backdrop-filter: blur(10px);
        }
        
        .header h1 {
            font-size: 2.8rem;
            margin-bottom: 0.5rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        .header p {
            font-size: 1.2rem;
            color: #666;
        }
        
        .status-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            margin-bottom: 2rem;
        }
        
        @media (max-width: 1024px) {
            .status-container {
                grid-template-columns: 1fr;
            }
        }
        
        .status-section {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            backdrop-filter: blur(10px);
        }
        
        .section-header {
            background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);
            color: white;
            padding: 1.2rem 1.5rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .section-header.completed {
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
        }
        
        .section-title {
            font-size: 1.8rem;
            font-weight: bold;
        }
        
        .order-count {
            background: rgba(255,255,255,0.3);
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 1rem;
            font-weight: bold;
        }
        
        .orders-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
            padding: 1.5rem;
            max-height: 600px;
            overflow-y: auto;
        }
        
        .order-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-left: 5px solid;
            animation: fadeIn 0.5s ease;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .order-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }
        
        .order-card.pending {
            border-left-color: #ff9f43;
        }
        
        .order-card.confirmed {
            border-left-color: #2e86de;
        }
        
        .order-card.cooking {
            border-left-color: #ee5a24;
        }
        
        .order-card.completed {
            border-left-color: #10ac84;
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0% { box-shadow: 0 5px 15px rgba(16, 172, 132, 0.3); }
            50% { box-shadow: 0 5px 20px rgba(16, 172, 132, 0.6); }
            100% { box-shadow: 0 5px 15px rgba(16, 172, 132, 0.3); }
        }
        
        .order-header {
            padding: 1rem 1.2rem;
            border-bottom: 1px solid #f0f0f0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .order-id {
            font-size: 1.3rem;
            font-weight: bold;
            color: #2d3436;
        }
        
        .order-status {
            padding: 0.4rem 0.8rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: bold;
            text-transform: uppercase;
        }
        
        .status-pending {
            background: #fff9e6;
            color: #f39c12;
        }
        
        .status-confirmed {
            background: #e3f2fd;
            color: #1976d2;
        }
        
        .status-cooking {
            background: #ffecb3;
            color: #ff8f00;
        }
        
        .status-completed {
            background: #e8f5e9;
            color: #388e3c;
        }
        
        .order-content {
            padding: 1.2rem;
        }
        
        .dish-info {
            margin-bottom: 1rem;
        }
        
        .dish-name {
            font-size: 1.4rem;
            font-weight: bold;
            margin-bottom: 0.5rem;
            color: #2d3436;
        }
        
        .dish-details {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 0.5rem;
            margin-bottom: 1rem;
        }
        
        .detail-item {
            display: flex;
            justify-content: space-between;
            padding: 0.3rem 0;
            border-bottom: 1px dashed #f0f0f0;
        }
        
        .method-section {
            background: #f8f9fa;
            padding: 0.8rem;
            border-radius: 5px;
            margin-bottom: 1rem;
        }
        
        .method-title {
            font-weight: bold;
            margin-bottom: 0.3rem;
            color: #6a11cb;
            font-size: 0.9rem;
        }
        
        .timestamp {
            font-size: 0.9rem;
            color: #636e72;
            margin-top: 0.5rem;
            text-align: center;
            padding-top: 0.5rem;
            border-top: 1px solid #f0f0f0;
        }
        
        .no-orders {
            text-align: center;
            padding: 3rem;
            color: #636e72;
            font-size: 1.2rem;
            grid-column: 1 / -1;
        }
        
        .refresh-info {
            text-align: center;
            color: rgba(255,255,255,0.8);
            margin-top: 1rem;
            font-size: 0.9rem;
        }
        
        /* 弹窗样式 */
        .notification {
            position: fixed;
            top: 20px;
            right: 20px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            padding: 1.5rem;
            z-index: 1000;
            max-width: 350px;
            transform: translateX(400px);
            transition: transform 0.5s ease;
            border-left: 5px solid #10ac84;
            animation: slideIn 0.5s ease forwards;
        }
        
        @keyframes slideIn {
            to { transform: translateX(0); }
        }
        
        .notification-header {
            display: flex;
            align-items: center;
            margin-bottom: 0.5rem;
        }
        
        .notification-icon {
            font-size: 2rem;
            margin-right: 0.5rem;
        }
        
        .notification-title {
            font-weight: bold;
            font-size: 1.3rem;
            color: #10ac84;
        }
        
        .notification-message {
            color: #666;
            margin-bottom: 1rem;
        }
        
        .notification-close {
            position: absolute;
            top: 10px;
            right: 10px;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
            color: #999;
        }
        
        .confetti {
            position: fixed;
            width: 10px;
            height: 10px;
            background-color: #f0f;
            opacity: 0;
            pointer-events: none;
        }

        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }
            
            .header h1 {
                font-size: 2rem;
            }
            
            .orders-grid {
                grid-template-columns: 1fr;
                padding: 1rem;
            }
            
            .section-title {
                font-size: 1.5rem;
            }
            
            .order-card {
                margin-bottom: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Calling System</h1>
        </div>
        
        <div class="status-container">
            <div class="status-section">
                <div class="section-header">
                    <div class="section-title">Cooking</div>
                    <div class="order-count">
                        <?php 
                        $cooking_count = $cooking_result ? $cooking_result->num_rows : 0;
                        echo $cooking_count . " orders";
                        ?>
                    </div>
                </div>
                <div class="orders-grid">
                    <?php
                    if ($cooking_result && $cooking_result->num_rows > 0) {
                        while($row = $cooking_result->fetch_assoc()) {
                            ?>
                            
                            <div class="order-card <?php echo strtolower($row['order_status']); ?>">
                                <div class="order-header">
                                    <div class="order-id">Order #<?php echo $row['order_id']; ?></div>
                                    <div class="order-status status-<?php echo strtolower($row['order_status']); ?>">
                                        <?php 
                                        $status_text = [
                                            'Pending' => 'Pending',
                                            'Confirmed' => 'Confirmed', 
                                            'Cooking' => 'Cooking'
                                        ];
                                        echo $status_text[$row['order_status']] ?? $row['order_status'];
                                        ?>
                                    </div>
                                </div>
                                
                                <div class="order-content">
                                    <div class="dish-info">
                                        <div class="dish-name"><?php echo $row['dish_name']; ?></div>
                                        <div class="dish-details">
                                            <div class="detail-item">
                                                <span>Size:</span>
                                                <span><?php echo $row['size']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>Flavour:</span>
                                                <span><?php echo $row['flavour']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>Price:</span>
                                                <span>¥<?php echo $row['price']; ?></span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="method-section">
                                        <div class="method-title">Method:</div>
                                        <p>
                                            <?php 
                                            if ($row['order_status'] == 'Pending') {
                                                echo "订单已接收，准备开始制作";
                                            } elseif ($row['order_status'] == 'Confirmed') {
                                                echo "订单已确认，即将开始制作";
                                            } else {
                                                echo "正在火热制作中，请稍候";
                                            }
                                            ?>
                                        </p>
                                    </div>
                                    
                                    <div class="timestamp">
                                        Order Time: <?php echo $row['order_time']; ?>
                                    </div>
                                </div>
                            </div>
                            <?php
                        }
                    } else {
                        echo '<div class="no-orders">🎉 目前没有制作中的订单。</div>';
                    }
                    ?>
                </div>
            </div>

            <div class="status-section">
                <div class="section-header completed">
                    <div class="section-title">✅ 已完成订单</div>
                    <div class="order-count">
                        <?php 
                        $completed_count = $completed_result ? $completed_result->num_rows : 0;
                        echo $completed_count . " 个订单";
                        ?>
                    </div>
                </div>
                <div class="orders-grid">
                    <?php
                    if ($completed_result && $completed_result->num_rows > 0) {
                        while($row = $completed_result->fetch_assoc()) {
                            ?>
                            
                            <div class="order-card completed">
                                <div class="order-header">
                                    <div class="order-id">订单 #<?php echo $row['order_id']; ?></div>
                                    <div class="order-status status-completed">
                                        已完成
                                    </div>
                                </div>
                                
                                <div class="order-content">
                                    <div class="dish-info">
                                        <div class="dish-name"><?php echo $row['dish_name']; ?></div>
                                        <div class="dish-details">
                                            <div class="detail-item">
                                                <span>规格:</span>
                                                <span><?php echo $row['size']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>口味:</span>
                                                <span><?php echo $row['flavour']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>价格:</span>
                                                <span>¥<?php echo $row['price']; ?></span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="method-section">
                                        <div class="method-title">取餐提示:</div>
                                        <p>您的订单已制作完成，请到取餐口取餐！</p>
                                    </div>
                                    
                                    <div class="timestamp">
                                        完成时间: <?php echo $row['order_time']; ?>
                                    </div>
                                </div>
                            </div>
                            <?php
                        }
                    } else {
                        echo '<div class="no-orders">暂无已完成的订单。</div>';
                    }
                    ?>
                </div>
            </div>
        </div>
        
        <div class="refresh-info">
            页面每10秒自动刷新一次
        </div>
    </div>
    
    <?php if ($show_notification): ?>
    <div class="notification" id="notification">
        <button class="notification-close" onclick="closeNotification()">×</button>
        <div class="notification-header">
            <span class="notification-icon">🎉</span>
            <div class="notification-title">新订单已完成！</div>
        </div>
        <div class="notification-message">
            有新的订单已经制作完成，请顾客到取餐口取餐。
        </div>
    </div>
    <audio id="notificationSound" preload="auto">
        <source src="notification.mp3" type="audio/mpeg">
    </audio>
    <?php endif; ?>
    
    <script>
        function closeNotification() {
            const notification = document.getElementById('notification');
            if (notification) {
                notification.style.transition = 'transform 0.5s ease';
                notification.style.transform = 'translateX(400px)';
                setTimeout(() => {
                    notification.remove();
                }, 500);
            }
        }
        
        <?php if ($show_notification): ?>
        document.addEventListener('DOMContentLoaded', function() {
            const audio = document.getElementById('notificationSound');
            if (audio) {
                audio.play().catch(e => {
                    console.log('自动播放被阻止:', e);
                });
            }
            
            setTimeout(closeNotification, 5000);
            
            createConfetti();
        });
        <?php endif; ?>
        
        function createConfetti() {
            const colors = ['#ff9a9e', '#a1c4fd', '#fad0c4', '#c2e9fb', '#ffecd2', '#fcb69f'];
            const container = document.body;
            
            for (let i = 0; i < 50; i++) {
                const confetti = document.createElement('div');
                confetti.className = 'confetti';
                confetti.style.left = Math.random() * 100 + 'vw';
                confetti.style.top = '-10px';
                confetti.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
                confetti.style.width = Math.random() * 10 + 5 + 'px';
                confetti.style.height = Math.random() * 10 + 5 + 'px';
                confetti.style.borderRadius = Math.random() > 0.5 ? '50%' : '0';
                confetti.style.opacity = '1';
                
                container.appendChild(confetti);
                
                const animation = confetti.animate([
                    { transform: 'translateY(0) rotate(0deg)', opacity: 1 },
                    { transform: `translateY(${window.innerHeight}px) rotate(${Math.random() * 360}deg)`, opacity: 0 }
                ], {
                    duration: Math.random() * 3000 + 2000,
                    easing: 'cubic-bezier(0.215, 0.610, 0.355, 1)'
                });
                
                animation.onfinish = () => confetti.remove();
            }
        }
        
        document.addEventListener('click', function(e) {
            if (e.target.closest('.notification')) return;
            closeNotification();
        });
    </script>
</body>
</html>

<?php
$conn->close();
?>