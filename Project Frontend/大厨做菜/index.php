<?php
session_start();
include '../ConnectDB.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['complete_order'])) {
    $order_id = $_POST['order_id'];
    $dish_id = $_POST['dish_id'];
    $conn->begin_transaction();
    try {
        $ingredients_sql = "SELECT c.item_id, c.count, s.item_name 
                           FROM cook c 
                           JOIN supplychain s ON c.item_id = s.item_id 
                           WHERE c.dish_id = ?";
        $stmt = $conn->prepare($ingredients_sql);
        $stmt->bind_param("i", $dish_id);
        $stmt->execute();
        $ingredients_result = $stmt->get_result();
        while ($ingredient = $ingredients_result->fetch_assoc()) {
            $update_stock_sql = "UPDATE supplychain SET quantity = quantity - ? WHERE item_id = ? AND quantity >= ?";
            $update_stmt = $conn->prepare($update_stock_sql);
            $update_stmt->bind_param("dii", $ingredient['count'], $ingredient['item_id'], $ingredient['count']);
            if (!$update_stmt->execute()) {
                throw new Exception("invalid stock for item " . $ingredient['item_name']);
            }
            $update_stmt->close();
        }
        $update_order_sql = "UPDATE `order` SET order_status = 'Completed' WHERE order_id = ?";
        $update_order_stmt = $conn->prepare($update_order_sql);
        $update_order_stmt->bind_param("i", $order_id);
        $conn->commit();
        $_SESSION['message'] = "Order #" . $order_id . " completed! Stock updated.";
        $_SESSION['message_type'] = "success";
    } catch (Exception $e) {
        $conn->rollback();
        $_SESSION['message'] = "Failed to complete order: " . $e->getMessage();
        $_SESSION['message_type'] = "error";
    }
    header("Location: " . $_SERVER['PHP_SELF']);
    exit();
}
?>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chef Workplace</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <div class="header">
        <h1>Chef Workplace</h1>
    </div>
    
    <div class="container">
        <?php if (isset($_SESSION['message'])): ?>
            <div class="message <?php echo $_SESSION['message_type']; ?>">
                <?php 
                echo $_SESSION['message'];
                unset($_SESSION['message']);
                unset($_SESSION['message_type']);
                ?>
            </div>
        <?php endif; ?>
        
        <h2>Pending Orders</h2>
        
        <div class="orders-grid">
            <?php
            $sql = "SELECT o.order_id, o.order_time, o.total_amount, o.size, o.order_status,
                           d.dish_id, d.dish_name, d.price, d.flavour,
                           c.method
                    FROM `order` o
                    JOIN dish d ON o.dish_id = d.dish_id
                    LEFT JOIN cook c ON d.dish_id = c.dish_id
                    WHERE o.order_status IN ('Pending', 'Confirmed', 'Cooking')
                    GROUP BY o.order_id
                    ORDER BY o.order_time ASC";
            
            $result = $conn->query($sql);
            
            if ($result && $result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    $ingredients_sql = "SELECT s.item_name, c.count 
                                       FROM cook c 
                                       JOIN supplychain s ON c.item_id = s.item_id 
                                       WHERE c.dish_id = ?";
                    $ingredients_stmt = $conn->prepare($ingredients_sql);
                    $ingredients_stmt->bind_param("i", $row['dish_id']);
                    $ingredients_stmt->execute();
                    $ingredients_result = $ingredients_stmt->get_result();
                    ?>
                    
                    <div class="order-card">
                        <div class="order-header">
                            <div class="order-id">Order #<?php echo $row['order_id']; ?></div>
                            <div class="order-status"><?php echo $row['order_status']; ?></div>
                        </div>
                        
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
                                <div class="detail-item">
                                    <span>Total Amount:</span>
                                    <span>¥<?php echo $row['total_amount']; ?></span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="ingredients-list">
                            <div class="method-title">Ingredients:</div>
                            <?php 
                            if ($ingredients_result && $ingredients_result->num_rows > 0) {
                                while($ingredient = $ingredients_result->fetch_assoc()): ?>
                                    <div class="ingredient-item">
                                        <span><?php echo $ingredient['item_name']; ?></span>
                                        <span><?php echo $ingredient['count']; ?>g</span>
                                    </div>
                                <?php endwhile;
                            } else {
                                echo '<div class="ingredient-item">No Ingredients Data</div>';
                            }
                            ?>
                        </div>
                        
                        <div class="method-section">
                            <div class="method-title">Method:</div>
                            <p><?php echo $row['method'] ?: 'Standard Cooking Method'; ?></p>
                        </div>
                        
                        <div class="timestamp">
                            Order Time: <?php echo $row['order_time']; ?>
                        </div>
                        
                        <form method="POST" class="complete-form">
                            <input type="hidden" name="order_id" value="<?php echo $row['order_id']; ?>">
                            <input type="hidden" name="dish_id" value="<?php echo $row['dish_id']; ?>">
                            <button type="submit" name="complete_order" class="complete-btn">
                                Mark as Completed
                            </button>
                        </form>
                    </div>
                    <?php
                    $ingredients_stmt->close();
                }
            } else {
                echo '<div class="no-orders">No Pending Orders</div>';
            }
            ?>
        </div>
    </div>
    
    <script>
        document.querySelectorAll('.complete-form').forEach(form => {
            form.addEventListener('submit', function(e) {
                if (!confirm('Are you sure to complete this order?')) {
                    e.preventDefault();
                }
            });
        });
        setTimeout(function() {
            const message = document.querySelector('.message');
            if (message) {
                message.style.transition = 'opacity 0.5s ease';
                message.style.opacity = '0';
                setTimeout(() => message.remove(), 500);
            }
        }, 3000);
    </script>
</body>
</html>

<?php
$conn->close();
?>