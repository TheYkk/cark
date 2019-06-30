<?php 

if (!defined('ayar')) {

    die('lamer attack!');

}
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
					<div class="col-sm-5">
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
</div>