<?php
		
	$sql="select `nidn` from `$tbdosen` where status='Kontrak'";
	$jum1=getJum($conn,$sql);
	$sql="select `nidn` from `$tbdosen` where status='Tetap'";
	$jum2=getJum($conn,$sql);
  
    $sql="select 'status_dosen' from `$tbbeban_tugas` where status_dosen='Proses'";
	$jum3=getJum($conn,$sql);
	$sql="select 'status_dosen' from `$tbbeban_tugas` where status_dosen='Disetujui'";
	$jum4=getJum($conn,$sql);
  
	$sql="select 'status_dosen' from `$tbbeban_tugas` where status_dosen='Disetujui'";
	$jum5=getJum($conn,$sql);
	
    $sql="select 'status_dosen' from `$tbbeban_tugas` where status_dosen='Proses'";
	$jum6=getJum($conn,$sql);
		?>

                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-box"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $jum1+$jum2;?></h2>
                                                <span>Jumlah Dosen</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $jum3+$jum4;?></h2>
                                                <span>Laporan Masuk</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $jum5;?></h2>
                                                <span>Laporan Disetujui</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $jum6;?></h2>
                                                <span>Laporan Diproses</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<br><br><br>
						<h1>Selamat datang di web BTD Universitas Nasional</h1><br>
						
						<br>
						Laporan Beban Tugas Dosen merupakan Kegiatan Pengisian Kegiatan yang dilakukan oleh dosen yang meliputi bidang :
						<br>
						<br>
						1. Pendidikan dan Pengajaran.
						<br>
						2. Penelitian dan Pengabdian Masyarakat.
						<br>
						3. Administrasi dan Manajemen.
						<br><br>
						Oleh karena itu, beban Tugas dosen harus terdistribusi secara proposional dan terstruktur pada semua bidang kegiatan perguruan tinggi.
						<br>
						
						<br>
