<?php 
if (!defined('ayar')) {die('lamer attack!');}
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
<style type="text/css">
.onay-splash{position:fixed;z-index:999900;}
.onay-splash{_position:absolute;}
.onay2{top:50%;left:50%;margin-top:-125px;margin-left:-150px;width:300px;height:270px;background-color:#fff;
border:4px solid #444;-moz-box-shadow: 0 0 12px 4px #888;-webkit-box-shadow: 0 0 12px 4px #888;
box-shadow: 0 0 12px 4px #888;-webkit-border-radius: 4px;border-radius: 4px;}
.onay2{_bottom:auto;_top:expression(ie6=(document.documentElement.scrollTop+document.documentElement.clientHeight - 52+"px") );}
#off {display:none;}
#on {display:block;}
</style>
<script>
	var sayi;
	function ac(sayi2){
		$("#off").attr("id","on");
		sayi=sayi2;
	}
	function kapa(){
		$("#on").attr("id","off");
	}
	function al(){
		var post = $.post("phpler/al.php",{oid:sayi});
		post.done(function( data ) {
			$( ".blg" ).empty().append( data );
		  });
	
	}
	
	
</script>
<div>
	<div class="onay-splash onay2" id="off">
		<center>
			<div class="blg">
				<i class="fa fa-question-circle" aria-hidden="true" style="font-size: 108px;"></i> <br>
				<h3>Oyun Alıncak Onaylıyor musunuz?</h3>
				<br>
				<button onclick="al();" class="btn btn-success btn-lg mx-h">Evet</button>
				<button onclick="kapa();" class="btn btn-danger btn-lg mx-h">Hayır</button>
			</div>
		</center>
	</div>
</div>
<div id="ui-view">
	<div class="animated fadeIn">
		<div class="row">
			<div class="col-sm-6 col-lg-4">
				<div class="card card-inverse card-primary">
					<div class="card-block pb-0">				
						<h4 class="mb-0 puann"><?php echo $puan;?></h4>
						<p>Puan</p>
					</div>
					<div class="chart-wrapper px-1" style="height:70px;">				
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-lg-4">
				<div class="card card-inverse card-primary">
					<div class="card-block pb-0">
						<h4 class="mb-0 hakk"><?php echo $hak;?></h4>
						<p>Çark Çevirme Hakkı</p>
					</div>
					<div class="chart-wrapper px-1" style="height:70px;">						
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-lg-4">
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
					<div class="col-sm-12 text-center">
						<div class="row">
						<!--Başla -->
							<div class="col-lg-2  b5px col-sm-6 ">
								<div class="card b5px px33x card-inverse card-primary ">
									<img src="./img/games/BNG37604.png" class="b5px paa-2" alt="Call of Duty?: Infinite Warfare">
									<div class="card-block pb-0 pt-1">
										<span>Call of Duty: Infinite Warfare</span>
										<br>	
										<span class="ccyl">
											<img src="./img/cc.png" class="paa-2" alt="cc">25000		
										</span>
										<br>
										<br>
										<button onclick="ac('1');" class="btn btn-warning mb-h" >Satın Al.</button>
									
									</div>
								</div>
							</div>
							
							<div class="col-lg-2  b5px col-sm-6 ">
								<div class="card b5px px33x card-inverse card-primary ">
									<img src="./img/games/BNG37155.png" class="b5px paa-2" alt="Counter-Strike: Global Offensive">
									<div class="card-block pb-0 pt-1">
										<span>Counter-Strike: Global Offensive</span>
										<br>	
										<span class="ccyl">
											<img src="./img/cc.png" class="paa-2" alt="cc">5000
										</span>
										<br>
										<br>
										<button onclick="ac('2');" class="btn btn-warning mb-h" >Satın Al.</button>
									
									</div>
								</div>
							</div>
							
							<div class="col-lg-2  b5px col-sm-6 ">
								<div class="card b5px px33x card-inverse card-primary ">
									<img src="./img/games/BNG37157.png" class="b5px paa-2" alt="Euro Truck Simulator 2">
									<div class="card-block pb-0 pt-1">
										<span>Euro Truck Simulator 2</span>
										<br>	
										<span class="ccyl">
											<img src="./img/cc.png" class="paa-2" alt="cc">4750
										</span>
										<br>
										<br>
										<button onclick="ac('3');" class="btn btn-warning mb-h" >Satın Al.</button>
									
									</div>
								</div>
							</div>
							
							<div class="col-lg-2  b5px col-sm-6 ">
								<div class="card b5px px33x card-inverse card-primary ">
									<img src="./img/games/BNG37159.png" class="b5px paa-2" alt="Rust">
									<div class="card-block pb-0 pt-1">
										<span>Rust</span>
										<br>	
										<span class="ccyl">
											<img src="./img/cc.png" class="paa-2" alt="cc">4500
										</span>
										<br>
										<br>
										<button onclick="ac('4');" class="btn btn-warning mb-h" >Satın Al.</button>
									
									</div>
								</div>
							</div>
							
							<div class="col-lg-2  b5px col-sm-6 ">
								<div class="card b5px px33x card-inverse card-primary ">
									<img src="./img/games/BNG37160.png" class="b5px paa-2" alt="Rocket League">
									<div class="card-block pb-0 pt-1">
										<span>Rocket League</span>
										<br>	
										<span class="ccyl">
											<img src="./img/cc.png" class="paa-2" alt="cc">3500
										</span>
										<br>
										<br>
										<button onclick="ac('5');" class="btn btn-warning mb-h" >Satın Al.</button>
									
									</div>
								</div>
							</div>
							
							
							
							
						<!--BİTİR -->
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
</div>
<?php } ?>