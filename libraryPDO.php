<?php
    //Kelas mengutilisasi library PDO
    class libraryPDO{
        
        public function __construct($koneksi){
            $this->koneksi = $koneksi;
        }

        public function insertReview($nama_reviewer, $id_produk, $deskripsi_review, $rating){
            try{

                $commandSQL = $this->koneksi->prepare("insert into pengulas_review(nama_reviewer, id_produk, deskripsi_review, rating)values(?,?,?,?)");
                $commandSQL->execute([$nama_reviewer, $id_produk, $deskripsi_review, $rating]);
                return true;

            } catch (PDOException $e){
                return false;
            }
            
        }
}


?>
