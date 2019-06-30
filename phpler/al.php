<?php 
require("config.php");

$id=$_SESSION["id"];
$kullanıcı = mysqli_query($con,"select * from users where id='$id' ");
$bilgiler= mysqli_fetch_assoc($kullanıcı);
$puan=$bilgiler["puan"];

if(isset($_POST["oid"])){

	 $oid=veriTemizle($_POST["oid"]);
	$g=mysqli_query($con,"select * from o_data where id=$oid ");
	$bb=mysqli_fetch_assoc($g);
	$np=$bb["puan"];
	if($puan > $np){
		echo '<i class="fa fa-check" aria-hidden="true" style="font-size: 108px;"></i> <br>';
		echo '<h4 class="text-success">Satın alma başarılı!</h4>';
		echo '<button onclick="kapa();" class="btn btn-danger btn-lg mx-h">Tamam</button>';
		$eksi=mysqli_query($con,"update users set puan=puan-$np where id='$id'");
		$ekle=mysqli_query($con,"insert into alici set alanid='$id',oyunid='$oid' ");
	}else{
		echo '<i class="fa fa-exclamation-triangle" style="font-size: 108px;"></i> <br>';
		echo '<h4 class="text-warning">Yeterli Puanınız Yok!</h4>';
		echo '<button onclick="kapa();" class="btn btn-danger btn-lg mx-h">Tamam</button>';
	}
}


?>

