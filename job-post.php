<?php session_start(); ?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="img/logo.png" />

  <title>Sign In Page</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

  <!-- Bootstrap core CSS -->
  <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/signin.css" rel="stylesheet">
</head>

<body class="text-center">

  <form class="form-signin" action="job-post.php" method="POST">
    <img class="mb-4" src="img/logo.png" alt="" width="102" height="102">
    <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
    <!-- <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div> -->
    <input class="btn btn-lg btn-primary btn-block" type="submit" name="submit" placeholder="Sign In">
    <a href="sign_up.php">Create an Account</a>
    <p class="mt-5 mb-3 text-muted">&copy; 2020-2021</p>
  </form>
</body>

</html>

<?php
include('connection/db.php');



if (isset($_POST['submit'])) {

  $email = $_POST['email'];
  $pass = $_POST['password'];

  $query = mysqli_query($conn, "select * from jobseeker where email='$email'");
  $row = mysqli_fetch_assoc($query);
  echo $row['password'];
  echo "\n" . $pass;
  if (password_verify($_POST['password'], $row['password'])) {

    $_SESSION['email'] = $email;
    header('location:index.php');
  } else {
    echo "<script>alert('Email or password is incorrect, Please try again!')</script>";
  }
}

?>