<?php 
	/* Fonctions-modèle réalisant les requètes de gestion des contacts en base de données */
	
	// vehiculeMisLocationsBD : retourne la liste des véhicules loués par un clien
	
	function vehiculesMisLocationBD($idn) {
		require ("Modele/connectBD.php") ;
	
		$sql = 'SELECT c.IdV, c.NomV,c.PhotoV,c.CaractV,c.TypeV, f.DateDebut, f.DateFin, f.Montant FROM vehicule c, client u,facturation f 
		WHERE(c.IdV=f.IdvF And u.NomClient = "' . $idn . '" And f.Idef = u.IdClient)';
		
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':IdV', $idn);
			$bool = $commande->execute();
			$C = array(); 
			if ($bool)
				while ($l = $commande->fetch())
					$C[] = $l; 
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage());
			die(); 
		}
		return $C 	; 
	}

	function vehiculesDisponiblesBD(){
		require ("modele/connectBD.php") ;
	
		$sql = 'SELECT v.IdV, v.NomV,v.PhotoV,v.CaractV,v.TypeV, v.LocationV FROM vehicule v
		WHERE(v.LocationV=0)';
		
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':IdV', $idn);
			$bool = $commande->execute();
			$C = array(); 
			if ($bool)
				while ($l = $commande->fetch())
					$C[] = $l; 
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage());
			die(); 
		}
		return $C; 
	}

	function louerVehiculeBD($IdV, $DateDebut, $DateFin){
		require ("modele/connectBD.php") ;
	
		$sql = 'UPDATE vehicule
		SET LocationV = 1
		WHERE IdV = :IdVehicule';
		
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':IdVehicule', $IdV);
			$bool = $commande->execute();

			require ("modele/facturationBD.php");

			facturationBD($IdV, $DateDebut, $DateFin);
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage());
			die(); 
		}
	}
?>