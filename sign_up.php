<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="img/logo.png" />

  <title>Sign Up Page</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

  <!-- Bootstrap core CSS -->
  <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/signin.css" rel="stylesheet">
</head>

<body class="text-center">
  <form class="form-signin" action="sign_up.php" method="POST">
    <img class="mb-4" src="img/logo.png" alt="" width="102" height="102">
    <h1 class="h3 mb-3 font-weight-normal">Please Sign Up</h1>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required autofocus>

    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>

    <label for="inputEmail" class="sr-only">First Name</label>
    <input type="first_name" id="first_name" class="form-control" name="first_name" placeholder="Enter Your First Name" required autofocus>

    <label for="inputEmail" class="sr-only">Last Name</label>
    <input type="last_name" id="last_name" class="form-control" name="last_name" placeholder="Enter Your Last Name" required autofocus>

    <label for="inputEmail" class="sr-only">Mobile Number</label>
    <input type="number" id="mobile_number" class="form-control" name="mobile_number" placeholder="Enter Your Mobile Number" required autofocus>

    <label for="inputEmail" class="sr-only">Date of Birth</label>
    <input type="date" id="dob" class="form-control" name="dob" placeholder="Enter Your Date of Birth" required autofocus>

    <input type="submit" class="btn btn-lg btn-primary btn-block" name="submit" value="Sign Up">
    <a href="job-post.php">Already Account</a>
    <p class="mt-5 mb-3 text-muted">&copy; 2020-2021</p>
  </form>
</body>

</html>

<?php
include('connection/db.php');
if (isset($_POST['submit'])) {
  $email = $_POST['email'];
  $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
  $first_name = $_POST['first_name'];
  $last_name = $_POST['last_name'];
  $dob = $_POST['dob'];
  $mobile_number = $_POST['mobile_number'];
  $query = mysqli_query($conn, "insert into jobseeker(email,password,first_name,last_name,dob,mobile_number)values('$email','$password','$first_name','$last_name','$dob','$mobile_number')");
  var_dump($query);
  if ($query) {
    echo "<script>alert('Now You Can Login')</script>";
    header('location:job-post.php');
  } else {
    echo "<script>alert('Some Error Please Try Again!')</script>";
  }
}



?>