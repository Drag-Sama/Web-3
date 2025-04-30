tag = "humour" ;

console.log(fetch("php/getTag.php?serie='Malcolm'"));
series = document.getElementsByClassName("carte");
console.log(series);
for (const serie of series) {
    console.log(serie);
    if (serie.children[1].innerHTML != tag ) {
        serie.style.display = "none";
    }
    else {
        serie.style.display = "block";
    }
}
