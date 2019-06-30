<?php 
	session_start();
	ob_start();
	error_reporting(0);
	date_default_timezone_set('Europe/Istanbul');
	// host , user , password , database
	$con=mysqli_connect("localhost","root","ykk","cark");
	$ch=mysqli_query($con,"SET NAMES utf8");
	define("ayar","var");
	// kod oluştur
	function rasgeleSifre($uzunluk)
	{
	 $sifre ="C"; 
	 for($i=0;$i<$uzunluk;$i++)
	 {
	   switch(rand(1,3))
	   {
		 case 1: $sifre.=chr(rand(48,57));  break; //0-9
		 case 2: $sifre.=chr(rand(65,90));  break; //A-Z
		 case 3: $sifre.=chr(rand(97,122)); break; //a-z
	   }
	 }
	 return $sifre;
	}
	function veriTemizle($mVar){
		if(is_array($mVar)){
			foreach($mVar as $gVal => $gVar){
				if(!is_array($gVar)){
						$mVar[$gVal] = htmlspecialchars(strip_tags(urldecode(addslashes(stripslashes(stripslashes(trim(htmlspecialchars_decode($gVar))))))));  
				}else{
						$mVar[$gVal] = veriTemizle($gVar);
				}
			}
		}else{
			$mVar = htmlspecialchars(strip_tags(urldecode(addslashes(stripslashes(stripslashes(trim(htmlspecialchars_decode($mVar))))))));
		}
		return $mVar;
	
	
	}
	// yönlendirme fonksiyonu
	function go($url,$zaman = 0){
		if($zaman != 0){
			header("Refresh: $zaman; url=$url");
		}else{
			header("Location: $url");
		}
	}
	define("ROOT","/home/spinwheel/public_html");
?>