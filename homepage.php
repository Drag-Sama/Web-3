<!DOCTYPE html>

<?php require "php/classes/template.php";
require "php/classes/BD.php";
require "php/displayResearch.php";
require "php/displayTags.php";
$BD = new BD();
ob_start();
?>
<script src="filterTags.js"></script>
<?php displayTags($BD); ?>
<div class="cartes">
<?php displayResearch($BD); ?>
</div>

<?php 
$content = ob_get_clean();
Template::render($content);
?>