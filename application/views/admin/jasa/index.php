<div class="row">
	<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
		<div class="panel panel-warning">
	  <!-- Default panel contents -->
	  <div class="panel-heading"><h4>Data Jasa Lain-lain</h4></div>

	  <!-- Table -->
	  <table class="table">
	    <table class="table">
		  <thead>
	        <tr>
	        	<th>No</th>
	        	<th>Nama Jasa</th>
	            <th>Harga</th>
	            <th>Action</th>
	        </tr>
	      </thead>
	       <tbody>
                    <?php $no = 1; ?>
                    <?php foreach($jasa as $list): ?>

                        <tr>
                            <td><?=$no++?></td>
                            <td><?=$list['nama']?></td>
                            <td><?=$list['harga']?></td>
                            <td>
                               <button class="btn btn-warning btn-xs">Detail</button>
                               <button class="btn btn-success btn-xs">Ganti</button>
                               <button class="btn btn-danger btn-xs">Hapus</button>
                            </td>
                        </tr>

                    <?php endforeach; ?>
                    </tbody>  
	  </table>
	</div>
	</div>
	<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">
		<div class="panel panel-warning">
		  <div class="panel-heading"><h4>Tambah Jasa Lain-lainnya</h4></div>
		  <div class="panel-body">
		    <form class="form-horizontal">
				<fieldset>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="servicename">Nama</label>  
				  <div class="col-md-8">
				  <input id="servicename" name="servicename" type="text" placeholder="" class="form-control input-md" required="">
				    
				  </div>
				</div>

				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="price">Harga</label>  
				  <div class="col-md-8">
				  <input id="price" name="price" type="text" placeholder="" class="form-control input-md" required="">
				    
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