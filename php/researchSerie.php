<?php
$text = /*$_GET["text"];*/ "Bryan";
include "connectDB.php";
$sql = "SELECT DISTINCT serie.titre_serie FROM serie INNER JOIN saison INNER JOIN contient INNER JOIN episode INNER JOIN realise INNER JOIN joue WHERE nom_acteur LIKE '%" . $text . "%';";
$statement = $pdo->prepare($sql);
$statement->execute() or die(var_dump($statement->errorInfo()));
$results = $statement->fetchAll(PDO::FETCH_OBJ) ; ?>

Série : <?php 
    foreach ($results as $serie):
    ?>
    <li><?= $serie->titre ?></li>
<?php
    endforeach;
?>