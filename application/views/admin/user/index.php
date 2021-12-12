<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<div style="padding-bottom:20px;display:flex;justify-content: space-between;">
	<h1><i class="fa fa-user"></i> User </h1>
	<a href="<?php echo site_url('admin/user/add') ?>" class="btn bg-navy btn-flat margin">Add New User</a>
</div>
<div class="table-responsive" style="padding-top: 6px">
	<table class="table table-striped table-hover table-condensed" id="mytable" style="width: 100%">
		<thead>
			<tr class="active">
				<th class="text-center" width="30px" style="padding-left: 20px;">No</th>
				<th>Username</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Role</th>
				<th>Last Login</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<?php $no = 1;
            foreach ($users as $users) { ?>
				<tr id="<?php echo $users->id; ?>">
					<td class="text-center" width="30px" style="padding-left: 20px;"><?= $no++ ?></td>
					<td><?= $users->username ?></td>
					<td><?= $users->email ?></td>
					<td><?= $users->phone ?></td>
					<td><?= $users->role ?></td>
					<td><?= $users->last_login ?></td>
					<td>
					  <?php echo anchor(site_url('admin/user/edit/' . $users->id), 'Edit Password', array('data-toggle' => 'tooltip', 'title' => 'edit data', 'class' => 'btn bg-navy btn-normal')) ?>
					</td>
					<td><button type="submit" class="btn btn-danger remove"> Delete</button></a>
		     </td>
				</tr>
			<?php } ?>
		</tbody>
	</table>
</div>
<script>
$(document).ready( function () {
    $('#mytable').DataTable();
	$(".remove").click(function(){
		var table=$(this).parents("table").attr("mytable");
        var id = $(this).parents("tr").attr("id");

    

       swal({

        title: "Are you sure?",

        text: "You will not be able to recover this file!",

        type: "warning",

		buttons: true,
            dangerMode: true,

      }).then((willDelete) => {
          if (willDelete) {
			$.ajax({

// url: 'itk/delete/'+id,
url: "<?=base_url('itk/delete/')?>"+id,
type: 'DELETE',
error: function() {

   alert('Something is wrong');

},

success: function(data) {
	location.reload(true); 
	//  $("#"+id).remove();
	//  $("#mytable").DataTable().ajax.reload;
	
	swal("Deleted!", "Your file has been deleted.", "success").then(willConfirm => {
   if (willConfirm) {
	location.reload(true); 
	 }});
}
});
          } else {
            swal("Your file is safe!");
          }
        });
    });

} );
</script>