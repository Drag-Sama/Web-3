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
            echo "<div class = 'actor-section'>";
            foreach($acteurs as $acteur){
                echo(
                    "
                    <a href='homepage.php?text=".$acteur->nom."'>
                    <div class='actor' id='$acteur->nom'>
                        <img class ='actor-photo' src='/web3/Web-3/photos/acteur/$acteur->photo'>
                        <div class = 'actor-name'>$acteur->nom</div>
                        </a>
                    </div>
                    
                    "
                );
            }
            echo "</div>";
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

 public function displayRealRecherche(){
    $results = $this->BD->research_real();
        foreach ($results as $real):
            echo(
                "
                <a href='homepage.php?text=".$real->nom."'>
                <div class='carte' id='$real->nom'>
                    <img class ='carte-images' src='/web3/Web-3/photos/real/$real->photo'>
                    <p>$real->nom</p>
                    </a>
                </div>
                
                "
            );
        endforeach;
 }

 public function displayAdmin() { // générer adminpage.php
    /// TAGS
    echo "<h3 class ='title_button'>Tags :</h3>";
    $results = $this->BD->get_tags();
    echo "<div class='div-bouton'>";
    foreach ($results as $tag): 
        echo "<button class='db' id='$tag' onclick=\"location.href = 'editadmin.php?tag=$tag'\">$tag</button>";
    endforeach;
    echo "<button class ='db +'>+</button>";
    echo "</div>";
    /// SERIES
    echo "<h3 class ='title_button'>Series :</h3>";
    $results = $this->BD->get_series();
    echo "<div class='div-bouton'>";
    foreach ($results as $serie): 
        echo "<button class='db' id='$serie->titre' onclick=\"location.href = 'editadmin.php?serie=". urlencode($serie->titre) ."'\">$serie->titre</button>";
    endforeach;
    echo "<button class ='db +' onclick=''>+</button>";
    echo "</div>";
    /// ACTEURS
    echo "<h3 class ='title_button'>Acteurs :</h3>";
    $results = $this->BD->research_acteur();
    echo "<div class='div-bouton'>";
    foreach ($results as $acteur): 
        echo "<button class='db' id='$acteur->nom' onclick=\"location.href = 'editadmin.php?acteur=". urlencode($acteur->nom) ."'\">$acteur->nom</button>";
    endforeach;
    echo "<button class ='db +'>+</button>";
    echo "</div>";
    /// REALS
    echo "<h3 class ='title_button'>Realisateurs :</h3>";
    $results = $this->BD->get_reals();
    echo "<div class='div-bouton'>";
    foreach ($results as $real): 
        echo "<button class='db' id='". $real->nom ."' onclick=\"location.href = 'editadmin.php?real=". urlencode($real->nom) ."'\">$real->nom</button>";
    endforeach;
    echo "<button class ='db +'>+</button>";
    echo "</div>";
 }

 public function displayEdit() {
    /// TAGS
    if (isset($_GET["tag"])) {
        echo "
        <form action ='' method='POST'> 
        <label for='tag'>Tag :</label>
            <input class='' id='tag' name='tag' value=" . $_GET['tag'] . ">
            <button>Valider</button>
        </form>
        ";
    }
    /// SERIES
    if (isset($_GET["serie"])) {
        echo "
        <form action ='' method='POST'>
            <label for='titre'>Titre :</label>
            <input class='' id='titre' name='titre' value='" . urldecode($_GET["serie"]) . "'>
            <label for='tag'>Tag :</label>
            <input class='' id='tag' name='tag'>
            <label for='affiche'>URL Affiche :</label>
            <input class='' id='affiche' name='affiche'>
            <button>Valider</button>
        </form>
        ";
    }
    /// ACTEURS ou REALS
    if (isset($_GET["acteur"]) || isset($_GET["real"])) {
        echo "
        <form action ='' method='POST'> 
            <label for='nom'>Nom :</label>
            <input class='' id='nom' name='nom' value='";
            if(isset($_GET["acteur"])) echo urldecode($_GET["acteur"]);
            else echo urldecode($_GET["real"]);

            echo "'>
            <label for='photo'>URL Photo :</label>
            <input class='' id='photo' name='photo'>
            <button>Valider</button>
        </form>
        ";
    }
 }

 
}

    
?>