<?php

 function researchSerie() : void {
   

    foreach ($results as $serie):
        echo(
            "
            <a href='showpage.php?serie=".$serie->titre."'>
            <div class='carte'>
                <img class ='carte-images' src='/web3/Web-3/photos/saison/$serie->affiche'>
                <p>$serie->titre</p>
                
            </div>
            </a>
            "
        );
    endforeach;
}
?>