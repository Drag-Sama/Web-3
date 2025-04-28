<?php 
$db_name = "tvshow";
$db_host = "127.0.0.1";
$db_port = "3306";
$db_user = "root";
$db_pwd = "root";

try {
    $dsn = "myssql:dbname=" . $db_name . ";host=" . $db_host . ";port=" . $db_port;
    $pdo = new PDO($dsn,$db_user,$db_pwd);
} catch (\Exception $ex) {
    die("Erreur : " . $ex->getMessage());
}

$sql = "SELECT * FROM serie";
$statement = $pdo->prepare($sql);
$statement->execute() or die(var_dump($statement->errorInfo()));
$results = $statement->fetchAll(PDO::FETCH_OBJ) ; ?>
?>



<h1>Liste des séries</h1>
<ul>
<!--Affichage du champ 'name' des objets récupérés -->
<?php foreach ($results as $serie): ?>
    <li><?= $serie->titre ?></li>
<?php endforeach;?>
</ul>