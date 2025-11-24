<html>
  <head>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <h1>Information System Example</h1>
    <table border="0" class="nev">
      <tr>
        <th><a href="index.html" class="nev_a">Introduction</a></th>
        <th><a href="https://www.w3schools.com/html/default.asp" class="nev_a">To Learn HTML</a></th>
        <th><a href="https://www.w3schools.com/html/html_css.asp" class="nev_a">To Learn CSS</a></th>
        <th><a href="https://www.w3schools.com/js/default.asp" class="nev_a">To Learn JavaScript</a></th>
        <th><a href="https://www.w3schools.com/php/default.asp" class="nev_a">To Learn PHP</a></th>
        <th><a href="login.php" class="nev_a">DB Connection Example</a></th>
      </tr>
    </table><hr/>
    <p>Testing the connection to DB via php.</p>
    <p>Check source code for explanations.</p>

    <?php                         //start php environment
      $servername = "localhost";  //Indicate the server's address. 
                                  //For network access, put server's IP address (LAN or WAN) here.
      $username = "root";         //phpMyAdmin has several default accounts. 
                                  //To manage the accounts, go to "Account" tag in phpMyAdmin.
      $password = "";             //The default account has no password

      // Create connection
      $conn = new mysqli($servername, $username, $password);

      // Check connection
      if ($conn->connect_error) { //The connection is not successful.
        die("Connection failed: " . $conn->connect_error);
      }
      else{                       //The connection is successful.
        echo "Connected successfully.";
        echo "<br/>";             //Creat a button (HTML element), jumping to SQL example. 
        echo "<button onclick=\"to_SQL()\">Go for SQL example</button>";
      }
            //end php environment
    ?>

    <script>                      //start javascript environment
      function to_SQL(){          //make a jump
        window.location=('SQL.php');
      }
    </script>

  </body>
</html>