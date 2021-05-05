<?php

function controleurPrincipal($action) {
    $lesActions = array();
    $lesActions["defaut"] = "editeSalle.php";
    $lesActions["editeS"] = "editeSalle.php";
    $lesActions["editeP"] = "editePoste.php";

    if (array_key_exists($action, $lesActions)) {
        return $lesActions[$action];
    } else {
        return $lesActions["defaut"];
    }
}

?>