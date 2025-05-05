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

}
?>