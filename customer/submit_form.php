<?php

include('../conn.php');
include('../libraryPDO.php');

// if (isset($_POST['nama_review']) && isset($_POST['deskripsi_review']) && isset($_POST['deskripsi_review']) && isset($_POST['passing_produk'])) {
     $library = new libraryPDO($koneksi_PDO);

  //  $id_produk_pilihan = $_POST['passing_produk'];
  //   echo var_dump($id_produk_pilihan);
    $library->insertReview($_POST['nama_review'], $_POST['passing_produk'], $_POST['deskripsi_review'], $_POST['skala_rating']);

// } else {
//     echo 'Terjadi kesalahan data sewaktu di tangkap. Silahkan cek kembali';
// }








?>