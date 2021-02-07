
<?php 
	session_start ();
	
	if ((count($_GET)!=0) && !(isset($_GET['controle']) && isset ($_GET['action'])))
	require ('./vue/erreur404.tpl'); 
	
	else {
		if ((! isset($_SESSION['profil'])) || count($_GET)==0)	{ 
			$controle='client';
			$action='acceuilSansConnexion';	
			if (isset($_GET['action'])){
				$action = $_GET['action'];
			}
		}
		else {
			if (isset($_GET['controle']) && isset ($_GET['action'])) {
				$controle = $_GET['controle'];   
				$action =  $_GET['action'];
			}
		}
		require ('./controle/' . $controle . '.php');
		$action();
	} 
?>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="./vue/styleCSS/styleGeneral.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
