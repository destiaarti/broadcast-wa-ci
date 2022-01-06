
<?php echo anchor('admin/user', 'Back'); ?>
<div class="row">
        <div class="col-md-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Tambah User</h3>
            </div>
            <form action="<?= base_url('admin/user/create') ?>" method="post" autocomplete="on" enctype="multipart/form-data">
    
              <div class="box-body">
                <div class="col-md-7">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Username</label>
                    <input type="text" name="username" class="form-control" id="username" placeholder="enter Username" required>
                  </div>
			      	  </div>
				        <div class="col-md-6">
                  <div class="form-group">
                    <label for="exampleInputPassword1">First Name</label>
                    <input type="text" name="first_name" class="form-control" id="first_name" placeholder="enter First Name" required>
                  </div>
			         	</div>
			        	<div class="col-md-6">
				          <div class="form-group">
                    <label for="exampleInputPassword1">Last Name</label>
                    <input type="text" name="last_name" class="form-control" id="last_name" placeholder="Enter Last Name" required>
                  </div>
				        </div>
                <div class="col-md-7">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Phone Number</label>
                    <input type="tel" name="phone" class="form-control" id="phone" placeholder="Enter Phone Number" required>
                  </div>
				        </div>
		        		<div class="col-md-7">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required>
                  </div>
				        </div>
                <div class="col-md-7">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Password</label>
                    <input type="text" name="password" class="form-control" id="password" placeholder="Enter password" required>
                  </div>
				        </div>
                <div class="col-md-7">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Role</label>
                    <select  name="role" class="form-control">
                      <option value="admin">Admin</option>
                      <option value="admin fakultas" >Admin Fakultas</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-7">
                  <div class="form-group">
                    <label for="exampleInputPassword1">Status</label>
                    <select  name="activated" class="form-control">
                      <option value="1">Aktif</option>
                      <option value="0" >Nonaktif</option>
                    </select>
                  </div>
                </div>
                <?php echo @$error; ?> 
			        	<?php if(validation_errors()) { echo validation_errors(); }?>
                <div class="col-md-7">
                  <div class="form-group">
                    <div class="box-footer">
                      <button type="submit" id="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </div>
                </div>
            </form>
          </div>
		  </div>

