<?php 
	if(!isset($_GET['page'])){
		header('Location:index.php?page=Home');
	}else{
		$pg = $_GET ['page'];
	}
?>
<?php 
	if($pg=='Home'){
		include 'php/Header.php';
		include 'php/Slider.php';
		include 'php/CircleLine.php';
		include 'php/Leftmenu.php';
		include 'php/Products.php';
		include 'php/Footer.php';
	}elseif($pg=='Products'){
		include 'php/Header.php';
		include 'php/Topadd.php';
		include 'php/Leftmenu.php';
		include 'php/Products.php';
		include 'php/Footer.php';
	}elseif ($pg== 'Contact'){
		include 'php/Header.php';
		include 'php/Topadd.php';
		include 'php/Address.php';
		include 'php/From.php';
		include 'php/Footer.php';
	}
?>