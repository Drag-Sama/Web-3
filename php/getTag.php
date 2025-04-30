<?php

require "connectDB.php";
$serie = $_GET["serie"];
$sql = "SELECT tag FROM serie WHERE (titre = '$serie')";


?>