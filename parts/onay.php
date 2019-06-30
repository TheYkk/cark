<?php 
if (!defined('ayar')) {
    die('lamer attack!');
}
$ok=$_GET["kod"];
$bak=mysqli_query($con,"select * from users where kod='$ok' ");
$son=mysqli_fetch_assoc($bak);
$id=$son["id"];
$kadi=$son["kadi"];
$em=$son["email"];

$deg=mysqli_query($con,"update users set durum='1' where id='$id'");

$_SESSION['kadi'] = $kadi;
$_SESSION['id']   = $id;
$_SESSION['gir']  = "true";
$_SESSION["email"]=$em;
go("index.php",3);
?>
<div id="ui-view">
	<div class="animated fadeIn">
		<div class="row">
		<div class="card">
			<div class="card-block">
				<div class="row">
					<div class="col-sm-12">
						<h4 class="card-title">Merhaba <?php echo $kadi;?> Hesabın Onaylandı!</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>