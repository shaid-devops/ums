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
	$father_name = $_REQUEST['father_name'];
	$mother_name = $_REQUEST['mother_name'];
	$phone = $_REQUEST['phone'];
	$email = $_REQUEST['email'];
	$dob = $_REQUEST['dob'];
	$blood_group = $_REQUEST['blood_group'];
	$nid = $_REQUEST['nid'];
	$passport = $_REQUEST['passport'];
	$pre_state = $_REQUEST['pre_state'];
	$pre_city = $_REQUEST['pre_city'];
	$pre_address = $_REQUEST['pre_address'];
	$per_state = $_REQUEST['per_state'];
        $per_city = $_REQUEST['per_city'];
	$dept_name = $_REQUEST['dept_name'];
	$per_address = $_REQUEST['per_address'];
	$SSC = $_REQUEST['SSC'];
	$HSC = $_REQUEST['HSC'];
        $passwd = $_REQUEST['passwd'];

$sql = "INSERT INTO stu_reg ( f_name, l_name, father_name,mother_name,phone,email,dob,blood_group,nid,passport,pre_state,pre_city,pre_address,per_state,per_city,per_address,dept_name,passwd, SSC,HSC )
VALUES ('$f_name', '$l_name','$father_name','$mother_name','$phone','$email','$dob','$blood_group','$nid','$passport','$pre_state','$pre_city','$pre_address','$per_state','$per_city','$per_address','$dept_name','$passwd','$SSC','$HSC')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close();
?>

<a href="./reg.php"><button>Go Back</button></a>
