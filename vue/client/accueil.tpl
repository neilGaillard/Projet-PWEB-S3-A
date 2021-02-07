<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>Acceuil</title>
	</head>
	
	<body>
		<?php require ("vue/menu.tpl");?>	
		<div class="container main transparant">
		
		<h2> Bienvenue 
			<?php $nom = $_SESSION['profil']['NomClient'];
			echo($nom);
			?>
		</h2>
			<?php 
				if ($Vehicule != false) {
					echo ("<h2'> Voici vos vehicules :</h2>");
					echo ('<table>');
					echo ('<tr><th> NOM </th><th> TYPE </th><th> CARACTERISTIQUES </th></tr>'); 	
					foreach ($Vehicule as $v) {
						echo "<tr class='vehicule'>";
						echo ("<td>" . $v['NomV'] . "</td>"); // utf8_encode($v['nom']) si nécessaire
						echo ("<td>" . $v['TypeV'] . "</td>"); 
						echo ("<td>" . $v['CaractV'] . "</td>"); 
						echo "</tr>\n";
					}
					echo ('</table>');
				}
				else echo ('Vous n\'avez pas loué de véhicules');
			?>
		</div>

	</body>
</html>
