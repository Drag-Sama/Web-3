<?php
class Episode {
    private string $titre;
    private array $reals;
    private string $synopsis;
    private int $duree;

    public function __construct($nom,$real=[],$syno="",$dure=0) {
        $titre = $nom;
        $reals = $real;
        $synopsis=$syno;
        $duree=$dure;
    }

    
}

?>