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
      <img
        class="logo"
        src="https://www.primeuniversity.edu.bd/prime/assets/images/logo-dark.png"
        alt=""
        srcset=""
      />
      <h2>Signup Form</h2>
      <form id="signupForm">
        <div class="form-group">
          <label for="username">First Name</label>
          <input type="text" id="firstname" name="firstname" required />
        </div>
        <div class="form-group">
          <label for="username">Last Name</label>
          <input type="text" id="lastname" name="lastname" required />
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" required />
          <div class="password-hint" id="passwordHint">
            Password must be at least 8 characters long, and include at least
            one uppercase letter, one lowercase letter, one number, and one
            special character.
          </div>
          <span id="passwordError" class="error"></span>
          <div class="password-strength" id="passwordStrength"></div>
        </div>
        <div class="form-group">
          <label for="confirmPassword">Confirm Password</label>
          <input
            type="password"
            id="confirmPassword"
            name="confirmPassword"
            required
          />
          <span id="confirmPasswordError" class="error"></span>
        </div>
        <button type="submit">Signup</button>
      </form>
      <p id="message"></p>
    </div>
  </body>
</html>
