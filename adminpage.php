<?php
require "php/classes/template.php";
ob_start();
?>

<div class="div-bouton">
    <button class="db">Tag1</button>
    <button class="db">Tag2</button>
    <button class="db">+</button>
</div>

<?php
$content = ob_get_clean();
Template::render($content);
?>