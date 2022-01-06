<?php echo anchor('admin/user', 'Back'); ?>
<form action="<?= base_url('auth/changePasswordUser') ?>" method="post">
<input type="hidden" name="id" value="<?= $users->id ?>">
<div class="tab-pane" id="password">
					<div class="col-sm-8">	
					<div class="form-group">
							<label for="passBaru" class="col-sm-2 control-label">Password Baru</label>
								<input type="password" class="form-control" placeholder="Password Baru" name="passBaru">
							</div>
						</div>
						<div class="col-sm-8">
						<div class="form-group">
							<label for="passKonf" class="col-sm-8 control-label">Konfirmasi Password</label>
								<input type="password" class="form-control" placeholder="Konfirmasi Password" name="passKonf">
							</div>
						</div>
				</div>
				<?php echo @$error; ?> 
			        	<?php if(validation_errors()) { echo validation_errors(); }?>
				<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8" style="padding:20px">
								<button type="submit" class="btn btn-primary btn-flat"><i class="fa fa-check-circle"></i> Simpan</button>
							</div>
						</div>
</form>
