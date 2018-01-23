<?php
$conn = mysqli_connect('localhost','root','','watch') or die("Không thể kết nối với CSDL:".mysqli_error($conn));
//mysqli_character_set_name($conn,'utf8');
mysqli_set_charset($conn,'utf8');
?>