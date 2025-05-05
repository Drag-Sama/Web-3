
function saisonsHiderDefault() { // affiche la première saison par défaut.
    saisonContainers = document.getElementsByClassName("saison-container");
    i = 1;
    for (const container of saisonContainers) {
        if (i > 1) container.style.display = "none";
        else container.style.display = "block";
        i++;
    }

    episodeContainer = document.getElementsByClassName("episode-row");
    episodeSaisonContainer = document.getElementsByClassName(1);
    for (const container of episodeContainer) {
        
        container.style.display = "none";
    }

    for(const container of episodeSaisonContainer){
        container.style.display = "block";
    }
}

function saisonsHider() {
    //////// PARTIE SAISONS / DESCRIPTION
    saisonSelector = document.getElementById("saisons");
    n_saison = saisonSelector.value; // num de la saison voulue.
    saisonContainers = document.getElementsByClassName("saison-container");
    i = 1;
    for (const container of saisonContainers) {
        if (i != n_saison) container.style.display = "none";
        else container.style.display = "block";
        i++;
    }
    //////// PARTIE EPISODES
    episodeContainer = document.getElementsByClassName("episode-row");
    episodeSaisonContainer = document.getElementsByClassName(n_saison);
    for (const container of episodeContainer) {
        
        container.style.display = "none";
    }

    for(const container of episodeSaisonContainer){
        container.style.display = "block";
    }

}
