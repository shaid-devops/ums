<style>table, td {
  border: 1px solid black;
  border-collapse: collapse;

}

td{
  width: 200px;
  height: 50px;
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

$query = "SELECT * FROM stu_reg order by dept_name";
    if($result = $conn->query($query)){
      while($_REQUEST = $result->fetch_assoc()){

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




?>
        <table >
		<tr>
<td><?php       echo '<b>'.strtoupper($f_name)." ".strtoupper($l_name).'</b> <br />';?> </td>
     <td> <center><?php  echo strtoupper($dept_name).'<br />'; ?></center></td>
<td> <center>     <?php echo $father_name.'<br />'; ?> </center></td>
<td> <center>     <?php echo $mother_name.'<br />'; ?> </center></td>
<td> <center>     <?php echo $phone.'<br />'; ?> </center></td>
<td> <center>     <?php echo $email.'<br />'; ?> </center></td>
<td> <center>     <?php echo $dob.'<br />'; ?> </center></td>
<td> <center>     <?php echo strtoupper($blood_group).'<br />'; ?> </center></td>
<td> <center>     <?php echo $nid.'<br />'; ?> </center></td>
<td> <center>     <?php echo $passport.'<br />'; ?> </center></td>
<td> <center>     <?php echo $pre_state.'<br />'; ?> </center></td>
<td> <center>     <?php echo $pre_city.'<br />'; ?> </center></td>
<td> <center>     <?php echo $pre_address.'<br />'; ?> </center></td>
<td> <center>     <?php echo $per_state.'<br />'; ?> </center></td>
<td> <center>     <?php echo $per_city.'<br />'; ?> </center></td>
<td> <center>     <?php echo $dept_name.'<br />'; ?> </center></td>
<td> <center>     <?php echo $per_address.'<br />'; ?> </center></td>
<td> <center>     <?php echo $SSC.'<br />'; ?> </center></td>
<td> <center>     <?php echo $HSC.'<br />'; ?> </center></td>
<td> <center>     <?php echo $passwd.'<br />'; ?> </center></td>
</tr>
     </table>

<?php 
      }

      $result->free();
    }


?>

<a href="./student_list.php"><button>Go Back</button></a>
</body>
</html>
