<?php
	/*Fonctions-modèle réalisant les requètes de gestion des clients en base de données*/
	
	function verif_bd($NomClient,$MDPClient,&$profil) {
		require('modele/connectBD.php'); 
		$sql="SELECT * FROM `client` WHERE NomClient=:NomClient AND MDPClient=:MDPClient";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':NomClient', $NomClient);
			$commande->bindParam(':MDPClient', $MDPClient);
			$bool = $commande->execute();
			if ($bool) 
				$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
		
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage());
			die(); 
		}

		if (count($resultat) == 0) {
			$profil = array(); 
			return false; 
		}
		else {
			$profil = $resultat[0]; 
			return true;
		}
	}

	function inscriptionBD($NomClient, $MDPClient, $EmailClient, &$profil){
		require('modele/connectBD.php');
		$sql="INSERT INTO client(NomClient,MDPClient,EmailClient) VALUES (:NomClient, :MDPClient, :EmailClient)";

		try {	
			$commande = $pdo->prepare($sql);
			$commande->bindParam(":NomClient", $NomClient);
			$commande->bindParam(":MDPClient", $MDPClient);
			$commande->bindParam(":EmailClient", $EmailClient);
			$bool = $commande->execute();
			
			if ($bool){
				$sql="SELECT * FROM `client` WHERE NomClient=:NomClient AND MDPClient=:MDPClient";
				try {
					$commande = $pdo->prepare($sql);
					$commande->bindParam(':NomClient', $NomClient);
					$commande->bindParam(':MDPClient', $MDPClient);
					$bool = $commande->execute();
					if ($bool) 
						$resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
				
				}
				catch (PDOException $e) {
					echo utf8_encode("Echec de select : " . $e->getMessage());
					die(); 
				}
				$profil['IdClient'] = $resultat[0]['IdClient'];
				$profil['NomClient'] = $NomClient;
				$profil['MDPClient'] = $MDPClient;
				$profil['EmailClient'] = $EmailClient;
			}

		} catch (PDOException $e) {
			echo utf8_encode("echec de insert  : " . $e->getMessage());
			require ("inscription.tpl") ;
		}
		return true;
	}
?>