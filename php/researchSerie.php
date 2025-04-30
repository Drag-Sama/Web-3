<?php

 function researchSerie() : void {
    require "connectDB.php";
    if (isset($_GET["text"])) {
        $text = $_GET["text"];
        $sql = "SELECT DISTINCT serie.titre,affiche FROM serie INNER JOIN saison INNER JOIN contient INNER JOIN episode INNER JOIN realise INNER JOIN joue WHERE nom_acteur LIKE '%" . $text . "%' OR serie.titre LIKE '%" . $text . "%' OR nom_real LIKE '%" . $text . "%'
        OR tag LIKE '%" . $text . "%';" ; // renvoie toutes les séries où le texte recherché se trouve dans le titre de la série / le nom d'un acteur ou réalisateur / nom d'un tag.
    }
    else {
        $sql = "SELECT DISTINCT serie.titre, affiche FROM saison INNER JOIN serie WHERE saison.num_saison = 1 AND saison.titre_serie = serie.titre;";
    }
    $statement = $pdo->prepare($sql);
    $statement->execute() or die(var_dump($statement->errorInfo()));
    $results = $statement->fetchAll(PDO::FETCH_OBJ); 

    foreach ($results as $serie):
        echo(
            "
            <a href='showpage.php?serie=".$serie->titre."'>
            <div class='carte'>
                <img class ='carte-images' src='/web3/Web-3/photos/saison/$serie->affiche'>
                <p>$serie->titre</p>
                
            </div>
            </a>
            "
        );
    endforeach;
}
?>