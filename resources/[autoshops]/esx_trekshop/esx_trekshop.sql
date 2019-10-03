CREATE TABLE `trek_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `trek_categories` (name, label) VALUES
	('trek','Dragracer')
;

CREATE TABLE `treks` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	PRIMARY KEY (`model`)
);

INSERT INTO `treks` (name, model, price, category) VALUES
	('Supercomp', 'supercomp', 0, 'trek'),
	('Topfuel', 'topfuel', 0, 'trek'),
	('Prostock', 'prostock', 0, 'trek'),
	('Funnycar', 'funnycar', 0, 'trek')
;