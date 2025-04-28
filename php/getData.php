$db_name = "tvshow";
$db_host = "127.0.0.1";
$db_port = "3306";
$db_user = "root";
$db_pwd = "root";

try {
    $dsn = "myssql:dbname=" . $db_name . ";host=" . db_host . ";port=" . db_port;
    $pdo = new PDO($dsn,$db_user,$db_pwd);
}