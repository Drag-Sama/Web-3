<?php
function displaySaisons(BD $BD) {
    if (isset($_GET['serie'])) {
        $serie = $_GET['serie'];
        $saisons = $BD->get_saison_serie($serie);
        echo $saisons;
        echo $saisons[0];
        echo "fortnite";
    }
}
?>