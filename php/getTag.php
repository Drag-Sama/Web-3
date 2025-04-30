<?php

require "connectDB.php";
$serie = $_GET["serie"];
$sql = "SELECT tag FROM serie WHERE (titre = '$serie')";
$statement = $pdo->prepare($sql);
$statement->execute() or die(var_dump($statement->errorInfo()));
$result = $statement->fetchAll(PDO::FETCH_OBJ);


?>