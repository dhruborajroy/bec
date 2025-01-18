<?php
if (!defined('SECURE_ACCESS')) {
  die("Direct access not allowed!");
}
$database_host="localhost";
$database_username="root";
$database_password="";
$database_name="school";

$con=mysqli_connect($database_host,$database_username,$database_password,$database_name);
date_default_timezone_set("Asia/Dhaka");
?>