<!DOCTYPE html>

<?php require "php/classes/template.php";
require "php/classes/BD.php";
require "php/displayResearch.php";
$BD = new BD();
ob_start();

?>
    <form action="/choiceTag.php">
        <label for="tag">Tags :</label>
        <select name="tag">
            <?php displayTags($BD); ?>
        </select>
        <input type ="submit" value ="Submit">
    </form>
    <div class="cartes">
    <?php displayResearch($BD); ?>
    </div>
    <script src="filterTags.js"></script>

<?php 
$content = ob_get_clean();
Template::render($content);

?>