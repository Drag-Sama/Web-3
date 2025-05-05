<?php 

function displayTags(BD $BD){
    $tags = $BD->get_tags();
    foreach ($tags as $tag): 
        echo "<input type='checkbox' id='$tag' name='tags_check' value='$tag' onclick=\"filter()\">$tag</input>";
    endforeach;
}
?>