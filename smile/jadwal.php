<?php
	include "koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
<html>

	<head>
		<title> Train Ticket Online </title>
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
	</head>
	
	<body background = "6928669-classic-train-photos.jpg">
		<div class="navbar">
		<ul class="nav nav-pills">
			<li role="presentation" class="active"><a href="index.php">Menu Utama</a></li>
			<li role="presentation"><a href="profile.php">Profile</a></li>
			<li role="presentation"><a href="jadwal.php">Jadwal</a></li>
			<li role="presentation"><a href="admin.php">Admin</a></li>
			
		</ul>
	
		<div class="judul"> 
		<h1><b> Train Ticket Online </b></h1>
		</div>
		
			<?php

$connect = new mysqli('localhost', 'root', '', 'smile');

$sql = "select 
		master_kereta.id_kereta, master_kereta.nm_kereta, 
		kelas.nm_kelas, 
		jadwal.tanggal, jadwal.jam_berangkat,
		jurusan.kota_asal, jurusan.kota_tujuan, jurusan.stasiun_asal, jurusan.stasiun_tujuan,
		jurusan.harga_jurusan, kelas.harga_kelas, jadwal.keterangan

		from
		kelas join master_kereta on master_kereta.id_kelas=kelas.id_kelas
		join jadwal on master_kereta.id_jadwal=jadwal.id_jadwal
		join jurusan on master_kereta.id_jurusan=jurusan.id_jurusan
		
		";

$query = mysqli_query($connect, $sql);

?>
	<h2 align="center"> Jadwal Kereta </h2>
	<div class="back-jad">
	
	<table align="center"  width="1200" border="2" cellspacing="auto" cellpadding="auto">
		<tr>
			<th>ID Kereta</th>
			<th>Nama Kereta</th>
			<th>Nama Kelas</th>
			<th>Tanggal</th>
			<th>Jam Berangkat</th>
			<th>Kota Asal</th>
			<th>Kota Tujuan</th>
			<th>Stasiun Asal</th>
			<th>Stasiun Tujuan</th>
			<th>Harga Jurusan</th>
			<th>Harga Kelas</th>
			<th>Keterangan</th>
			
		</tr>
		<?php

			while($data = mysqli_fetch_array($query)){ ?>
			<tr>
			<td><?php echo $data['id_kereta']; ?> </td>
			<td><?php echo $data['nm_kereta']; ?> </td>
			<td><?php echo $data['nm_kelas']; ?> </td>
			<td><?php echo $data['tanggal']; ?> </td>
			<td><?php echo $data['jam_berangkat']; ?> </td>
			<td><?php echo $data['kota_asal']; ?> </td>
			<td><?php echo $data['kota_tujuan']; ?> </td>
			<td><?php echo $data['stasiun_asal']; ?> </td>
			<td><?php echo $data['stasiun_tujuan']; ?> </td>
			<td><?php echo $data['harga_jurusan']; ?> </td>
			<td><?php echo $data['harga_kelas']; ?> </td>
			<td><?php echo $data['keterangan']; ?> </td>
			<td></td>
			<td><a href='fp_reservasi.php?  '>Booking</td></tr>
			<?php } ?>

			

	</table>
		