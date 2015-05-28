<?php
include "koneksi.php";

$id_reservasi = $_POST['ID_RESERVASI'];
$nm_reservasi = $_POST['NM_RESERVASI'];
$alamat_nya = $_POST['ALAMAT_NYA'];
$telp_nya = $_POST['TELP_NYA'];
$dewasa = $_POST['DEWASA'];
$anak = $_POST['ANAK'];

$sql = ("INSERT INTO RESERVASI(id_reservasi, nm_reservasi, alamat_nya, telp_nya, DEWASA, ANAK ) VALUES('$id_reservasi', '$nm_reservasi', '$alamat_nya', '$telp_nya', '$dewasa', '$anak')");


?>

