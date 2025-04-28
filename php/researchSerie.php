<?php
$text = $_GET["text"];
require "connectDB.php";
$sql = "SELECT DISTINCT serie.titre,affiche FROM serie INNER JOIN saison INNER JOIN contient INNER JOIN episode INNER JOIN realise INNER JOIN joue WHERE nom_acteur LIKE '%" . $text . "%' OR serie.titre LIKE '%" . $text . "%' OR nom_real LIKE '%" . $text . "%'
OR tag LIKE '%" . $text . "%';" ; // renvoie toutes les séries où le texte recherché se trouve dans le titre de la série / le nom d'un acteur ou réalisateur / nom d'un tag.
$statement = $pdo->prepare($sql);
$statement->execute() or die(var_dump($statement->errorInfo()));
$results = $statement->fetchAll(PDO::FETCH_OBJ); 

foreach ($results as $serie):
    echo(
        "<div>
            <img url='../photos/saison/$serie->affiche'/>
            <p>$serie->titre</p>
        </div>"
    );
endforeach;
?>