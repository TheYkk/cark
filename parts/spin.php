<?php 

if (!defined('ayar')) {

    die('lamer attack!');

}
if($_SESSION['gir']!="true"){
	 echo'<p class="text-danger">Lütfen Oturum Açın!</p>';
}else{
$bugun = time();
$gece = mktime(23, 59,59);
$fark = $gece - $bugun;
$dakika = $fark / 60;
$saat = $dakika / 60;
$dakika_farki = floor($dakika - (floor($saat) * 60));
$gun = $saat / 24;
$saat_farki = floor($saat - (floor($gun) * 24));

$id=$_SESSION["id"];
$kullanıcı = mysqli_query($con,"select * from users where id='$id' ");
$bilgiler= mysqli_fetch_assoc($kullanıcı);

$hak=$bilgiler["hak"];
$puan=$bilgiler["puan"];

?>
<div id="ui-view">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-sm-6 col-lg-3">
				<div class="card card-inverse card-primary">
					<div class="card-block pb-0">				
						<h4 class="mb-0 puann"><?php echo $puan;?></h4>
						<p>Puan</p>
					</div>
					<div class="chart-wrapper px-1" style="height:70px;">				
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3">
				<div class="card card-inverse card-primary">
					<div class="card-block pb-0">
						<h4 class="mb-0 hakk"><?php echo $hak;?></h4>
						<p>Çark Çevirme Hakkı</p>
					</div>
					<div class="chart-wrapper px-1" style="height:70px;">						
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-lg-3">
				<div class="card card-inverse card-primary">
					<div class="card-block pb-0">
						<h4 class="mb-0"><?php echo $saat_farki." Saat , ".$dakika_farki." Dakika";?></h4>
						<p>Kalan Süre</p>
					</div>
					<div class="chart-wrapper px-1" style="height:70px;">	
							<?php echo $saat_farki." Saat , ".$dakika_farki." Dakika";?>
							sonra 1 çevirme hakkı gelcektir.
					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-block">
				<div class="row">
					<div class="col-sm-3">
						<h4 class="card-title mb-0">Çarkı Çevir</h4>
					</div>
					<main>
						<div class="towidth">
							<div id="wheel">
								<div class="wheel"></div>
								<div class="arrow"></div>
							</div>
						</div>
					</main>	
				</div>
			</div>
		</div>
	</div>
</div><?php }?>