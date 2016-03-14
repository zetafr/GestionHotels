
USE `gestionhotels`;
-- --------------------------------------------------------

-- --------------------------------------------------------
-- Suppression des tables
-- --------------------------------------------------------

DROP TABLE IF EXISTS `clients`, `chambres__type`, `chambres__liste`, `reservations`;

-- --------------------------------------------------------
-- Création des nouvelles tables
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `clients`
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nom VARCHAR(255),
	prenom VARCHAR(255),
	email VARCHAR(255) NOT NULL UNIQUE COLLATE utf8_general_ci, -- utf8_general_ci car ce n'est pas "Case sensitive"
	username VARCHAR(255) NOT NULL UNIQUE,
	password VARCHAR(56) NOT NULL,
	adresse VARCHAR(255),
	numTel INT(10),
	dateNaissance TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE IF NOT EXISTS `reservations`
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	idChambre INT,
	idClient INT,
	dateDebut TIMESTAMP,
	dateFin TIMESTAMP,
	nbPlaces INT,
	paiementEffectue BOOLEAN
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE IF NOT EXISTS `chambres__liste`
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	idTypeChambre INT,
	numeroChambre INT
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE IF NOT EXISTS `chambres__type`
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	typeChambre VARCHAR(255),
	nombrebPlaceLit INT,
	prixJournalier FLOAT
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_bin;

-- --------------------------------------------------------
-- Modifications sur les tables existantes
-- --------------------------------------------------------


-- --------------------------------------------------------
-- FILL
-- --------------------------------------------------------


INSERT INTO `clients` (`nom`, `prenom`, `email`, username, password, adresse, numTel, dateNaissance) VALUES
	('FONTANA', 'Valentin', 'valentin.fontana@reseau.eseo.fr', 'fontana', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '30 rue jean giono 49100 Angers', 0658945212, '1994-02-24 00:00:00'),
	('DUBLE', 'Thibault', 'thibault.duble@reseau.eseo.fr', 'duble', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '42 rue pascal 92000 Paris', 0632589541, '1994-05-12 00:00:00'),
	('HAMON', 'Romain', 'romain.hamon@reseau.eseo.fr', 'hamon', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '12 rue rené 49100 Angers', 0632459865, '1994-03-19 00:00:00');

INSERT INTO `chambres__type` (`typeChambre`, `nombrebPlaceLit`, `prixJournalier`) VALUES
	('Business', 2, 40),
	('Famille', 6, 80),
	('Noce', 2, 60),
	('Standard', 4, 60);

INSERT INTO `chambres__liste` (`idTypeChambre`, `numeroChambre`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(2, 101),
	(2, 102),
	(2, 103),
	(2, 104),
	(2, 105),
	(3, 201),
	(3, 202),
	(3, 203),
	(3, 204),
	(3, 205),
	(4, 301),
	(4, 302),
	(4, 303),
	(4, 304),
	(4, 305);

INSERT INTO `reservations` (`idChambre`, `idClient`, `dateDebut`, dateFin, nbPlaces, paiementEffectue) VALUES
	(17, 1, '2016-03-11 00:00:00', '2016-03-14 00:00:00', 3, FALSE),
	(7, 2, '2016-03-12 00:00:00', '2016-03-13 00:00:00', 6, TRUE);

	
-- --------------------------------------------------------
COMMIT;