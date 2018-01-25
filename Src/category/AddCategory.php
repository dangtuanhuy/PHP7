	<!DOCTYPE html>
	<html lang="vi">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Add Category</title>
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="../../Layout/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script type="text/javascript" src="../../Library/PHP/VietnamesDate.js"></script>
		<script type="text/javascript" src="../../Library/PHP/ckeditor/ckeditor.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style type="text/css">
		.btnNut
		{
			width: 120px;
		}
	</style>

</head>

<body>
	<?php 
	include_once("../../Library/connect.php");
	$name ="";
	$details = "";
	if(isset($_POST["btnAdd"]))
	{
		$name=$_POST["txtName"];
		$details = $_POST["txtDetails"];
		$sqlinsert = "INSERT INTO `category`(`CategoryName`, `CategoryDetails`) VALUES('$name','$details')";
		mysqli_query($conn,$sqlinsert);
	}
	?>
	<div  class="container">
		
		<form class="form-horizontal" id="frmForm" name="frmForm" method="post">
			<div class="row">
				<h1 class="well">Thêm Loại Đồng Hồ</h1>
				<div class="col-sm-12 well col-md-12">
					<div class="form-group">
						<label for="txtName" class="control-label">Loại đồng hồ:</label>
						<input type="text" placeholder="VD: Đồng hồ dây da" class="form-control" name="txtName" id="txtName" required="true">
					</div>
					<div class="form-group">
						<label for="txtDetails" class="control-label">Mô tả chi tiết:</label>

						<textarea laceholder="Đồng hồ dây da" class="form-control" name="txtDetails" id="txtDetails" required="true"></textarea>
					</div>
					<div class="form-group">
						
						<input type="submit" name="btnAdd" id="btnAdd" class="btn btn-warning btnNut" value="Thêm" >
						<input type="reset" name="btnReset" id="btnReset" class="btn btn-info btnNut" value="Bỏ Qua" >
					</div>
				</div>
			</form>
		</div>
		<script>
			$(document).ready(function(){ 
				CKEDITOR.replace( 'txtDetails', 
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
	</body>
	</html>