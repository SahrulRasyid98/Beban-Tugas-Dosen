<style type="text/css">
.HEADER {
	text-align: center;
}
</style>
 
    <body OnLoad="window.print()" >
<?php

include "konmysqli.php";
session_start();
?>

<?php 
$id_beban_tugas=$_GET["id"];//"BTG1911001";
$sql="select * from `$tbbeban_tugas` where `id_beban_tugas`='$id_beban_tugas'";
	$d=getField($conn,$sql);
				$id_beban_tugas=$d["id_beban_tugas"];
				$id_beban_tugas0=$d["id_beban_tugas"];
				$periode=$d["periode"];
				$tgl=WKT($d["tgl"]);
				$nidn=$d["nidn"];
				$status_warek=$d["status_warek"];
				$status_dekan=$d["status_dekan"];
				$status_kaprodi=$d["status_kaprodi"];
				$status_dosen=$d["status_dosen"];

?>

<?php
	//$nidn=$_SESSION["cid"];
	$sql="select * from `$tbdosen` where `nidn`='$nidn'";
	$d=getField($conn,$sql);
				$nidn0=$d["nidn"];
				$nidn=$d["nidn"];
				$nama_dosen=$d["nama_dosen"];
				$jabatan=$d["jabatan"];
				$jenis_kelamin=$d["jenis_kelamin"];
				$tempat_lahir=$d["tempat_lahir"];
				$tgl_lahir=WKT($d["tgl_lahir"]);
				$email=$d["email"];
				$telpon=$d["telpon"];
				$alamat=$d["alamat"];
				$fakultasx=$d["fakultas"];
				$program_studi=$d["program_studi"];
				$username=$d["username"];
				$password=$d["password"];
				$status=$d["status"];
				$keterangan=$d["keterangan"];
				
				$gambar_ttd=$d["gambar_ttd"];
				
				
	
				
?>

<p>Universitas Nasional </p>
<p>Fakultas/Akademi   : <?php echo $fakultasx; ?></p>
<p>Program Studi : <?php echo $program_studi; ?></p>
<table width="100%" border="0">
  <tr>
    <td height="97"><p class="HEADER">FORMULIR BEBAN TUGAS DOSEN </p>
    <p class="HEADER">BEBAN TUGAS DOSEN  <?php echo strtoupper($status); ?></p>
    <p class="HEADER">SEMESTER <?php echo $periode; ?></p></td>
  </tr>
</table>
<table width="99%" height="252" border="1">
  <tr>
    <td colspan="4">Nama Dosen : <?php echo $nama_dosen; ?></td>
    <td>Pangkat Akademik : <?php echo $jabatan; ?></td>
  </tr>
  <tr>
    <td width="29%" rowspan="2">Bidang Tugas</td>
    <td colspan="2">Waktu</td>
    <td width="26%" rowspan="2"><center>Fakultas Akademik</center></td>
    <td width="16%" rowspan="2">Jumlah SKS</td>
  </tr>
  <tr>
    <td width="14%">Hari </td>
    <td width="15%">Jam</td>
  </tr>
  <tr>
    <td><b>Pendidikan dan Pengajaran :</b></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
 <?php  
 $jb1=0;
  $sql="select * from `$tbbkd` where `id_beban_tugas`='$id_beban_tugas' and `kategori`='Pendidikan dan Pengajaran' order by `id_bkd` desc";
 	$arr=getData($conn,$sql);
		foreach($arr as $d) {							
				$id_bkd=$d["id_bkd"];
				$id_beban_tugas=$d["id_beban_tugas"];
				$kategori=$d["kategori"];
				$bidang_tugas=$d["bidang_tugas"];
				$hari=$d["hari"];
				$jam=$d["jam"];
				$ruang=$d["ruang"];
				$fakultas=$d["fakultas"];
				$sks=$d["sks"];
				$keterangan=$d["keterangan"];
				$jb1+=$sks;
				?>

    <tr>
 
    <td><center><?php echo $bidang_tugas; ?> - <?php echo $ruang; ?></center></td>
    <td><center><?php echo $hari; ?></center></td>
    <td><center><?php echo $jam; ?></center></td>
    <td><center><?php echo $fakultas; ?></center></td>
    <td><center><?php echo $sks; ?></center></td>
    
  </tr>
  <?php } ?>
 
  <!---batas 1----->
  <tr>
    <td colspan="5">&nbsp;</td>
  </tr>
  <tr>
    <td><b>Pendidikan dan Pengabdian Masyarakata:</b></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
 <?php  
 $jb2=0;
  $sql="select * from `$tbbkd` where `id_beban_tugas`='$id_beban_tugas' and `kategori`='Penelitian dan Pengabdian Masyarakat' order by `id_bkd` desc";
 	$arr=getData($conn,$sql);
		foreach($arr as $d) {							
				$id_bkd=$d["id_bkd"];
				$id_beban_tugas=$d["id_beban_tugas"];
				$kategori=$d["kategori"];
				$bidang_tugas=$d["bidang_tugas"];
				$hari=$d["hari"];
				$jam=$d["jam"];
				$ruang=$d["ruang"];
				$fakultas=$d["fakultas"];
				$sks=$d["sks"];
				$keterangan=$d["keterangan"];
				$jb2+=$sks;
				?>
  <tr>
 
    <td><center><?php echo $bidang_tugas; ?></center></td>
    <td><center><?php echo $hari; ?></center></td>
    <td><center><?php echo $jam; ?></center></td>
    <td><center><?php echo $fakultas; ?></center></td>
    <td><center><?php echo $sks; ?></center></td>
   
  </tr>
   <?php } ?>
  <!--------batas2------->
  <tr>
    <td colspan="5">&nbsp;</td>
  </tr>
  <tr>
    <td><b>Administrasi Manajemen :</b></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  
  <?php  
  $jb3=0;
  $sql="select * from `$tbbkd` where `id_beban_tugas`='$id_beban_tugas' and `kategori`='Administrasi dan Manajemen' order by `id_bkd` desc";
 	$arr=getData($conn,$sql);
		foreach($arr as $d) {							
				$id_bkd=$d["id_bkd"];
				$id_beban_tugas=$d["id_beban_tugas"];
				$kategori=$d["kategori"];
				$bidang_tugas=$d["bidang_tugas"];
				$hari=$d["hari"];
				$jam=$d["jam"];
				$ruang=$d["ruang"];
				$fakultas=$d["fakultas"];
				$sks=$d["sks"];
				$keterangan=$d["keterangan"];
				$jb3+=$sks;
				?>
  <tr>
 
    <td><center><?php echo $bidang_tugas; ?></center></td>
    <td><center><?php echo $hari; ?></center></td>
    <td><center><?php echo $jam; ?></center></td>
    <td><center><?php echo $fakultas; ?></center></td>
    <td><center><?php echo $sks; ?></center></td>
    
  </tr>
  <?php } ?>
  <tr>
    <td colspan="5">&nbsp;</td>
  </tr>
  <tr>
    <td>TOTAL</td>
    <?php $jumlah= $jb1+$jb2+$jb3;?>
    <td colspan="4" align="right"><b><?php echo $jumlah; ?> SKS</b></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td width="25%" height="25" align="center">WAKIL REKTOR BIDANG AKADEMIK</td>
    <td width="26%" align="center">DEKAN / DIREKTUR</td>
    <td width="24%" align="center">KETUA BIDANGSTUDI</td>
    <td width="25%" align="center">DOSEN YANG BERSANGKUTAN</td>
  </tr>
  
   <?php
  	$sql="select * from `$tbdosen` where `jabatan`='WAREK' order by `nidn` desc";
	$d=getField($conn,$sql);	
		$nama_warek=$d["nama_dosen"];
		$ttd_warek=$d["gambar_ttd"];
		
		$sqlx="select * from `$tbdosen` where `jabatan`='DEKAN' order by `nidn` desc";
	$dx=getField($conn,$sqlx);	
		$nama_dekan=$dx["nama_dosen"];
		$ttd_dekan=$dx["gambar_ttd"];
		
		$sqlz="select * from `$tbdosen` where `jabatan`='KAPRODI' and `program_studi`='$program_studi' order by `nidn` desc";
	$dz=getField($conn,$sqlz);	
		$nama_kaprodi=$dz["nama_dosen"];
		$ttd_kaprodi=$dz["gambar_ttd"];
   
   
   ?>
  
  <tr>
    <td height="78" align="center"><?php if($status_warek=="Disetujui"){?><img src="ypathfile/<?php echo $ttd_warek; ?>" width="176" height="72" /> <?php }?> </td>
    <td align="center"><?php if($status_dekan=="Disetujui"){?><img src="ypathfile/<?php echo $ttd_dekan; ?>" width="176" height="72" /> <?php }?> </td>
    <td align="center"><?php if($status_kaprodi=="Disetujui"){?><img src="ypathfile/<?php echo $ttd_kaprodi; ?>" width="176" height="72" /> <?php }?> </td>
    <td align="center"><?php if($status_dosen=="Disetujui"){ ?><img src="ypathfile/<?php echo $gambar_ttd; ?>" width="176" height="72" /> <?php }?> </td>
  </tr> 
 
  <tr>
    <td align="center"><?php echo $nama_warek; ?></td>
    <td align="center"><?php echo $nama_dekan; ?></td>
    <td align="center"><?php echo $nama_kaprodi; ?></td>
    <td align="center"><?php echo $nama_dosen; ?></td>
  </tr>
</table>
<p>Catatan : </p>
<p>1. Beban Tugas Dosen Tetap YMIK minimal 12sks/Minggu</p>
<p>2. Lampirkan Bukti Pendukung</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

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
?>
