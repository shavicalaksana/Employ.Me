<?php
include('connection/db.php');

$company = $_POST['company'];
$description = $_POST['description'];
$admin = $_POST['admin'];


$query = mysqli_query($conn, "insert into company(company,des,admin)values('$company','$description','$admin')");

// var_dump($query);
if ($query) {
  echo "Data has been successfully Inserted !";
} else {
  echo "Some error please try again !!";
}
