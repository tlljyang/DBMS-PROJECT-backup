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

    <p>Building in progress.</p><br/>

    <?php
      $servername = "localhost";
      $username = "root";
      $password = "";
      $conn = new mysqli($servername, $username, $password);
      
      if ($conn->connect_error) { 
        die("Connection failed: " . $conn->connect_error);
      }

      $dbname = $_POST["DBname"];   //get the database name in the form passed from "SQL.php"
      echo "<input  id=\"temp1\" type=\"hidden\" name=\"DBname\" value=".$dbname.">";
                                    //Forms are directly passed to the sever by PHP, but javascript cannot access directly.
                                    //If javascript needs to use some data in the form, you have to pass the data back to HTML, then to javascript.
                                    //So, here create a hidden html element to contain the database name.


      $sql = "CREATE DATABASE ".$dbname;  //construct a SQL statement, then try to excute it on the database server
      if ($conn->query($sql) === TRUE) {
        echo "Construction Complete.";
      } else {
        echo "Construction failed: " . $conn->error."<br>";
        echo "Seems that the database already exists.<br>";
        echo "<button onclick=\"RmDB()\">Hit me to remove the DB</button>";
      }
    ?>

    <script>
      function RmDB(){    //to pass the name of database to the next page, here we create an artificial form
        var element = document.getElementById("temp1");//This form has one element, which is an "input", created in PHP above.
        var dbname = element.value;
        var form = document.createElement("form");

        form.method = "POST";
        form.action = "RmDB.php";
        form.type = "hidden";
        form.appendChild(element);  //insert the element to the form

        document.body.appendChild(form);//insert the form to html
        form.submit();  //trigger the submission
      }
    </script>


  </body>
</html>