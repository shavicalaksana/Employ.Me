<?php
include('include/header.php');
include('include/sidebar.php');
?>

<?php
include('connection/db.php');
echo $edit = $_GET['edit'];
$query = mysqli_query($conn, "select * from all_jobs where job_id='$edit'");
// var_dump($query);
while ($row = mysqli_fetch_array($query)) {
  $title = $row['job_title'];
  $desciption = $row['des'];
  $country = $row['country'];
  $state = $row['state'];
  $city = $row['city'];
}
?>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="admin_dashboard.php">Dashboard</a></li>
      <li class="breadcrumb-item"><a href="job_create.php">All Job List</a></li>
      <li class="breadcrumb-item"><a href="#">Edit Job</a></li>
    </ol>
  </nav>
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Job</h1>
    <div class="btn-toolbar mb-2 mb-md-0">
      <div class="btn-group mr-2">

      </div>
      <!-- <a class="btn btn-primary" href="add_customer.php">Add Customer</a> -->
    </div>
  </div>
  <div style="width: 60%; margin-left: 20%; background-color: #F2F4F4;">

    <form action="" method="POST" style="margin: 3%; padding: 3%;" name="job_form" id="job_form">
      <div id="msg"></div>
      <div class="form-group">
        <label for="Customer Email">Job Title</label>
        <input type="text" value="<?php echo $title; ?>" name="job_title" id="job_title" class="form-control" placeholder="Enter Job Title">
      </div>
      <div class="form-group">
        <label for="Customer Username">Description</label>
        <textarea name="description" id="description" class="form-control" cols="30" rows="10"><?php echo $desciption; ?></textarea>
      </div>
      <input type="hidden" name="id" id="id" value="<?php echo $_GET['edit']; ?>">
      <div class="form-group">
        <label for="">Country</label>
        <select name="country" class="countries form-control" value="<?php echo $country; ?>" id="countryId">
          <option value="">Select Country</option>
        </select>
      </div>

      <div class="form-group">
        <label for="">State</label>
        <select name="state" class="states form-control" value="<?php echo $state; ?>" id="stateId">
          <option value="">Select State</option>
        </select>
      </div>

      <div class="form-group">
        <label for="">City</label>
        <select name="city" class="cities form-control" value="<?php echo $city; ?>" id="cityId">
          <option value="">Select City</option>
        </select>
      </div>

      <div class="form-group">

        <input type="submit" class="btn btn-block btn-success" placeholder="Save" name="submit" id="submit">
      </div>

    </form>

  </div>

  <canvas class="my-4" id="myChart" width="900" height="380"></canvas>

  <div class="table-responsive">

  </div>
</main>
</div>
</div>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>
  window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
  feather.replace()
</script>
<!-- datatables plugin -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

<script>
  $(document).ready(function() {
    $('#example').DataTable();
  });
</script>
<script>
  $(document).ready(function() {
    $("#submit").click(function() {
      var description = $("#description").val();
      var job_title = $("#job_title").val();
      var countryId = $("#countryId").val();
      var stateId = $("#stateId").val();
      var cityId = $("#cityId").val();

      if (job_title == '') {
        alert("Please Job Title !!");
        return false;
      }

      if (description == '') {
        alert("Please Enter Description !!");
        return false;
      }

      if (countryId == '') {
        alert("Please Select Country !!");
        return false;
      }

      if (stateId == '') {
        alert("Please Select State !!");
        return false;
      }

      if (cityId == '') {
        alert("Please Select City !!");
        return false;
      }

      var data = $("#job_form").serialize();


    });
  });
</script>

</body>

</html>

<?php
include('connection/db.php');
if (isset($_POST['submit'])) {
  $id = $_POST['id'];
  $job_title = $_POST['job_title'];
  $description = $_POST['description'];
  $country = $_POST['country'];
  $state = $_POST['state'];
  $city = $_POST['city'];

  $query = mysqli_query($conn, "update all_jobs set job_title='$job_title',des='$description',country='$country',state='$state',city='$city' where job_id='$id'");
  if ($query) {
    echo "<script>alert('Record has been Update successfully!')</script>";
  } else {
    echo "<script>alert('Some error, Please try again!!')</script>";
  }
}

?>