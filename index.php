<?php
if (version_compare(phpversion(), "5.3.0", ">=")  == 1)
  error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
else
  error_reporting(E_ALL & ~E_NOTICE);  
  ?>
<?php
session_start();
//error_reporting(0);
require_once"konmysqli.php";

$mnu=$_GET["mnu"];
date_default_timezone_set("Asia/Jakarta");


if(!isset($_SESSION["cid"])){	
 die("<script>document.location.href='login.php';</script>");
 }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>BTD UNAS</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS class="animsition"-->
    <link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body >
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/icon/logounas.JPG"/>
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">

        <!-- Copy saja menu di bawahnya u Mobile-->
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="images/icon/logounas.jpg"/>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
					
	
<?php if($_SESSION["cstatus"]=="Administrator"){ echo "
  <li><a href='index.php?mnu=home'><i class='fas fa-home'></i>Home</a></li>
  <li><a href='index.php?mnu=admin'><i class='fas fa-user'></i>Admin</a></li>
  <li><a href='index.php?mnu=matkul'><i class='fas fa-bell'></i>Mata Kuliah</a></li>
  <li><a href='index.php?mnu=dosen'><i class='fas fa-users'></i>Dosen</a></li>
  <li><a href='index.php?mnu=beban_tugas'><i class='fas fa-bell'></i>Beban Tugas</a></li>
  <li><a href='index.php?mnu=logout'><i class='fas fa-power-off'></i>Logout</a></li>

";}
else if($_SESSION["cstatus"]=="DOSEN"){ echo "

  <li><a href='index.php?mnu=home'><i class='fas fa-home'></i>Home</a></li>
  <li><a href='index.php?mnu=profil_dosen'><i class='fas fa-users'></i>Profil Dosen</a></li>
  <li><a href='index.php?mnu=dbeban_tugas'><i class='fas fa-bell'></i>Beban Tugas</a></li>
  <li><a href='index.php?mnu=logout'><i class='fas fa-power-off'></i>Logout</a></li>

";}

else if($_SESSION["cstatus"]=="KAPRODI"){ echo "

  <li><a href='index.php?mnu=home'><i class='fas fa-home'></i>Home</a></li>
  <li><a href='index.php?mnu=profil_dosen'><i class='fas fa-users'></i>Profil Kaprodi</a></li>
  <li><a href='index.php?mnu=dbeban_tugas'><i class='fas fa-bell'></i>Beban Tugas</a></li>
  <li><a href='index.php?mnu=kpbeban_tugas'><i class='fas fa-bell'></i>Beban Tugas Proses</a></li>
  <li><a href='index.php?mnu=logout'><i class='fas fa-power-off'></i>Logout</a></li>

";}

else if($_SESSION["cstatus"]=="DEKAN"){ echo "

  <li><a href='index.php?mnu=home'><i class='fas fa-home'></i>Home</a></li>
  <li><a href='index.php?mnu=profil_dosen'><i class='fas fa-users'></i>Profil Dekan</a></li>
  <li><a href='index.php?mnu=dbeban_tugas'><i class='fas fa-bell'></i>Beban Tugas</a></li>
  <li><a href='index.php?mnu=npbeban_tugas'><i class='fas fa-bell'></i>Proses Beban Tugas</a></li>
  <li><a href='index.php?mnu=logout'><i class='fas fa-power-off'></i>Logout</a></li>

";}

else if($_SESSION["cstatus"]=="WAREK"){ echo "

  <li><a href='index.php?mnu=home'><i class='fas fa-home'></i>Home</a></li>
  <li><a href='index.php?mnu=profil_dosen'><i class='fas fa-users'></i>Profil Warek</a></li>
  <li><a href='index.php?mnu=dbeban_tugas'><i class='fas fa-bell'></i>Beban Tugas</a></li>
  <li><a href='index.php?mnu=wpbeban_tugas'><i class='fas fa-bell'></i>Proses Beban Tugas</a></li>
  <li><a href='index.php?mnu=logout'><i class='fas fa-power-off'></i>Logout</a></li>

";}

else{
  echo"<li><a href='index.php?mnu=home'><i class='fas fa-home'></i>Home</a></li>";
  echo"<li><a href='index.php?mnu=login'><i class='fas fa-power-off'></i>Login</a></li>";	 
}
  ?>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <h1>Beban Tugas Dosen FTKI</h1>
                            </form>
                            <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                        
                                    </div>                                   
                                </div>
                                <div class="account-wrap">
                                    <div class="account-item-menu">
                                       
                                        <div class="content">
                                            <a class="js-acc-btn" href="#"><?php echo $_SESSION["cnama"];  ?> </a>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    
                                    <div class="card-body">
                                       
                                    <?php 
				
										if($mnu=="admin"){require_once"admin/admin.php";}
										else if($mnu=="dosen"){require_once"dosen/dosen.php";}
										else if($mnu=="beban_tugas"){require_once"beban_tugas/beban_tugas.php";}
										else if($mnu=="bkd"){require_once"bkd/bkd.php";}
										else if($mnu=="matkul"){require_once"matkul/matkul.php";}
										
										
										else if($mnu=="profil_dosen"){require_once"dosen/profil_dosen.php";}
										//DOSEN
										else if($mnu=="dbeban_tugas"){require_once"beban_tugas/dbeban_tugas.php";}
										
										//Kaprodi
										else if($mnu=="kbeban_tugas"){require_once"beban_tugas/kbeban_tugas.php";}
										else if($mnu=="kpbeban_tugas"){require_once"beban_tugas/kpbeban_tugas.php";}
										else if($mnu=="kbkd"){require_once"bkd/kbkd.php";}
										
										//dekan
										else if($mnu=="nbeban_tugas"){require_once"beban_tugas/nbeban_tugas.php";}
										else if($mnu=="npbeban_tugas"){require_once"beban_tugas/npbeban_tugas.php";}
										
										//Warek
										else if($mnu=="wbeban_tugas"){require_once"beban_tugas/wbeban_tugas.php";}
										else if($mnu=="wpbeban_tugas"){require_once"beban_tugas/wpbeban_tugas.php";}

										else if($mnu=="login"){require_once"login.php";}
										else if($mnu=="logout"){require_once"logout.php";}

										else {require_once"home.php";}
													
									 ?>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2019 BTD UNAS. All rights reserved.</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
	<?php if($mnu=="" || $mnu=="login" || $mnu=="home"){ ?>
    <script src="vendor/jquery-3.2.1.min.js"></script>
	<?php } ?>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
<?php function RP($rupiah){return number_format($rupiah,"2",",",".");}?>
<?php
function WKT($sekarang){
$tanggal = substr($sekarang,8,2)+0;
$bulan = substr($sekarang,5,2);
$tahun = substr($sekarang,0,4);

$judul_bln=array(1=> "Januari", "Februari", "Maret", "April", "Mei","Juni", "Juli", "Agustus", "September","Oktober", "November", "Desember");
$wk=$tanggal." ".$judul_bln[(int)$bulan]." ".$tahun;
return $wk;
}
?>
<?php
function WKTP($sekarang){
$tanggal = substr($sekarang,8,2)+0;
$bulan = substr($sekarang,5,2);
$tahun = substr($sekarang,2,2);

$judul_bln=array(1=> "Jan", "Feb", "Mar", "Apr", "Mei","Jun", "Jul", "Agu", "Sep","Okt", "Nov", "Des");
$wk=$tanggal." ".$judul_bln[(int)$bulan]."'".$tahun;
return $wk;
}
?>
<?php
function BAL($tanggal){
	$arr=explode(" ",$tanggal);
	if($arr[1]=="Januari"||$arr[1]=="January"){$bul="01";}
	else if($arr[1]=="Februari"||$arr[1]=="February"){$bul="02";}
	else if($arr[1]=="Maret"||$arr[1]=="March"){$bul="03";}
	else if($arr[1]=="April"){$bul="04";}
	else if($arr[1]=="Mei"||$arr[1]=="May"){$bul="05";}
	else if($arr[1]=="Juni"||$arr[1]=="June"){$bul="06";}
	else if($arr[1]=="Juli"||$arr[1]=="July"){$bul="07";}
	else if($arr[1]=="Agustus"||$arr[1]=="August"){$bul="08";}
	else if($arr[1]=="September"){$bul="09";}
	else if($arr[1]=="Oktober"||$arr[1]=="October"){$bul="10";}
	else if($arr[1]=="November"){$bul="11";}
	else if($arr[1]=="Nopember"){$bul="11";}
	else if($arr[1]=="Desember"||$arr[1]=="December"){$bul="12";}
return "$arr[2]-$bul-$arr[0]";	
}
?>	


<?php
function BALP($tanggal){
	$arr=split(" ",$tanggal);
	if($arr[1]=="Jan"){$bul="01";}
	else if($arr[1]=="Feb"){$bul="02";}
	else if($arr[1]=="Mar"){$bul="03";}
	else if($arr[1]=="Apr"){$bul="04";}
	else if($arr[1]=="Mei"){$bul="05";}
	else if($arr[1]=="Jun"){$bul="06";}
	else if($arr[1]=="Jul"){$bul="07";}
	else if($arr[1]=="Agu"){$bul="08";}
	else if($arr[1]=="Sep"){$bul="09";}
	else if($arr[1]=="Okt"){$bul="10";}
	else if($arr[1]=="Nov"){$bul="11";}
	else if($arr[1]=="Nop"){$bul="11";}
	else if($arr[1]=="Des"){$bul="12";}
return "$arr[2]-$bul-$arr[0]";	
}
?>


<?php
function process($conn,$sql){
$s=false;
$conn->autocommit(FALSE);
try {
  $rs = $conn->query($sql);
  if($rs){
	    $conn->commit();
	    $last_inserted_id = $conn->insert_id;
 		$affected_rows = $conn->affected_rows;
  		$s=true;
  }
} 
catch (Exception $e) {
	echo 'fail: ' . $e->getMessage();
  	$conn->rollback();
}
$conn->autocommit(TRUE);
return $s;
}

function getJum($conn,$sql){
  $rs=$conn->query($sql);
  $jum= $rs->num_rows;
	$rs->free();
	return $jum;
}

function getField($conn,$sql){
	$rs=$conn->query($sql);
	$rs->data_seek(0);
	$d= $rs->fetch_assoc();
	$rs->free();
	return $d;
}

function getData($conn,$sql){
	$rs=$conn->query($sql);
	$rs->data_seek(0);
	$arr = $rs->fetch_all(MYSQLI_ASSOC);
	//foreach($arr as $row) {
	//  echo $row['nama_kelas'] . '*<br>';
	//}
	
	$rs->free();
	return $arr;
}

function getDosen($conn,$kode){
$field="nama_dosen";
$sql="SELECT `$field` FROM `tb_dosen` where `nidn`='$kode'";
$rs=$conn->query($sql);	
	$rs->data_seek(0);
	$row = $rs->fetch_assoc();
	$rs->free();
    return $kode." - ".$row[$field];
	}
	
	function getDDD($conn,$kode){
$field="nama_dosen";
$sql="SELECT `$field` FROM `tb_dosen` where `nidn`='$kode'";
$rs=$conn->query($sql);	
	$rs->data_seek(0);
	$row = $rs->fetch_assoc();
	$rs->free();
    return $row[$field];
	}
	
	
function cekChar($str,$cari){
 $str=strtolower($str);
 $cari=strtolower($cari);
 
 $sp=strstr($str,$cari);
 $p=strlen($sp)+0;
 return $p;
}

?>


