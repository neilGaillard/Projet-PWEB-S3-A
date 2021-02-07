<?php
function facturationBD ($IdV, $DateDebut, $DateFin){
    require('modele/connectBD.php');
    date_default_timezone_set('Europe/Paris');

    $DateDebut = strtr($DateDebut, '/', '-');
    $DateFin = strtr($DateFin, '/', '-');

    $insertDateDebut = date('Y-m-d', strtotime($DateDebut));
    $insertDateFin = date('Y-m-d', strtotime($DateFin));
    $nbJours=($insertDateFin - $insertDateDebut)/ 3600 / 24;

    $sql="INSERT INTO facturation(IdeF,IdvF, DateDebut, DateFin, Montant) VALUES (:IdClient, :IdVehicule, :DateDebut, :DateFin, :Montant)";

    try {	
        $commande = $pdo->prepare($sql);
        $commande->bindParam(":IdClient", $_SESSION['profil']['IdClient']);
        $commande->bindParam(":IdVehicule", $IdV);
        $commande->bindParam(":DateDebut", $insertDateDebut);
        $commande->bindParam(":DateFin", $insertDateFin);
        $commande->bindParam(":Montant", $nbJours);

        $bool = $commande->execute();

    } catch (PDOException $e) {
        echo utf8_encode("echec de insert facturation : " . $e->getMessage());
        require ("inscription.tpl") ;
    }
    return true;
}
?>