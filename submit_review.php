<?php

    include('conn.php');

    if(isset($_POST['nama_review'])&& isset($_POST['email_review'])&& isset($_POST['field_review']) && isset($_POST['skala_rating']) && isset($_POST['passing_produk'])){
        //$command = $koneksi_PDO->prepare("insert into ")

    } else {
        echo 'DATA YANG DIKIRIM CORRUPT!';
    }
?>