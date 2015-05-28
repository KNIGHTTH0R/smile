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
		
	<body>
	<div class="reser">
	<div class="form">
		<form action="fpost_reservasi.php" method="post"> 
		
			ID Reservasi : <br><input type="text" name="ID_RESERVASI" /><br>
			Nama Reservasi : <br><input type="text" name="NM_RESERVASI" /><br>
			Alamat : <br><input type="text" name="ALAMAT_NYA" /><br>
			Telp : <br><input type="text" name="TELP_NYA" /><br>
			Dewasa : <br><input type="text" name="DEWASA" /><br>
			Anak : <br><input type="text" name="ANAK" /><br>
			
			<input type="submit" value="OK" />
		</form>
		</div>
	
		
		
	<?php

	$connect = new mysqli('localhost', 'root', '', 'smile');


	$sql = "select 
			RESERVASI.ID_RESERVASI, RESERVASI.NM_RESERVASI, RESERVASI.ALAMAT_NYA, RESERVASI.TELP_NYA, RESERVASI.DEWASA, RESERVASI.ANAK
			from RESERVASI ";

	$query = mysqli_query($connect, $sql);

	?>
		
		<div class="ab" background="white">
		<table align="center" width="700" border="2" cellspacing="auto" cellpadding="auto">	
			<tr>
				<th>Id Reservasi</th>
				<th>Nama Reservasi</th>
				<th>Alamat</th>
				<th>Telp</th>
				<th>Dewasa</th>
				<th>Anak</th>
				<th>Opsi</th>
			</tr>
			<?php

			while($data = mysqli_fetch_assoc($query)){ ?>
			<tr>
			<td><?php echo $data['ID_RESERVASI']; ?> </td>
			<td><?php echo $data['NM_RESERVASI']; ?> </td>
			<td><?php echo $data['ALAMAT_NYA']; ?> </td>
			<td><?php echo $data['TELP_NYA']; ?> </td>
			<td><?php echo $data['DEWASA']; ?> </td>
			<td><?php echo $data['ANAK']; ?> </td>
			
			<td></td>
			
			<?php } ?>
			
			

			

	</table>


