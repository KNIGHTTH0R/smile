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
			<li role="presentation"><a href="">Profile</a></li>
			<li role="presentation"><a href="">Jadwal</a></li>
			<li role="presentation"><a href="">Admin</a></li>
			
		</ul>
		
		

	<body>
	<div class="form">
		<form action="fpost_kelas.php" method="post"> 
		
			ID Kelas : <br><input type="text" name="id_kelas" /><br>
			Nama Kelas : <br><input type="text" name="nm_kelas" /><br>
			Harga Kelas : <br><input type="text" name="harga_kelas" /><br>
			
			<input type="submit" value="OK" />
		</form>
		</div>
	
		<h1 align="center">Data Kelas</h1>
	<div class="table" background="white">	
	<?php

	$connect = new mysqli('localhost', 'root', '', 'smile');


	$sql = "select 
			KELAS.ID_KELAS, KELAS.NM_KELAS, KELAS.HARGA_KELAS
			from KELAS ";

	$query = mysqli_query($connect, $sql);

	?>
		
		<table align="center" width="700" border="2" cellspacing="auto" cellpadding="auto">	
			<tr>
				<th>Id Kelas</th>
				<th>Nama Kelas</th>
				<th>Harga Kelas</th>
				
				<th>Opsi</th>
			</tr>
			<?php

			while($data = mysqli_fetch_assoc($query)){ ?>
		.	<tr>
			<td><?php echo $data['ID_KELAS']; ?> </td>
			<td><?php echo $data['NM_KELAS']; ?> </td>
			<td><?php echo $data['HARGA_KELAS']; ?> </td>
			
			<td></td>
			
			<?php } ?>
			


	</table>


