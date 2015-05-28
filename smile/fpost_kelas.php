<?php
include "koneksi.php";

$id_kelas = $_POST['id_kelas'];
$nm_kelas = $_POST['nm_kelas'];
$harga_kelas = $_POST['harga_kelas'];

$query_kelas= mysql_query("INSERT INTO kelas(id_kelas, nm_kelas, harga_kelas) VALUES('$id_kelas', '$nm_kelas', '$harga_kelas')");
//$sql = "INSERT INTO kelas(id_kelas, nm_kelas, harga_kelas) VALUES('$id_kelas', '$nm_kelas', '$harga_kelas')";
//mysql_query($koneksi, $sql);
?>