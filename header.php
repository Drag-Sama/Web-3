<header class="header-titre">
            <a class="titre" href="homepage.php">Tv Show</a>
            <a class ="adminlogin" href="adminlogin.php">admin</a>
        <form class="recherche" action="homepage.php?text=$_GET['text']" method="get">
            <input type="text" name="text" class="search-input" placeholder="Rechercher une serie..">
            <button type="submit" class="btn btn-primary">Click</button>
        </form>
</header>