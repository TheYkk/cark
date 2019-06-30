<?php
error_reporting(0);
include("config.php");
$id=$_SESSION["id"];
$kullanıcı = mysqli_query($con,"select * from users where id='$id' ");
$bilgiler= mysqli_fetch_assoc($kullanıcı);
$hak=$bilgiler["hak"];
$yap=0;
if($hak>0){
$yap=1;
$yesil=330;
$pembe=10;
$turkuaz=240;
$turuncu=290;
$mavi=70;
$kirmizi=110;
$mor=150;
$sari=190;
$sayi=rand(0,1000);
$s1=1000;
$s2=590;// 4 %41
$s3=290;// 5 %30
$s4=220;// 2 %7
$s5=160;// 8 %6
$s6=100;// 3 %6
$s7=60;// 6 %4
$s8=20;// 7 %4
$s9=0;// 1 %2
/*
4= 1 puan  %41
5= 1 çevirme hakkı %30
2=10 puan %7
8=1 oyun keyi %6
3=20 puan %6
6=5 çevirme hakkı %4
7=50 puan  %4
1=100puan %2
*/
	if($sayi>$s2&&$sayi<=$s1){//4 %41
		$angle=$yesil;####
		$ver=1;
	}elseif($sayi>=$s3&&$sayi<=$s2){// 5 %30
		$angle=$pembe;####
		$hkck=1;
	}elseif($sayi>=$s4&&$sayi<=$s3){// 2 %7
		$angle=$turkuaz;##
		$ver=10;
	}elseif($sayi>=$s5&&$sayi<=$s4){// 8 %6
		$angle=$turuncu;####
	}elseif($sayi>=$s6&&$sayi<=$s5){// 3 %6
		$angle=$mavi;#####
		$ver=20;
	}elseif($sayi>=$s7&&$sayi<=$s6){// 6 %4
		$angle=$kirmizi;##
		$hkck=5;
	}elseif($sayi>=$s8&&$sayi<=$s7){// 7 %4
		$angle=$mor;######
		$ver=50;
	}elseif($sayi>=$s9&&$sayi<=$s8){// 1 %2
		$angle=$sari;#####
		$ver=100;
	}else{
	$angle=$yesil;#####
	$ver=1;
	}
$ip = $_SERVER['REMOTE_ADDR']; 
$tarih = date('d.m.Y H:i:s');
		$eksi=mysqli_query($con,"update users set hak=hak-1 where id ='$id' ");
		
		$oyun4=mysqli_query($con,"insert into loglar set yapanid='$id',ip='$ip',tarih='$tarih',kzn='oyun oynadı 1 hak eksildi.' ");
		
		
	if($hkck){
		$arti=mysqli_query($con,"update users set hak=hak+'$hkck' where id ='$id' ");
		$oyun1=mysqli_query($con,"insert into loglar set yapanid='$id',ip='$ip',tarih='$tarih', kzn='oyun oynadı $hkck çevirme hakkı kazandı.' ");
	}elseif($ver){
		$vera=mysqli_query($con,"update users set puan=puan+'$ver' where id ='$id' ");
		$oyun2=mysqli_query($con,"insert into loglar set yapanid='$id' ,ip='$ip',tarih='$tarih',kzn='oyun oynadı $ver puan kazandı.' ");
	}else{
		}
	
$kullanıcı = mysqli_query($con,"select * from users where id='$id' ");
$bilgiler= mysqli_fetch_assoc($kullanıcı);
$hak1=$bilgiler["hak"];
$puan2=$bilgiler["puan"];
}
echo json_encode(array('angle' => $angle,'yap' => $yap,'puan' => $puan2,'hak' => $hak1));

?>