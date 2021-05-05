
/* utiliser setAttribute pour insert mon onchange */

// initialise la variable contenant tous les Poste
var tousLesPoste = document.getElementById("javaScript").value; 
// Mets en forme les donnees 
tousLesPoste = JSON.parse(tousLesPoste);

// tous les champ du formulaire 
var selectPoste = document.getElementById("new_Poste"); 
var selectSalle = document.getElementById("Salle"); 
var selectroom_name = document.getElementById("name"); 
var selectindIP = document.getElementById("indIP"); 
var selectAd = document.getElementById("ad"); 
var selectType = document.getElementById("Type"); 

// le bouton qui envoie le formulaire 
//var btnValide = document.querySelector("#editePoste\\.php > fieldset > fieldset:nth-child(3) > div.buttons > input[type=submit]"); 
var btnValide = document.querySelectorAll("input[type=submit]")[5] 

// la div qui contient le tableau avec tous les postes 
var divTablePoste = document.getElementById("room_info");

// fonction qui ce lance au chargement de la page 
// est qui initie le neccessaire pour permettre le bon fonctionnement des scripts
function load() {
    // onchange verifier si l'option cocher change 
    selectPoste.setAttribute("onchange", "chargerLePoste()");
    selectSalle.setAttribute("onchange", "chargerLaSalle()");

    // onkeydown permets de mettre en place un ecouteur 
    //qui regard quand l'utilisateur relache le clivier
    selectroom_name.setAttribute("onkeyup", "valideNom()");
    selectindIP.setAttribute("onkeyup", "valideIP()");
    selectAd.setAttribute("onkeyup", "valideAd()");
    selectType.setAttribute("onkeyup", "valideType()");
        
}

function chargerLePoste() {



    let idPoste = document.getElementById("new_Poste").value;
    
    idPoste = idPoste.replace(/[^\0-9]/ig, "")//permets de ne garder que les valeurs numerique
    let lePoste = tousLesPoste[idPoste-1]

   // window.location.href = "MVC.php?action=editeP&poste=p" + idPoste + "&room=2"

    if (idPoste == 0) { // cas ou on veut cree une nouvelle salle
        // il ne se passe rien
    } else {

    
        selectSalle.value = lePoste["Numero de salle"]
        selectroom_name.value = lePoste["Nom"]  
        selectindIP.value = lePoste["IP"]
        selectAd.value = lePoste["ad"] 
        selectType.value = lePoste["Type"]
    
        chargerLaSalle() // active la fonction chargerlaSalle()
    }
}

function chargerLaSalle() {

    let idSalle = document.getElementById("Salle").value;
    let trs = '' 
    let i = 0 

    while (tousLesPoste.length > i) { // tousLesPoste[i]["Numero de salle"]

        if (idSalle == tousLesPoste[i]["Numero de salle"]) {
        
            trs += ' <tr> ' +
            ' <td class = "nameT1"> ' +
            ' <p align = "center">' + tousLesPoste[i]["Numero"] + '</p> ' +
            ' </td> ' +
            ' <td class = "nameT2"> ' +
            ' <p align = "center">' + tousLesPoste[i]["Nom"] + '</p> ' +
            ' </td> ' +
            ' <td class = "nameT1"> ' +
            ' <p align = "center">' + tousLesPoste[i]["IP"] + '</p> ' +
            ' </td> ' +
            ' <td class = "nameT2"> ' +
            ' <p align = "center"> ' + tousLesPoste[i]["ad"] + ' </p> ' +
            ' </td> ' +
            ' <td class = "nameT1"><p align = "center">' + tousLesPoste[i]["Type"] + '</p></td> ' +
            ' </tr> '; 
        }
        i += 1; 
        
    }
    
    divTablePoste.innerHTML = (' <h2> Rappel des Postes informatique dans la Salle Selectionne : </h2> ' +
     ' <table id ="rooms_table"  class="admin_table"  display> ' +
         ' <thead> ' +
             ' <tr> <th class = "nameT1"> ' +
                ' <p align = "center">Numero</p> ' +
             ' </th> ' +
             '  <th class = "nameT2"> ' +
                ' <p align = "center">Nom</p> ' +
             ' </th> ' +
             ' <th class = "nameT1"> ' +
                ' <p align = "center">IP</p> ' +
             ' </th> ' +
             ' <th class = "nameT2"> ' +
                ' <p align = "center">ad</p> ' +
             ' </th> ' +
             ' <th class = "nameT1"> ' +
                 ' <p align = "center">Type</p> ' +
             ' </td> ' +
         ' </tr> ' +
         ' </thead> ' +
        ' <tbody> '
            + trs + // contient toute les information sur les postes dans des <tr>
        ' </tbody> ' +
     ' </table> ')
       
     
     /**/

}
/*
selectSalle.value = lePoste["Numero de salle"]
 = lePoste["Nom"]
selectindIP.value = lePoste["IP"]
selectAd.value = lePoste["ad"]
selectType.value = lePoste["Type"]
*/
function valideNom(){
    if (selectroom_name.value.length > 20) {
        selectroom_name.style.borderBlockColor = "red"
        btnValide.disabled = true
    } else {
        selectroom_name.style.borderBlockColor = "green"
        selectroom_name.style.borderWidth = "3px"
        btnValide.disabled = false
    }
}

function valideIP(){

    let faux = false; 
    let bit = selectindIP.value.split('.')


    if (bit.length == 3 && bit[2].length > 0) {

        let valide = bit[0].replace(/[^\0-9]/ig, "")
        let valide1 = bit[1].replace(/[^\0-9]/ig, "")
        let valide2 = bit[2].replace(/[^\0-9]/ig, "")

        if (valide == bit[0] &&
            valide1 == bit[1] &&
            valide2 == bit[2]) {

            if (valide <= 255 && valide >= 0 && valide.length < 4 &&
                valide1 <= 255 && valide1 >= 0 && valide1.length < 4 &&
                valide2 <= 255 && valide2 >= 0 && valide2.length < 4) {

                    selectindIP.style.borderBlockColor = "green"
                    selectindIP.style.borderWidth = "3px"
                    btnValide.disabled = false

            } else {
                    faux = true
                    //selectindIP.style.borderBlockColor = "blue"
            }
        } else {
                faux = true
                //selectindIP.style.borderBlockColor = "black"
        }

    } else {
        selectindIP.style.borderBlockColor = "blue"
        btnValide.disabled = true
    }
    if (faux == true) {
        selectindIP.style.borderBlockColor = "red"
        selectindIP.style.borderWidth = "5px"
        btnValide.disabled = true
    }
    
}

function valideAd(){
    if (selectAd.value.length > 3) {
        selectAd.style.borderBlockColor = "red"
        selectAd.style.borderWidth = "5px"
        btnValide.disabled = true
    } else {
        selectAd.style.borderBlockColor = "green"
        selectAd.style.borderWidth = "3px"
        btnValide.disabled = false
    }
}

function valideType(){
    if (selectType.value.length > 9) {
        selectType.style.borderBlockColor = "red"
        selectType.style.borderWidth = "5px" 
        btnValide.disabled = true
    } else {
        selectType.style.borderBlockColor = "green"
        selectType.style.borderWidth = "3px"
        btnValide.disabled = false
    }
}
