<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Signup Form</title>
    <link rel="stylesheet" href="style.css" />
 

  </head>
  <body>
    <div class="container">
<a href='index.php'><img
        class="logo"
        src="https://www.primeuniversity.edu.bd/prime/assets/images/logo-dark.png"
        alt=""
        srcset=""
      /></a>
      <h2>Signup Form</h2>


<form action="stu_reg_in.php" method="post" id=signupForm>

      <form id="signupForm">


	<div class="form-group">
          <label for="username">First Name</label>
          <input type="text" id="firstname" name="f_name" required />
        </div>


	<div class="form-group">
          <label for="username">Last Name</label>
          <input type="text" id="lastname" name="l_name" required />
        </div>

        <div class="form-group">
          <label for="father_name">Fathers Name</label>
          <input type="text" id="father_name" name="father_name" required />
        </div>



        <div class="form-group">
          <label for="mother_name">Mothers Name</label>
          <input type="text" id="dept_name" name="mother_name" required />
        </div>


        <div class="form-group">
          <label for="phone">Phone</label>
          <input type="text" id="phone" name="phone" required />
        </div>




        <div class="form-group">
          <label for="email">Email Address</label>
          <input type="text" id="email" name="email" required />
        </div>


        <div class="form-group">
          <label for="dob">Date of Birth</label>
          <input type="date" id="dob" name="dob" required />
        </div>


        <div class="form-group">
          <label for="blood_group">Blood Group</label>
          <input type="text" id="blood_group" name="blood_group" required />
        </div>


        <div class="form-group">
          <label for="nid">NID/Birth Certificate</label>
          <input type="text" id="nid" name="nid" required />
        </div>


        <div class="form-group">
          <label for="passport">Passport Number</label>
         <input type="text" id="passport" name="passport"/>
        </div>


	<div class="form-group">
		<h4>Present Address</h4>
          <input style="width:142px; margin-right:5px; position:relative;" type="text" placeholder="State Name" id="pre_state" name="pre_state" required />

          <input style="width:142px; margin-left:5px; position:relative;" placeholder="City Name" type="text" id="pre_city" name="pre_city" required />
	</div>

        <div class="form-group">
          <input type="text" placeholder="Road/Street" id="pre_address" name="pre_address" required />
        </div>


        <div class="form-group">
                <h4>Permanent Address</h4>
          <input style="width:142px; margin-right:5px; position:relative;" type="text" placeholder="State Name" id="per_state" name="per_state" required />

          <input style="width:142px; margin-left:5px; position:relative;" placeholder="City Name" type="text" id="per_city" name="per_city" required />
        </div>

        <div class="form-group">
          <input type="text" placeholder="Road/Street" id="per_address" name="per_address" required />
        </div>


        <div class="form-group">
          <label for="dept_name">Departement Name</label>
          <input type="text" id="dept_name" name="dept_name" required />
        </div>



	<div class="form-group">
		<h4>Educational Qualification</h4>
          <label for="edu_qualification">S.S.C</label>
          <input type="text" id="edu_qualification" name="SSC" required />
        </div>



        <div class="form-group">
          <label for="edu_qualification">H.S.C</label>
          <input type="text" id="edu_qualification" name="HSC" required />
        </div>

	<div class="form-group">
	  <label for="password">Password</label>
          <input type="password" id="password" name="passwd" required />

        <button type="submit">Submit</button>
      </form>
      <p id="message"></p>
    </div>


  </body>


</html>
