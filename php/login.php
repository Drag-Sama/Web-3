<?php 

session_start();
$admin_name="admin";
$admin_pwd="admin";
if (isset($_POST["login"]) && isset($_POST["password"])) {
    $username = $_POST["login"];
    $password = $_POST["password"];
    
    if ($username == $admin_name && $password == $admin_pwd) {
        header('Location: ../adminpage.php');
    }
    else {
        echo("<p color=red>Les identifiants sont incorrectes.</p>") ;
    }
    

}
else {
    echo("<p color=red>Un identifiant est manquant.</p>") ;
}

?>