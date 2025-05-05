-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 05 mai 2025 à 15:15
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tvshow`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `nom` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`nom`, `photo`) VALUES
('Aaron Paul', 'aaron_paul.jpg'),
('Alexis Tomassian', 'alexis_tomassian.jpg'),
('Anna Gunn', 'anna_gunn.jpg'),
('Bryan Cranston', 'bryan_cranston.jpg'),
('Christopher Masterson', 'christopher_masterson.jpg'),
('Dorothée Pousséo', 'dorothée-pousséo.jpg'),
('Erik Per Sullivan', 'erik_per_sullivan.jpg'),
('Frankie Muniz', 'frankie_muniz.jpg'),
('Frédéric Souterelle', 'frédéric_souterelle.jpg'),
('Jane Kaczmarek', 'jane-kaczmarek.jpg'),
('Justin Berfied', 'justin-berfied.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `titre_saison` varchar(255) NOT NULL,
  `id_episode` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`titre_saison`, `id_episode`) VALUES
('Saison 1 Malcolm', 1),
('Saison 1 Malcolm', 2),
('Saison 1 Malcolm', 3),
('Saison 1 Malcolm', 4),
('Saison 1 Malcolm', 5),
('Saison 1 Breaking Bad', 6),
('Saison 1 Breaking Bad', 7),
('Saison 1 Breaking Bad', 8),
('Saison 1 Breaking Bad', 9),
('Saison 1 Breaking Bad', 10),
('Saison 1 Breaking Bad', 11),
('Saison 1 Breaking Bad', 12),
('Saison 2 Breaking Bad', 13),
('Saison 2 Breaking Bad', 14),
('Saison 2 Breaking Bad', 15),
('Saison 2 Breaking Bad', 16),
('Saison 2 Breaking Bad', 17),
('Saison 2 Breaking Bad', 18),
('Saison 2 Breaking Bad', 19),
('Saison 2 Breaking Bad', 20),
('Saison 2 Breaking Bad', 21),
('Saison 2 Breaking Bad', 22),
('Saison 2 Breaking Bad', 23),
('Saison 2 Breaking Bad', 24),
('Saison 2 Breaking Bad', 25),
('Saison 1 Cyberpunk Edgerunners', 26),
('Saison 1 Cyberpunk Edgerunners', 27),
('Saison 1 Cyberpunk Edgerunners', 28),
('Saison 1 Cyberpunk Edgerunners', 29),
('Saison 1 Cyberpunk Edgerunners', 30),
('Saison 1 Cyberpunk Edgerunners', 31),
('Saison 1 Cyberpunk Edgerunners', 32),
('Saison 1 Cyberpunk Edgerunners', 33),
('Saison 1 Cyberpunk Edgerunners', 34),
('Saison 1 Cyberpunk Edgerunners', 35),
('Saison 1 Arcane', 36),
('Saison 1 Arcane', 37),
('Saison 1 Arcane', 38),
('Saison 1 Arcane', 39),
('Saison 1 Arcane', 41),
('Saison 1 Arcane', 42),
('Saison 1 Arcane', 43),
('Saison 1 Arcane', 40),
('Saison 1 Arcane', 44);

-- --------------------------------------------------------

--
-- Structure de la table `episode`
--

CREATE TABLE `episode` (
  `titre` text NOT NULL,
  `desc` text NOT NULL,
  `duree` int(11) NOT NULL,
  `num_episode` int(255) NOT NULL,
  `id_Episode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `episode`
--

INSERT INTO `episode` (`titre`, `desc`, `duree`, `num_episode`, `id_Episode`) VALUES
('', '', 0, 0, 0),
(' Je ne suis pas un monstre', 'Malcolm, découvre qu\'il est atteint d\'un mal incurable : il a un QI de 165 !', 23, 1, 1),
('Alerte rouge', 'Lois et Hal fêtent leur anniversaire de mariage. Mais Lois découvre sa robe de soirée brûlée...', 23, 2, 2),
('Seuls à la maison', 'Lois et Hal confient à Francis la garde des trois enfants pour le week-end.', 23, 3, 3),
('Honte', 'Malcolm est rongé par le remords quand il apprend qu’il a frappé un enfant de sept ans.', 23, 4, 4),
('Changement de famille', 'Malcolm est engagé comme baby-sitter dans une famille riche avec une somptueuse villa.', 23, 5, 5),
('Chute libre', 'Professeur de chimie dans un lycée, Walter White travaille parallèlement dans une station de lavage de voitures afin de boucler les fins de mois de sa famille, composée de sa femme Skyler, qui est enceinte, et de son fils Walter Jr, un adolescent handicapé. Alors qu\'il découvre qu\'il est atteint d\'un cancer du poumon en stade terminal, Walter décide de reprendre sa vie en main. Utilisant ses connaissances en chimie, il s\'attelle à la fabrication de méthamphétamines, avec l\'aide de Jesse Pinkman, un ancien élève qui s\'est spécialisé dans le trafic de drogues...', 58, 1, 6),
('Le choix', 'Après leur mésaventure dans le désert, Walter et Pinkman doivent se débarrasser des corps des deux trafiquants qu\'ils ont éliminé. Leur tâche se complique quand ils découvrent avec stupéfaction que l\'un d\'entre eux a survécu. Les deux acolytes ne sont pas d\'accord quant à la marche à suivre. De son côté, Skyler s\'interroge sur le comportement étrange de son mari. Intriguée par un appel, elle mène l\'enquête pour découvrir ce qu\'il fabrique. Au lycée, Walter ne parvient pas à faire abstraction de ses ennuis...', 42, 2, 7),
('Dérapage', 'Walter n\'a toujours pas effectué sa part du marché conclu avec Jesse qui le presse d\'en finir. Il tergiverse et hésite à commettre un acte qui pourrait le hanter toute sa vie et mettre sa famille en danger. Alors qu\'elle peint la chambre du bébé avec sa soeur, Skyler lui raconte qu\'elle écrit un récit sur un personnage drogué et lui pose des questions sur la marijuana.', 42, 3, 8),
('Retour aux sources', 'Hank informe ses troupes que de nouveaux dealers opèrent à Albuquerque, proposant une drogue de très haute qualité. Lors d\'un barbecue en famille chez les White, Skyler explose en sanglots, forçant Walt à révéler à sa famille qu\'il est atteint d\'un cancer des poumons. Marie propose de faire jouer ses relations pour lui obtenir un rendez-vous chez un oncologue de renom.', 42, 4, 9),
('Vivre ou survivre', 'Jesse tente d\'obtenir un travail régulier mais il constate rapidement que sans qualifications et sans expérience, ce n\'est pas chose facile. Il se tourne donc à nouveau vers la fabrication de drogue avec l\'aide d\'un ancien ami. Toutefois, sans les connaissances de Walt, il ne parvient pas à obtenir la qualité voulue.\r\nWalt, lui, revoit un ancien collègue, aujourd\'hui très riche, qui lui propose un travail et de payer son traitement.', 42, 5, 10),
('Bluff', 'Walt et Jesse reprennent les affaires, mais Walt constate qu\'en vendant en petite quantité ils ne gagnaient pas assez d\'argent. Walt suggère donc à Jesse de trouver un distributeur qui leur achèterait 500g d\'un coup. La transaction ne se déroule pas comme prévu.\r\nDe son côté, Hank poursuit son enquête et le masque trouvé dans le désert le ramène directement au laboratoire de Walt.', 47, 6, 11),
('Le Fruit défendu', 'Walt a annoncé à Tuco qu\'il pouvait lui fournir que 2 kg de &quot;cristaux&quot; par semaine. Jesse lui apprend alors qu\'il est difficile d\'obtenir l\'un des ingrédients clé de la préparation dans une quantité suffisante. Ils sont alors forcés de changer leur technique de préparation et de se procurer par eux-même tous les ingrédients nécessaire. Pour cela, ils n\'hésitent pas à entrer par effraction dans un entrepôt pharmaceutique.\r\nAu cours d\'une fête organisée pour le futur bébé, Marie offre un diadème en or. Skyler, qui trouve ce cadeau trop extravagant, décide de le rapporter à la bijouterie.', 47, 7, 12),
('Traqués', 'Walter et Jesse rencontrent dans une casse automobile un gros revendeur local. La situation dégénère.', 42, 1, 13),
('Chasse à l\'homme', 'Tuco retient Jesse et Walt prisonniers dans la maison délabrée de son oncle. Le dealer découvre la véritable identité du professeur de chimie et la famille de celui-ci. Il lui explique son projet : l\'emmener au Mexique, où il pourra fabriquer de la méthamphétamine à longueur de journée. La disparition inexpliquée de Walt pousse Marie et Skyler à oublier leur querelle le temps des recherches. Tandis que son équipe s\'apprête à faire une descente dans le repaire de Tuco, Hank mène sa propre enquête pour retrouver son beau-frère. La piste d\'un deuxième téléphone et l\'intuition de son épouse l\'amènent à rendre visite à madame Pinkman, la mère de Jesse', 42, 2, 14),
('Alibi', 'Après avoir échappé à Tuco et assisté à sa mort pendant une fusillade avec Hank, Walt et Jesse traversent le désert pour rentrer chez eux. Walt est finalement retrouvé nu dans un supermarché. Transporté à l\'hôpital, il semble souffrir d\'amnésie...', 42, 3, 15),
('Au fond du gouffre', 'Jesse est mis à la porte de chez lui par ses parents ; aucun de ses potes ne veut l\'accueillir. Il supplie Walt de lui donner la part d\'argent qu\'il estime être la sienne. Walt ne veut plus entendre parler de lui...', 42, 4, 16),
('Nouveau départ', 'La tension est à son comble entre Walt et Skyler, qui réclame des explications. De son côté, Jesse monte un réseau pour écouler la production de «meth». Hank reçoit une promotion et est envoyé à El Paso, ville frontalière avec le Mexique où règne la loi des cartels', 42, 5, 17),
('Règlements de comptes', 'Skinny, l\'un des dealers de Jesse, se fait braquer par un couple de drogués. Walter veut que son associé règle une bonne fois pour toutes ces incidents, afin que plus personne ne leur manque de respect. Mais la remise au pas ne se passe pas du tout comme prévu...', 42, 6, 18),
('Poisson lune', 'Ne parvenant pas à joindre Jesse, Walt se retrouve à distribuer lui-même la drogue aux dealers. Depuis que son associé a une réputation de tueur, il n\'a aucun mal à se faire payer et en profite pour étendre son trafic...', 42, 7, 19),
('Appelez donc Saul', 'Badger se fait arrêter alors qu\'il fourgue de la drogue. La brigade des stups est décidée à le faire parler et lui propose un deal : sa remise en liberté à condition qu\'il donne le nom de son fournisseur. Très inquiets, Walt et Jesse s\'adressent à un avocat pour qu\'il le défende. Mais celui-ci considère que le deal proposé à Badger est très bon...', 42, 8, 20),
('Seuls au monde', 'Alors qu\'il se croit condamné à une mort imminente, Walt persuade Jesse d\'aller passer quatre jours dans le désert pour produire une importante quantité de métamphétamine. Tout se passe bien jusqu\'au moment où les deux compères tentent de redémarrer le camping-car', 42, 9, 21),
('Introspection', 'Walt, qui vient d\'apprendre qu\'il est en rémission alors qu\'il se croyait presque mort, est pourtant de plus en plus lunatique. Lors d\'une petite fête familiale, il s\'en prend violemment à Hank, puis, honteux, entreprend dans les jours qui suivent de réparer tout ce qui peut l\'être dans la maison, au grand désarroi des siens...', 42, 10, 22),
('Nouvelle donne', 'Les médecins envisagent désormais une opération pour Walt, mais il n\'a pas le temps de s\'en préoccuper. L\'un de ses dealers vient de se faire abattre en pleine rue tandis que Jesse, loin de prendre les mesures qui s\'imposent, fuit à nouveau la réalité dans les plaisirs artificiels...', 42, 11, 23),
('Vie et mort', 'Après avoir conclu un deal avec son nouveau distributeur, Walter court au chevet de sa femme, qui vient d\'accoucher. Pendant ce temps, pour l\'aider à récolter l\'argent nécessaire à son opération, son fils décide de créer un site Internet. Quant à Jesse, n\'ayant aucun souvenir du passage de Walt, il est persuadé qu\'on lui a volé la drogue...', 42, 12, 24),
('Effet papillon', 'Quand Jesse découvre le corps inerte de Jane terrassée par une overdose, son monde s\'écroule... De son côté, Walter, sur le point de se faire opérer, révèle sous les effets de la drogue tous ses mensonges à sa femme, qui lui demande bientôt de quitter la maison...', 42, 13, 25),
('Let You Down', 'David retourne à la réalité après avoir streamé de la braindance illégale toute la nuit : un appartement délabré, une machine à laver cassée et une mère épuisée.', 26, 1, 26),
('Like a Boy', 'Après s\'être installé un implant dans le corps, David se rend à l\'Académie pour se venger de son harceleur. Il rencontre une femme mystérieuse qui veut le recruter.', 26, 2, 27),
('Smooth Criminal', 'David cherche à tout prix à rejoindre un groupe d\'edgerunners remuants. Pendant ce temps, d\'obscures forces tentent de le ramener vers l\'Académie Arasaka.', 26, 3, 28),
('Lucky You', 'Impatient de faire ses armes en tant qu\'edgerunner, David réclame une autre mission à Maine. Mais celui-ci demande à Lucy de se charger de son entraînement.', 26, 4, 29),
('All Eyez On Me', 'David suggère un plan astucieux pour la prochaine mission de l\'équipe. Mais il ne tarde pas à se rendre compte qu\'il ne faut pas sous-estimer leur cible.', 26, 5, 30),
('Girl on Fire', 'Maine n\'est pas lui-même. Mais l\'équipe a d\'autres préoccupations : elle doit récupérer des informations vitales en sondant un prisonnier et le temps est compté.', 26, 6, 31),
('Stronger', 'David est devenu une célébrité accroc aux implants cybernétiques. Il entraîne son équipe dans une nouvelle mission, et une vieille connaissance lui propose un boulot.', 26, 7, 32),
('Stay', 'Faraday se retrouve coincé entre Arasaka et Militech. Lucy et Rebecca demandent à David d\'expliquer son changement de comportement, mais il refuse de les écouter.', 26, 8, 33),
('Humanity', 'Les ravisseurs de Lucy découvrent sa mission secrète et son sinistre passé. David et son équipe se lancent dans le boulot de Faraday, mais quelque chose cloche.', 26, 9, 34),
('My Moon My Man', 'Au bord de la cyberpsychose mais déterminé à sauver Lucy, David fait irruption à Night City alors qu\'Arasaka cherche à déployer l\'arme fatale ultime.', 26, 10, 35),
('Welcome to the playground', 'Les sœurs orphelines Vi et Powder causent des remous dans les rues souterraines de Zaun à la suite d\'un braquage dans le très huppé Piltover.', 40, 1, 36),
('Certains mystères ne devraient jamais être résolus', 'Idéaliste, le chercheur Jayce tente de maîtriser la magie par la science malgré les avertissements de son mentor. Le criminel Silco teste une substance puissante.', 40, 2, 37),
('Cette violence crasse nécessaire au changement', 'Deux anciens rivaux s\'affrontent lors d\'un défi spectaculaire qui se révèle fatidique pour Zaun. Jayce et Viktor prennent de gros risques pour leurs recherches.', 40, 3, 38),
(' Joyeuse Fête du progrès !', 'Alors que Piltover profite de leur technologie, Jayce et Viktor réfléchissent à ce qu\'ils vont faire. Un visage familier ressort de Zaun pour semer la pagaille.', 40, 4, 39),
(' L\'ennemi commun', 'Caitlyn, la pacifieuse qui n\'en fait qu\'à sa tête, arpente les bas-fonds pour trouver Silco. Jayce devient une cible en combattant la corruption à Piltover.', 40, 5, 40),
('Quand l\'empire s\'effondre', 'Un protégé discrédite son mentor devant le Conseil à cause de l\'évolution rapide d\'une technologie magique. Poursuivie par les autorités, Jinx doit affronter son passé.', 40, 6, 41),
('Le petit sauveur', 'Caitlyn et Vi retrouvent un allié dans les rues de Zaun et se déchaînent contre une ennemie commune. Viktor prend une décision désespérée.', 40, 7, 42),
(' L\'eau et l\'huile', 'L\'héritière désavouée Mel et sa mère échangent des tactiques de combat. Caitlyn et Vi forgent une alliance improbable. Jinx subit une étonnante transformation.', 40, 8, 43),
('Rouages et engrenages', 'À deux doigts d\'entrer en guerre, les chefs de Piltover et de Zaun sont face à un ultimatum, jusqu\'à ce qu\'un affrontement fatidique bouleverse les deux villes à jamais.', 40, 9, 44);

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `titre_saison` varchar(255) NOT NULL,
  `nom_acteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`titre_saison`, `nom_acteur`) VALUES
('Saison 1 Malcolm', 'Jane Kaczmarek'),
('Saison 1 Malcolm', 'Bryan Cranston'),
('Saison 1 Malcolm', 'Justin Berfied'),
('Saison 1 Malcolm', 'Frankie Muniz'),
('Saison 1 Malcolm', 'Erik Per Sullivan'),
('Saison 1 Malcolm', 'Christopher Masterson'),
('Saison 1 Breaking Bad', 'Aaron Paul'),
('Saison 1 Breaking Bad', 'Bryan Cranston'),
('Saison 2 Breaking Bad', 'Aaron Paul'),
('Saison 2 Breaking Bad', 'Bryan Cranston'),
('Saison 1 Breaking Bad', 'Anna Gunn'),
('Saison 2 Breaking Bad', 'Anna Gunn'),
('Saison 1 Cyberpunk Edgerunners', 'Alexis Tomassian'),
('Saison 1 Cyberpunk Edgerunners', 'Dorothée Pousséo'),
('Saison 1 Cyberpunk Edgerunners', 'Frédéric Souterelle');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `nom` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`nom`, `photo`) VALUES
('Adam Bernstein', 'adam_bernstein.jpg'),
('Andrew Orenstein', 'andrew_orenstein.png'),
('Arlene Sanford', 'arlene_sanford.jpg'),
('Bryan Cranston', 'bryan_cranston.jpg'),
('Charles Haid', 'charles_haid.jpg'),
('Félix Enríquez Alcalá', 'félix_enríquez_alcalá.jpg'),
('Hiroyuki Imaishi', 'hiroyuki_imaishi.jpg'),
('Jeff Melman', 'jeff_melman.jpg'),
('Jim McKay', 'jim_mckay.jpg'),
('Johan Renck', 'johan_renck.jpg'),
('John Dahl', 'john_dahl.jpg'),
('Nick Marck', 'nick_marck.jpg'),
('Peter Medak', 'peter_medak.jpg'),
('Terry McDonough', 'terry_mcdonough.jpg'),
('Tim Hunter', 'tim_hunter.jpg'),
('Todd Holland', 'todd_holland.png'),
('Tricia Borck.jpg', 'tricia_borck.jpg'),
('Vince Gilligan', 'vince_gilligan.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE `realise` (
  `nom_real` varchar(255) NOT NULL,
  `id_episode` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realise`
--

INSERT INTO `realise` (`nom_real`, `id_episode`) VALUES
('Todd Holland', 1),
('Arlene Sanford', 2),
('Todd Holland', 3),
('Andrew Orenstein', 3),
('Nick Marck', 4),
('Jeff Melman', 5),
('Vince Gilligan', 6),
('Adam Bernstein', 7),
('Adam Bernstein', 8),
('Jim McKay', 9),
('Tricia Borck.jpg', 10),
('Peter Medak', 11),
('Tim Hunter', 12),
('Bryan Cranston', 13),
('Charles Haid', 14),
('Terry McDonough', 15),
('John Dahl', 16),
('Johan Renck', 17),
('Peter Medak', 18),
('Félix Enríquez Alcalá', 19),
('Terry McDonough', 20),
('Terry McDonough', 21),
('Terry McDonough', 22),
('Terry McDonough', 23),
('Terry McDonough', 24),
('Adam Bernstein', 25),
('Hiroyuki Imaishi', 26),
('Hiroyuki Imaishi', 27),
('Hiroyuki Imaishi', 28),
('Hiroyuki Imaishi', 29),
('Hiroyuki Imaishi', 30),
('Hiroyuki Imaishi', 31),
('Hiroyuki Imaishi', 32),
('Hiroyuki Imaishi', 33),
('Hiroyuki Imaishi', 34),
('Hiroyuki Imaishi', 35);

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `titre` varchar(255) NOT NULL,
  `titre_serie` varchar(255) NOT NULL,
  `affiche` text NOT NULL,
  `descr` text NOT NULL,
  `num_saison` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`titre`, `titre_serie`, `affiche`, `descr`, `num_saison`) VALUES
('Saison 1 Arcane', 'Arcane', 'arcane_saison1.jpg', 'Championnes de leurs villes jumelles et rivales, deux sœurs se battent dans une guerre où font rage des technologies magiques et des perspectives diamétralement opposées.', 1),
('Saison 1 Breaking Bad', 'Breaking Bad', 'breaking_bad_saison1.jpg', 'Walter White, 50 ans, est professeur de chimie dans un lycée du Nouveau-Mexique. Son quotidien est bouleversé lorsqu’il apprend qu’il est atteint d’un cancer des poumons incurable. Il n’a plus qu’une seule solution pour mettre rapidement sa famille à l’abri du besoin : fabriquer et vendre une drogue de synthèse. Commence alors une longue descente aux enfers.', 1),
('Saison 1 Cyberpunk Edgerunners', 'Cyberpunk: Edgerunners', 'cyberpunk_edgerunners.jpg', 'Elle raconte une histoire indépendante sur 10 épisodes à propos d’un enfant des rues essayant de survivre dans une ville du futur obsédée par la technologie et les modifications corporelles. Ayant tout à perdre, il choisit de rester en vie en devenant un edgerunner - un hors-la-loi mercenaire également connu comme un cyberpunk.', 1),
('Saison 1 Malcolm', 'Malcolm', 'malcolm_saison1.jpg', 'Petit génie malgré lui, Malcolm vit dans une famille hors du commun. Le jeune surdoué n\'hésite pas à se servir de son intelligence pour faire les 400 coups avec ses frères : Francis, l\'aîné, envoyé dans une école militaire après une bêtise de trop, Reese, une brute pas très maligne, et Dewey, le petit dernier, souffre douleur général. Les parents tentent tant bien que mal de canaliser l\'énergie de ces petits démons. Si Loïs est despotique et veut tout contrôler, Hal, en revanche, est irresponsable et ne pense qu\'à s\'amuser.', 1),
('Saison 2 Breaking Bad', 'Breaking Bad', 'breaking_bad_saison2.jpg', 'Après les mésaventures rencontrées avec Krazy-8 et Tuco Salamanca, Walter et Jesse décident de monter leur propre affaire. Mais alors que l’empire d\'Heisenberg s’étend de plus en plus, un deal tourne mal et les ennuis commencent. Sur les conseils de Saul Goodman, son avocat véreux, Walter entre en contact avec le propriétaire d’une chaîne de restaurant qui pourrait l’aider à écouler ses stocks de drogue. Pendant ce temps, Skyler commence à avoir des doutes sur son mari tandis que Jesse sombre peu à peu dans l’héroïne.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `titre` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`titre`, `tag`) VALUES
('Arcane', 'action'),
('Breaking Bad', 'drame'),
('Malcolm', 'humour'),
('Cyberpunk: Edgerunners', 'Science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`nom`) VALUES
('action'),
('drame'),
('humour'),
('Science-fiction');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD KEY `epi_fk_key` (`id_episode`),
  ADD KEY `sa_fk_key` (`titre_saison`);

--
-- Index pour la table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id_Episode`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD KEY `ac_fk_key` (`nom_acteur`),
  ADD KEY `sai_fk_key` (`titre_saison`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `realise`
--
ALTER TABLE `realise`
  ADD KEY `epis_fk_key` (`id_episode`),
  ADD KEY `real_fk_key` (`nom_real`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`titre`),
  ADD KEY `ser_fk_key` (`titre_serie`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`titre`),
  ADD KEY `tag_fk_key` (`tag`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`nom`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `epi_fk_key` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_Episode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sa_fk_key` FOREIGN KEY (`titre_saison`) REFERENCES `saison` (`titre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `ac_fk_key` FOREIGN KEY (`nom_acteur`) REFERENCES `acteur` (`Nom`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sai_fk_key` FOREIGN KEY (`titre_saison`) REFERENCES `saison` (`titre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `epis_fk_key` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_Episode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `real_fk_key` FOREIGN KEY (`nom_real`) REFERENCES `realisateur` (`Nom`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `saison`
--
ALTER TABLE `saison`
  ADD CONSTRAINT `ser_fk_key` FOREIGN KEY (`titre_serie`) REFERENCES `serie` (`titre`);

--
-- Contraintes pour la table `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `tag_fk_key` FOREIGN KEY (`tag`) REFERENCES `tag` (`nom`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
