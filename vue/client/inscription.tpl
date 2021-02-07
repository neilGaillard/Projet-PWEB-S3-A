<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Inscription</title>
</head>

<body>

	<div class="center container main transparant">
    	<div class="row">
    		<div class="col-lg-2 col-md-2">
			</div>
    		<h2 class="title">S'inscrire</h2>
    	</div>

    	<form method="post" action="index.php?controle=client&action=inscription">
      		<div class="form-group row">
                <div class="col-lg-2 col-md-2"></div>
        		<label class="col-lg-2 col-md-2 col-sm-2 col-form-label">Nom : </label>
        		<div class=" col-lg-6 col-md-6 col-sm-10">
          			<input type="text" class="form-control" id="NomClient" name="NomClient" placeholder="Entrez votre nom ici">
        		</div>
      		</div>
      		<div class="form-group row">
                <div class="col-lg-2 col-md-2"></div>
        		<label class="col-lg-2 col-md-2 col-sm-2 col-form-label">Mot de Passe : </label>
       			<div class="col-lg-6 col-md-6 col-sm-10">
          			<input type="text" class="form-control" id="MDPClient" name="MDPClient" placeholder="Entrez votre mot de passe ici">
        		</div>
      		</div>
              <div class="form-group row">
              <div class="col-lg-2 col-md-2"></div>
        		<label class="col-lg-2 col-md-2 col-sm-2 col-form-label">Email : </label>
       			<div class="col-lg-6 col-md-6 col-sm-10">
          			<input type="email" class="form-control" id="EmailClient" name="EmailClient" placeholder="Entrez votre adresse email ici">
        		</div>
      		</div>
              <div class="form-group row">
        		<div class="col-lg-10 col-md-10 offset-sm-2 col-sm-10">
                    <label class="col-lg-6 col-md-6 col-sm-12 col-form-label">Vous acceptez les conditions d'utilisation de la plateforme : </label>
          			<input type="checkbox" class="btn btn-primary"/>
        		</div>
      		</div>
      		<div class="form-group row">
        		<div class="col-lg-10 col-md-10 offset-sm-2 col-sm-10">
          			<input type="submit" value="S'Inscrire" name="submit" class="btn btn-primary"/>
        		</div>
      		</div>
    	</form>

	</div>
</body>

</html>