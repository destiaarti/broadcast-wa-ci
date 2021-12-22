<?php echo anchor('/itk', 'Back'); ?>
<div class="row">
        <div class="col-md-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Detail ITK</h3>
            </div>
			
<table style="margin: 35px">
<tr>
		<td><b>First Name :</b></td>
		<td><?= $itk->first_name ?></td>
	</tr>
	<tr>
		<td><b>Last Name :</b></td>
		<td><?= $itk->last_name ?></td>
	</tr>
	<tr>
		<td><b>No Passport :</b></td>
		<td><?= $itk->no_passport ?></td>
	</tr>
	<tr>
		<td><b>Email :</b></td>
		<td><?= $itk->email ?></td>
	</tr>
	<tr>
		<td><b>File ITK :</b></td>
</tr>
<tr>
		
			<?php if($itk->itk_file != null) { ?>
			
				<td><img src="<?php echo base_url('assets/uploads/itk/'.$itk->itk_file); ?>" width="250"  height="220" /> </td>
				<tr>
				<td><?=anchor('assets/uploads/itk/'.$itk->itk_file, 'View ITK File!','target="_blank"')?></td>
<?php } else{ ?>
	<td><img src="<?php echo base_url('assets/uploads/default.png'); ?>" width="250"  height="220" /> </td>
		<tr>
	<td>No File Upload</td>
	<?php } ?>
</tr>
<tr></tr>
	</tr>

	<tr>
		<td><b>File Passport: </b></td>
</tr>
<tr>
	
			<?php if($itk->passport_file != null) { ?>
				<td><img src="<?php echo base_url('assets/uploads/passport/'.$itk->passport_file); ?>" width="250"  height="220" /> </td>
				<tr>
		<td><?=anchor('assets/uploads/passport/'.$itk->passport_file, 'View Passport File!','target="_blank"')?></td>
<?php } else{ ?>
	<td><img src="<?php echo base_url('assets/uploads/default.png'); ?>" width="250"  height="220" /> </td>
	<tr>
	<td>No File Upload</td>
	<?php } ?>
</tr>
<tr></tr>

	</tr>
	
</table>
</div>
</div>
</div>
