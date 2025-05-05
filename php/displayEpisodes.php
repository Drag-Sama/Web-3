<?php 
    function displayEpisodes(BD $BD){
        if (isset($_GET['serie'])) {
            $titre = $_GET['serie'];
            $episodes = $BD->get_episode($titre);
            foreach ($episodes as $episode):
                echo"<div class = 'episode-row $episode->num_saison'>";
                echo "<div class='episode-title' > $episode->num_episode.$episode->titre </div>";
                echo"<div class='episode-duration'>$episode->duree min</div>";
                echo "<div class='episode-description'> $episode->desc </div>";
                echo"</div>";
            endforeach;
        }
    }
?>