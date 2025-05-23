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

     

    function get_serie_tag($tag){ //renvoie les series avec le tag mis en parametre
        $this->connectBD();
        $query = "SELECT * FROM serie WHERE serie.tag = (:tag)";
        $statement = $this->pdo->prepare($query);
        $statement->bindValue(':tag', $tag);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "..\classes\serie");
        return $result;
    }


    public function research_serie($search){
        if (isset($_GET[$search])) {
            $text = $_GET[$search];
            return $this->research_serie_text($text);
        }
        else {
            return $this->get_series();
        }
        
    }



    public function get_series(){ //renvoie toutes les series
        $this->connectBD();
        $sql = "SELECT DISTINCT serie.titre, tag.tag, saison.affiche FROM serie INNER JOIN saison ON saison.id_serie = serie.id_serie INNER JOIN 
        tag ON serie.tag = tag.id_tag WHERE saison.id_serie = serie.id_serie AND saison.num_saison = 1;";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\serie");
        return $result;
    }

    private function research_serie_text($text){
        $this->connectBD();
        $sql = "SELECT DISTINCT serie.titre, tag.tag, saison.affiche FROM serie INNER JOIN saison ON saison.id_serie = serie.id_serie 				INNER JOIN 
        contient ON contient.id_saison = saison.id_saison INNER JOIN  episode ON contient.id_episode = episode.id_Episode  INNER JOIN 
        realise ON realise.id_episode = episode.id_Episode INNER JOIN joue ON joue.id_saison = saison.id_saison 
        INNER JOIN acteur ON joue.id_acteur = acteur.id_acteur INNER JOIN realisateur ON realise.id_real = realisateur.id_real
        INNER JOIN tag ON serie.tag = tag.id_tag WHERE (acteur.nom LIKE '%$text%' 
        OR serie.titre LIKE '%$text%' OR realisateur.nom LIKE '%$text%' OR tag.tag LIKE '%$text%') AND
        saison.num_saison = 1 AND saison.id_serie = serie.id_serie;" ; // renvoie toutes les séries où le texte recherché se trouve dans le titre de la série / le nom d'un acteur ou réalisateur / nom d'un tag.
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $results = $statement->fetchAll(PDO::FETCH_CLASS, "\serie"); 
        return $results;
    }

    public function research_acteur(){
        $sql = "";
        $this->connectBD();
        if (isset($_GET["acteur"])) {
            $text = $_GET["acteur"];
            $sql = "SELECT DISTINCT * FROM acteur WHERE acteur.nom LIKE '%$text%' " ; // renvoie touts les acteurs dont le nom ressemble au texte
        }
        else {
            $sql = "SELECT DISTINCT * FROM acteur;";
        }
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $results = $statement->fetchAll(PDO::FETCH_CLASS, "\acteur"); 
        return $results;
    }

    public function research_real(){
        $sql = "";
        $this->connectBD();
        if (isset($_GET["real"])) {
            $text = $_GET["real"];
            $sql = "SELECT DISTINCT * FROM realisateur WHERE realisateur.nom LIKE '%$text%' " ; // renvoie touts les acteurs dont le nom ressemble au texte
        }
        else {
            $sql = "SELECT DISTINCT * FROM realisateur;";
        }
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $results = $statement->fetchAll(PDO::FETCH_CLASS, "\\real"); 
        return $results;
    }

    function get_acteurs_titre($titre){
        $this->connectBD();
        $sql = "SELECT DISTINCT acteur.nom, acteur.photo FROM `acteur` INNER JOIN joue ON joue.id_acteur = acteur.id_acteur INNER JOIN
         saison ON saison.id_saison = joue.id_saison INNER JOIN serie ON saison.id_serie = serie.id_serie WHERE serie.titre = '". $titre ."';";
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
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\\real");
        return $result;
    }

    function get_tags(){
        $this->connectBD();
        $sql = "SELECT tag.tag FROM tag";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_COLUMN);
        return $result;
    }
    
    function get_episode($titre){
        $this->connectBD();
        $sql = "SELECT episode.titre,episode.desc, episode.duree, episode.num_episode, saison.num_saison, episode.id_Episode
        FROM episode INNER JOIN contient ON contient.id_episode = episode.id_Episode INNER JOIN saison ON 
        saison.id_saison = contient.id_saison INNER JOIN serie ON saison.id_serie = serie.id_serie WHERE serie.titre = '". $titre ."';";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\\episode");
        return $result;
    }

    function get_real_episode($id_episode){
        $this->connectBD();
        $sql = "SELECT realisateur.nom, realisateur.photo FROM realisateur INNER JOIN realise ON realise.id_real = realisateur.id_real 
        WHERE realise.id_episode = $id_episode;";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\\real");
        return $result;
    }

    function get_tag_serie($titre){ //renvoie le tag de la serie dont le titre est mis en paramètre
        $this->connectBD();
        $sql = "SELECT tag.tag FROM serie INNER JOIN tag ON tag.id_tag = serie.tag WHERE serie.titre = '". $titre ."'";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        return $result[0]["tag"];
    }

    function get_saison_serie($titre){ //renvoie les saisons de la serie dont le titre est mis en paramètre
        $this->connectBD();
        $sql = "SELECT saison.titre, saison.affiche, saison.descr, saison.num_saison FROM saison INNER JOIN serie ON serie.id_serie = saison.id_serie WHERE serie.titre = '". $titre ."'";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\saison");
        return $result;
    }

    function get_first_saison_serie($titre){ //renvoie la premiere saison de la serie dont le titre est mis en paramètre
        $this->connectBD();
        $sql = "SELECT * FROM saison WHERE saison.titre = '". $titre ."' AND saison.num_saison = 1";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\saison");
        return $result[0];
    }

    function get_saisons(){
        $this->connectBD();
        $sql = "SELECT saison.titre, saison.affiche, saison.descr, saison.num_saison FROM saison";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\saison");
        return $result;
    }
    function get_saisons_titre_saison($titre){
        $this->connectBD();
        $sql = "SELECT saison.titre, saison.affiche, saison.descr, saison.num_saison FROM saison WHERE saison.titre = '".$titre."'";
        $statement = $this->pdo->prepare($sql);
        $statement->execute() or die(var_dump($statement->errorInfo()));
        $result = $statement->fetchAll(PDO::FETCH_CLASS, "\saison");
        return $result;
    }

    function applyEditActeur(){
        $this->connectBD();
        if (isset($_POST["nom"])){
            $nvNom =  $_POST["nom"];
            $nom = $_GET["acteur"];
            $sql = "UPDATE `acteur` SET `nom`='$nvNom',`photo`= acteur.photo,`id_acteur`=acteur.id_acteur WHERE nom = '$nom'";
            $statement = $this->pdo->prepare($sql);
            $statement->execute() or die(var_dump($statement->errorInfo()));
            header("Location: /web3/Web-3/editadmin.php?acteur=".urlencode($nvNom)."");
        }
    }

    function applyEditReal() {
        $this->connectBD();
        if (isset($_POST["nom"])){
            $nvNom =  $_POST["nom"];
            $nom = $_GET["real"];
            $sql = "UPDATE `realisateur` SET `nom`='$nvNom',`photo`= realisateur.photo,`id_real`=realisateur.id_real WHERE nom = '$nom'";
            $statement = $this->pdo->prepare($sql);
            $statement->execute() or die(var_dump($statement->errorInfo()));
            header("Location: /web3/Web-3/editadmin.php?real=".urlencode($nvNom)."");
        }
    }

    function applyEditSerie() {
        $this->connectBD();
        if (isset($_POST["titre"])){
            $nvTitre =  $_POST["titre"];
            $titre = $_GET["serie"];
            $sql = "UPDATE `serie` SET `titre`='$nvTitre',`tag`= serie.tag,`id_serie`=serie.id_serie WHERE serie.titre = '$titre'";
            $statement = $this->pdo->prepare($sql);
            $statement->execute() or die(var_dump($statement->errorInfo()));
            $_GET["serie"] = $nvTitre;
        }
    }

    function applyEditTag(){
        $this->connectBD();
        if (isset($_POST["tag"])){
            $nvtag =  $_POST["tag"];
            $tag = $_GET["tag"];
            $sql = "UPDATE `tag` SET `tag`= '$nvtag',`id_tag`=tag.id_tag WHERE tag.tag = '$tag'";
            $statement = $this->pdo->prepare($sql);
            $statement->execute() or die(var_dump($statement->errorInfo()));
            header("Location: /web3/Web-3/editadmin.php?tag=".urlencode($nvtag)."");
        }
    }

    public function applyEditSaison(){
        $this->connectBD();
        if (isset($_POST["descr"])){
            $nvDescr =  $_POST["descr"];
            $nvTitre =  $_POST["titre"];
            $titre = $_GET["saison"];
            $sql = "UPDATE `saison` SET `titre`='$nvTitre',`id_serie`=saison.id_serie,
            `affiche`=saison.affiche,`descr`='$nvDescr',`num_saison`=saison.num_saison,`id_saison`=saison.id_saison 
            WHERE saison.titre = '$titre' ";
            
            $statement = $this->pdo->prepare($sql);
            $statement->execute() or die(var_dump($statement->errorInfo()));
            $chemin = urlencode("$nvTitre") ;
            header("Location: /web3/Web-3/editadmin.php?saison=$chemin");
        }
    }
 
    function applyEdit() {
        if (isset($_GET["tag"])) $this->applyEditTag();
        else if (isset($_GET["saison"])) $this->applyEditSaison();
        else if (isset($_GET["acteur"])) $this->applyEditActeur();
        else if (isset($_GET["real"])) $this->applyEditReal();
    }



}
?>