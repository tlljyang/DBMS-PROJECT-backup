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
    <title>Reset Password Form  Responsive Widget Template | Home</title>
    <link href="style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <meta name="keywords" content="Reset Password Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!--google fonts-->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
</head>
<body>
<!--element start here-->
<div class="elelment">
    <h2>Reset Password Form</h2>
    <div class="element-main">
        <h1>Forgot Password</h1>
        <p>Please enter your username and email address to reset your password.</p>
        
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
            <input type="text" name="username" placeholder="Your username" 
                   value="<?php echo isset($_POST['username']) ? htmlspecialchars($_POST['username']) : 'Your username'; ?>" 
                   onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your username';}">
            
            <input type="email" name="email" placeholder="Your e-mail address" 
                   value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : 'Your e-mail address'; ?>" 
                   onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your e-mail address';}">
            
            <input type="submit" value="Reset my Password">
        </form>
    </div>
</div>

<div class="copy-right">
    <p>© 2016 Reset Password Form. All rights reserved | 
       <a target="_blank" href="http://tlljyang.pp.ua">SodaCANdy.Group</a>
    </p>
</div>

<!--element end here-->
<script>
    document.querySelector('form').addEventListener('submit', function(e) {
        const username = document.querySelector('input[name="username"]').value.trim();
        const email = document.querySelector('input[name="email"]').value.trim();
        
        if (!username || username === 'Your username' || !email || email === 'Your e-mail address') {
            e.preventDefault();
            alert('Please enter your username and email address!');
            return;
        }

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            e.preventDefault();
            alert('Please enter a valid email address!');
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