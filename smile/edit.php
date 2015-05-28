<?php

$mysqli = new mysqli('localhost', 'root', '', 'smile');

$id = $_GET['id'];

$sql = "SELECT * FROM kelas WHERE id = '$id_kelas'";

$query = mysqli_query($mysqli, $sql);

$data = mysqli_fetch_assoc($query);
?>
<form action="ProsesEdit.php" method="POST">
id<br>
<input type="text" name="id" value="<?php echo $data['id_kelas']; ?>" /><br><br>
nama<br>
<input type="text" name="nama" value="<?php echo $data['nm_kelas']; ?>" /><br><br>
harga<br>
<input type="text" name="alamat" value="<?php echo $data['harga_kelas']; ?>" /><br><br>


<input type="submit" value="Klik" />
</form>