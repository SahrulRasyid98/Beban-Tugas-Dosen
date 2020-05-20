
<?php
session_start();
$semester=$_SESSION["SMS"];
require_once"konmysqli.php";
$jurusan=$_GET["jurusan"];
$kategori=$_GET["kategori"];
$jur="SI";
if($jurusan=="Informatika"){$jur="TI";}

if($kategori=="Pendidikan dan Pengajaran"){
	?>
	
<select name="bidang_tugas"  class="form-control" id="bidang_tugas">
    <option value="-">Pilih Matkul <?php echo $jur;?></option>
    <?php
	  $s="select * from `tb_matkul` where `jurusan`='$jur' and `semester`='$semester'";
	$q=getData($conn,$s);
		foreach($q as $d){							
				$id_matkul=$d["id_matkul"];
				$matkul=$d["matkul"];
	echo"<option value='$matkul' "; echo">$matkul  </option>";
	}
	?>

  </select>	
	
	<?php
	
}
else{
	echo"<input name='bidang_tugas' type='text' id='bidang_tugas' value=''  class='form-control' size='50' />
";
}	
?>


<?php


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

?>