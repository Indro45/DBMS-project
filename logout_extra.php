<?php 
session_start();
unset($_SESSION['USER_ID']);
unset($_SESSION['UNSER_NAME']);
header("location:login_extra.php");
die();
?>