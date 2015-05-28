<?php

$connect = new mysqli('localhost', 'root', '', 'smile');

$sql = "SELECT * FROM kelas";

$query = mysqli_query($connect, $sql);

?>

	<table>
		<tr>
			<th>id</th>
			<th>nama</th>
			<th>harga</th>
			
		</tr>
		<?php

while($data = mysqli_fetch_array($query)){
$id = $data['ID_KELAS'];
echo $data['NM_KELAS']."<br />";
echo $data['HARGA_KELAS']."<br />";

echo "<a href='edit.php?id=$id '>Edit</a> <a href='delete.php?id=$id '>Delete</a><hr /><br />";}
?>
	</table>

