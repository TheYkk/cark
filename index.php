<?php
 include("phpler/config.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php
	$m=@$_GET["m"];
	$key="spin,wheel,çark,felek,oyun,ücretsiz,kazanma,çarkı felek";
	$desc="Çarkı felek ücretsiz olarak çark çevirerek oyun kazanma sitesidir.";
	if($m=="spin"){
		$title="Spin";	
	}elseif($m=="gir"){
		$title="Giriş Yap";	
	}elseif($m=="kayit"){
		$title="Kayıt Ol";	
	}elseif($m=="market"){
		$title="Market";	
	}elseif($m=="oyunlar"){
		$title="Oyunlar";	
	}elseif($m=="404"){
		$title="404";	
	}elseif($m=="500"){
		$title="500";	
	}elseif($m=="cik"){
		$title="Çıkış Yap";	
	}elseif($m=="onay"){
		$title="Hesap Onayla";	
	}else{
		$title="Anasayfa";	
	}
	include("parts/head.php");
	?>	
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
    <header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler hidden-lg-up" type="button">&#9776;</button>
        <a class="navbar-brand" href="#"></a>
        <ul class="nav navbar-nav ">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#">&#9776;</a>
            </li>

            
        </ul>
		<?php if($_SESSION["gir"]!="true"){}else{?>
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item ">
                <a class="nav-link" href="#"><i class="icon-bell"></i><span class="badge badge-pill badge-danger">5</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#"><i class="icon-list"></i></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#"><i class="icon-location-pin"></i></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <img src="https://www.gravatar.com/avatar/<?php echo md5(strtolower(trim($_SESSION["email"])));?>" class="img-avatar" alt="admin@bootstrapmaster.com">
                    <span class=""><?php echo $_SESSION["kadi"]; ?></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <div class="dropdown-header text-center">
                        <strong>Account</strong>
                    </div>
                    <div class="dropdown-header text-center">
                        <strong>Settings</strong>
                    </div>
                    <a class="dropdown-item" href="#"><i class="fa fa-user"></i> Profile</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-wrench"></i> Settings</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-usd"></i> Payments<span class="badge badge-default">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-file"></i> Projects<span class="badge badge-primary">42</span></a>
                    <div class="divider"></div>
                    <a class="dropdown-item" href="#"><i class="fa fa-shield"></i> Lock Account</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-lock"></i> Logout</a>
                </div>
            </li>
        </ul>
		<?php }?>
    </header>
    <div class="app-body">
        <div class="sidebar">
            <nav class="sidebar-nav">
				<ul class="nav">
				<?php if($_SESSION['gir']!="true"){ ?>
					<li class="nav-item">
                        <a class="nav-link" href="index.php"><i class="icon-speedometer"></i> Anasayfa </a>
                    </li>
                    <li class="nav-title">İşlemler</li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link" href="index.php?m=gir"><i class="icon-puzzle"></i>Giriş Yap</a>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link" href="index.php?m=kayit"><i class="icon-star"></i> Kayıt OL</a>
                    </li>
                    <li class="divider"></li>     
				<?php } else { ?>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php"><i class="icon-speedometer"></i> Anasayfa </a>
                        <a class="nav-link" href="index.php?m=spin"><i class="icon-speedometer"></i> Çark Çevir </a>
                    </li>
                    <li class="nav-title">İşlemler</li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?m=oyunlar"><i class="icon-calculator"></i> Oyunlar <span class="badge badge-info">NEW</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?m=market"><i class="icon-pie-chart"></i> Market</a>
                    </li>
					<li class="nav-item">
                        <a class="nav-link" href="index.php?m=cik"><i class="fa fa-lock"></i>Çıkış Yap</a>
                    </li>
                    <li class="divider"></li>      
					<?php } ?>
                </ul>
					
            </nav>
        </div>
        <main class="main">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Spin Wheel</li>
               <?php 
				if($m=="spin"){
					echo'<li class="breadcrumb-item active">Çark Döndür</li>';    
				}elseif($m=="gir"){
					 echo'<li class="breadcrumb-item active">Giriş</li>';          
				}elseif($m=="kayit"){
					 echo'<li class="breadcrumb-item active">Kayıt</li>';          
				}elseif($m=="market"){
					 echo'<li class="breadcrumb-item active">Market</li>';          
				}elseif($m=="oyunlar"){
					 echo'<li class="breadcrumb-item active">Oyunlar</li>';          
				}elseif($m=="404"){
					 echo'<li class="breadcrumb-item active">404</li>';          
				}elseif($m=="500"){
					echo'<li class="breadcrumb-item active">500</li>';          
				}elseif($m=="cik"){
					 echo'<li class="breadcrumb-item active">Çıkış</li>';          
				}elseif($m=="onay"){
					 echo'<li class="breadcrumb-item active">Onay</li>';          
				}else{			       
				
				}
				?>
			</ol>
            <div class="container-fluid">
                <?php 
				if($m=="spin"){
					include("parts/spin.php");
				}elseif($m=="gir"){
					include("parts/gir.php");
				}elseif($m=="kayit"){
					include("parts/kayit.php");
				}elseif($m=="market"){
					include("parts/market.php");
				}elseif($m=="oyunlar"){
					include("parts/oyunlar.php");
				}elseif($m=="404"){
					include("parts/404.php");
				}elseif($m=="500"){
					include("parts/500.php");
				}elseif($m=="cik"){
					include("parts/cik.php");
				}elseif($m=="onay"){
					include("parts/onay.php");
				}else{			
					include("parts/ana.php");
				}
				?>
			</div>
        </main>
    </div>
    <footer class="app-footer">
        <a href="https://theykk.net" title="TheYkk" target="_Blank">TheYkk</a> &copy; 2017 TheYkk.
        <span class="float-right">Thema by <a href="https://coreui.io">CoreUI</a>
        </span>
    </footer>
</body>
</html>