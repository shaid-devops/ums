<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Library Portal</title>
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

      <center><h3>Library Registration</h3></center>
<br></br>
      <form id="signupForm">
        <div class="form-group">
          <label for="username">Student ID</label>
          <input type="text" id="firstname" name="firstname" required />
        </div>
        <div class="form-group">
          <label for="email">Member's Name</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="form-group">
          <label for="dept_name">Dept Name</label>
          <input type="text" id="password" name="dept name" required />
          </div>
        <div class="form-group">
          <label for="phn_number">Contact Number</label>
          <input
            type="text"
            id="phn_number"
            name="phn_number"
            required
          />
        </div>
        <button type="submit">Submit</button>
      </form>
      <p id="message"></p>
    </div>
  </body>
</html>
