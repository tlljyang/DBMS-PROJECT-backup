<!DOCTYPE html>
<?php
// 数据库连接和邮件发送功能
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // 检查是否已提交表单
    if(isset($_POST['username']) && isset($_POST['email'])) {
        $username = $_POST['username'];
        $email = $_POST['email'];
        
        // 数据库连接信息
        $servername = "alist.tlljyang.pp.ua";
        $port = 16599;
        $db_username = "projectUser";
        $db_password = "pj1234";
        $dbname = "project";
        
        // 创建数据库连接
        $conn = new mysqli($servername, $db_username, $db_password, $dbname, $port);
        
        // 检查连接
        if ($conn->connect_error) {
            die("数据库连接失败: " . $conn->connect_error);
        }
        
        // 检查用户名和邮箱是否匹配
        $sql = "SELECT * FROM account WHERE username = ? AND email = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $username, $email);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            // 生成随机密码
            $new_password = bin2hex(random_bytes(8)); // 16位随机密码
            
            // 更新数据库中的密码
            $update_sql = "UPDATE account SET password = ? WHERE username = ? AND email = ?";
            $update_stmt = $conn->prepare($update_sql);
            $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
            $update_stmt->bind_param("sss", $hashed_password, $username, $email);
            
            if ($update_stmt->execute()) {
                // 发送邮件
                $to = $email;
                $subject = "密码重置通知";
                $message = "您的密码已被重置为: " . $new_password . "\n\n请尽快登录并修改密码。";
                $headers = "From: DBMSPjResetPSWD@ljymail.pp.ua";
                
                // 使用SMTP发送邮件
                $smtp_host = "ljymail.pp.ua";
                $smtp_port = 25;
                $smtp_username = "DBMSPjResetPSWD@ljymail.pp.ua";
                $smtp_password = "test123";
                
                // 使用PHPMailer简化版实现
                $mail_sent = sendMail($to, $subject, $message, $headers, 
                                     $smtp_host, $smtp_port, $smtp_username, $smtp_password);
                
                if ($mail_sent) {
                    echo "<script>alert('密码重置成功！新密码已发送到您的邮箱。');</script>";
                } else {
                    echo "<script>alert('密码重置成功，但邮件发送失败，请联系管理员。');</script>";
                }
            } else {
                echo "<script>alert('密码重置失败，请稍后重试。');</script>";
            }
            
            $update_stmt->close();
        } else {
            echo "<script>alert('用户名和邮箱不匹配或用户不存在！');</script>";
        }
        
        $stmt->close();
        $conn->close();
    }
}

// 简单的SMTP邮件发送函数
function sendMail($to, $subject, $message, $headers, $host, $port, $username, $password) {
    $sock = fsockopen($host, $port, $errno, $errstr, 30);
    
    if (!$sock) {
        return false;
    }
    
    $response = fgets($sock);
    if (substr($response, 0, 3) != "220") {
        return false;
    }
    
    // EHLO
    fputs($sock, "EHLO $host\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "250") {
        return false;
    }
    
    // AUTH LOGIN
    fputs($sock, "AUTH LOGIN\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "334") {
        return false;
    }
    
    // 用户名
    fputs($sock, base64_encode($username) . "\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "334") {
        return false;
    }
    
    // 密码
    fputs($sock, base64_encode($password) . "\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "235") {
        return false;
    }
    
    // MAIL FROM
    fputs($sock, "MAIL FROM: <$username>\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "250") {
        return false;
    }
    
    // RCPT TO
    fputs($sock, "RCPT TO: <$to>\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "250") {
        return false;
    }
    
    // DATA
    fputs($sock, "DATA\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "354") {
        return false;
    }
    
    // 邮件内容
    fputs($sock, "Subject: $subject\r\n");
    fputs($sock, "$headers\r\n");
    fputs($sock, "\r\n");
    fputs($sock, "$message\r\n");
    fputs($sock, ".\r\n");
    $response = fgets($sock);
    if (substr($response, 0, 3) != "250") {
        return false;
    }
    
    // QUIT
    fputs($sock, "QUIT\r\n");
    fclose($sock);
    
    return true;
}
?>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>重置密码 - SodaCANdy.Group</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            width: 100%;
            max-width: 450px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }
        
        .header {
            background: #4a00e0;
            color: white;
            padding: 25px;
            text-align: center;
        }
        
        .header h1 {
            font-size: 24px;
            margin-bottom: 5px;
        }
        
        .header p {
            opacity: 0.8;
            font-size: 14px;
        }
        
        .form-container {
            padding: 30px;
        }
        
        .input-group {
            margin-bottom: 20px;
        }
        
        .input-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
            font-size: 14px;
        }
        
        .input-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 15px;
            transition: all 0.3s;
        }
        
        .input-group input:focus {
            border-color: #4a00e0;
            box-shadow: 0 0 0 2px rgba(74, 0, 224, 0.2);
            outline: none;
        }
        
        .submit-btn {
            background: linear-gradient(to right, #4a00e0, #8e2de2);
            color: white;
            border: none;
            padding: 14px;
            width: 100%;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 10px;
        }
        
        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(74, 0, 224, 0.4);
        }
        
        .submit-btn:active {
            transform: translateY(0);
        }
        
        .footer {
            text-align: center;
            padding: 20px;
            border-top: 1px solid #eee;
            color: #666;
            font-size: 13px;
        }
        
        .footer a {
            color: #4a00e0;
            text-decoration: none;
        }
        
        .footer a:hover {
            text-decoration: underline;
        }
        
        .info-box {
            background: #f0f8ff;
            border-left: 4px solid #4a00e0;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 4px;
            font-size: 14px;
            color: #555;
        }
        
        .info-box p {
            margin-bottom: 5px;
        }
        
        @media (max-width: 480px) {
            .container {
                border-radius: 10px;
            }
            
            .header {
                padding: 20px;
            }
            
            .form-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>重置密码</h1>
            <p>请输入您的用户名和邮箱地址来重置密码</p>
        </div>
        
        <div class="form-container">
            <div class="info-box">
                <p><strong>提示：</strong>请确保输入的用户名和邮箱地址与您注册时使用的信息完全一致。</p>
            </div>
            
            <form method="post" action="">
                <div class="input-group">
                    <label for="username">用户名</label>
                    <input type="text" id="username" name="username" placeholder="请输入您的用户名" required>
                </div>
                
                <div class="input-group">
                    <label for="email">邮箱地址</label>
                    <input type="text" id="email" name="email" placeholder="请输入您的邮箱地址" required>
                </div>
                
                <button type="submit" class="submit-btn">重置密码</button>
            </form>
        </div>
        
        <div class="footer">
            <p>Copyright &copy; 2025 <a href="https://tlljyang.github.io">SodaCANdy.Group</a> in UIC. All rights reserved.</p>
        </div>
    </div>

    <script>
        // 添加一些简单的表单验证
        document.querySelector('form').addEventListener('submit', function(e) {
            const username = document.getElementById('username').value.trim();
            const email = document.getElementById('email').value.trim();
            
            if (!username || !email) {
                e.preventDefault();
                alert('请填写所有必填字段！');
                return;
            }
            
            // 简单的邮箱格式验证
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                e.preventDefault();
                alert('请输入有效的邮箱地址！');
                return;
            }
        });
    </script>
</body>
</html>