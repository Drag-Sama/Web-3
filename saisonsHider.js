
function saisonsHiderDefault() { // affiche la première saison par défaut.
    saisonContainers = document.getElementsByClassName("saison-container");
    i = 1;
    for (const container of saisonContainers) {
        if (i > 1) container.style.display = "none";
        else container.style.display = "block";
        i++;
    }
}

function saisonsHider() {
    saisonSelector = document.getElementById("saisons");
    n_saison = saisonSelector.value; // num de la saison voulue.
    saisonContainers = document.getElementsByClassName("saison-container");
    i = 1;
    for (const container of saisonContainers) {
        if (i != n_saison) container.style.display = "none";
        else container.style.display = "block";
        i++;
    }
}
