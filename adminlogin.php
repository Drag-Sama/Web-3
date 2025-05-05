<?php
require "php/classes/template.php";
ob_start();
session_start();
$admin_name="admin";
$admin_pwd="admin";
if (isset($_POST["login"]) && isset($_POST["password"])) {
    $username = $_POST["login"];
    $password = $_POST["password"];
    
    if ($username == $admin_name && $password == $admin_pwd) {
        header('Location: ../Web-3/adminpage.php');
    }
    else {
        echo("<p color=red>Les identifiants sont incorrectes.</p>") ;
    }
    

}
?>
    <div class="center">
        <form id="user-infos-01" style="width: 300px" action="adminlogin.php" method="post">
            <div class="form-group">
                <label for="login-sans-verif">Username : </label>
                <input type="text" class="form-control" name="login" id="login-sans-verif">
            </div>
            <div class="form-group">
                <label for="password-sans-verif">Password :</label>
                <input type="password" class="form-control" name="password" id="password-sans-verif">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
    <div id="message" style="color: red"></div>
    
    <script src="adminlogin.js"></script>

<?php
$content = ob_get_clean();
Template::render($content);
?>
