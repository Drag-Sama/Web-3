<!DOCTYPE html>

<?php
require_once "autoload.php";
$BD = new BD();
ob_start();
$displayer = new Display($BD);
$BD->applyEdit();
$displayer->displayEdit();
?>



<?php 
$content = ob_get_clean();
Template::render($content);

?>