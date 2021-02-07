<div class="container transparant">
    <h3>Confirmer la location</h3>
    
    <form method="post" action="index.php?controle=vehicule&action=louerVehicule">
      		<div class="form-group row">
			  	<div class="col-lg-2 col-md-2"></div>
        		<label class="col-lg-2 col-md-2 col-sm-2 col-form-label">Début Location : </label>
        		<div class="col-lg-6 col-md-6 col-sm-10">
          			<input type="date" class="form-control" id="DateDebut" name="DateDebut" placeholder="Date du début de Location">
        		</div>
      		</div>
      		<div class="form-group row">
			  	<div class="col-lg-2 col-md-2"></div>
        		<label class="col-lg-2 col-md-2 col-sm-2 col-form-label">Fin Location : </label>
       			<div class="col-lg-2 col-md-6 col-sm-10">
          			<input type="date" class="form-control" id="DateFin" name="DateFin" placeholder="Date de fin de Location">
        		</div>
      		</div>
      		<div class="form-group row">
        		<div class="col-lg-10 col-md-10 offset-sm-2 col-sm-10">
          			<input type="submit" value="Louer" name="submit" class="btn btn-primary"/>
        	    </div>
      	    </div>
    </form>
</div>