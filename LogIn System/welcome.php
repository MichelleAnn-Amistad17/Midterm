<?php
include_once 'config.php';

session_start();
//Logout log
$username = $_SESSION['username'];
if ($_SERVER["REQUEST_METHOD"] == "POST"){
  
  mysqli_query($link,"INSERT INTO activity_log (activity,username) VALUES('Logged out','$username')");
    

    
  header('location: login1.php');
}

?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Numans');
body {
  background-image: url("bg4.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  height: 100%;
  font-family: 'Numans', sans-serif;
  padding-top: 20px;
  padding-bottom: 20px;
}

h1 {
  color: black;
  text-shadow: 2px 0 0 #fff, -2px 0 0 #fff, 0 2px 0 #fff, 0 -2px 0 #fff, 1px 1px #fff, -1px -1px 0 #fff, 1px -1px 0 #fff, -1px 1px 0 #fff;
}

.topleft {
  position: absolute;
  top: 0;
  left: 16px;
}

.bottomleft {
  position: absolute;
  bottom: 0;
  left: 16px;
}

.middle {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

hr {
  margin: auto;
  width: 40%;
}
</style>
</head>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
<body>
  <div class="topleft">
    
  </div>
  <div class="middle">
    <strong><h1>WELCOME TO MY SHOP  <br> <?php echo $username ?></h1></strong>
    <hr>
    <p>Thanks for logging in</p>
   <button type="submit" name="submit" id="submit" class="btn btn-danger">Logout</button>
  </div>
</form>
</body>
</html>
