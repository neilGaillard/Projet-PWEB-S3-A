<?php 
	/*  Controleur client.php
	 *	Fonctions de gestion des clients
	 */

	/*
	 * Renseigne les données d'un client dans $_SESSION (connexion)
	 */
	function ident () {
		$NomClient = isset($_POST['NomClient'])?trim($_POST['NomClient']):'';
		$MDPClient = isset($_POST['MDPClient'])?trim($_POST['MDPClient']):'';
		$EmailClient = '';
		$msg = "";
		
		require ("./modele/clientBD.php");

		if (count($_POST)==0) require("vue/client/ident.tpl");
		else {
			if (verif_bd($NomClient, $MDPClient, $profil)) {
				$_SESSION['profil'] = $profil;
				$nexturl = "index.php?controle=client&action=accueil";
				header("Location:" . $nexturl); 
				$msg = $_SESSION['profil']['NomClient'];
			}
			else {	
			 	$msg = "Client inconnu";
				require("vue/client/ident.tpl");
			}
		}
	}

	/*
	* Renseigne les données d'un client dans la base (inscription)
	*/
	function inscription () {
		$NomClient = isset($_POST['NomClient'])?trim($_POST['NomClient']):'';
		$MDPClient = isset($_POST['MDPClient'])?trim($_POST['MDPClient']):'';
		$EmailClient = isset($_POST['EmailClient'])?trim($_POST['EmailClient']):'';

		require ("./modele/clientBD.php");
		
		if (count($_POST)==0) require("vue/client/inscription.tpl");
		else {
			
			if (inscriptionBD($NomClient, $MDPClient, $EmailClient, $profil)) {
				
				$_SESSION['profil'] = $profil;
				$nexturl = "index.php?controle=client&action=accueil";
				header("Location:" . $nexturl);
			}
			else {
				$msg = "Echec inscription";
				require("vue/client/inscription.tpl");
			}
		}
	}
	
	/*
	* Appelle l'acceuil lorsque on est pas connecté
	*/
	function acceuilSansConnexion(){
		require ("modele/connectBD.php");
		require ("modele/vehiculeBD.php");
		$Vehicule = vehiculesDisponiblesBD();
		require ("vue/menuSansConnection.tpl");
	}
	
	/*
	* Appelle l'acceuil quand il y a quelque chose dans $_SESSION
	*/
	function accueil() {
		require ("modele/connectBD.php");
		$idn = $_SESSION['profil']['NomClient'];
		require ("modele/vehiculeBD.php");
		$Vehicule = vehiculesMisLocationBD($idn);
		require ("vue/client/accueil.tpl");
	}
	
	function verifS_ident($NomClient, $MDPClient, &$err) {
		if (!preg_match("`^[[:alpha:][:digit:]\-]{1,30}$`", $NomClient)) {
			$err = 'Identifiant incorrect';
			return false;
		}
		return true;
	} 
	
	/*
	* Deconnecte l'utilisateur
	*/
	function bye() {
		$_SESSION['profil'] = null;
		session_destroy();
		$url = "index.php?controle=client&action=acceuilSansConnexion";
		header("Location: $url");
	}
?>