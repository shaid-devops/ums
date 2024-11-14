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
	$f_name = $_REQUEST['f_name'];
        $l_name = $_REQUEST['l_name'];
        $dept_name = $_REQUEST['dept_name'];
        $email = $_REQUEST['email'];
        $passwd = $_REQUEST['passwd'];

$sql = "INSERT INTO stu_reg ( f_name, l_name, dept_name,email,passwd )
VALUES ('$f_name', '$l_name', '$dept_name', '$email', '$passwd')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close();
?>

<a href="./reg.php"><button>Go Back</button></a>
