<?php
include_once "bd.inc.php";

function allPoste(){
    try {
        $cnx = connexionPDO();

        $req = $cnx->prepare("select nPoste as 'Numero',
                            nomPoste as 'Nom',
                            indIP as 'IP',
                            ad,
                            typePoste as 'Type', 
                            nSalle as 'Numero de salle'
                            From mrbs_poste");
        $req->bindValue(":nPoste", $numPoste ,PDO::PARAM_INT); 
        $req->execute();

        $ligne = $req->fetch(PDO::FETCH_ASSOC);
        while ($ligne) {
            $resultat[] = $ligne;
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
        }
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
    return $resultat ?? null; 
}

function unPoste($numPoste){
    try {
        $cnx = connexionPDO();

        $req = $cnx->prepare("select *
                            From mrbs_poste where nPoste = :nPoste");
        $req->bindValue(":nPoste", $numPoste ,PDO::PARAM_STR); 
        $req->execute();

        $ligne = $req->fetch(PDO::FETCH_ASSOC);
        while ($ligne) {
            $resultat[] = $ligne;
            $ligne = $req->fetch(PDO::FETCH_ASSOC);
        }
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
    return $resultat ?? null; 
}

function creePoste($nomPoste, $indIP, $ad, $typePoste, $nSalle){
    try {
        $cnx = connexionPDO();

        $id ="p".(count(allPoste())+1); 
        /**//*
        $req = $cnx->prepare("INSERT INTO mrbs_poste (nPoste, nomPoste, indIP, ad, typePoste, nSalle) 
                              VALUES ('$id', '$nomPoste', '$indIP', '$ad', '$typePoste', $nSalle)");
        /**/
                              
        /**/
        $req = $cnx->prepare("INSERT INTO mrbs_poste (nPoste, nomPoste, indIP, ad, typePoste, nSalle) 
                              VALUES (:idPoste, :nomPoste, :indIP, :ad, :typePoste, :nSalle)");
        /**/
        $req->execute(array(":idPoste" => $id, 
                        ":nomPoste" => $nomPoste, 
                        ":indIP" => $indIP, 
                        ":ad" => $ad, 
                        ":typePoste" => $typePoste, 
                        ":nSalle" => $nSalle));
        /**/
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
}

function modifierPoste($idPoste, $nomPoste, $indIP, $ad, $typePoste, $nSalle){
    try {
        $cnx = connexionPDO();
        
        $req = $cnx->prepare("UPDATE mrbs_poste SET
                             nomPoste = :nomPoste , indIP = :indIP,
                             ad= :ad, typePoste = :typePoste,
                             nSalle = :nSalle WHERE nPoste = :idPoste"); 
        /**//*
        $req = $cnx->prepare("UPDATE mrbs_poste SET
                             nomPoste = '$nomPoste' , indIP = '$indIP',
                             ad= '$ad', typePoste = '$typePoste',
                             nSalle = $nSalle WHERE nPoste = '$idPoste'");
        /**/
        $req->execute(array(":idPoste" => $idPoste,
                        ":nomPoste" => $nomPoste, 
                        ":indIP" => $indIP, 
                        ":ad" => $ad, 
                        ":typePoste" => $typePoste, 
                        ":nSalle" => $nSalle));
        /**/
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
}
?>