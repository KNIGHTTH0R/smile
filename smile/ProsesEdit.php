<?php

$mysqli = new mysqli('localhost', 'root', '', 'semangat');
$id = $_POST ['id'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$telp = $_POST['telp'];
$agama = $_POST['agama'];

$sql = "UPDATE biodata SET nama = '$nama',  alamat = '$alamat',  telp = '$telp',  agama = '$agama' WHERE id = '$id'";

$query = mysqli_query($mysqli, $sql);
if ($query) {
    echo " Sukses ";
} else {
    echo " Tidak Sukses ";
}
?>