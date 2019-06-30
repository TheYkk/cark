<?php if($_SESSION['gir']=="true"){
	 echo'<p class="text-danger">Zaten Oturum Açık</p>';
}else{?>
<body class="app flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card-group mb-0">
                    <div class="card p-2">
                        <div class="card-block">
                            <h1>Giriş Yap</h1>
                            <p class="text-muted">Hesabına Giriş Yap!</p>
							<?php 
								 if(isset($_POST["name"]) && isset($_POST["pass"])){
									 $kadi=$_POST["name"];
									 $pass=$_POST["pass"];
									 if(empty($kadi) || empty($pass)){
										 echo'<p class="text-danger">Lütfen Bütün Alanları Doldurun!</p>';
									 }else{
										 //İşlem
										 $bak=mysqli_query($con,"select * from users where kadi='$kadi'");
											$sa=mysqli_num_rows($bak);
											$bb=mysqli_fetch_assoc($bak);
										if($sa > 0){
											$id=$bb["id"];
											$kadi=$bb["kadi"];
											$durum=$bb["durum"];
											$em=$bb["email"];
											$sf=$bb["ksifre"];
											if($pass==$sf){
												if($durum=="1"){
													echo'<p class="text-success">Başarılı Bir Şekilde Giriş Yapıldı.</p>';
													$_SESSION['kadi'] = $kadi;
													$_SESSION['id']   = $id;
													$_SESSION['gir']  = "true";
													$_SESSION["email"]=$em;
													go("index.php",1);
												}else{
													echo '<p class="text-warning">Aktivasyon Gereklidir.E-postanızı kontrol ediniz.';
												}
											}else{
												echo '<p class="text-danger">Şifre Hatalı!</p>';
											}
										 }else{
											 echo '<p class="text-danger">Kullanıcı Adı Hatalı ve ya Böyle Bir Hesap Yok!</p>';
										 }
									 }
								 }
							?>
							<form action="" method="post">
								<div class="input-group mb-1">
									<span class="input-group-addon"><i class="icon-user"></i>
									</span>
									<input type="text" name="name" class="form-control" placeholder="Kullanıcı Adı">
								</div>
								<div class="input-group mb-2">
									<span class="input-group-addon"><i class="icon-lock"></i>
									</span>
									<input type="password" name="pass" class="form-control" placeholder="Şifre">
								</div>
								<div class="row">
									<div class="col-6">
										<button type="submit" class="btn btn-primary px-2">Giriş Yap!</button>
									</div>
									<div class="col-6 text-right">
										<button type="button" class="btn btn-link px-0">Şifrenimi Unuttun?</button>
									</div>
								</div>
							</form>
                        </div>
                    </div>
                    <div class="card card-inverse card-primary py-3 " style="width:44%">
                        <div class="card-block text-center">
                            <div>
                                <h2>Kayıt Ol</h2>
                                <p>Çark Çevirerek Oyun Kazanmak İstiyosan Kayıt Ol.</p>
                                <a href="index.php?m=kayit"><button  class="btn btn-primary active mt-1">Kayıt Ol</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div><?php }?>