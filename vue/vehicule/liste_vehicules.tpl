<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Vehicules loués par vous</title>
	</head>

	<body>
		<?php require ("vue/menu.tpl");?>
		
		<div class="container transparant main">
			<?php
				if ($Vehicule != false) {
					echo ("<h3> Rappel de vos vehicules :</h3>");
					echo ('<table>');
					echo ('<tr><th> NOM </th> <th> TYPE </th> <th> CARACTERISTIQUE </th> <th> PHOTO </th> <th> DATE DEBUT LOCATION </th> <th> DATE FIN LOCATION </th> <th> MONTANT </th> </tr>'); 	
					foreach ($Vehicule as $v) {
						echo "<tr class='vehicule'>";
						echo ("<td>" . $v['NomV'] . "</td>");
						echo ("<td>" . $v['TypeV'] . "</td>"); 
						echo ("<td>" . $v['CaractV'] . "</td>"); 
						$test = "vue/images/" . $v['PhotoV'];
						echo ("<td>" . "<img src='$test'>"  . "</td>");
						echo ("<td>" . $v['DateDebut'] . "</td>");
						echo ("<td>" . $v['DateFin'] . "</td>");
						echo ("<td>" . $v['Montant'] ."€" . "</td>");
						echo "</tr>\n";
					}
					echo ('</table>');
				}
				else echo ('pas de vehicules');
			?>
		</div>
	</body>
</html>
