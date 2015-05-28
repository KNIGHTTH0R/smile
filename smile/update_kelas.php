<?php
include "koneksi.php";

$id_kelas = $_POST['id_kelas'];
$nm_kelas = $_POST['nm_kelas'];
$harga_kelas = $_POST['harga_kelas'];

$update = mysql_query("UPDATE KELAS SET nm_kelas = '$nm_kelas', harga_kelas = '$harga_kelas'WHERE id_kelas = '$id_kelas'");

if($update){
?><script>document.location.href="fp_kelas"</script><?php
}else{
echo "gagal : ".mysql_error();
}
?>