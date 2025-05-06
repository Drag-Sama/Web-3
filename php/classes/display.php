<?php
class Display {
    public BD $BD;

    function __construct(BD $bD) {
        $this->BD = $bD;
    }

    function displayEpisodes(){
        if (isset($_GET['serie'])) {
            $titre = $_GET['serie'];
            $episodes = $this->BD->get_episode($titre);
            foreach ($episodes as $episode):
                $reals = $this->BD->get_real_episode($episode->id_Episode);
                echo"<div class = 'episode-row $episode->num_saison'>";
                echo "<div class='episode-title' > $episode->num_episode.$episode->titre </div>";
                echo"<div class='episode-duration'>$episode->duree min</div>";
                echo "<div class='episode-description'> $episode->desc </div>";
                foreach($reals as $real) {
                    echo "<img class = 'img-real' src='/web3/Web-3/photos/real/$real->photo'>";
                    echo "<a>$real->nom</a>";
                }
                echo"</div>";
            endforeach;
        }
    }

    function displayResearch() : void {
    
        $results = $this->BD->research_serie();
        foreach ($results as $serie):
            echo(
                "
                <a href='showpage.php?serie=".$serie->titre."'>
                <div class='carte' id='$serie->titre'>
                    <img class ='carte-images' src='/web3/Web-3/photos/saison/$serie->affiche'>
                    <p>$serie->titre</p>
                    </a>
                    <p class = 'tag'>$serie->tag</p>
                </div>
                
                "
            );
        endforeach;
    }

    function displaySelectSaisons() {
        if (isset($_GET['serie'])) {
            $serie = $_GET['serie'];
            $saisons = $this->BD->get_saison_serie($serie);
            echo "<select name='saisons' id='saisons' onchange='saisonsHider()'>";
            foreach ($saisons as $saison):
                echo "<option value='$saison->num_saison'>Saison $saison->num_saison</option>";
            endforeach;
            echo "</select>";
        }
    }
    
    function displaySaisons() {
        if (isset($_GET['serie'])) {
            $titre = $_GET['serie'];
            $saisons = $this->BD->get_saison_serie($titre);
            foreach ($saisons as $saison):
                echo"<div class = 'saison-container' id = '$saison->num_saison'>";
                echo "<img class='saison-image' src='/web3/Web-3/photos/saison/$saison->affiche'/>";
                echo"<div class='saison-title'>$saison->titre</div>";
                echo "<div class='saison-description'> $saison->descr </div>";
                echo"</div>";
            endforeach;
        }
    }

    public function displayTags(){
        $tags = $this->BD->get_tags();
        foreach ($tags as $tag): 
            echo "<input type='checkbox' id='$tag' name='tags_check' value='$tag' onclick=\"filter()\">$tag</input>";
        endforeach;
    }

    public function displayButtonsAdmin() {

    }

    public function displayActeur(){
        if (isset($_GET['serie'])) {
            $serie = $_GET['serie'];
            $acteurs = $this->BD->get_acteurs_titre($serie);
            foreach($acteurs as $acteur){
                echo(
                    "
                    <a href='homepage.php?text=".$acteur->nom."'>
                    <div class='carte' id='$acteur->nom'>
                        <img class ='carte-images' src='/web3/Web-3/photos/acteur/$acteur->photo'>
                        <p>$acteur->nom</p>
                        </a>
                    </div>
                    
                    "
                );
            }
        }
 }

 public function displayActeurRecherche(){
    $results = $this->BD->research_acteur();
        foreach ($results as $acteur):
            echo(
                "
                <a href='homepage.php?text=".$acteur->nom."'>
                <div class='carte' id='$acteur->nom'>
                    <img class ='carte-images' src='/web3/Web-3/photos/acteur/$acteur->photo'>
                    <p>$acteur->nom</p>
                    </a>
                </div>
                
                "
            );
        endforeach;
 }
}

    
?>