<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Đăng Ký</title>
	<link rel="stylesheet" href="../../Layout/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<?php 
	include("../../Library/connect.php");
	?>
	<div class="container">
		<h1 class="well">lAcO Registration</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<form>
					<div class="col-sm-12">
						<div class="form-group">
							<label>Stage Name</label>
							<input type="text" placeholder="Stage Name..." class="form-control">
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
								<input type="text" placeholder="Enter First Name Here.." class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" placeholder="Enter Last Name Here.." class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label>Email Address</label>
							<input type="text" placeholder="Enter Email Address Here.." class="form-control">
						</div>	                    
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>City</label>
								<input type="text" placeholder="Enter City Name Here.." class="form-control">
							</div>	
							<div class="col-sm-6 form-group">
								<label>Country</label>
								<input type="text" placeholder="Select Country Name Here.." class="form-control">
							</div>						    

						</div>
						
						<div class="form-group">
							<label>Profile Type</label>
							<select class="form-control">
								<option>Dj</option>
								<option>Producer</option>
								<option>Promoter</option>
								<option>Singer</option>
							</select>
						</div>		
						
						<button type="button" class="btn btn-lg btn-info">Submit</button>					
					</div>
				</form> 
			</div>
		</div>
	</div>
</body>
</html>