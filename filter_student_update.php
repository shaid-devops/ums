<html>
<head> <style>
table, td {
  border: 1px solid black;
  border-collapse: collapse;

}


.tbl_btn {
  width: 250px;

}

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

.edit {
  padding: 10px;
  margin: 4px;
  top: -0px;
  background-color: #4400ff;
  border: none;
  color: white;
  border-radius: 4px;
  cursor: pointer;
}


button:hover {
  background-color: #4cae4c;
}

td{
  width: 200px;
}
</style></head>
<body>
<?php
$dept_name = $_POST['dept_name'];
 ?>

<?php
    $servername = "localhost";
$username = "ums";
$password = "UmS_PU";
$dbname = "ums_db";

$conn = new mysqli($servername, $username, $password, $dbname);

$query = "SELECT * FROM stu_reg where dept_name = '$dept_name' order by f_name";



if($result = $conn->query($query)){
      while($_REQUEST = $result->fetch_assoc()){
	
	$f_name = $_REQUEST["f_name"];
        $l_name = $_REQUEST["l_name"];
        $dept_name = $_REQUEST["dept_name"];
        $email = $_REQUEST["email"];
?>

<table>		
		<tr>
<td><?php       echo '<b>'.strtoupper($f_name)." ".strtoupper($l_name).'</b> <br />';?> </td>    
<td> <center><?php  echo strtoupper($dept_name).'<br />'; ?></center></td>
<td> <center>     <?php echo $email.'<br />'; ?> </center></td>
<td class="tbl_btn"> <center>    <button class="edit">Edit</button> <button class="edit">Delete</button> </center></td>


</tr>    
 </table>

<?php     
      }

      $result->free();
    }


?>

<br></br>
<br></br>
<br></br>
<a href="update_student.php"><button>Go Back</button></a>
</body>
</html>
