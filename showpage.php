<!DOCTYPE html>
<?php require "php/classes/template.php";
require "php/classes/BD.php";
require "php/classes/saison.php";
require "php/classes/display.php";
//require_once "autoload.php";
$BD = new BD();
$displayer = new Display($BD);
ob_start();
?>

<div class="container">
    <div class="serie-header">
        <div class="serie-info">
            <div class="serie-title">
            <?php 
            $titre = $_GET["serie"];
            echo $titre;
            ?>
            </div>
            <div class ="serie-tag">
            <?php 
            $tag = $BD->get_tag_serie($titre);
            echo $tag;
            ?>
            </div>
        </div>
        
        
    </div>
    <script src="saisonsHider.js"></script>
    <div class="saison-section">
    <?php 
            $displayer->displaySelectSaisons();
            ?>
        
        <?php
        $displayer->displaySaisons(); ?>
        <div class="episodes-list"> 
           <?php $displayer->displayEpisodes(); ?>
        </div>
    </div>
    <script>saisonsHiderDefault();</script>
</div>

<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Page</title>
    
    <link rel="stylesheet" href="showpage.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
    crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" 
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" 
         integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
    crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">
        

        <div class="saison-section">
            
            
            <div class="episodes-list">
                <div class="episode-row">
                    <div class="episode-title">Episode 1:Le Debut</div>
                    <div class="episode-duration">42 minute</div>
                    <div class="episode-director">Réalisateur:Jean</div>
                    <img class="director-photo" src="">
                </div>
               
            </div>
            <div class="actors-section">
                <div class="actor">
                    <img class="actor-photo" src="">
                    <div class="actor-name">Nom de l'acteur </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>




<?php 
$content = ob_get_clean();
Template::render($content);
?>
