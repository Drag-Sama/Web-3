<?php

 function displayResearch(BD $BD) : void {
    
    $results = $BD->research_serie();
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
?>