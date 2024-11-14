<style>
button {
  width: 100px;
  padding: 10px;
  background-color: #4400ff;
  border: none;
  position: relative;
  margin: 40px;
  top: 50px;
  color: white;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #4cae4c;
}

</style>


<?php
$servername = "localhost";
$username = "ums";
$password = "UmS_PU";
$dbname = "ums_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
        $email = $_REQUEST['email'];
        $passwd = $_REQUEST['passwd'];

$sql = " select * from stu_reg where email = '$email' and passwd = '$passwd' ";

if ($conn->query($sql) === TRUE) {
  echo "Login successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close();
?>


<a href="./stu_login.php"><button>Go Back</button></a>
