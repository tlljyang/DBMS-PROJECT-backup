<!DOCTYPE html>
<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require './PHPMailer/src/Exception.php';
require './PHPMailer/src/PHPMailer.php';
require './PHPMailer/src/SMTP.php';
$error_message = "";
$success_message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST['username']) && isset($_POST['email'])) {
        $username = trim($_POST['username']);
        $email = trim($_POST['email']);
        if (empty($username) || empty($email)) {
            $error_message = "Please enter your username and email address.";
        } else {
            $servername = "alist.tlljyang.pp.ua";
            $port = 16599;
            $db_username = "projectUser";
            $db_password = "pj1234";
            $dbname = "project";
            $conn = new mysqli($servername, $db_username, $db_password, $dbname, $port);
                $sql = "SELECT * FROM account WHERE username = ? AND email = ?";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("ss", $username, $email);
                $stmt->execute();
                $result = $stmt->get_result();
                
                if ($result->num_rows > 0) {
                    $new_password = bin2hex(random_bytes(8));
                    $update_sql = "UPDATE account SET password = ? WHERE username = ? AND email = ?";
                    $update_stmt = $conn->prepare($update_sql);
                    $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
                    $update_stmt->bind_param("sss", $hashed_password, $username, $email);                 
                    if ($update_stmt->execute()) {
                        $mail = new PHPMailer(true);
                        try {
                            $mail->isSMTP();
                            $mail->Host = 'ljymail.pp.ua';
                            $mail->SMTPAuth = true;
                            $mail->Username = 'DBMSPjResetPSWD@ljymail.pp.ua';
                            $mail->Password = 'test123';
                            $mail->SMTPSecure = '';
                            $mail->Port = 25;
                            $mail->CharSet = 'UTF-8';
                            $mail->setFrom('DBMSPjResetPSWD@ljymail.pp.ua', 'Reset Password');
                            $mail->addAddress($email, $username);
                            $mail->isHTML(true);
                            $mail->Subject = 'Notification of Password Reset';
                            $mail->Body    = "
                                <h2>Reset Password Success!</h2>
                                <p>Dear <strong>{$username}</strong>,</p>
                                <p>Your password has been reset to: <strong>{$new_password}</strong></p>
                                <p>Please login to your account and change your password immediately.</p>
                                <p>Thank you for using our services!</p>
                                <br>
                                <p>Best regards, <br>Fresh Food Team</p>
                            ";
                            $mail->send();
                            $success_message = "Password reset success! Please check your email for the new password.";
                        } catch (Exception $e) {
                            $error_message = "Mail could not be sent: " . $mail->ErrorInfo;
                        }
                    } else {
                        $error_message = "Password reset failed!";
                    }
                    
                    $update_stmt->close();
                } else {
                    $error_message = "Username or email not found.";
                }
                
                $stmt->close();
                $conn->close();
            
        }
    }
}
?>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
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
            animation: fadeIn 0.5s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
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
        
        .message {
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
            font-weight: 500;
        }
        
        .error {
            background-color: #ffebee;
            color: #c62828;
            border-left: 4px solid #f44336;
        }
        
        .success {
            background-color: #e8f5e9;
            color: #2e7d32;
            border-left: 4px solid #4caf50;
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
            <h1>Reset Password</h1>
            <p>Please enter your username and email address to reset your password.</p>
        </div>
        
        <div class="form-container">
            <?php if (!empty($error_message)): ?>
                <div class="message error"><?php echo $error_message; ?></div>
            <?php endif; ?>
            
            <?php if (!empty($success_message)): ?>
                <div class="message success"><?php echo $success_message; ?></div>
            <?php endif; ?>
            
            <div class="info-box">
                <p><strong>Notification: </strong>Please check your email carefully.</p>
            </div>
            
            <form method="post" action="">
                <div class="input-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="Enter your username" 
                           value="<?php echo isset($_POST['username']) ? htmlspecialchars($_POST['username']) : ''; ?>" required>
                </div>
                
                <div class="input-group">
                    <label for="email">Email address</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email address" 
                           value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : ''; ?>" required>
                </div>
                
                <button type="submit" class="submit-btn">Reset Password</button>
            </form>
        </div>
        
        <div class="footer">
            <p><spam>Copyright &copy; 2025 </spam>
                            <spam><a href="http://tlljyang.pp.ua" style="color: yellow;">SodaCANdy.Group</a></spam> in
                            UIC. All rights reserved.</p>
        </div>
    </div>

    <script>
        document.querySelector('form').addEventListener('submit', function(e) {
            const username = document.getElementById('username').value.trim();
            const email = document.getElementById('email').value.trim();
            
            if (!username || !email) {
                e.preventDefault();
                alert('Please enter your username and email address!');
                return;
            }

            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                e.preventDefault();
                alert('请输入有效的邮箱地址！');
                return;
            }
        });

        setTimeout(function() {
            const messages = document.querySelectorAll('.message');
            messages.forEach(function(message) {
                message.style.opacity = '0';
                message.style.transition = 'opacity 0.5s';
                setTimeout(function() {
                    message.style.display = 'none';
                }, 500);
            });
        }, 5000);
    </script>
</body>
</html>