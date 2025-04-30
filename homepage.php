<!DOCTYPE html>

<?php require_once "php/classes/template.php";
require_once "php/classes/BD.php";
require_once "php/researchSerie.php";
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

$bda = new BD();
echo $bda->get_series();
?>