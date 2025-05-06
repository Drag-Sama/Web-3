<!DOCTYPE html>

<?php
require_once "autoload.php";
$BD = new BD();
ob_start();
$displayer = new Display($BD);
?>
<form class="recherche" action="actorpage.php?acteur=$_GET['acteur']" method="get">
            <input type="text" name="acteur" class="search-input" placeholder="Rechercher un acteur..">
            <button type="submit" class="btn btn-primary">Click</button>
        </form>
<div class = "cartes">
    <?php
    $displayer->displayActeurRecherche();
    ?>
</div>

<?php 
$content = ob_get_clean();
Template::render($content);
?>