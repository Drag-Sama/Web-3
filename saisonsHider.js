


function saisonsHider() {
    saisonSelector = document.getElementById("saisons");
    n_saison = saisonSelector.value; // num de la saison voulue.
    saisonContainers = document.getElementsByClassName("saison-container");
    i = 1;
    for (const container of saisonContainers) {
        console.log(container);
        console.log(i);
        console.log(n_saison);
        if (i != n_saison) container.style.display = "none";
        else container.style.display = "block";
        i++;
    }
}
