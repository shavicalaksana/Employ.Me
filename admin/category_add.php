<?php
include('connection/db.php');

$category = $_POST['category'];
$description = $_POST['description'];


$query = mysqli_query($conn, "insert into job_category(category,des)values('$category','$description')");

// var_dump($query);
if ($query) {
  echo "Data has been successfully Inserted !";
} else {
  echo "Some error please try again !!";
}
