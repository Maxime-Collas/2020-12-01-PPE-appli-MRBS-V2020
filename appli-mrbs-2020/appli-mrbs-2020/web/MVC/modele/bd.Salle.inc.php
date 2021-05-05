<?php
include_once "bd.inc.php";

function allSalle(){
    try {
        $cnx = connexionPDO();

        $req = $cnx->prepare("select id as 'Numero',
                            disabled as 'Etat',
                            area_id as 'Numero du Type',
                            room_name as 'Nom du Type',
                            sort_key as 'Nom',
                            description as 'Description de la salle',
                            capacity as 'Capacite de la salle',
                            room_admin_email as 'Mail des responsables',
                            invalid_types as 'Type de reservation',
                            custom_html as 'custom_html'
                            From mrbs_room where area_id = 1");
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

function allPostForIdSalle($numSalle){
    try {
        $cnx = connexionPDO();

        $req = $cnx->prepare("select nPoste as 'Numero',
                            nomPoste as 'Nom',
                            indIP as 'IP',
                            ad,
                            typePoste as 'Type'
                            From mrbs_poste where nSalle = :nSalle");
        $req->bindValue(":nSalle", $numSalle ,PDO::PARAM_INT); 
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
?>