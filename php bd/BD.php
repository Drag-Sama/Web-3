<?php
Class BD {
    $db_name = "";
    $db_host = "";
    $db_port = "" ;
    $db_user = "";
    $db_pwd = "";

    public function __construct() {
        $db_name = "tvshow";
        $db_host = "127.0.0.1";
        $db_port = "3306";
        $db_user = "root";
        $db_pwd = "";
    }
    function connectBD(): void{
       

        try {
            $dsn = "mysql:dbname=" . $db_name . ";host=" . $db_host . ";port=" . $db_port;
            $pdo = new PDO($dsn,$db_user,$db_pwd);
        } catch (\Exception $ex) {
            die("Erreur : " . $ex->getMessage());
        }
    }

     public function get_series(): serie{ //renvoie toutes les series
        connectBD();
        $sql = "SELECT * FROM serie";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\serie");
        return $result;
    }

    function get_serie_tag($tag): void{ //renvoie les series avec le tag mis en parametre
        connectBD();
        $sql = "SELECT * FROM serie WHERE serie.tag = $tag";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }

    function research_serie(): void{
        connectBD();
        if (isset($_GET["text"])) {
            $text = $_GET["text"];
            $sql = "SELECT DISTINCT serie.titre,affiche FROM serie INNER JOIN saison INNER JOIN contient INNER JOIN episode INNER JOIN realise INNER JOIN joue WHERE nom_acteur LIKE '%" . $text . "%' OR serie.titre LIKE '%" . $text . "%' OR nom_real LIKE '%" . $text . "%'
            OR tag LIKE '%" . $text . "%';" ; // renvoie toutes les séries où le texte recherché se trouve dans le titre de la série / le nom d'un acteur ou réalisateur / nom d'un tag.
        }
        else {
            $sql = "SELECT DISTINCT serie.titre, affiche FROM saison INNER JOIN serie WHERE saison.num_saison = 1 AND saison.titre_serie = serie.titre;";
        }
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $results = $statement->fetchAll(PDO::FETCH_OBJ); 
        return $result;
    }

    function get_acteur(): void{
        connectBD();
        $sql = "SELECT * FROM acteur";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }


    function get_reals(): void{
        connectBD();
        $sql = "SELECT * FROM realisateur";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }

    function get_tags(): void{
        connectBD();
        $sql = "SELECT * FROM tag";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }

    function get_episode(): void{
        connectBD();
        $sql = "SELECT episode.titre, episode.desc, episode.duree, realisateur.nom, realisateur.photo 
        FROM episode INNER JOIN realise INNER JOIN realisateur WHERE realise.nom_real = realisateur.nom 
        AND realise.id_episode = episode.id_Episode;";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }
    
}
?>