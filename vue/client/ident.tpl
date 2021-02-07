<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Connexion</title>
	</head>

	<body>

		<div class="center container main transparant">

		<div class="row">
    		<div class="col-lg-2 col-md-2"></div>
    		<h2 title">Se connecter</h2>
    	</div>
   
		<form method="post" action="index.php?controle=client&action=ident">
      		<div class="form-group row">
			  	<div class="col-lg-2 col-md-2"></div>
        		<label class="col-lg-2 col-md-2 col-sm-2 col-form-label">Nom : </label>
        		<div class="col-lg-6 col-md-6 col-sm-10">
          			<input type="text" class="form-control" id="NomClient" name="NomClient" placeholder="Entrez votre nom ici">
        		</div>
      		</div>
      		<div class="form-group row">
			  	<div class="col-lg-2 col-md-2"></div>
        		<label class="col-lg-2 col-md-2 col-sm-2 col-form-label">Mot de Passe : </label>
       			<div class="col-lg-6 col-md-6 col-sm-10">
          			<input type="password" class="form-control" id="MDPClient" name="MDPClient">
        		</div>
      		</div>
      		<div class="form-group row">
        		<div class="col-lg-10 col-md-10 offset-sm-2 col-sm-10">
          			<input type="submit" value="Se Connecter" name="submit" class="btn btn-primary"/>
        		</div>
      		</div>
    	</form>

		<br>

		<div class="row">
			<div class="col-lg-2 col-md-2"></div>
			<p>Pas de compte? <a href="index.php?controle=client&action=inscription">Inscrivez vous!</a></p>
		</div>

		</div>
	</body>
</html>