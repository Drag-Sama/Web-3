<!DOCTYPE html>

<?php require "php/classes/template.php";
require "php/classes/BD.php";
require "php/researchSerie.php";
require "php/classes/BD.php";
$BD = new $BD();
ob_start();

?>
    <form action="/choiceTag.php">
        <label for="tag">Tags :</label>
        <select name="tag">

        </select>
        <input type ="submit" value ="Submit">
    </form>
    <script src="filterTags.js"></script>
    <div class="cartes">
    <?php displayResearch($BD); ?>
    </div>
    

<?php 
$content = ob_get_clean();
Template::render($content);

echo $BD->get_series();
?>