<?php
Class BD {
    private string $db_name = "";
    private string $db_host = "";
    private string $db_port = "" ;
    private string $db_user = "";
    private string $db_pwd = "";

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

    function get_serie_tag($tag): serie{ //renvoie les series avec le tag mis en parametre
        connectBD();
        $sql = "SELECT * FROM serie WHERE serie.tag = $tag";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\serie");
        return $result;
    }

    function research_serie(): serie{
        connectBD();
        if (isset($_GET["text"])) {
            $text = $_GET["text"];
            $sql = "SELECT DISTINCT serie.titre, serie.tag FROM serie INNER JOIN saison INNER JOIN contient INNER JOIN episode INNER JOIN realise INNER JOIN joue WHERE nom_acteur LIKE '%" . $text . "%' OR serie.titre LIKE '%" . $text . "%' OR nom_real LIKE '%" . $text . "%'
            OR tag LIKE '%" . $text . "%';" ; // renvoie toutes les séries où le texte recherché se trouve dans le titre de la série / le nom d'un acteur ou réalisateur / nom d'un tag.
        }
        else {
            $sql = "SELECT DISTINCT serie.titre, affiche FROM saison INNER JOIN serie WHERE saison.num_saison = 1 AND saison.titre_serie = serie.titre;";
        }
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $results = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\serie"); 
        return $result;
    }

    function get_acteur(): acteur{
        connectBD();
        $sql = "SELECT * FROM acteur";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\acteur");
        return $result;
    }


    function get_reals(): real{
        connectBD();
        $sql = "SELECT * FROM realisateur";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\real");
        return $result;
    }

    function get_tags(): tag{
        connectBD();
        $sql = "SELECT * FROM tag";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\tag");
        return $result;
    }

    function get_episode(): episode{
        connectBD();
        $sql = "SELECT episode.titre, episode.desc, episode.duree, episode.id_episode
        FROM episode INNER JOIN realise INNER JOIN realisateur WHERE realise.nom_real = realisateur.nom 
        AND realise.id_episode = episode.id_Episode;";
        $statement = $pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\episode");
        return $result;
    }
    
}
?>