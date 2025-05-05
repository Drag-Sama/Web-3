<!DOCTYPE html>

<?php
require_once "autoload.php";
$BD = new BD();
ob_start();
$displayer = new Display($BD);
?>
<script src="filterTags.js"></script>
<div class="tags">
    <?php $displayer->displayTags(); ?>
</div>
<div class="cartes">
<?php $displayer->displayResearch(); ?>
</div>

<?php 
$content = ob_get_clean();
Template::render($content);
?>