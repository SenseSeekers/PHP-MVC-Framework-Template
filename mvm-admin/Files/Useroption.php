<?php /*NEW USER INSERT MODULE*/
	if(isset($_POST['user'])){
		$fristname =$_POST['fristname'];
		$lastname = $_POST['lastname'];
		$username = $_POST['username']; 
		$email = $_POST['email'];
		$phone = $_POST['phone'];
		$address = $_POST['address']; 
		$password = $_POST['password'];
		$confirm_password = $_POST['confirm_password'];
		$type = $_POST['type'];
		
		if($password=$confirm_password){
			if(empty($email) OR empty($password) OR empty($type)){
				$msg = '<span style="color:red;">Email Or Password Invalid !</span>';
				header('Location:?page=Useroption&msg='.$msg); 
			}else{
				$password = ($password); 
				$user_save_qry = "INSERT INTO tb_user (fristname,lastname,phone,address,username,email,password,type)VALUES('$fristname','$lastname','$phone','$address','$username','$email','$password','$type')"; 
				$user_save_result = $DB->insert($user_save_qry); 
				if($user_save_result){
					$msg = '<span style="color:green;">User Created !</span>';
					header('Location:?page=Useroption&msg='.$msg); 
				}
			}
		}else {
			$msg = '<span style="color:red;">Password Not Matched !</span>';
			header('Location:?page=Useroption&msg='.$msg); 
		}
	}
?>

<?php 
	if(isset($_GET['type'])){
		$admin_id = $_GET['uid'];
		$admin_type= $_GET['type'];
		$user_qury = " UPDATE tb_user SET type='$admin_type' WHERE id='$admin_id'";
		$user_result_qry = $DB->update($user_qury);
		if($user_result_qry){
			header('Location:?page=Useroption');
		}


	}
?>
<?php 
	if(isset($_GET['delid'])){
		$delid = $_GET['delid'];
		if(isset($delid)){ 
			$del_qry = "DELETE FROM tb_user WHERE id='$delid'";
			$del_result = $DB->delete($del_qry);
			if($del_result){
				header('Location:?page=Useroption');
			}
		}
	}
?>
<!----------------------------------------------->	
<div class="" style="min-height:400px;  ">	
	<div class="col-md-4">

<form action="?page=Useroption" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1">First Name</label>
    <input name="fristname" type="text" class="form-control" id="exampleInputEmail1" placeholder="First Name !">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Last Name</label>
    <input name="lastname" type="text" class="form-control" id="exampleInputEmail1" placeholder="Last Name !">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input name="username" type="text" class="form-control" id="exampleInputEmail1" placeholder="Username !">
  </div> 

  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" placeholder="Email !">
  </div> 

  <div class="form-group">
    <label for="exampleInputEmail1">Phone</label>
    <input name="phone" type="text" class="form-control" id="exampleInputEmail1" placeholder="Phone !">
  </div> 

  <div class="form-group">
    <label for="exampleInputEmail1">Address</label>
    <textarea name="address" class="form-control" rows="3" placeholder="Address "></textarea>
  </div> 

  <div class="form-group">
    <label for="exampleInputEmail1">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputEmail1" placeholder="Password !">
  </div> 

  <div class="form-group">
    <label for="exampleInputEmail1">Confirm Password</label>
    <input name="confirm_password" type="password" class="form-control" id="exampleInputEmail1" placeholder="Confirm Password !">
  </div> 

  <div class="form-group">
    <label for="exampleInputEmail1">Type</label>
    <select class="form-control" name="type">
    	<option value="">Select Type !</option>
    	<option value="manager">Manager</option>
    	<option value="editor">Editor</option>
    	<option value="production">Production</option>
    </select>
  </div> 

  <button name="user" type="submit" class="btn btn-primary">Add User</button>
  <?php if(isset($_GET['msg'])){ echo $_GET['msg']; } ?>
</form>
	</div>	
<div class="col-md-8">
<!-------------------------------->
<table class="table table-bordered table-striped">

	<tr>
		<th>SL</th>
		<th>Username</th>
		<th>Email</th>
		<th style="width:35%;">Type</th>		
		<th style="width:18%;">Action</th>
	</tr>

	<?php 
		$user_loar_qry = "SELECT * FROM tb_user";
		$user_result = $DB->select ($user_loar_qry);

		if($user_result){
			$i=0;

		while ($user_data=$user_result->fetch_array()){
			$i++;
			?>
	<tr> 
		<td><?php echo $i;?></td>
		<td><?php echo $user_data['username'];?></td>
		<td><?php echo $user_data['email'];?></td> 
		<td> 
<?php 
	$type = $user_data['type']; 
	if($type=='manager'){
?>


		<a href="?page=Useroption&uid=<?php echo $user_data['id']?>&type=manager" class="btn btn-primary btn-xs">Manager</a>
		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=editor" class="btn btn-default btn-xs">Editor</a>
		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=production" class="btn btn-default btn-xs">Production</a>

		<?php
			}elseif($type=='editor'){
				?>

		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=manager" class="btn btn-default btn-xs">Manager</a>
		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=editor" class="btn btn-primary btn-xs">Editor</a>
		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=production" class="btn btn-default btn-xs">Production</a>
		<?php
			}elseif($type=='production'){
				?>
		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=manager" class="btn btn-default btn-xs">Manager</a>
		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=editor" class="btn btn-default btn-xs">Editor</a>
		<a href="?page=Useroption&uid=<?php echo $user_data['id'];?>&type=production" class="btn btn-primary btn-xs">Production</a>
			<?php
			}
		?>


		</td>
		<td>
			<a href="?page=Useroption&delid=<?php echo $user_data['id'];?>" class="btn btn-danger btn-xs">Remove</a>
		</td>
	</tr>

		<?php
		}
	}
	?>

</table>
<!-------------------------------->
</div> 
</div>
<!----------------------------------------------->
