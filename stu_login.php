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
<form action="stu_login_valid.php" method="post" id=signupForm>

      <form id="signupForm">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="passwd" required />
	</div>

	<button type="submit">Login</button>	
	
  </body>
</html>
