-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 07 mai 2025 à 10:48
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
  `photo` text NOT NULL,
  `id_acteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`nom`, `photo`, `id_acteur`) VALUES
('Aaron Paul', 'aaron_paul.jpg', 1),
('Adam Bernstein', 'adam_bernstein.jpg', 2),
('Alexis Tomassian', 'alexis_tomassian.jpg', 3),
('Anna Gunn', 'anna_gunn.jpg', 4),
('Bryan Cranston', 'bryan_cranston.jpg', 5),
('Dorothée Pousséo', 'dorothée-pousséo.jpg', 6),
('Ella Purnell', 'ella_purnell.jpg', 7),
('Erik Per Sullivan', 'erik_per_sullivan.jpg', 8),
('Frankie Muniz', 'frankie_muniz.jpg', 9),
('Frédéric Souterelle', 'frédéric_souterelle.jpg', 10),
('Hailee Steinfeld', 'hailee_steinfeld.jpg', 11),
('Jane Kaczmarek', 'jane-kaczmarek.jpg', 12),
('Justin Berfied', 'justin-berfied.jpg', 13),
('Megumi Han', 'megumi_han.jpg', 14),
('Shuichi Ikeda ', 'shuichi_ikeda.jpg', 15);

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `id_episode` int(11) NOT NULL,
  `id_saison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_episode`, `id_saison`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 1),
(11, 2),
(12, 2),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 7),
(55, 7),
(56, 7),
(57, 7),
(58, 7),
(59, 7);

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
('Rouages et engrenages', 'À deux doigts d\'entrer en guerre, les chefs de Piltover et de Zaun sont face à un ultimatum, jusqu\'à ce qu\'un affrontement fatidique bouleverse les deux villes à jamais.', 40, 9, 44),
(' Le fardeau des responsabilités', 'Vi et Caitlyn hésitent sur la meilleure attitude à adopter face à une horrible tragédie qui fait de nombreuses victimes et aggrave les tensions entre les villes jumelles.', 40, 1, 45),
('Tout regarder brûler', 'Tandis que Piltover prône la guerre, la Basse-Ville évalue ses options. Jinx fait profil bas et imagine son prochain coup. Une conversation décisive a lieu.', 40, 2, 46),
('Tu m\'appelles enfin par mon nom', 'Caitlyn redouble d\'efforts pour capturer Jinx. Ambessa accepte une rencontre fatidique. De grands bouleversements secouent Zaun. S\'ensuit une découverte choquante...', 40, 3, 47),
('Peins la ville en bleu', 'Alors que les rumeurs parlent d\'un retour de Jinx, Ambessa redouble d\'ardeur dans la poursuite de sa cible. Jinx et Sevika s\'infiltrent dans le ventre de la bête.', 40, 4, 48),
('Creuser, malgré tout', 'Vi est réveillée par des nouvelles surprenantes. Lors de retrouvailles perturbantes, la réalité est bien différente des apparences. Caitlyn découvre les origines de Shimmer.', 40, 5, 49),
('Le message caché dans le schéma', 'Dans un lieu méconnu, c\'est pourtant une figure bien connue qui prodigue l\'apaisement. Une trahison stupéfiante menace de bouleverser d\'innombrables vies.', 40, 6, 50),
('Comme si c\'était la première fois', 'Un instant d\'obscurité, un autre de lumière… et une vision de ce qui aurait pu être.', 40, 7, 51),
('Tuer est un cycle', 'La tempête qui se prépare nourrit une série de transformations saisissantes. Ailleurs, l\'étincelle de la rébellion brûle toujours.', 40, 8, 52),
('La terre sous tes ongles', 'Magie. Science. Pouvoir. Vengeance. Dans un final épique, les destins se heurtent, déchaînant une guerre sans merci.', 40, 9, 53),
('Les Yeux Bleus de Casval', 'U.C. 0068 - Tout en prononçant son discours pour déclarer l\'indépendance de la République Autonome de Munzo de la Fédération de la Terre, Zeon Zum Deikun meurt subitement d\'une crise cardiaque. Cela provoque des émeutes de masse dans la colonie contre la Fédération alors que Degwin Sodo Zabi, l\'adjoint de Deikun, monte au pouvoir. Au milieu du chaos, les enfants de Deikun, Casval et Artesia, avec le chat Lucifer d\'Artesia et Jimba Ral, le vieil ami de Deikun, s\'embarquent à bord d\'un cargo qui se dirige vers la Terre pour échapper au régime de Zabi.', 63, 1, 54),
('Le chagrin d\'Artesia', 'Trois années se sont écoulées depuis que Casval, Artesia et Jimba ont fui vers la Terre et se sont réfugiés dans le château de Don Teabolo, un aristocrate et un ami de confiance des Deikuns, en Andalousie, en Espagne; Teabolo adopte les enfants et les renomme respectivement Édouard et Sayla.', 57, 2, 55),
('La rébellion de l\'aube', 'Suite à un problème de sécurité au spatioport, Édouard et Char changent de vêtements et Char roule le vol d\'Édouard, qui est saboté par les forces de Zeon. Ayant falsifié sa mort aux dépens de son ami, Édouard assume l\'identité de Char et suit une formation de cadet de Zeon.', 68, 3, 56),
('La veille du destin', 'Après le succès de la rébellion de l\'aube, Degwin négocie avec le vice-amiral Revil pour le retrait complet des forces de la Fédération du côté 3 afin d\'empêcher que de tels incidents ne se reproduisent.', 68, 4, 57),
('Affrontement à Loum', 'Le 3 janvier U.C. 0079, la Principauté de Zeon déclare la guerre à la Fédération de la Terre et massacre le gouvernement anti-Zeon de Side 2 \"Hatte\". Dans le même temps, une force d\'assaut mobile dirigée par Kycila capture les villes lunaires de Grenade et Von Braun.', 84, 5, 58),
('La naissance de la Comète Rouge', 'Le champ de bataille s’est déplacé à Loum, et un affrontement entre les flottes de Zeon et de la Fédération Terrienne est sur le point de se déclencher. Char Aznable, jeune pilote des forces de Zeon, bâti alors sa renommée sur ses exploits remarquables aux commandes de son Mobile Suit Zaku rouge.', 83, 6, 59);

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `id_acteur` int(11) NOT NULL,
  `id_saison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`id_acteur`, `id_saison`) VALUES
(1, 2),
(1, 3),
(5, 2),
(5, 3),
(3, 4),
(4, 2),
(4, 3),
(6, 4),
(7, 5),
(7, 6),
(8, 1),
(9, 1),
(10, 5),
(10, 6),
(11, 5),
(11, 6),
(12, 1),
(13, 1),
(14, 7),
(15, 7);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `nom` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `id_real` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`nom`, `photo`, `id_real`) VALUES
('Adam Bernstein', 'adam_bernstein.jpg', 1),
('Andrew Orenstein', 'andrew_orenstein.png', 2),
('Arlene Sanford', 'arlene_sanford.jpg', 3),
('Bryan Cranston', 'bryan_cranston.jpg', 4),
('Charles Haid', 'charles_haid.jpg', 5),
('Félix Enríquez Alcalá', 'félix_enríquez_alcalá.jpg', 6),
('Hiroyuki Imaishi', 'hiroyuki_imaishi.jpg', 7),
('Jeff Melman', 'jeff_melman.jpg', 8),
('Jim Mckay', 'jim_mckay.jpg', 9),
('Johan Renck', 'johan_renck.jpg', 10),
('John Dahl', 'john_dahl.jpg', 11),
('Nick Marck', 'nick_marck.jpg', 12),
('Pascal Charrue', 'pascal_charrue.jpg', 13),
('Peter Medak', 'peter_medak.jpg', 14),
('Takashi Imanishi', 'takashi_imanishi.jpg', 15),
('Terry Mcdonough', 'terry_mcdonough.jpg', 16),
('Tim Hunter', 'tim_hunter.jpg', 17),
('Todd Holland', 'todd_holland.png', 18),
('Tricia Borck', 'tricia_borck.jpg', 19),
('Vince Gilligan', 'vince_gilligan.jpg', 20);

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE `realise` (
  `id_real` int(11) NOT NULL,
  `id_episode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realise`
--

INSERT INTO `realise` (`id_real`, `id_episode`) VALUES
(13, 36),
(13, 37),
(13, 38),
(13, 39),
(13, 40),
(13, 41),
(13, 42),
(13, 43),
(13, 44),
(13, 45),
(13, 46),
(13, 47),
(13, 48),
(13, 49),
(13, 50),
(13, 51),
(13, 52),
(13, 53),
(7, 54),
(7, 55),
(7, 56),
(7, 57),
(7, 58),
(7, 59),
(15, 26),
(15, 27),
(15, 28),
(15, 29),
(15, 30),
(15, 31),
(15, 32),
(15, 33),
(15, 34),
(15, 35),
(20, 6),
(20, 9),
(1, 10),
(9, 11),
(1, 25),
(1, 24),
(1, 23),
(11, 22),
(6, 21),
(14, 20),
(10, 19),
(11, 18),
(16, 17),
(5, 15),
(4, 16),
(17, 15),
(17, 14),
(19, 13),
(9, 12),
(2, 1),
(18, 1),
(3, 2),
(18, 3),
(12, 4),
(8, 5);

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `titre` varchar(255) NOT NULL,
  `id_serie` int(255) NOT NULL,
  `affiche` text NOT NULL,
  `descr` text NOT NULL,
  `num_saison` int(255) NOT NULL,
  `id_saison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`titre`, `id_serie`, `affiche`, `descr`, `num_saison`, `id_saison`) VALUES
('Saison 1 Malcolm', 1, 'malcolm_saison1.jpg', 'Petit génie malgré lui, Malcolm vit dans une famille hors du commun. Le jeune surdoué n\'hésite pas à se servir de son intelligence pour faire les 400 coups avec ses frères. Et les parents tentent tant bien que mal de canaliser l\'énergie de ces petits démons.', 1, 1),
('Saison 1 Breaking Bad', 2, 'breaking_bad_saison1.jpg', 'Walter White, 50 ans, est professeur de chimie dans un lycée du Nouveau-Mexique. Son quotidien est bouleversé lorsqu’il apprend qu’il est atteint d’un cancer des poumons incurable. Il n’a plus qu’une seule solution pour mettre rapidement sa famille à l’abri du besoin : fabriquer et vendre une drogue de synthèse. Commence alors une longue descente aux enfers.', 1, 2),
('Saison 2 Breaking Bad', 2, 'breaking_bad_saison2.jpg', 'Après les mésaventures rencontrées avec Krazy-8 et Tuco Salamanca, Walter et Jesse décident de monter leur propre affaire. Mais alors que l’empire d\'Heisenberg s’étend de plus en plus, un deal tourne mal et les ennuis commencent. Sur les conseils de Saul Goodman, son avocat véreux, Walter entre en contact avec le propriétaire d’une chaîne de restaurant qui pourrait l’aider à écouler ses stocks de drogue. Pendant ce temps, Skyler commence à avoir des doutes sur son mari tandis que Jesse sombre peu à peu dans l’héroïne.', 2, 3),
('Saison 1 Cyberpunk', 3, 'cyberpunk_edgerunners.jpg', 'Série animée dérivée du jeu vidéo Cyberpunk 2077. Elle raconte une histoire indépendante sur 10 épisodes à propos d’un enfant des rues essayant de survivre dans une ville du futur obsédée par la technologie et les modifications corporelles. Ayant tout à perdre, il choisit de rester en vie en devenant un edgerunner - un hors-la-loi mercenaire également connu comme un cyberpunk.\r\n\r\n', 1, 4),
('Saison 1 Arcane', 4, 'arcane_saison1.jpg', 'Championnes de leurs villes jumelles et rivales, deux sœurs se battent dans une guerre où font rage des technologies magiques et des perspectives diamétralement opposées.', 1, 5),
('Saison 2 Arcane', 4, 'arcane_saison2.jpg', 'L\'attaque de Jinx contre le Conseil ouvre la voie à une terrible escalade du conflit entre Piltover et Zaun.', 2, 6),
('Saison 1 Gundam The Origin', 5, 'mobile_suit_gundam_the_origin.jpg', 'Une relecture de l\'univers Gundam, se concentrant sur les origines du conflit entre la Fédération Terrestre et la Principauté de Zeon, mettant en lumière les figures emblématiques comme Char Aznable.', 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `titre` text NOT NULL,
  `tag` int(255) NOT NULL,
  `id_serie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`titre`, `tag`, `id_serie`) VALUES
('Malcolm', 4, 1),
('Breaking Bad', 3, 2),
('Cyberpunk Edgerunner', 2, 3),
('Arcane', 1, 4),
('Mobile Suite Gundam The Origin', 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `tag` text NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`tag`, `id_tag`) VALUES
('Action', 1),
('Science-Fiction', 2),
('Drame', 3),
('Humour', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id_acteur`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD KEY `contient_episode` (`id_episode`),
  ADD KEY `contient_saison` (`id_saison`);

--
-- Index pour la table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id_Episode`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD KEY `joue_acteur` (`id_acteur`),
  ADD KEY `joue_saison` (`id_saison`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id_real`);

--
-- Index pour la table `realise`
--
ALTER TABLE `realise`
  ADD KEY `realise_real` (`id_real`),
  ADD KEY `realise_episode` (`id_episode`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`id_saison`),
  ADD KEY `saison_serie` (`id_serie`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id_serie`),
  ADD KEY `tag_fk_key` (`tag`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_episode` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_Episode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contient_saison` FOREIGN KEY (`id_saison`) REFERENCES `saison` (`id_saison`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `joue_acteur` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id_acteur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `joue_saison` FOREIGN KEY (`id_saison`) REFERENCES `saison` (`id_saison`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `realise_episode` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_Episode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `realise_real` FOREIGN KEY (`id_real`) REFERENCES `realisateur` (`id_real`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `saison`
--
ALTER TABLE `saison`
  ADD CONSTRAINT `saison_serie` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`);

--
-- Contraintes pour la table `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `tag_fk_key` FOREIGN KEY (`tag`) REFERENCES `tag` (`id_tag`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
