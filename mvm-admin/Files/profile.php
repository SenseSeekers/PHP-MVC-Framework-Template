
<?php 
	$user_id = $_SESSION ['user_id'];
	$profile_qry = " SELECT * FROM tb_user WHERE  id='$user_id'";
	$profile_result = $DB->select($profile_qry);
	if($profile_result){
		$profile_data =$profile_result->fetch_assoc();
	}
?>
<!----------------------------------------------->	
<div class="" style="min-height:400px;">	
	<div class="col-md-4">
		<img src="../img/profile/<?php $profile_data['user_image'];?>" alt=""  class="img-responsive img-border" style="width:100%;height:300px;"><br/>
		<button class="btn btn-primary"> Change Image </button>
<!------------------------------------>
	</div>	
	<div class="col-md-8">
<!-------------------------------->
<table class="table table-bordered table-striped">
	<h2>Masud rana</h2>
	<small style="color:teal;font-weight:bold;">profile data</small>

	<p> 
		<srong> Email : </srong> masudrana@gmail.com .<br/>
		<srong> Phone : </srong> masudrana@gmail.com .<br/>
		<srong> Address : </srong> masudrana@gmail.com .<br/>

	</p>
	<button class="btn btn-primary"> update profile </button>
<!-------------------------------->
	</div>
	
</div>
<!----------------------------------------------->
