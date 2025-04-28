<?php
$text = $_GET["text"];
include "connectDB.php";
$sql = "SELECT * FROM serie WHERE ()";
$statement = $pdo->prepare($sql);
$statement->execute() or die(var_dump($statement->errorInfo()));
$results = $statement->fetchAll(PDO::FETCH_OBJ) ; ?>




<h1>Liste des séries</h1>
<ul>
<!--Affichage du champ 'name' des objets récupérés -->
<?php foreach ($results as $serie): ?>
    <li><?= $serie->nom ?></li>
<?php endforeach;?>
</ul>