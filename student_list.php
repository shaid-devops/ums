<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Form</title>
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
      <center><h2>Login</h2></Center>
<form action="student_list_in.php" method="post" id=signupForm name=filter>

      <form id="signupForm">
        <div class="form-group">
          <label for="dept_name">Department Name</label>
          <input type="text" id="email" name="dept_name"/>
        </div>

	<button type="submit" name=filter>Search</button>
<br></br>	
	<button type="submit" formaction="./get_all.php">All Students</button>	
  </body>
</html>
