<?php 
/*if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}
include_once "$racine/modele/bd.etudiant.inc.php";
include_once "$racine/modele/bd.classe.inc.php";  
include "options.php";*/

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

$attributes = array('id'     => 'edit_room',
                    'class'  => 'standard',
                    'action' => multisite('edit_room_handler.php'),
                    'method' => 'post');

// Non-admins will only be allowed to view room details, not change them
$legend = (is_admin()) ? get_vocab('editroom') : get_vocab('viewroom');

$form->setAttributes($attributes)
     ->addHiddenInput('room', $data['id'])
     ->addHiddenInput('old_area', $data['area_id'])
     ->addHiddenInput('old_room_name', $data['room_name']);

$outer_fieldset = new ElementFieldset();

$outer_fieldset->addLegend($legend)
               ->addElement(get_fieldset_errors($errors))
               ->addElement(get_fieldset_general($data));

$form->addElement($outer_fieldset);

$form->render();

if ($auth['allow_custom_html'])
{
  // Now the custom HTML
  echo "<div id=\"div_custom_html\">\n";
  // no htmlspecialchars() because we want the HTML!
  echo (isset($data['custom_html'])) ? $data['custom_html'] . "\n" : "";
  echo "</div>\n";
}

echo ' <p class="ajoutPoste"> Ajouter un nouveau poste informatique : <a class = "ajoutPoste" href ="MVC.php?action=editeP"> Ajouter </a></p>'; 
if(isset($lesPostes)){
    
    $color = "nameT1"; 
   // Liste des postes informatique de la Salle 
   // Sous forme de table
   echo '
   <div id=\"room_info\" class=\"datatable_container\">
       <table id=\"rooms_table\" class=\"admin_table display\">
            <thead> <h2> Les Postes informatique dans la Salle : </h2>
               <tr>'; 
                    if(isset($lesPostes[0])){

                        $keyName = $lesPostes[0]; 
                        echo ' <th class = "'.$color.'"><p align = "center">'.key($keyName).  '</p></td>' ; 

                        
                        while(next($keyName)){
                                                
                            if( $color == "nameT1"){
                                $color = "nameT2"; 
                            }else {
                            $color = "nameT1"; 
                            }

                            echo ' <th class = "'.$color.'"><p align = "center">'.key($keyName).  '</p></td>' ; 
                            
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
                    echo ' <td class = "'.$color.'"><a class="poste" title="Clique pour modifier le Poste ! " href = "MVC.php?action=editeP&poste='.$unPoste[key($unPoste)].'&room='.$_GET["room"].'"><p align = "center">' .$unPoste[key($unPoste)]. '</p></a></td>' ; 
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
     