<?php
require "serie.php";
require "episode.php";
Class BD {
    private string $db_name = "";
    private string $db_host = "";
    private string $db_port = "" ;
    private string $db_user = "";
    private string $db_pwd = "";
    private PDO $pdo;
    private string $dsn = "";

    public function __construct() {
        $this->db_name = "tvshow";
        $this->db_host = "127.0.0.1";
        $this->db_port = "3306";
        $this->db_user = "root";
        $this->db_pwd = "";
        
    }
    public function connectBD(){
        try {
            $this->dsn = "mysql:dbname=" . $this->db_name . ";host=" . $this->db_host . ";port=" . $this->db_port;
            $this->pdo =new PDO($this->dsn,$this->db_user,$this->db_pwd);
            
        } catch (\Exception $ex) {
            die("Erreur : " . $ex->getMessage());
        }
    }

     public function get_series(){ //renvoie toutes les series
        $this->connectBD();
        $sql = "SELECT * FROM serie";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\serie");
        return $result;
    }

    function get_serie_tag($tag){ //renvoie les series avec le tag mis en parametre
        $this->connectBD();
        $sql = "SELECT * FROM serie WHERE serie.tag = $tag";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\serie");
        return $result;
    }


    public function research_serie(){
        $sql = "";
        $this->connectBD();
        if (isset($_GET["text"])) {
            $text = $_GET["text"];
            $sql = "SELECT DISTINCT serie.titre, serie.tag, saison.affiche FROM serie INNER JOIN saison ON saison.titre_serie = serie.titre 				INNER JOIN 
            contient ON contient.titre_saison = saison.titre INNER JOIN  episode ON contient.id_episode = episode.id_Episode  INNER JOIN 
            realise ON realise.id_episode = episode.id_Episode INNER JOIN joue ON joue.titre_saison = saison.titre WHERE (joue.nom_acteur LIKE '%$text%' 
            OR serie.titre LIKE '%$text%' OR realise.nom_real LIKE '%$text%' OR tag LIKE '%$text%') AND
             saison.num_saison = 1 AND saison.titre_serie = serie.titre;" ; // renvoie toutes les séries où le texte recherché se trouve dans le titre de la série / le nom d'un acteur ou réalisateur / nom d'un tag.
        }
        else {
            $sql = "SELECT DISTINCT serie.titre, serie.tag, saison.affiche FROM serie INNER JOIN saison WHERE
             saison.titre_serie = serie.titre AND saison.num_saison = 1;";
        }
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $results = $statement->fetchAll(PDO::FETCH_CLASS, "\serie"); 
        return $results;
    }

    function get_acteur(){
        $this->connectBD();
        $sql = "SELECT * FROM acteur";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\acteur");
        return $result;
    }


    function get_reals(){
        $this->connectBD();
        $sql = "SELECT * FROM realisateur";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\real");
        return $result;
    }

    function get_tags(){
        $this->connectBD();
        $sql = "SELECT * FROM tag";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_COLUMN);
        return $result;
    }
    
    function get_episode($titre){
        $this->connectBD();
        $sql = "SELECT episode.titre,episode.desc, episode.duree, episode.num_episode, saison.num_saison, episode.id_Episode
        FROM episode INNER JOIN contient ON contient.id_episode = episode.id_Episode INNER JOIN saison ON 
        saison.titre = contient.titre_saison WHERE saison.titre_serie = '". $titre ."'";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\\episode");
        return $result;
    }

    function get_real_episode($id_episode){
        $this->connectBD();
        $sql = "SELECT realisateur.nom, realisateur.photo FROM realisateur INNER JOIN realise ON realise.nom_real = realisateur.nom 
        WHERE realise.id_episode = $id_episode;";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\\real");
        return $result;
    }

    function get_tag_serie($titre){ //renvoie le tag de la serie dont le titre est mis en paramètre
        $this->connectBD();
        $sql = "SELECT serie.tag FROM serie WHERE serie.titre = '". $titre ."'";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        return $result[0]["tag"];
    }

    function get_saison_serie($titre){ //renvoie les saisons de la serie dont le titre est mis en paramètre
        $this->connectBD();
        $sql = "SELECT * FROM saison WHERE saison.titre_serie = '". $titre ."'";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\saison");
        return $result;
    }

    function get_first_saison_serie($titre){ //renvoie la premiere saison de la serie dont le titre est mis en paramètre
        $this->connectBD();
        $sql = "SELECT * FROM saison WHERE saison.titre_serie = '". $titre ."' AND saison.num_saison = 1";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\saison");
        return $result[0];
    }
 
}
?>