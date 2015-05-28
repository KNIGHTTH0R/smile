<?php
//Buka koneksi dengan DBMS
$mysqli = new mysqli('localhost', 'root', '', 'semangat');
$id = $_GET['id'];
//Sql DELETE
$sql = "DELETE FROM biodata WHERE id = '$id'";
$query = mysqli_query($mysqli, $sql);
if ($query) {
    echo " Proses Delete Diterima ";
} else {
    echo " Terjadi Kesalahan ";
}
?>