
<div class="col-md-9" style=" padding-top:30px; ">
<div class="row">
		<?php
			if(isset($_GET['cat'])){
				$catid =$_GET['cat'];
				$qry_product = "SELECT * FROM tb_product WHERE product_category='$catid'"
			}else{
				$qry_product = "SELECT *FROM tb_product"
			}
			$result_product = $DB->select($qry_product);
			if($result_product){
				while ($data_product= $result_product->fetch_array()) {

					?>

					  <div class="col-sm-6 col-md-3">
					    <div class="thumbnail" style="border:0px; box-shadow:0PX; ">
					      <img src="product/<?php echo $data_product['product_image']; ?>" alt="<?php echo $data_product['product_name']; ?>" style="width:100%; height:150px; ">
					      <div class="caption" style="background:#002060; color:white; "><?php echo $data_product['product_name']; ?> <Br/><span style="font-size:12px; color:red; " ><?php echo $data_product['product_price']; ?></span></div>
					    </div>
					  </div>
					<?php
					}
			}
		?> 
  
</div>	
<!---->	
	</div>
</section>
<!--------------------------------------------------------------------------->
<!--------------------------------------------------------------------------->
<!--------------------------------------------------------------------------->