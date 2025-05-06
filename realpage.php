<!DOCTYPE html>

<?php
require_once "autoload.php";
$BD = new BD();
ob_start();
$displayer = new Display($BD);
?>
<form class="recherche" action="realpage.php?acteur=$_GET['real']" method="get">
            <input type="text" name="real" class="search-input" placeholder="Rechercher un réalisateur..">
            <button type="submit" class="btn btn-primary">Click</button>
        </form>
<div class = "cartes">
    <?php
    $displayer->displayRealRecherche();
    ?>
</div>

<?php 
$content = ob_get_clean();
Template::render($content);
?>