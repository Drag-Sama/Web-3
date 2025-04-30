<!DOCTYPE html>

<?php require "php/classes/template.php";
require "php/classes/BD.php";
require "php/researchSerie.php";
ob_start();

?>
    <script src="filterTags.js"></script>
    <div class="cartes">
    <?php researchSerie(); ?>
    </div>
    

<?php 
$content = ob_get_clean();
Template::render($content);

$bd = new BD();
echo $bd.get_series();
?>