<?php 
if (!defined('ayar')) {
    die('lamer attack!');
}
if($_SESSION['gir']!="true"){
	 echo'<p class="text-danger">Lütfen Oturum Açın!</p>';
}else{
	session_destroy();
	go("index.php",1);
?>
<div id="ui-view">
	<div class="animated fadeIn">
		<div class="col-sm-12 ">
			<p class="text-succes" >Başarılı Bir Şekilde Çıkış Yapıldı!</p>
		</div>
	</div>
</div>
<?php } ?>