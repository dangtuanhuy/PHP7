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
		<h1 class="well">Rigister Watch Website</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<form class="#" method="post" id="frmForm">
					<div class="col-sm-12">
						<div class="form-group">
							<label for="txtUser" class="control-label">Username:</label>
							<input type="text" placeholder="Dang Tuan Huy" class="form-control name=" txtUser " id="txtUser " ">

						</div>
						<div class="form-group">
							<label for="txtPassword" class="control-label">Password:</label>
							<input type="password" placeholder="Enter your Pass" name="txtPassword" id="txtPassword" class="form-control">
						</div>
						<div class="form-group">
							<label for="txtFullname" class="control-label">Full name:</label>
							<input type="text" class="form-control name=" txtFullname " id="txtFullname " " placeholder="Enter your Full Name">
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label class="control-label" for="txtPhone">Phone:</label>
								<input type="tel" placeholder="Enter Your Names.." class="form-control" name="txtPhone" id="txtPhone">
							</div>
							<div class="col-sm-6 form-group">
								<label class="control-label" for="txtEmail">Email:</label>
								<input type="email" placeholder="Enter email Here.." class="form-control" id="txtEmail" name="txtEmail">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="txtAddress">Address:</label>
							<textarea class="form-control" id="txtAddress" name="txtAddress" placeholder="Enter your Address"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label class="control-label" for="txtBirthday">Birtday:</label>
								<input type="date" placeholder="Enter your birthday" class="form-control" name="txtBirthday" id="txtBirthday">
							</div>
							<div class="col-sm-6 form-group">
<label class="control-label" for="optradio">Gender:</label>
								</br>
								<label class="radio-inline">
      <input type="radio" name="optradio" id="male">Nam
    </label>
							
								<label class="radio-inline">
      <input type="radio" name="optradio" id="female">Nữ
    </label>
							
							</div>

						</div>



						<button type="button" class="btn btn-lg btn-info">Đăng Ký</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>