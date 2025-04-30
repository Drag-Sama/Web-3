<?php 

function displayTags(BD $BD){
    $tags = $BD->get_tags();
    echo "<option value=''></option>";
    foreach ($tags as $tag): 
        echo "<option value='$tag'>$tag</option>";
    endforeach;
}
?>