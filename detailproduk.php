<?php require_once("conn.php");
    if (!isset($_SESSION)) {
        session_start();
    } ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Booking Cerdas</title> 
	<meta name="description" content="Website, Corporate, Bekasi, Garment, Sablon, Konveksi"/>
	<meta name="keywords" content="Bahan, Pakaian, Baju, Sablon" />
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: Facebook Open Graph -->
	<meta property="og:title" content=""/>
	<meta property="og:description" content=""/>
	<meta property="og:type" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:image" content=""/>
	<!-- end: Facebook Open Graph -->

    <!-- start: CSS --> 
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link rel="stylesheet" href="css/tema.css"/>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Droid+Serif">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Boogaloo">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">
	<!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
    
<?php include "header.php"; ?>
	
	<!-- start: Page Title -->
	<div id="page-title">

		<div id="page-title-inner">
 
			<!-- start: Container -->
			<div class="container">

				<h2><i class="ico-stats ico-white"></i>Product Details</h2>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	
	<!--start: Wrapper-->
	
      		<!-- start: Row -->
            
      		<div class="row">
            <div class="col-sm-6">
                    <?php                  
$query = mysqli_query($koneksi, "SELECT * FROM produk WHERE kode='$_GET[kd]'");
$data  = mysqli_fetch_array($query);
?>
        		<!--<div class="span4">-->
          			<!--<div class="icons-box">-->
                    <div class="hero-unit"  style="margin-left: 20px;">
                    <table>
                    <tr>
                        <td rowspan="7"><img src="admin/<?php echo $data['gambar']; ?>" height="500px" width="500px" /></td>
                        </tr>
                        <tr>
                        <td colspan="4"><div class="title"><h2><?php echo $data['nama']; ?></h2></div></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td size="200"><h3>Harga</h3></td>
                        <td><h3>:</h3></td>
						<td><div><h3>Rp.<?php echo number_format($data['harga'],2,",",".");?></h3></div></td>
                        </tr>
                        <tr>
                        <td></td>
                        <td><h3>Stock</h3></td>
                        <td><h3>:</h3></td>
                        <td><div><h3><?php if ($data['stok'] >= 1){
	                           echo '<strong style="color: blue;">In Stock (Tersedia)</strong>';	
                                } else {
	                           echo '<strong style="color: red;">Out Of Stock (Kosong)</strong>';	
                                }; ?></h3></div></td>
                        </tr>
                        <!--<tr>
                        <td></td>
                        <td><h3>Satuan</h3></td>
                        <td><h3>:</h3></td>
                        <td><div><h3><?php //echo $data['br_satuan']; ?></h3></div></td>
                        </tr>-->
                        <tr>
                        <td></td>
                        <td><h3>Keterangan</h3></td>
                        <td><h3>:</h3></td>
                        <td><div><h3><?php echo $data['jenis']; ?></h3></div></td>
                        </tr>
					<!--	<p>
						
						</p> -->
                        

                        <tr>
                        <td></td>
                        <td><h3>Size</h3>
                        
                        <div class="text">
                              <label class="col-sm-6 col-sm-6 control-label"></label>
                             <div class="col-sm-6">
                            <select id="size" name="size" class="form-control" required>
                            <option value="All Size">All Size</option>
                               </select>
                              
                            </div> </div>
                            </td>
                            </tr>

                        <tr>
                        	<td></td>
                        	
                        	
                              
                            </div></div>
                            </td>
                        </tr>  

                        <tr>
                        <td></td>
                        <td></td>
                        <td></td>
						<td><div class="clear"> <a href="index.html" class="btn btn-lg btn-success">Buy</a></div></td>
                        </tr>                                  

                    </table>
                    </div>
                    <!--</div> -->
        		<!--</div> -->
<!---->
      		</div>
			<!-- end: Row -->
					
					
				</div>	
				
					
				</div>
				
                </div>
			</div>
			<!--end: Row-->
	
		</div>
		<!--end: Container-->
				
		<!--start: Container -->

		<!-- Container untuk menampung review dari orang -->
    	<div class="container">	

		<br>
			<h1>Ulasan</h1>
			<div class="kontener_review">

			<?php 			
			
			$id_produk_pilihan = $_GET['kd'];
			$dataMentah = $koneksi_PDO->query("select nama_reviewer, deskripsi_review, rating from pengulas_review where id_produk = $id_produk_pilihan");

			while($eh = $dataMentah->fetch()){
				echo '<h5>'.$eh['nama_reviewer'].'</h5><h4>['.$eh['rating'].'/5]</h4>';
				echo '<p>'.$eh['deskripsi_review'].'</p>';
				echo '<hr>';
			}
			
			
			
			?>


		</div>
		<!--end: Container-->	

	</div>
	<!-- end: Wrapper  -->			

    <!-- start: Footer Menu -->
	<div id="footer-menu" class="hidden-tablet hidden-phone">

		<!-- start: Container -->
		<div class="container">
			
			<!-- start: Row -->
			<div class="row">

				<!-- start: Footer Menu Logo -->
				<div class="span2">
					<div id="footer-menu-logo">
						<a href="#"><img src="img/logo1.png" alt="logo" /></a>
					</div>
				</div>
				<!-- end: Footer Menu Logo -->

				<!-- start: Footer Menu Links-->
				<div class="span9">
					
					<div id="footer-menu-links">

						<ul id="footer-nav">

							<li><a href="#">Kemeja</a></li>

							<li><a href="#">Kaos</a></li>

							<li><a href="#">Sweater</a></li>

							<li><a href="#">Jacket</a></li>
							
							<li><a href="#">Pants & Jeans</a></li>

						</ul>

					</div>
					
				</div>
				<!-- end: Footer Menu Links-->

				<!-- start: Footer Menu Back To Top -->
				<div class="span1">
						
					<div id="footer-menu-back-to-top">
						<a href="#"></a>
					</div>
				
				</div>
				<!-- end: Footer Menu Back To Top -->
			
			</div>
			<!-- end: Row -->
			
		</div>
		<!-- end: Container  -->	

	</div>	
	<!-- end: Footer Menu -->

	<?php include "footer.php"; ?>
    
<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.8.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/flexslider.js"></script>
<script src="js/carousel.js"></script>
<script src="js/jquery.cslider.js"></script>
<script src="js/slider.js"></script>
<script def src="js/custom.js"></script>
<!-- end: Java Script -->

</body>
</html>	