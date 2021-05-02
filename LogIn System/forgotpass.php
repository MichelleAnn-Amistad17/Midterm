<?php
// Include config file
include_once "config.php";

// Define variables and initialize with empty values
$username = $password = $confirm_password =  "";
$username_err = $password_err = $confirm_password_err =  "";
// Processing form data when form is submitted

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  // Validate username
  if (empty(trim($_POST['uname']))) {
    $username_err = "Please enter a username.";
  } else {
    // Prepare a select statement
    $sql = "SELECT username FROM users WHERE username = ?";

    if ($stmt = mysqli_prepare($link, $sql)) {
      // Bind variables to the prepared statement as parameters
      mysqli_stmt_bind_param($stmt, "s", $param_username);

      // Set parameters
      $param_username = trim($_POST['uname']);

      // Attempt to execute the prepared statement
      if (mysqli_stmt_execute($stmt)) {
        /* store result */
        mysqli_stmt_store_result($stmt);

        if (mysqli_stmt_num_rows($stmt) == 1) {
          $username = trim($_POST['uname']);
        } else {
          $username_err = "There is no account with that username";
        }
      } else {
        echo "Oops! Something went wrong. Please try again later.";
      }

      // Close statement
      mysqli_stmt_close($stmt);
    }
  }

  // Validate password
  $password = $_POST['psw'];
  $uppercase = preg_match('@[A-Z]@', $password);
  $lowercase = preg_match('@[a-z]@', $password);
  $number    = preg_match('@[0-9]@', $password);
  $specialChars = preg_match('@[^\w]@', $password);
  if (empty($password)) {
    $password_err = "Please enter a password.";
  } elseif (strlen(trim($_POST['psw'])) < 8) {
    $password_err = "Password must have atleast 8 characters.";
  } elseif (!$uppercase) {
    $password_err = "Password should contain 1 upper case.";
  } elseif (!$lowercase) {
    $password_err = "Password should contain 1 lower case.";
  } elseif (!$number) {
    $password_err = "Password should contain 1 number.";
  } elseif (!$specialChars) {
    $password_err = "Password should contain 1 special character.";
  } else {
    $password = trim($_POST['psw']);
  }

  // Validate confirm password
  if (empty(trim($_POST['psw-repeat']))) {
    $confirm_password_err = "Please enter confirm password.";
  } else {
    $confirm_password = trim($_POST['psw-repeat']);
    if (empty($password_err) && ($password != $confirm_password)) {
      $confirm_password_err = "Password did not match.";
    }
  }


  // Check input errors before inserting in database
  if (empty($username_err) && empty($password_err) && empty($confirm_password_err)) {

    // Prepare an update statement
    $sql = "UPDATE users SET password = ? WHERE username = ?";
    
    if ($stmt = mysqli_prepare($link, $sql)) {
      // Bind variables to the prepared statement as parameters
      mysqli_stmt_bind_param($stmt, "ss", $param_password, $param_username);

      // Set parameters
      $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash
      $param_username = $username;

      // Attempt to execute the prepared statement
      if (mysqli_stmt_execute($stmt)) {
        
        // prepare and bind
         $stmt1 = $link->prepare("INSERT INTO activity_log (activity, username) VALUES (?, ?)");
         $stmt1->bind_param("ss", $activity, $username);

        // // set parameters and execute
         $activity = "Reset a Password";
         $username = $username;
        
         $stmt1->execute();
         $stmt1->close();

        // Redirect to login page
        header("location: login1.php");
      } else {
        echo "Something went wrong. Please try again later.";
      }

      // Close statement
      mysqli_stmt_close($stmt);
    }
  }

  // Close connection
  mysqli_close($link);
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <style>
    body {
      font-family: Georgia, Serif;
      background-image: url("bg.jpg");
    }
  .container{
      height: 500px;
      width: 460px; 
      background-color: #DDE6E1;
      padding: 30px;
      margin-top: 50px;
      margin-left: auto;
      margin-right: auto; 
    }
    

    input {
      height: 10px;
      width: 90%;
      padding: 12px 20px;
      margin: 8px 0;
      margin-bottom: 30px;
      font-size: 16px;
    }


    a {
      color: dodgerblue;
    }

    .pswcontainer {
      padding: 16px;
      background-color: #f7eb7e;
    }

    

    .resetbtn {
      background-color: #1B5254;
      color: white;
      padding: 16px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 30%;
      margin-left: 165px;
      margin-right: 165px;
      border-radius: 50px;
    }

    .resetbtn:hover {
      background-color: #575757;
    }



    .signin {
      background-color: #f1f1f1;
      text-align: center;
      width: 453px;
      height: 100px;
    }

  </style>
</head>

<body>

  <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <div class="container">
      <h2>Reset Password</h2>
      <p>Reset your password</p>
      <hr>
      <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
        <label for="uname"><b>Username</b></label>
        <input type="text" name="uname" id="uname" class="form-control" value="<?php echo $username; ?>">
        <span class="help-block">
          <?php echo $username_err; ?>
        </span>
      </div>

      <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
        <label for="psw"><b>New Password</b></label>
        <input type="password" name="psw" id="psw" class="form-control" value="<?php echo $password; ?>">
        <span class="help-block"><?php echo $password_err; ?></span>
      </div>

      <div class="form-group <?php echo (!empty($confirm_password_err)) ? 'has-error' : ''; ?>">
        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" name="psw-repeat" id="psw-repeat" class="form-control" value="<?php echo $confirm_password; ?>">
        <span class="help-block"><?php echo $confirm_password_err; ?>

        </span>
      </div>
      <button type="submit" name="submit" class="resetbtn">Reset Password</button>
      <p>Already have an account? <a href="login1.php">Sign in</a></p>
    </div>
  </form>

</body>

</html>