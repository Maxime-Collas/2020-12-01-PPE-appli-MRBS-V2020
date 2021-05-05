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

require "defaultincludes.inc";

require_once "version.inc";
require_once "mrbs_sql.inc";

// Check the user is authorised for this page
checkAuthorised(this_page());

$context = array(
    'view'      => $view,
    'view_all'  => $view_all,
    'year'      => $year,
    'month'     => $month,
    'day'       => $day,
    'area'      => $area,
    'room'      => isset($room) ? $room : null
  );
  
print_header($context);

include "MVC/index.php";

print_footer();
?>
<head>
    <!-- il s'agit du fichier CSS interne au model MVC -->
    <link href="MVC/CSS/tableau.css" rel="stylesheet" type="text/css" />

    <script src="MVC/js/script.js" type="text/javascript"></script>
</head>