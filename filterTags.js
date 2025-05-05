function filter() {
    
    series = document.getElementsByClassName("carte");
    tags = document.getElementsByName("tags_check");
    for (const serie of series) {
        serie_displayed = false;
        no_tags_checked = true;
        for (const tag of tags) {
            if (tag.checked) no_tags_checked = false;
            if (!serie_displayed && tag.checked && serie.children[1].innerHTML == tag.id) {
                serie.style.display = "block";
                serie_displayed = true;
            }
        }
        if (!serie_displayed) serie.style.display = "none";
        
    }
    if (no_tags_checked) {
        for (const serie of series) {
            serie.style.display = "block";
        }  
    }
}