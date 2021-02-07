<!doctype html>
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

<body>
    <div id="allHead" class="sticky-top sticky container-fluid">
        <div class="row">
            <div id="header" class="col-lg-12 col-md-12 col-sm-12 justify-content-center">
                LOCATURE
            </div>
        </div>

        <div id="Menu" class="row transparant">
            <div id="menuTitle" class="menuContent col col-lg-6 col-md-6 col-sm-6">
                <a href="index.php?controle=client&action=ident">Se Connecter</a>
            </div>
            <div id="menu1" class="menuContent col col-lg-6 col-md-6 col-sm-6">
                <a href="index.php?controle=client&action=inscription">S'inscrire</a>
            </div>
        </div>
    </div>

    <?php
		if ($Vehicule != false) {
                    echo ("<div class='container main sticky  justify-content-center transparant'>");
					echo ("<h2> Voici les vehicules disponibles :</h2>");
						echo ("<div class='row'>");
                        	echo("<div class='col-md-1'>Nom</div>");
                        	echo("<div class='col-md-1'>Type</div>");
                        	echo("<div class='col-md-2'>Caracteristiques</div>");
							echo("<div class='col-md-8'>Visuel</div> ");	
                    	echo("</div>");

						foreach ($Vehicule as $v) {

                        echo ("<div class='row'>");
                            echo("<div class='col-md-1'>");
						        echo ($v['NomV']);
                            echo ("</div>");
                            echo("<div class='col-md-1'>");
						        echo ($v['TypeV']); 
                            echo ("</div>");
                            echo("<div class='col-md-2'>");
						        echo ($v['CaractV']); 
                            echo ("</div>");
                            echo("<div class='img-responsive col-md-8 image'>");
						        $test = "vue/images/" . $v['PhotoV'];
						        echo ("<img src='$test'>");
                            echo ("</div>");
						echo ("</div>");
					}
					echo("</div>");
				}
				else echo ('Pas de véhicules disponibles');
			
	?>
</body>
</html>