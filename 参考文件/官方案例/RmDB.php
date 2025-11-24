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
    <?php
      $servername = "localhost";
      $username = "root";
      $password = "";
      $conn = new mysqli($servername, $username, $password);
      
      if ($conn->connect_error) { 
        die("Connection failed: " . $conn->connect_error);
      }

      $sql = "DROP DATABASE ".$_POST["DBname"];

      if ($conn->query($sql) === TRUE) {
        echo "The Database is removed. Great!";
      } else {
        echo "Deletion failed: " . $conn->error."<br>";
      }
    ?>

  </body>
</html>