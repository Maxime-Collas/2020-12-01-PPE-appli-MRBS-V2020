<?php 

namespace MRBS;

use MRBS\Form\Form;
use MRBS\Form\ElementInputSubmit;
use MRBS\Form\ElementFieldset;
use MRBS\Form\ElementP;
use MRBS\Form\FieldInputCheckbox;
use MRBS\Form\FieldInputRadioGroup;
use MRBS\Form\FieldInputEmail;
use MRBS\Form\FieldInputNumber;
use MRBS\Form\FieldInputSubmit;
use MRBS\Form\FieldInputText;
use MRBS\Form\FieldSelect;
use MRBS\Form\FieldTextarea;


// Get the details for this room
if (empty($room) || is_null($data = get_room_details($room)))
{
  fatal_error(get_vocab('invalid_room'));
}

$errors = get_form_var('errors', 'array');

// Generate the form
$form = new Form();

$attributes = array('id'     => 'editePoste.php',
                    'class'  => 'standard',
                    'action' => multisite('MVC.php?action=editeP'),
                    'method' => 'post');

// Non-admins will only be allowed to view room details, not change them
//$legend = (is_admin()) ? get_vocab('editroom') : get_vocab('viewroom');
$legend = (is_admin()) ? 'Modifier ou ajouter un poste' : 'voir le poste';

if(isset($_GET['poste'])){
    $idPost = $_GET['poste']; 
}

$form->setAttributes($attributes)
     ->addHiddenInput('poste', $idPost)
     ->addHiddenInput('old_area', $data['area_id'])
     ->addHiddenInput('old_room_name', $data['room_name'])
     ; 
$outer_fieldset = new ElementFieldset();
    
// genere le tableau de donnee du formulaire s'il n'y a pas d'erreur, si non generer un rapport d'erreur. 
$outer_fieldset->addLegend($legend) // Titre 
               ->addElement(get_fieldset_errors($errors)) // rapport d'erreur 
               ->addElement(get_fieldset_general($data)); // donnee du formulaire


$form->addElement($outer_fieldset); // insert le tableau de donnee dans le formulaire

$form->render(); // affiche le formulaire 

if ($auth['allow_custom_html'])
{
  // Now the custom HTML
  echo "<div id=\"div_custom_html\">\n";
  // no htmlspecialchars() because we want the HTML!
  echo (isset($data['custom_html'])) ? $data['custom_html'] . "\n" : "";
  echo "</div>\n";
}

// transforme en json toute les donnee envoyer au script javaScript 
echo "<input type=hidden value='".json_encode($touslesPostes)."' id='javaScript'> </input>"; 
echo ' <div id=room_info class=\"datatable_container\">'; 
if(isset($lesPostes)){
    
    $color = "nameT1"; 
   // Liste des postes informatique de la Salle 
   // Sous forme de table
   echo '
          <table id=\"rooms_table\" class=\"admin_table display\">
            <thead> <h2> Rappel des Postes informatique dans la Salle Selectionne : </h2>
               <tr>'; 
                    if(isset($lesPostes[0])){

                        $keyName = $lesPostes[0]; 
                        echo ' <th class = "'.$color.'"><p align = "center">'.key($keyName).  '</p></th>' ; 

                        
                        while(next($keyName)){
                                                
                            if( $color == "nameT1"){
                                $color = "nameT2"; 
                            }else {
                            $color = "nameT1"; 
                            }

                            echo ' <th class = "'.$color.'"><p align = "center">'.key($keyName).  '</p></th>' ; 
                            
                    }
                    }else {
                        echo "Actuellement aucun Poste informatique dans la Salle";  
                    }
   echo '   
               </tr>
            </thead>
            <tbody>
               '; 
               foreach($lesPostes as $unPoste){
               echo'
               <tr>';
                    $color = "nameT1";
                    echo ' <td class = "'.$color.'"><p align = "center">'.$unPoste[key($unPoste)].  '</p></td>' ; 
                    while(next($unPoste)){
                                                
                        if( $color == "nameT1"){
                            $color = "nameT2"; 
                        }else {
                        $color = "nameT1"; 
                        }
                        echo ' <td class = "'.$color.'"><p align = "center">'.$unPoste[key($unPoste)].  '</p></td>' ; 
                    }
               echo'
               </tr>';
               }

   echo ' 
               
            </tbody>
        <table>
    </div>';
    /**/
}
?>
<body onload="load()"></body>

<!--
<button onclick="chargerLePoste()">Click chargerLePoste</button>
<button onclick="chargerLaSalle()">Click load</button>
-->  