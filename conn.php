<?php
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "bookingcerdas";

$koneksi = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if(mysqli_connect_error()){
	echo 'Gagal melakukan koneksi ke Database : '.mysqli_connect_error();
}


//Buat Koneksi PDO
try{

	$koneksi_PDO = new PDO("mysql:host=localhost;dbname=$db_name", $db_user, $db_pass);
	$koneksi_PDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOException $e){
	echo 'Gagal melakukan koneksi ke Database (PDO) : '.e;
}
?>