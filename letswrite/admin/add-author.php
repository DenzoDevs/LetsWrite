<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{

// Code for Add New Author
if(isset($_POST['submit'])){
$username=$_POST['authorusername'];
$email=$_POST['emailid'];
$password=md5($_POST['pwd']);
$usertype='Author';
$query=mysqli_query($con,"insert into users(UserName,EmailId,Password,userType ) values('$username','$email','$password','$usertype')");
if($query){
echo "<script>alert('Author details added successfully.');</script>";
echo "<script type='text/javascript'> document.location = 'add-author; </script>";
} else {
echo "<script>alert('Something went wrong. Please try again.');</script>";
}
}

?>


<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Lets Write | Add Author</title>

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
        <script src="assets/js/modernizr.min.js"></script>

        <!--Favicon-->
        <link href="data:image/x-icon;base64,AAABAAEAEBAQAAEABAAoAQAAFgAAACgAAAAQAAAAIAAAAAEABAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAACe2tsA9fr6AAAAAAAALmsA9ff6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIiIiIzIiIiIjMzMwAzMzMjERERABERETMSIiEAEiIhMxIiIQASIiEzERQRABERETMSIiEAEiIhMxFEQQASIiEzEiIhABERETMSIiEAEiIhMxFBEQAREREzEiIhABIiITMSIiEAEiIhMxERETMREREyMzMzIjMzMyIiIiIiIiIiL+fwAAgAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIGBAAD//wAA" rel="icon" type="image/x-icon"><body>

<script>
function checkAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'username='+$("#authorusername").val(),
type: "POST",
success:function(data){
$("#user-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

<!-- Top Bar Start -->
 <?php include('includes/topheader.php');?>
<!-- Top Bar End -->


<!-- ========== Left Sidebar Start ========== -->
           <?php include('includes/leftsidebar.php');?>
 <!-- Left Sidebar End -->

            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
							<div class="col-xs-12">
								<div class="page-title-box">
                                    <h4 class="page-title">Add Author</h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <?php if($_SESSION['utype']=='Admin'):?><a>Admin</a><?php endif;?>
                                    <?php if($_SESSION['utype']=='Sadmin'):?><a>Sub Admin</a><?php endif;?>
                                    </li>
                                        <li>
                                            <a href="#">Author </a>
                                        </li>
                                        <li class="active">
                                            Add Author
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
							</div>
						</div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                    <h4 class="m-t-0 header-title"><b>Add Author </b></h4>
                                    <hr />
                        		








                        			<div class="row">
                        				<div class="col-md-6">
<form class="form-horizontal" name="addauthor" method="post">
	    <div class="form-group">
       <label for="exampleInputusername">Username (used for login)</label>
               <input type="text" placeholder="Enter Author Username"  name="authorusername" id="authorusername" class="form-control" pattern="^[a-zA-Z][a-zA-Z0-9-_.]{5,12}$" title="Username must be alphanumeric 6 to 12 chars" onBlur="checkAvailability()"  required>
               <span id="user-availability-status" style="font-size:14px;"></span>
	                                                </div>
	                                           
	                                     
	         <div class="form-group">
	        <label for="emailid">Email Id</label>
	         <input type="email" class="form-control" id="emailid" name="emailid" placeholder="Enter email" required>
	          </div>
    
    <div class="form-group">
     <label for="password">Password</label>
      <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Enter password" required>
</div>

        <div class="form-group">
       <label class="col-md-2 control-label">&nbsp;</label>
        <div class="col-md-10">
    <button type="submit" class="btn btn-custom waves-effect waves-light btn-md" id="submit" name="submit">
       Submit</button>
                                                    </div>
                                                </div>

	                                        </form>
                        				</div>


                        			</div>


                        			




           
                       


                                </div>
                            </div>
                        </div>
                        <!-- end row -->


                    </div> <!-- container -->

                </div> <!-- content -->

<?php include('includes/footer.php');?>

            </div>
        </div>

        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
<?php } ?>