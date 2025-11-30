<?php
session_start();
include '../ConnectDB.php';

header("Refresh: 10");

$cooking_sql = "SELECT o.order_id, o.order_time, o.size, o.order_status, o.username,
                       d.dish_id, d.dish_name, d.flavour
                FROM `order` o
                JOIN dish d ON o.dish_id = d.dish_id
                WHERE o.isTakeout = 0 AND o.order_status IN ('Confirmed', 'Cooking')
                GROUP BY o.order_id
                ORDER BY 
                    CASE 
                        WHEN o.order_status = 'Confirmed' THEN 1
                        WHEN o.order_status = 'Cooking' THEN 2
                    END,
                    o.order_time ASC";

$cooking_result = $conn->query($cooking_sql);

$completed_sql = "SELECT o.order_id, o.order_time, o.size, o.order_status, o.username,
                         d.dish_id, d.dish_name, d.flavour
                  FROM `order` o
                  JOIN dish d ON o.dish_id = d.dish_id
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calling System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Calling System</h1>
        </div>
        
        <div class="status-container">
            <div class="status-section">
                <div class="section-header in-progress">
                    <div class="section-title">In Progress</div>
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
                            $status_class = ($row['order_status'] == 'Confirmed') ? 'preparing' : 'cooking';
                            $status_text = ($row['order_status'] == 'Confirmed') ? 'Preparing' : 'Cooking';
                            ?>
                            
                            <div class="order-card <?php echo $status_class; ?>">
                                <div class="order-header">
                                    <div class="order-id">Order #<?php echo $row['order_id']; ?></div>
                                    <div class="order-status status-<?php echo $status_class; ?>">
                                        <?php echo $status_text; ?>
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
                                                <span>Flavor:</span>
                                                <span><?php echo $row['flavour']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>Customer:</span>
                                                <span><?php echo $row['username']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>Order ID:</span>
                                                <span>#<?php echo $row['order_id']; ?></span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="timestamp">
                                        Order Time: <?php echo $row['order_time']; ?>
                                    </div>
                                </div>
                            </div>
                            <?php
                        }
                    } else {
                        echo '<div class="no-orders">No orders in progress</div>';
                    }
                    ?>
                </div>
            </div>

            <div class="status-section">
                <div class="section-header completed">
                    <div class="section-title">Completed Orders</div>
                    <div class="order-count">
                        <?php 
                        $completed_count = $completed_result ? $completed_result->num_rows : 0;
                        echo $completed_count . " orders";
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
                                    <div class="order-id">Order #<?php echo $row['order_id']; ?></div>
                                    <div class="order-status status-completed">
                                        Completed
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
                                                <span>Flavor:</span>
                                                <span><?php echo $row['flavour']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>Customer:</span>
                                                <span><?php echo $row['username']; ?></span>
                                            </div>
                                            <div class="detail-item">
                                                <span>Order ID:</span>
                                                <span>#<?php echo $row['order_id']; ?></span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="timestamp">
                                        Completion Time: <?php echo $row['order_time']; ?>
                                    </div>
                                </div>
                            </div>
                            <?php
                        }
                    } else {
                        echo '<div class="no-orders">No completed orders</div>';
                    }
                    ?>
                </div>
            </div>
        </div>
        
        <div class="refresh-info">
            Page refreshes every 10 seconds
        </div>
    </div>
    
    <?php if ($show_notification): ?>
    <div class="notification" id="notification">
        <button class="notification-close" onclick="closeNotification()">×</button>
        <div class="notification-header">
            <span class="notification-icon">🎉</span>
            <div class="notification-title">New Order Completed!</div>
        </div>
        <div class="notification-message">
            A new order has been completed. Please come to the pickup counter.
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
                    console.log('Auto-play prevented:', e);
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