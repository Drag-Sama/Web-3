<?php
function displaySelectSaisons(BD $BD) {
    if (isset($_GET['serie'])) {
        $serie = $_GET['serie'];
        $saisons = $BD->get_saison_serie($serie);
        echo "<select name='saisons' id='saisons'>";
        foreach ($saisons as $saison):
            echo "<option value='Saison $saison->num_saison'>Saison $saison->num_saison</option>";
        endforeach;
        echo "</select>";
    }
}

function displaySaisons(BD $BD) {
    if (isset($_GET['serie'])) {
        $titre = $_GET['serie'];
        $saisons = $BD->get_saison_serie($titre);
        foreach ($saisons as $saison):
            echo "<img class='saison-image' src='/web3/Web-3/photos/saison/$saison->affiche'";
            echo"<div class = 'saison-container' id = '$saison->num_saison'>";
            echo"<div class='saison-title'>$saison->titre</div>";
            echo "<div class='saison-description'> $saison->descr </div>";
            echo"</div>";
        endforeach;
    }
}
?>