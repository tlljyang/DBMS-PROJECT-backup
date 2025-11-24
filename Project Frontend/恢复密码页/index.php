<!DOCTYPE html>
<?php
// 数据库连接和邮件发送功能
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    
    // 数据库连接信息
    $servername = "alist.tlljyang.pp.ua";
    $port = 16599;
    $username = "projectUser";
    $password = "pj1234";
    $dbname = "project";
    
    // 创建数据库连接
    $conn = new mysqli($servername, $username, $password, $dbname, $port);
    
    // 检查连接
    if ($conn->connect_error) {
        die("数据库连接失败: " . $conn->connect_error);
    }
    
    // 检查邮箱是否存在
    $sql = "SELECT * FROM account WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        // 生成随机密码
        $new_password = bin2hex(random_bytes(8)); // 16位随机密码
        
        // 更新数据库中的密码
        $update_sql = "UPDATE account SET password = ? WHERE email = ?";
        $update_stmt = $conn->prepare($update_sql);
        $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
        $update_stmt->bind_param("ss", $hashed_password, $email);
        
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
        echo "<script>alert('邮箱地址错误或用户不存在！');</script>";
    }
    
    $stmt->close();
    $conn->close();
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
<html>

<head>
	<title>Reset Password</title>
	<style>
		/* 基本样式 */
		body {
			font-family: 'Roboto', sans-serif;
			background: #f5f5f5;
			margin: 0;
			padding: 0;
			display: flex;
			flex-direction: column;
			align-items: center;
			min-height: 100vh;
			justify-content: center;
		}

		.elelment {
			background: white;
			padding: 30px;
			border-radius: 10px;
			box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
			width: 100%;
			max-width: 400px;
			box-sizing: border-box;
		}

		.elelment h2 {
			text-align: center;
			color: #333;
			margin-bottom: 20px;
		}

		.element-main {
			text-align: center;
		}

		.element-main h1 {
			color: #555;
			font-size: 24px;
			margin-bottom: 10px;
		}

		.element-main p {
			color: #777;
			margin-bottom: 20px;
			line-height: 1.5;
		}

		form {
			display: flex;
			flex-direction: column;
		}

		input[type="text"] {
			padding: 12px;
			margin-bottom: 15px;
			border: 1px solid #ddd;
			border-radius: 5px;
			font-size: 16px;
			transition: border 0.3s;
		}

		input[type="text"]:focus {
			border-color: #4CAF50;
			outline: none;
		}

		input[type="submit"] {
			background: #4CAF50;
			color: white;
			border: none;
			padding: 12px;
			border-radius: 5px;
			font-size: 16px;
			cursor: pointer;
			transition: background 0.3s;
		}

		input[type="submit"]:hover {
			background: #45a049;
		}

		.copy-right {
			margin-top: 20px;
			text-align: center;
			color: #777;
			font-size: 14px;
		}

		.copy-right a {
			color: #4CAF50;
			text-decoration: none;
		}

		.copy-right a:hover {
			text-decoration: underline;
		}
	</style>
	<!-- 引入Roboto字体 -->
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
		rel="stylesheet">
</head>

<body>
	<div class="elelment">
		<h2>Reset Password</h2>
		<div class="element-main">
			<h1>Forgot Password?</h1>
			<p>Enter your e-mail address below to reset your password.</p>
			<form method="post" action="">
				<input type="text" name="email" placeholder="Your e-mail address" required>
				<input type="submit" value="Reset my Password">
			</form>
		</div>
	</div>
	<div class="copy-right">
		<p><span>Copyright &copy; 2025 </span>
			<span><a href="https://tlljyang.github.io">SodaCANdy.Group</a></span> in UIC. All rights reserved.
		</p>
	</div>
</body>

</html>