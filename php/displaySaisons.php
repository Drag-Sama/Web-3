<?php
function displaySaisons(BD $BD) {
    if (isset($_GET['serie'])) {
        $serie = $_GET['serie'];
        $saisons = $BD->get_saison_serie($serie);
        echo "<select id = 'saisons'>"
        foreach ($saisons as $saison):
            echo
        endforeach;
        echo 
    }
}
?>