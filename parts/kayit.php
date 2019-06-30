<?php if($_SESSION['gir']=="true"){
	 echo'<p class="text-danger">Zaten Oturum Açık</p>';
}else{?>
<body class="app flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mx-2">
                    <div class="card-block p-2">
                        <h1>Kayıt Ol</h1>
                        <p class="text-muted">Hesap Oluştur</p>
						<?php 
								 if(isset($_POST["name"]) && isset($_POST["pass"]) && isset($_POST["pass2"]) && isset($_POST["email"]) ){
									 $kadi=veriTemizle($_POST["name"]);
									 $pass=veriTemizle($_POST["pass"]);
									 $pass2=veriTemizle($_POST["pass2"]);
									 $email=veriTemizle($_POST["email"]);
									 $ip = $_SERVER['REMOTE_ADDR'];
									 $tarih=date('d.m.Y H:i:s');
									 $kod=rasgeleSifre(30);
										
									
									 if(empty($kadi) || empty($pass)|| empty($pass2)|| empty($email)){
										 echo'<p class="text-danger">Lütfen Bütün Alanları Doldurun!</p>';
									 }else{
										if($pass!=$pass2){
											  echo'<p class="text-danger">Şifreler Eşleşmiyor.</p>';
										}else{
											$bak=mysqli_query($con,"select * from users where kadi='$kadi' || email='$email' ");
											$sa=mysqli_num_rows($bak);
											if($sa > 0){
												echo '<p class="text-danger">Bu Bilgiler Kullanılıyor!</p>';
											}else{
												$bak=mysqli_query($con,"insert into users set
												kadi='$kadi',
												ksifre='$pass', 
												email='$email', 
												tarih='$tarih', 
												ip='$ip',
												kod='$kod' ");
												if($bak){
														require (ROOT."/phpler/mail/phpm.php");
														$mail = new PHPMailer;
														$mail->isSMTP();
														$mail->SMTPKeepAlive = true;  
														$mail->Mailer = "smtp"; 
														$mail->SMTPDebug = 0; 
														$mail->SMTPAuth = true; 
														$mail->Host = 'mail.spinwheel.cf';
														$mail->Port = 25;
														$mail->Username = 'mail@spinwheel.cf';
														$mail->Password = 'ykkykk18571';
														$mail->SetLanguage("tr", "phpmailer/language");
														$mail->CharSet  ="utf-8";
														$mail->SetFrom("mail@spinwheel.cf", "Spin Wheel");
														$mail->AddAddress($email); 
														$mail->Subject = "Spin Wheel Onay."; 
														$bodym='<<div style="margin-bottom:20px;background-color:#fff;border:1px solid #d6e9c6;border-radius:4px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,0.05);box-shadow:0 1px 1px rgba(0,0,0,0.05); " >
 	<div style="color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6;padding:10px 15px;border-bottom:1px solid transparent;border-top-right-radius:3px;border-top-left-radius:3px">Spin Wheel Ekibi</div>
  	<div style="padding: 15px;">
		<h4 style="font-size:18px;font-family:inherit;font-weight:500;line-height:1.1;color:inherit"><center>Merhaba  <b>'.$kadi.'</b></center><br>
			<br>Spin Wheel\'e Kayıt Olduğunuz İçin Teşekkür Ederiz.Siteye Giriş Yapabilmek İçin Lütfen Hesabınızı Doğrulayınız.<br><br>
			<center> <a href="http://spinwheel.cf/index.php?m=onay&kod='.$kod.'" style="display:inline-block;margin-bottom:0;font-weight:400;text-align:center;text-decoration:none!important;vertical-align:middle;cursor:pointer;background-image:none;border:1px solid transparent;white-space:nowrap;padding:7px 20px;font-size:14px;line-height:1.42857143;border-radius:4px;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;color:#fff!important;background-color:#5bc0de!important;border-color:#46b8da!important" target="_blank"  rel="external">Onayla</a><center>
			<br>
			<center><h5>Spin Wheel Bir <a href="Https://theykk.net" title="TheYkk WebMaster">TheYkk</a> Projesidir</h5></center>
		</h4>
	</div>
</div>';
														$mail->Body = $bodym; 
														$mail->isHTML(true);
														if(!$mail->Send()){
															echo "Email Gönderim Hatasi: ".$mail->ErrorInfo;
														} else {
															echo '<p class="text-success">Email Gonderildi</p>';
														}
													echo'<p class="text-success">Başarılı Bir Şekilde Kayıt Oluşturuldu.</p>';
													go("index.php",1);
												}else{
													echo '<p class="text-danger">HATA!</p>';
												}
											}
										}
									 }
								 }
							?>
						<form action="" method="post">
							<div class="input-group mb-1">
								<span class="input-group-addon"><i class="icon-user"></i>
								</span>
								<input type="text" name="name" required class="form-control" placeholder="Kullanıcı Adı">
							</div>

							<div class="input-group mb-1">
								<span class="input-group-addon">@</span>
								<input type="email" name="email" required  class="form-control" placeholder="Email">
							</div>

							<div class="input-group mb-1">
								<span class="input-group-addon"><i class="icon-lock"></i>
								</span>
								<input type="password" name="pass" required class="form-control" placeholder="Şifre">
							</div>

							<div class="input-group mb-2">
								<span class="input-group-addon"><i class="icon-lock"></i>
								</span>
								<input type="password" name="pass2" required class="form-control" placeholder="Tekrar Şifre">
							</div>

							<button type="submit" class="btn btn-block btn-success">Hesabını Oluştur</button>
						</form>
                    </div>
                    <div class="card-footer p-2">
                        <div class="row">
                            <div class="col-6">
                                <button class="btn btn-block btn-facebook" type="button">
                                    <span>facebook</span>
                                </button>
                            </div>
                            <div class="col-6">
                                <button class="btn btn-block btn-twitter" type="button">
                                    <span>twitter</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><?php }?>