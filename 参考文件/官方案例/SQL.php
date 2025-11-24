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
    <p>Congratulations! If you can see me, your webserver and database server are running smoothly.</p>
    <p>Let's see some SQL examples.</p>

    <?php
      $servername = "localhost";
      $username = "root";
      $password = "";
      $conn = new mysqli($servername, $username, $password);
      //If you don't want to connect to server each time when you have a new page, try to make a connection in an external .php file.

      if ($conn->connect_error) { 
        die("Connection failed: " . $conn->connect_error);
      }
    ?>
    <br/>

 <!--Create a form, which can be used to hold some data and pass them to the server.-->
    <p>This demo can only create or remove a database from the system.</p>
    <form name="NewDB" action="CreateDB.php" onsubmit="return passForm()" method="post"/>
      To create a database, input the name of your database : <input type="text" name="DBname"/>
      <input type="submit" value="Let's try!"/>
    </form>
    <p>The system will inform you if the database already exist.</p>

  </body>
</html>