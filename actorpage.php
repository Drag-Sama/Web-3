<!DOCTYPE html>

<?php
require_once "autoload.php";
$BD = new BD();
ob_start();
$displayer = new Display($BD);
?>
<div class = "cartes">
    <?php
    $displayer->displayActeurRecherche();
    ?>
</div>

<?php 
$content = ob_get_clean();
Template::render($content);
?>