<?php 
/*if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}
include_once "$racine/modele/bd.etudiant.inc.php";
include_once "$racine/modele/bd.classe.inc.php";  
include "options.php";*/?>

<h1>Attention, à utiliser avec caution</h1>
<p>Vous pourrez modifier la base de donnée dans cette  page pour faciliter les tests</p>

<div id=blocPage>
    <div id=Stats>
    <h2> STATS</h2>
    <?php 
/*$lesEtudiants = getEtudiants();
$nbreEtudiants= count($lesEtudiants);*/
/*echo "<h3>TOTAL</h3> Il y a $nbreEtudiants étudiants, dont $nbreEtudiantsHommes étudiants hommes et $nbreEtudiantsFemmes étudiantes femmes.
 "; */?>
<a href="http://localhost/StageSIO/equipes-bts/?action=options&classe=1">CG1</a>
<a href="http://localhost/StageSIO/equipes-bts/?action=options&classe=2">GPME1</a>
<a href="http://localhost/StageSIO/equipes-bts/?action=options&classe=3">SAM1</a>
<a href="http://localhost/StageSIO/equipes-bts/?action=options&classe=4">SIO1</a>
<a href="http://localhost/StageSIO/equipes-bts/?action=options&classe=total">TOTAL</a>


<?php
if(!isset($_GET['classe']))
{
    
}
else{ 
if($_GET['classe']== 1)
{
?>
    <!--code html-->
    <table>
        <tr>
            <th></th>
            <th>Niveau 1</th>
            <th>Niveau 2</th>
            <th>TOTAL</th>
        </tr>
        <tr>
            <th>Hommes</th>
            <th> <?php echo $nbreEtudiantsClasse1HommesNiveau1?> </th> 
            <th><?php echo $nbreEtudiantsClasse1HommesNiveau2?></th>
            <th><?php echo $nbreEtudiantsClasse1Hommes?></th>
        </tr>
        <tr>
            <th>Femmes</th>
            <th> <?php echo $nbreEtudiantsClasse1FemmesNiveau1?> </th> 
            <th><?php echo $nbreEtudiantsClasse1FemmesNiveau2?></th>
            <th><?php echo $nbreEtudiantsClasse1Femmes?></th>
        </tr>
        <tr>
            <th>TOTAL</th>
            <th> <?php echo $nbreEtudiantsClasse1Niveau1?> </th> 
            <th><?php echo $nbreEtudiantsClasse1Niveau2?></th>
            <th><?php echo $nbreEtudiantsClasse1?></th>
        </tr>
    </table>
<?php 
/*
<?php 
?>
*/
}

else
{
    if($_GET['classe']== 2)
    {?>
        <!--code html-->
        <table>
            <tr>
                <th></th>
                <th>Niveau 1</th>
                <th>Niveau 2</th>
                <th>TOTAL</th>
            </tr>
            <tr>
                <th>Hommes</th>
                <th> <?php echo $nbreEtudiantsClasse2HommesNiveau1?> </th> 
                <th><?php echo $nbreEtudiantsClasse2HommesNiveau2?></th>
                <th><?php echo $nbreEtudiantsClasse2Hommes?></th>
            </tr>
            <tr>
                <th>Femmes</th>
                <th> <?php echo $nbreEtudiantsClasse2FemmesNiveau1?> </th> 
                <th><?php echo $nbreEtudiantsClasse2FemmesNiveau2?></th>
                <th><?php echo $nbreEtudiantsClasse2Femmes?></th>
            </tr>
            <tr>
                <th>TOTAL</th>
                <th> <?php echo $nbreEtudiantsClasse2Niveau1?> </th> 
                <th><?php echo $nbreEtudiantsClasse2Niveau2?></th>
                <th><?php echo $nbreEtudiantsClasse2?></th>
            </tr>
        </table>
        
    <?php

    
    
    
    }

    else
    {
        if($_GET['classe']== 3)
        { 
    ?>
            <!--code html-->
            <table>
                <tr>
                    <th></th>
                    <th>Niveau 1</th>
                    <th>Niveau 2</th>
                    <th>TOTAL</th>
                </tr>
                <tr>
                    <th>Hommes</th>
                    <th> <?php echo $nbreEtudiantsClasse3HommesNiveau1?> </th> 
                    <th><?php echo $nbreEtudiantsClasse3HommesNiveau2?></th>
                    <th><?php echo $nbreEtudiantsClasse3Hommes?></th>
                </tr>
                <tr>
                    <th>Femmes</th>
                    <th> <?php echo $nbreEtudiantsClasse3FemmesNiveau1?> </th> 
                    <th><?php echo $nbreEtudiantsClasse3FemmesNiveau2?></th>
                    <th><?php echo $nbreEtudiantsClasse3Femmes?></th>
                </tr>
                <tr>
                    <th>TOTAL</th>
                    <th> <?php echo $nbreEtudiantsClasse3Niveau1?> </th> 
                    <th><?php echo $nbreEtudiantsClasse3Niveau2?></th>
                    <th><?php echo $nbreEtudiantsClasse3?></th>
                </tr>
            </table>
        <?php
        } 
        else
        {
            if($_GET['classe']== 4)
            {
            ?>
            <!--code html-->
            <table>
                <tr>
                    <th></th>
                    <th>Niveau 1</th>
                    <th>Niveau 2</th>
                    <th>TOTAL</th>
                </tr>
                <tr>
                    <th>Hommes</th>
                    <th> <?php echo $nbreEtudiantsClasse4HommesNiveau1?> </th> 
                    <th><?php echo $nbreEtudiantsClasse4HommesNiveau2?></th>
                    <th><?php echo $nbreEtudiantsClasse4Hommes?></th>
                </tr>
                <tr>
                    <th>Femmes</th>
                    <th> <?php echo $nbreEtudiantsClasse4FemmesNiveau1?> </th> 
                    <th><?php echo $nbreEtudiantsClasse4FemmesNiveau2?></th>
                    <th><?php echo $nbreEtudiantsClasse4Femmes?></th>
                </tr>
                <tr>
                    <th>TOTAL</th>
                    <th> <?php echo $nbreEtudiantsClasse4Niveau1?> </th> 
                    <th><?php echo $nbreEtudiantsClasse4Niveau2?></th>
                    <th><?php echo $nbreEtudiantsClasse4?></th>
                </tr>
            </table>
            <?php
            }
            else
            {
                if($_GET['classe']=='total')
                {
                    ?>
                    <table>
                        <tr>
                            <th></th>
                            <th>Niveau 1</th>
                            <th>Niveau 2</th>
                            <th>TOTAL</th>
                        </tr>
                        <tr>
                            <th>Hommes</th>
                            <th> <?php echo $nbreEtudiantsHommesNIVEAU1?> </th> 
                            <th><?php echo $nbreEtudiantsHommesNIVEAU2?></th>
                            <th><?php echo $nbreEtudiantsHommesNIVEAU1 + $nbreEtudiantsHommesNIVEAU2?></th>
                        </tr>
                        <tr>
                            <th>Femmes</th>
                            <th> <?php echo $nbreEtudiantsFemmesNIVEAU1?> </th> 
                            <th><?php echo $nbreEtudiantsFemmesNIVEAU2?></th>
                            <th><?php echo $nbreEtudiantsFemmesNIVEAU1 + $nbreEtudiantsFemmesNIVEAU2?></th>
                        </tr>
                        <tr>
                            <th>Hommes</th>
                            <th> <?php echo $nbreEtudiantsHommesNIVEAU1+$nbreEtudiantsFemmesNIVEAU1?> </th> 
                            <th><?php echo $nbreEtudiantsHommesNIVEAU2+$nbreEtudiantsFemmesNIVEAU2?></th>
                            <th><?php echo ($nbreEtudiantsHommesNIVEAU1 + $nbreEtudiantsHommesNIVEAU2)+($nbreEtudiantsFemmesNIVEAU1 + $nbreEtudiantsFemmesNIVEAU2)?></th>
                        </tr>
                    </table>
                    <?php
                }

            } 
        }
        
    }
}
} 


?>


    </div>
</div>