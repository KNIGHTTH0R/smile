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
		
		
		<!-- Isi -->
		<div class="contain">
        <form action="jadwal.php" method="post">
            <table>
                
                
                                            <!--Stasiun Asal-->    
		<h5> <b>Stasiun Asal :</b></h5>
				<select name="asal"  placeholder="stasiun asal" required="">
					
					<?php
						$query_kota = mysql_query("SELECT `kota_asal` FROM `jurusan` GROUP BY `kota_asal`");
						while($data_kota = mysql_fetch_array($query_kota))
                        {
						  echo '<optgroup label="'.$data_kota['kota_asal'].'">';
																		
						  $query_stasiun_asal = mysql_query("SELECT `stasiun_asal` FROM `jurusan` WHERE `kota_asal` = '".$data_kota['kota_asal']."' GROUP BY `stasiun_asal` ORDER BY `stasiun_asal`");
						  while ($data_stasiun_asal = mysql_fetch_array($query_stasiun_asal))
                          {
						      echo '<option>'.$data_stasiun_asal['stasiun_asal'].'</option>';
						  };
																		
						  echo '</optgroup>';
						};
					?>
				</select>
                                            <!-- End Stasiun Asal -->    
                
                
						                      <!-- Stasiun Tujuan -->
			<h5> <b>Stasiun Tujuan :</b></h5>
				<select name="tujuan" placeholder="stasiun tujuan" required="">
					
					<?php
						$query_kota_tujuan = mysql_query ("SELECT `kota_tujuan` FROM `jurusan` GROUP BY `kota_tujuan`");
						while ($data_tujuan = mysql_fetch_array ($query_kota_tujuan))
                        {
						  echo '<optgroup label ="'.$data_tujuan['kota_tujuan'].'">';			
						
						  $query_stasiun_tujuan = mysql_query("SELECT `stasiun_tujuan` FROM `jurusan` WHERE `kota_tujuan` = '".$data_tujuan['kota_tujuan']."' GROUP BY `stasiun_tujuan` ORDER BY `stasiun_tujuan`");
														
                          while ($data_stasiun_tujuan = mysql_fetch_array($query_stasiun_tujuan))
                          {
						      echo '<option>'.$data_stasiun_tujuan['stasiun_tujuan'].'</option>';
						  }; 
																	
						  echo '</optgroup>';
						};
					?>
				</select>
				                            <!-- End Stasiun Tujuan -->
                
                
                                            <!-- Tanggal -->
				<h5> <b>Tanggal :</b></h5>
				<select name="tanggal" placeholder="tanggal" required="">
					<?php
						
						$tanggal = mysql_query ("SELECT `tanggal` FROM `jadwal` GROUP BY `tanggal`");
						while ($tanggal_ka = mysql_fetch_array ($tanggal)){
						echo '<optgroup label ="'.$tanggal_ka['tanggal'].'">';			
						
						$jam = mysql_query("SELECT `jam_berangkat` FROM `jadwal` WHERE `tanggal` = '".$tanggal_ka['tanggal']."' GROUP BY `jam_berangkat` ORDER BY `jam_berangkat`");
														
						while ($tanggaljam = mysql_fetch_array($jam)){
						echo '<option>'.$tanggaljam['jam_berangkat'].'</option>';
						}; 
																	
						echo '</optgroup>';
						};
					
                    ?>									
				</select>
				<input type="submit" class="button" value="OK">
                </table>