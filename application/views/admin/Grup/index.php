<div class="row">
	<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
		<div class="panel panel-warning">
	  <!-- Default panel contents -->
	  <div class="panel-heading"><h4>Daftar Grup Tamu</h4></div>

	  <!-- Table -->
	  <table class="table">
	    <table class="table">
		  <thead>
	        <tr>
	        	<th>No</th>
	        	<th>Kode Grup</th>
	            <th>Nama Grup</th>
	            <th>Diskon</th>
	            <th>Action</th>
	        </tr>
	      </thead>
	       <tbody>
                    <?php $no = 1; ?>
                    <?php foreach($grup as $list): ?>

                        <tr>
                            <td><?=$no++?></td>
                            <td><?=$list['kode']?></td>
                            <td><?=$list['nama']?></td>
                            <td>
                            <?php
                            	if ($list['diskon']>0) {
                            		echo $list['diskon'];
                            		echo '%';	
                            	} else {
                            		echo '-';
                            	}
                            ?>
							</td>
                            <td>
                               <button class="btn btn-warning btn-xs">Detail</button>
                               <button class="btn btn-success btn-xs">Ganti</button>
                               <button class="btn btn-danger btn-xs btn-delete" onclick="confirmDeleteModal('<?=$list["id_guest_group"]?>')">Hapus</button>
                            </td>
                        </tr>

                    <?php endforeach; ?>
                    </tbody>  
	  </table>
	</div>
	</div>
	<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
		<div class="panel panel-warning">
		  <div class="panel-heading"><h4>Tambah Data Grup Tamu</h4></div>
		  <div class="panel-body">
		    <form action="<?=site_url('admin/grup/create')?>" method="post" class="form-horizontal" enctype="multipart/form-data" role="form">
				<fieldset>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="gcode">Kode Grup</label>  
				  <div class="col-md-3">
				  <input id="gcode" maxlength="5" name="gcode" type="text" placeholder="" class="form-control input-md" required="">
				  </div>
				  <label class="col-md-5" style="margin-top:5pt;">*Maksimal 5 karakter</label>
				</div>

				<div class="form-group">
				  <label class="col-md-4 control-label" for="gname">Nama Grup</label>  
				  <div class="col-md-8">
				  <input id="gname" maxlength="50" name="gname" type="text" placeholder="" class="form-control input-md" required="">
				  </div>
				</div>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="diskon">Diskon</label>  
				  <div class="col-md-3">
				  <div class="input-group">
				  	<input id="diskon" maxlength="2" name="diskon" type="text" placeholder="" class="form-control input-md" required="">
				  	<span class="input-group-addon" id="basic-addon2">%</span>
				  </div>
				  </div>
				</div>

				<!-- Button -->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="Submit"></label>
				  <div class="col-md-4">
				    <button id="Submit" name="Submit" class="btn btn-warning">Simpan</button>
				  </div>	
				</div>

				</fieldset>
				</form>

		  </div>
		</div>
	</div>
</div>

<script type="text/javascript">
 
	function confirmDeleteModal(id){
	    $('#deleteModal').modal();
		$('#deleteButton').html('<a class="btn btn-danger" onclick="deleteData('+id+')">Hapus Grup Tamu</a>');
	}     
	
	function deleteData(id){
	  // do your stuffs with id
	  window.location.assign("<?=site_url('admin/grup/delete/')?>"+id)
	  $('#deleteModal').modal('hide'); // now close modal
	}  
</script>

   
<div id="deleteModal" class="modal fade" role='dialog'>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Hapus Grup Tamu</h4>
            </div>
            <div class="modal-body">
                <p>Anda yakin akan menghapus grup tamu ini ?</p>
                <p>Grup ini tidak akan tersedia lagi bagi tamu baru di masa datang. <br/>Namun, histori grup tamu akan tetap ada di setiap transaksi yang pernah tercatat</p>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<span id= 'deleteButton'></span>
            </div>
			
        </div>
      </div>
  </div>