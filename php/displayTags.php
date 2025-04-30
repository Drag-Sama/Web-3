<?php 
function displayTags(): void {
    $BD = new BD();
    $tags = $BD->get_tags();
    foreach ($tags as $tag): 
        echo "<option value='$tag'>$tag</option>";
    endforeach;
}
?>