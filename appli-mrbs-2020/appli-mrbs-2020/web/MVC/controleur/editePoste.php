<?php

namespace MRBS;

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}
/*
include_once "$racine/modele/bd.etudiant.inc.php";
include_once "$racine/modele/bd.classe.inc.php";
*/
session_start();


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


require_once "version.inc";
require_once "mrbs_sql.inc";
require_once "MVC/modele/bd.Salle.inc.php";
require_once "MVC/modele/bd.Poste.inc.php";

// If you want to add some extra columns to the room table to describe the room
// then you can do so and this page should automatically recognise them and handle
// them.    At the moment support is limited to the following column types:
//
// MySQL        PostgreSQL            Form input type
// -----        ----------            ---------------
// bigint       bigint                text
// int          integer               text
// mediumint                          text
// smallint     smallint              checkbox
// tinyint                            checkbox
// text         text                  textarea
// tinytext                           textarea
//              character varying     textarea
// varchar(n)   character varying(n)  text/textarea, depending on the value of n
//              character             text
// char(n)      character(n)          text/textarea, depending on the value of n
//
// NOTE 1: For char(n) and varchar(n) fields, a text input will be presented if
// n is less than or equal to $text_input_max, otherwise a textarea box will be
// presented.
//
// NOTE 2: PostgreSQL booleans are not supported, due to difficulties in
// handling the fields in a database independent way (a PostgreSQL boolean
// will return a PHP boolean type when read by a PHP query, whereas a MySQL
// tinyint returns an int).   In order to have a boolean field in the room
// table you should use a smallint in PostgreSQL or a smallint or a tinyint
// in MySQL.
//
// You can put a description of the column that will be used as the label in
// the form in the $vocab_override variable in the config file using the tag
// 'room.[columnname]'.
//
// For example if you want to add a column specifying whether or not a room
// has a coffee machine you could add a column to the room table called
// 'coffee_machine' of type tinyint(1), in MySQL, or smallint in PostgreSQL.
// Then in the config file you would add the line
//
// $vocab_override['en']['room.coffee_machine'] = "Coffee machine";  // or appropriate translation
//
// If MRBS can't find an entry for the field in the lang file or vocab overrides, then
// it will use the fieldname, eg 'coffee_machine'.


function get_custom_fields($data)
{
  global $standard_fields, $text_input_max;

  $result = array();
  $disabled = !is_admin();

  // Get the information about the columns in the room table
  $columns = db()->field_info(_tbl('room'));

  foreach ($columns as $column)
  {
    if (!in_array($column['name'], $standard_fields['room']))
    {
      $label = get_loc_field_name(_tbl('room'), $column['name']);
      $name = VAR_PREFIX . $column['name'];
      $value = $data[$column['name']];

      // Output a checkbox if it's a boolean or integer <= 2 bytes (which we will
      // assume are intended to be booleans)
      if (($column['nature'] == 'boolean') ||
          (($column['nature'] == 'integer') && isset($column['length']) && ($column['length'] <= 2)) )
      {
        $field = new FieldInputCheckbox();
        $field->setLabel($label)
              ->setControlAttributes(array('name'     => $name,
                                           'disabled' => $disabled))
              ->setChecked($value);
      }
      // Output a textarea if it's a character string longer than the limit for a
      // text input
      elseif (($column['nature'] == 'character') && isset($column['length']) && ($column['length'] > $text_input_max))
      {
        $field = new FieldTextarea();
        $field->setLabel($label)
              ->setControlAttributes(array('name'     => $name,
                                           'disabled' => $disabled))
              ->setControlText($value);
      }
      // Otherwise output a text input
      else
      {
        $field = new FieldInputText();
        $field->setLabel($label)
              ->setControlAttributes(array('name'      => $name,
                                           'value'     => $value,
                                           'maxlength' => maxlength('room.' . $column['name']),
                                           'disabled'  => $disabled));
      }
      $result[] = $field;
    }
  }

  return $result;
}


function get_fieldset_errors($errors)
{
  $fieldset = new ElementFieldset();
  $fieldset->addLegend('')
           ->setAttribute('class', 'error');

  foreach ($errors as $error)
  {
    $element = new ElementP();
    $element->setText(get_vocab($error));
    $fieldset-> addElement($element);
  }

  return $fieldset;
}

function get_fieldset_general($data)
{
  global $auth;

  $disabled = !is_admin();

  $fieldset = new ElementFieldset();

  $infoPoste = unPoste($_GET['poste'])[0]; // donne toutes les informations sur le poste selectionne

 /**********************           **********************/
 // liste des Poste pour la salle actuellement selectionne  
 
 $touslesPostes = allPoste();
 $nomPostes[] = 'nouveau Poste'; 
 $idPostes[] = null; 
 foreach($touslesPostes as $lePoste){
      $nomPostes[$lePoste['Numero']] = $lePoste['Nom']; 
 }
   /*
  var_dump($nomPostes); 
  echo " </br> "; 
  var_dump($idPostes); 
 /**/
  $field = new FieldSelect();
  $field->setLabel('Numero Poste') 
        ->setControlAttributes(array('name'     => 'new_Poste',
                                     'disabled' => $disabled))
        ->addSelectOptions($nomPostes, $infoPoste['nPoste'], true);
  $fieldset->addElement($field);

  /**********************           **********************/
  // liste des Salle avec la salle selectionne en parametre de depart
  $lesSalles = allSalle(); 
  foreach($lesSalles as $laSalle){
        $nomSalles[$laSalle['Numero']] = $laSalle['Nom']; 
  }
  /*
  var_dump($nomSalles); 
  echo " </br> "; 
  var_dump($idSalles); 
 /**/

  $field = new FieldSelect();
  $field->setLabel('Numero Salle')
        ->setControlAttributes(array('name'     => 'Salle', 
                                     'disabled' => $disabled))
        ->addSelectOptions($nomSalles, $infoPoste['nSalle'], true);
  $fieldset->addElement($field);

  /**********************           **********************/
  // Nom du poste

  $field = new FieldInputText();
  $field->setLabel('Nom')
        ->setControlAttributes(array('name'      => 'name',
                                     'value'     => $infoPoste['nomPoste'],
                                     'maxlength' => maxlength('room.room_name'),
                                     'required'  => true,
                                     'disabled'  => $disabled));
  $fieldset->addElement($field);

  /**********************           **********************/
  // IP du poste 
  if (is_admin())
  {
    $field = new FieldInputText();
    $field->setLabel('IP')
          ->setLabelAttribute('title', "IP")
          ->setControlAttributes(array('name'      => 'indIP',
                                       'value'     => $infoPoste['indIP'],
                                       'maxlength' => maxlength('room.sort_key'),
                                       'disabled'  => $disabled));
    $fieldset->addElement($field);
  }

  /**********************           **********************/
  // ad du Poste 
  $field = new FieldInputText();
  $field->setLabel('ad')
        ->setControlAttributes(array('name'      => 'ad',
                                     'value'     => $infoPoste['ad'],
                                     'maxlength' => maxlength('room.description'),
                                     'disabled'  => $disabled));
  $fieldset->addElement($field);

  /**********************           **********************/
  // Type de Poste 
  $field = new FieldInputEmail();
  $field->setLabel('Type')
        ->setLabelAttribute('title', "labType")
        ->setControlAttributes(array('name'      => 'Type',
                                     'value'     => $infoPoste['typePoste'],
                                     'multiple'  => true,
                                     'disabled'  => $disabled));
  $fieldset->addElement($field);
  
  // The custom HTML
  if (is_admin() && $auth['allow_custom_html'])
  {
    // Only show the raw HTML to admins.  Non-admins will see the rendered HTML
    $field = new FieldTextarea();
    $field->setLabel(get_vocab('custom_html'))
          ->setLabelAttribute('title', get_vocab('custom_html_note'))
          ->setControlAttribute('name', 'custom_html')
          ->setControlText($data['custom_html']);
    $fieldset->addElement($field);
  }
 
  // Then the custom fields
  $fields = get_custom_fields($data);
  $fieldset->addElements($fields);

  // The Submit and Back buttons
  $field = new FieldInputSubmit();

  $back = new ElementInputSubmit();
  $back->setAttributes(array( 'value'     => get_vocab('backadmin'),
                             'formaction' => multisite('admin.php')));
  $field->setAttribute('class', 'buttons')
        ->addLabelClass('no_suffix')
        ->addLabelElement($back)
        ->setControlAttribute('value', 'Creation/Modification');
  if (!is_admin())
  {
    $field->removeControl();
  }
  $fieldset->addElement($field);

  return $fieldset;
}

/********************* Gestion des donnee en Post *********************/
if(isset($_POST)){
   echo 'il y a des donnee Poste'; 
   if(isset($_POST['new_Poste']) &&
      isset($_POST['Salle']) &&
      isset($_POST['name']) &&
      isset($_POST['indIP']) &&
      isset($_POST['ad']) &&
      isset($_POST['Type'])
      ){
      echo "</br>" . $_POST['new_Poste'] . "</br>"; 

      echo "Numero du poste : ".$_POST['new_Poste'] . "</br>"; 
      echo $_POST['Salle'] . "</br>"; 
      echo $_POST['name'] . "</br>"; 
      echo $_POST['indIP'] . "</br>"; 
      echo $_POST['ad'] . "</br>"; 
      echo $_POST['Type'] ; 
          if($_POST['new_Poste'] === "0"){

                echo " </br> check crea nouveau poste "; 
                
                creePoste($_POST['name'], 
                          $_POST['indIP'], 
                          $_POST['ad'], 
                          $_POST['Type'], 
                          $_POST['Salle']); 
                /**/ //($nomPoste, $indIP, $ad, $typePoste, $nSalle)
          }else{
                echo " </br> Modifier un poste"; 
                
                modifierPoste($_POST['new_Poste'], 
                          $_POST['name'], 
                          $_POST['indIP'], 
                          $_POST['ad'], 
                          $_POST['Type'], 
                          $_POST['Salle']); 
                          /**/ //($idPoste, $nomPoste, $indIP, $ad, $typePoste, $nSalle)
          }
      }

}


/**********************************************************************/


$touslesPostes = allPoste();
$lesPostes = allPostForIdSalle($_GET['room']);
$idPost = null ; 

include "$racine/vue/vueEditePoste.php";
