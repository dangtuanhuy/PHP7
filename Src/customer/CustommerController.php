<?php


function Register( $username, $password, $fullname, $birthday, $sex, $phone, $email, $address ) {
	$conn = mysqli_connect('localhost','root','','watch') or die("Không thể kết nối với CSDL:".mysqli_error($conn));

	mysqli_set_charset($conn,'utf8');
	$sqlInsert = "
	INSERT INTO 
	`customer`(`Username`, `Password`, 
	`FullName`, `Birthday`, `Gender`, 
	`Phone`, `Email`, `Address`, 
	`Active`, `RoleId`)
	VALUES 
	('$username','".md5($password)."','$fullname',
	'$birthday','$sex','$phone',
	'$email','$address',1,1)";
	mysqli_query($conn,$sqlInsert);
}
?>