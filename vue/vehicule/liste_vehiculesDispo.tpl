<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Vehicules libres</title>
	</head>

	<body>
		<?php require ("vue/menu.tpl");?>
			<?php
				if ($Vehicule != false) {
                    echo ("<div class='container main justify-content-center transparant'>");
					echo ("<h2> Voici les vehicule disponibles :</h2>");
						echo ("<div class='row'>");
                        	echo("<div class='col-lg-1 col-md-1'>Nom</div>");
                        	echo("<div class='col-lg--1 col-md-1'>Type</div>");
                        	echo("<div class='col-lg-2 col-md-2'>Caracteristiques</div>");
							echo("<div class='col-lg-7 col-md-7'>Visuel</div> ");
							echo("<div class='col-lg-1 col-md-1'>Louer?</div> ");	
                    	echo("</div>");

						foreach ($Vehicule as $v) {

                        echo ("<div class='row'>");
                            echo("<div class='col-lg-1 col-md-1'>");
						        echo ($v['NomV']);
                            echo ("</div>");
                            echo("<div class='col-lg-1 col-md-1'>");
						        echo ($v['TypeV']); 
                            echo ("</div>");
                            echo("<div class='col-lg-2 col-md-2'>");
						        echo ($v['CaractV']); 
                            echo ("</div>");
                            echo("<div class='img-responsive col-lg-7 col-md-7 image'>");
						        $test = "vue/images/" . $v['PhotoV'];
						        echo ("<img src='$test'>");
                            echo ("</div>");
 							echo("<div class='col-lg-1 col-md-1 image'>");
								$IdV=$v["IdV"];
								echo("<a href='index.php?controle=vehicule&action=louerVehicule&IdV=$IdV'>Louer</a>");
							echo ("</div>");
						echo ("</div>");
					}
					echo("</div>");
                    
				}
				else echo ('Pas de véhicules disponibles');
			?>
	</body>
</html>
