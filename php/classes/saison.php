<?php
class Saison {
    private string $titre;
    private int $num;
    private string $affiche;
    private array $episodes;
    private array $acteurs;

    public function __construct($titre,$numero=1,$nom_affiche="",$episods=[],$acts=[]) {
        $nom = $titre;
        $num = $numero;
        $affiche=$nom_affiche;
        $episodes=$episods;
        $acteurs=$acts;
    }
    
    
}

?>