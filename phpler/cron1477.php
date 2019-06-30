<?php 
require("config.php");
// 24 hours +1 right all users
mysqli_query($con,"update users set hak=hak+1");

?>
