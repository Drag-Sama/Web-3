<!DOCTYPE html>

<?php require "php/classes/template.php";
require "php/researchSerie.php";
require "php/classes/BD.php";
ob_start();

?>
    <form action="/choiceTag.php">
        <label for="tag">Tags :</label>
        <select name="tag">

        </select>
    </form>
    <script src="filterTags.js"></script>
    <div class="cartes">
    <?php researchSerie(); ?>
    </div>
    

<?php 
$content = ob_get_clean();
Template::render($content);

echo get_series();
?>