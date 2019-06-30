<?php 
 include("../phpler/config.php");
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
														$mail->AddAddress("yusufkaan142@gmail.com"); 
														$mail->Subject = "Spin Wheel Onay."; 
														$bodym='<div style="margin-bottom:20px;background-color:#fff;border:1px solid #d6e9c6;border-radius:4px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,0.05);box-shadow:0 1px 1px rgba(0,0,0,0.05); " >
 	<div style="color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6;padding:10px 15px;border-bottom:1px solid transparent;border-top-right-radius:3px;border-top-left-radius:3px">Spin Wheel Ekibi</div>
  	<div style="padding: 15px;">
		<h4 style="font-size:18px;font-family:inherit;font-weight:500;line-height:1.1;color:inherit"><center>Merhaba  <b></b></center><br>
			<br>Spin Wheel\'e Kayıt Olduğunuz İçin Teşekkür Ederiz.Siteye Giriş Yapabilmek İçin Lütfen Hesabınızı Doğrulayınız.<br><br>
			<center> <a href="http://spinwheel.cf/index.php?m=onay&kod=" style="display:inline-block;margin-bottom:0;font-weight:400;text-align:center;text-decoration:none!important;vertical-align:middle;cursor:pointer;background-image:none;border:1px solid transparent;white-space:nowrap;padding:7px 20px;font-size:14px;line-height:1.42857143;border-radius:4px;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;color:#fff!important;background-color:#5bc0de!important;border-color:#46b8da!important" target="_blank"  rel="external">Onayla</a><center>
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
													
												
							?>
							