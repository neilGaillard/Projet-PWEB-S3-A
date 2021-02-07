<?php 
	/*controleur vehcule.php :
	 *	fonctions-action de gestion des vehicules
	 */
	
	/*
	 * Donne la liste des véhicules en cours de location par l'entreprise connectée
	 */
	function liste_vehicules() {
		require ("modele/vehiculeBD.php");
		$idn = (isset($_GET['IdV']))?$_GET['IdV']:$_SESSION['profil']['NomClient'];
		$Vehicule = vehiculesMisLocationBD($idn);
		require ("vue/vehicule/liste_vehicules.tpl");
	}

	/*
     * Donne la liste des tout les véhicules disponibles
	 */
	function listeVehiculesLibres(){
		require ("modele/vehiculeBD.php");
		$Vehicule = vehiculesDisponiblesBD();
		require ("vue/vehicule/liste_vehiculesDispo.tpl");
	}

	function louerVehicule(){
		$DateDebut = (isset($_GET['DateDebut']))?$_GET['DateDebut']:'';
		$DateFin = (isset($_GET['DateFin']))?$_GET['DateFin']:'';

		require ("modele/vehiculeBD.php");

		if (count($_GET) == 3) {
			$_SESSION['IdV'] = (isset($_GET['IdV']))?$_GET['IdV']:'';
			require ("vue/vehicule/louer.tpl");
		} else {
			louerVehiculeBD($_SESSION['IdV'], $DateDebut, $DateFin);
			$nexturl = "index.php?controle=client&action=accueil";
			header("Location:" . $nexturl);
		}
	}
?>