<?php
include "saison.php";
class Serie {
    private string $titre;
    private array $tag;
    private int $nb_saisons;
    private Saison $saisons;

    public function __construct($nom, $tags = null, $nb_saison = 1) {
        $titre = $nom;
        $tag = $tags;
        $nb_saisons =$nb_saison;
    }


}

?>