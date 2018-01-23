<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Đăng Ký</title>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="../../Layout/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="../../Library/PHP/VietnamesDate.js"></script>
	<script type="text/javascript" src="../../Library/PHP/ckeditor/ckeditor.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.btnNut
{
	width: 120px;
}
</style>

<body>
	<?php 
	include_once("../../Library/connect.php");
	include_once("CustommerController.php");
	$username ="";
	$password = "";
	$fullname = "";
	$birthday = date_default_timezone_set('Asia/Ho_Chi_Minh');
	$sex ="";
	$phone = "";
	$email = "";
	$address = "";
	if(isset($_POST["btnSummit"]))
	{
		$username =$_POST["txtUser"];
		$password = $_POST["txtPassword"];
		$fullname = $_POST["txtName"];
		$birthday = date('Y-m-d',strtotime($_POST['txtBirthday']));
		if(isset($_POST['optradio'])) {
			$sex= $_POST['optradio'];
		}

		$phone = $_POST["txtPhone"];
		$email = $_POST["txtEmail"];
		$address = $_POST["txtAddress"];
	}
	Register( $username, $password, $fullname, $birthday, $sex, $phone, $email, $address );
	?>
	<div class="container">
		<h1 class="well">Đăng Ký Thành Viên</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<form class="form-horizontal" method="post" id="frmForm">
					<div class="col-sm-12">
						<div class="form-group">
							<label for="txtUser" class="control-label">Tên Đăng Nhập:</label>
							<input type="text" placeholder="Dang Tuan Huy" class="form-control" name=" txtUser" id="txtUser">

						</div>
						<div class="form-group">
							<label for="txtPassword" class="control-label">Mật Khẩu:</label>
							<input type="password" placeholder="Enter your Pass" name="txtPassword" id="txtPassword" class="form-control">
						</div>
						<div class="form-group">
							<label for="txtFullname" class="control-label">Tên đầy đủ:</label>
							<input type="text" placeholder="Enter your Pass" name="txtName" id="txtName" class="form-control">
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label class="control-label" for="txtPhone">Số điện thoại:</label>
								<input type="tel" placeholder="Enter Your Names.." class="form-control" name="txtPhone" id="txtPhone">
							</div>
							<div class="col-sm-6 form-group">
								<label class="control-label" for="txtEmail">Email:</label>
								<input type="email" placeholder="Enter email Here.." class="form-control" id="txtEmail" name="txtEmail">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="txtAddress">Địa chỉ:</label>
							<textarea class="form-control" id="txtAddress" name="txtAddress" placeholder="Enter your Address"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label class="control-label" for="txtBirthday">Sinh Nhật:</label>
								<input type="text" placeholder="Enter your birthday" class="form-control" name="txtBirthday" id="txtBirthday">
							</div>
							<div class="col-sm-6 form-group">
								<label class="control-label" for="optradio">Giới tính:

								</label>
							</br>
							<label class="radio-inline">
								<input type="radio" name="optradio" id="male" <?php if(isset($sex)&&$sex=="0") { echo "checked";} ?>  value="0">Nam
							</label>
							
							<label class="radio-inline">
								<input type="radio" name="optradio" id="female" <?php if(isset($sex)&&$sex=="1") { echo "checked";} ?> value="1" >Nữ
							</label>
							
						</div>

					</div>


					<div class="form-group">
						

						<input type="submit" name="btnSummit" id="btnSummit" class="btn btn-warning btnNut" value="Đăng Ký" >
						<input type="reset" name="btnReset" id="btnReset" class="btn btn-info btnNut" value="Nhập lại" >
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<script>
	$(document).ready(function(){ 
		CKEDITOR.replace( 'txtAddress', 
		{ 

			language: 'vi', 

			resize_enabled: false, 
			toolbar : 
			[ 
			{ name: 'document', items : [ 'Source','-','Save','NewPage','DocProps','Preview','Print','-','Templates' ] }, 
			{ name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] }, 
			{ name: 'editing', items : [ 'Find','Replace','-','SelectAll','-','SpellChecker', 'Scayt' ] }, 
			{ name: 'forms', items : [ 'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 
			'Button', 'ImageButton',  
			'HiddenField' ] }, 
			'/', 
			{ name: 'basicstyles', items : 
			[ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] }, 
			{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv', 
			'-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] }, 
			{ name: 'links', items : [ 'Link','Unlink','Anchor' ] }, 
			{ name: 'insert', items : 
			[ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak','Iframe' ] }, 
			'/', 
			{ name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] }, 
			{ name: 'colors', items : [ 'TextColor','BGColor' ] }, 
			{ name: 'tools', items : [ 'Maximize', 'ShowBlocks','-','About' ] } 
			] 
		}); 
	}); 
</script>
<script type="text/javascript">
	jQuery(function($){
		$.datepicker.regional['vi'] = {
			closeText: 'Đóng',
			prevText: '&#x3c;Trước',
			nextText: 'Tiếp&#x3e;',
			currentText: 'Hôm nay',
			monthNames: ['Tháng Một', 'Tháng Hai', 'Tháng Ba', 'Tháng Tư', 'Tháng Năm', 'Tháng Sáu',
			'Tháng Bảy', 'Tháng Tám', 'Tháng Chín', 'Tháng Mười', 'Tháng Mười Một', 'Tháng Mười Hai'],
			monthNamesShort: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6',
			'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
			dayNames: ['Chủ Nhật', 'Thứ Hai', 'Thứ Ba', 'Thứ Tư', 'Thứ Năm', 'Thứ Sáu', 'Thứ Bảy'],
			dayNamesShort: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
			dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
			weekHeader: 'Tu',
			dateFormat: 'dd/mm/yy',
			firstDay: 0,
			isRTL: false,
			showMonthAfterYear: false,
			yearSuffix: ''};
			$.datepicker.setDefaults($.datepicker.regional['vi']);
		});
	</script>
	<script language="javascript">
		$(document).ready(function() {
			$("#txtBirthday").datepicker({dateFormat: 'yy-mm-dd'});

		});
	</script>
	</html>