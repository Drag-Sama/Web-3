<?php
require_once "autoload.php";
ob_start();
$BD = new BD();
$displayer = new Display($BD);
$displayer->displayAdmin();
?>


<?php
$content = ob_get_clean();
Template::render($content);
?>