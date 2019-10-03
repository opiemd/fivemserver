-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 16. Jun 2019 um 16:47
-- Server-Version: 10.1.38-MariaDB-0+deb9u1
-- PHP-Version: 7.3.6-1+0~20190531112735.39+stretch~1.gbp6131b7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `fivem`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --Flugzeuge + Hubis-- `aircrafts`
--

CREATE TABLE `aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `aircrafts`
--

INSERT INTO `aircrafts` (`name`, `model`, `price`, `category`) VALUES
('Alpha Z1', 'alphaz1', 1121000, 'plane'),
('Besra', 'besra', 100000000, 'plane'),
('Buzzard', 'buzzard2', 50000000, 'heli'),
('Cuban 800', 'cuban800', 24000000, 'plane'),
('Dodo', 'dodo', 50000000, 'plane'),
('Duster', 'duster', 17500000, 'plane'),
('Frogger', 'frogger', 80000000, 'heli'),
('Havok', 'havok', 25000000, 'heli'),
('Howard NX25', 'howard', 97500000, 'plane'),
('Luxor', 'luxor', 150000000, 'plane'),
('Luxor Deluxe ', 'luxor2', 175000000, 'plane'),
('Mammatus', 'mammatus', 30000000, 'plane'),
('Maverick', 'maverick', 75000000, 'heli'),
('Ultra Light', 'microlight', 5000000, 'plane'),
('Nimbus', 'nimbus', 90000000, 'plane'),
('Rogue', 'rogue', 100000000, 'plane'),
('Sea Breeze', 'seabreeze', 85000000, 'plane'),
('Sea Sparrow', 'seasparrow', 81500000, 'heli'),
('Shamal', 'shamal', 115000000, 'plane'),
('Mallard', 'stunt', 25000000, 'plane'),
('SuperVolito', 'supervolito', 100000000, 'heli'),
('SuperVolito Carbon', 'supervolito2', 125000000, 'heli'),
('Swift', 'swift', 100000000, 'heli'),
('Swift Deluxe', 'swift2', 125000000, 'heli'),
('Velum', 'velum2', 45000000, 'plane'),
('Vestra', 'vestra', 95000000, 'plane'),
('Volatus', 'volatus', 125000000, 'heli');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `aircraft_categories`
--

CREATE TABLE `aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `aircraft_categories`
--

INSERT INTO `aircraft_categories` (`name`, `label`) VALUES
('heli', 'Hubschrauber'),
('plane', 'Flugzeuge');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --Motoräder-- `bikes`
--

CREATE TABLE `bikes` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bikes`
--

INSERT INTO `bikes` (`name`, `model`, `price`, `category`) VALUES
('Akuma', 'AKUMA', 69790, 'motorcycles'),
('Avarus', 'avarus', 57870, 'motorcycles'),
('Bati 801', 'bati', 125790, 'motorcycles'),
('BF400', 'bf400', 81790, 'motorcycles'),
('BMX (velo)', 'bmx', 160, 'bicycle'),
('Carbon RS', 'carbonrs', 110790, 'motorcycles'),
('Chimera', 'chimera', 89790, 'motorcycles'),
('Cliffhanger', 'cliffhanger', 32890, 'motorcycles'),
('Cruiser (velo)', 'cruiser', 510, 'bicycle'),
('Daemon', 'daemon', 35890, 'motorcycles'),
('Daemon High', 'daemon2', 45890, 'motorcycles'),
('Defiler', 'defiler', 56990, 'motorcycles'),
('Double T', 'double', 182790, 'motorcycles'),
('Enduro', 'enduro', 69890, 'motorcycles'),
('Esskey', 'esskey', 81790, 'motorcycles'),
('Faggio', 'faggio', 2890, 'motorcycles'),
('Vespa', 'faggio2', 2790, 'motorcycles'),
('Fixter (velo)', 'fixter', 225, 'bicycle'),
('Gargoyle', 'gargoyle', 42790, 'motorcycles'),
('Hakuchou', 'hakuchou', 116790, 'motorcycles'),
('Hexer', 'hexer', 87990, 'motorcycles'),
('Innovation', 'innovation', 92790, 'motorcycles'),
('Manchez', 'manchez', 78990, 'motorcycles'),
('Nemesis', 'nemesis', 82790, 'motorcycles'),
('Nightblade', 'nightblade', 62850, 'motorcycles'),
('PCJ-600', 'pcj', 75890, 'motorcycles'),
('Ruffian', 'ruffian', 75820, 'motorcycles'),
('Sanchez', 'sanchez', 52690, 'motorcycles'),
('Sanctus', 'sanctus', 89690, 'motorcycles'),
('Scorcher (velo)', 'scorcher', 280, 'bicycle'),
('Sovereign', 'sovereign', 112790, 'motorcycles'),
('Thrust', 'thrust', 91490, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'bicycle'),
('Vader', 'vader', 78900, 'motorcycles'),
('Vortex', 'vortex', 15790, 'motorcycles'),
('Woflsbane', 'wolfsbane', 93490, 'motorcycles'),
('Zombie', 'zombiea', 95790, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 76990, 'motorcycles');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bike_categories`
--

CREATE TABLE `bike_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bike_categories`
--

INSERT INTO `bike_categories` (`name`, `label`) VALUES
('motorcycles', 'Motorräder'),
('bicycle', 'Fahrräder');

-- --------------------------------------------------------

--
-- Daten für Tabelle `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('aircraft', 'Flugzeuglizenz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --Coupe + Limousine-- `limos`
--

CREATE TABLE `limos` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `limos`
--

INSERT INTO `limos` (`name`, `model`, `price`, `category`) VALUES
('Asea', 'asea', 21900, 'sedans'),
('Asterope', 'asterope', 22490, 'sedans'),
('Cognoscenti', 'cognoscenti', 23490, 'sedans'),
('Emperor', 'emperor', 24900, 'sedans'),
('Alter Emperor', 'emperor2', 2490, 'schrot'),
('Exemplar', 'exemplar', 154350, 'coupes'),
('F620', 'f620', 159890, 'coupes'),
('Felon', 'felon', 157890, 'coupes'),
('Felon GT', 'felon2', 159890, 'coupes'),
('Fugitive', 'fugitive', 25900, 'sedans'),
('Glendale', 'glendale', 22390, 'sedans'),
('Ingot', 'ingot', 21200, 'sedans'),
('Intruder', 'intruder', 27850, 'sedans'),
('Jackal', 'jackal', 162490, 'coupes'),
('Oracle XS', 'oracle', 151890, 'coupes'),
('Oracle', 'oracle2', 152890, 'coupes'),
('Premier', 'premier', 23690, 'sedans'),
('Primo', 'primo', 27590, 'sedans'),
('Primo Custom', 'primo2', 28590, 'sedans'),
('Regina', 'regina', 22490, 'sedans'),
('Sentinel XS', 'sentinel', 148490, 'coupes'),
('Sentinel XL', 'sentinel2', 151290, 'coupes'),
('Schafter', 'schafter2', 32590, 'sedans'),
('Stanier', 'stanier', 21590, 'coupes'),
('Stratum', 'stratum', 22490, 'coupes'),
('Super Diamond', 'superd', 32490, 'coupes'),
('Surge', 'surge', 27890, 'coupes'),
('Tailgater', 'tailgater', 29490, 'coupes'),
('Warrener', 'warrener', 23690, 'coupes'),
('Washington', 'washington', 27490, 'coupes'),
('Zion', 'zion', 164890, 'coupes'),
('Zion Cabrio', 'zion2', 169290, 'coupes'),
('Tornado', 'tornado3', 4590, 'schrot'),
('Tornado Cabrio', 'tornado4', 6590, 'schrot'),
('Rat Bike', 'ratbike', 7590, 'schrot'),
('Ratloader', 'ratloader', 18000, 'schrot'),
('Voodoo Custom', 'voodoo2', 2900, 'schrot'),
('Duneloader', 'dloader', 10590, 'schrot'),
('Journey', 'journey', 10290, 'schrot'),
('Rebel', 'rebel', 10990, 'schrot'),
('Surfer', 'surfer2', 6970, 'schrot');
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `limo_categories`
--

CREATE TABLE `limo_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `limo_categories`
--

INSERT INTO `limo_categories` (`name`, `label`) VALUES
('coupes', 'Coupes'),
('sedans', 'Limousinen'),
('schrot', 'Schrottreife Fahrzeuge');


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --Luxus + Klassiker-- `luxus`
--

CREATE TABLE `luxus` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `luxus`
--

INSERT INTO `luxus` (`name`, `model`, `price`, `category`) VALUES
('Windsor', 'windsor', 169990, 'luxu'),
('Windsor Cabrio', 'windsor2', 174990, 'luxu'),
('Rosevelt', 'btype', 475000, 'sportsclassics'),
('Fränken Stange Hotroad', 'btype2', 890000, 'sportsclassics'),
('Rosevelt Valor', 'btype3', 475000, 'sportsclassics'),
('Casco', 'casco', 129590, 'sportsclassics'),
('Cheburek', 'cheburek', 18290, 'sportsclassics'),
('Cheetah Classic', 'cheetah2', 192890, 'sportsclassics'),
('Coquette Classic', 'coquette2', 132890, 'sportsclassics'),
('Clique', 'clique', 119590, 'sportsclassics'),
('Fagaloa', 'fagaloa', 22790, 'sportsclassics'),
('Hermes', 'hermes', 535000, 'sportsclassics'),
('Hustler', 'hustler', 625000, 'sportsclassics'),
('Infernus Classic', 'infernus2', 325980, 'sportsclassics'),
('Jester Classic', 'jester3', 189790, 'sportsclassics'),
('Mamba', 'mamba', 297890, 'sportsclassics'),
('Manana', 'manana', 125490, 'sportsclassics'),
('Michelli GT', 'michelli', 59890, 'sportsclassics'),
('Peyote', 'peyote', 28790, 'sportsclassics'),
('Pigalle', 'pigalle', 24850, 'sportsclassics'),
('Rapid GT3', 'rapidgt3', 34750, 'sportsclassics'),
('Retinue', 'retinue', 9890, 'sportsclassics'),
('Savestra', 'savestra', 10890, 'sportsclassics'),
('Stinger', 'stinger', 175490, 'sportsclassics'),
('Stinger GT', 'stingergt', 210850, 'sportsclassics'),
('Swinger', 'swinger', 235750, 'sportsclassics'),
('Torero', 'torero', 210890, 'sportsclassics'),
('Tornado', 'tornado', 29890, 'sportsclassics'),
('Tornado Cabrio', 'tornado2', 31890, 'sportsclassics'),
('Tornado Custom Cabrio', 'tornado5', 49590, 'sportsclassics'),
('Z190', 'z190', 79890, 'sportsclassics'),
('Z-Type', 'ztype', 590890, 'sportsclassics');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `luxu_categories`
--

CREATE TABLE `luxu_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `luxu_categories`
--

INSERT INTO `luxu_categories` (`name`, `label`) VALUES
('luxu', 'Luxus'),
('sportsclassics', 'Klassiker');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --Kompacktwagen + Musle-- `musels`
--

CREATE TABLE `musels` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `musels`
--

INSERT INTO `musels` (`name`, `model`, `price`, `category`) VALUES
('Blade', 'blade', 128490, 'muscle'),
('Blista', 'blista', 11900, 'compacts'),
('Brios R/A', 'brioso', 13900, 'compacts'),
('Buccaneer Custom', 'buccaneer2', 94990, 'muscle'),
('Chino Luxe', 'chino2', 89490, 'muscle'),
('Coquette Black Fin', 'coquette3', 102890, 'muscle'),
('Deviant', 'deviant', 189500, 'muscle'),
('Dominator', 'dominator', 192890, 'muscle'),
('Dominator GTX', 'dominator3', 198590, 'muscle'),
('Dukes', 'dukes', 124890, 'muscle'),
('Ellie', 'ellie', 224890, 'muscle'),
('Faction Rider', 'faction2', 138790, 'muscle'),
('Gauntlet', 'gauntlet', 125799, 'muscle'),
('Hotknife', 'hotknife', 208750, 'muscle'),
('Impaler', 'impaler', 110890, 'muscle'),
('Issi', 'issi2', 14490, 'muscle'),
('Issi Classic', 'issi3', 10200, 'muscle'),
('Nightshade', 'nightshade', 195790, 'muscle'),
('Panto', 'panto', 16900, 'compacts'),
('Phoenix', 'phoenix', 148990, 'muscle'),
('Picador', 'picador', 178580, 'muscle'),
('Prairie', 'prairie', 19900, 'compacts'),
('Rat-Truk', 'ratloader2', 210890, 'muscle'),
('Rhapsody', 'rhapsody', 14900, 'compacts'),
('Ruiner', 'ruiner', 175890, 'muscle'),
('Sabre GT', 'sabregt2', 220890, 'muscle'),
('Slam Van', 'slamvan3', 205890, 'muscle'),
('Stalion', 'stalion', 159890, 'muscle'),
('Tampa', 'tampa', 139580, 'muscle'),
('Tulip', 'tulip', 182490, 'muscle'),
('Vamos', 'vamos', 181720, 'muscle'),
('Virgo', 'virgo', 113890, 'muscle'),
('Virgo Classic Custom', 'virgo2', 135790, 'muscle'),
('Virgo Classic', 'virgo3', 135790, 'muscle'),
('Voodoo', 'voodoo', 162890, 'muscle'),
('Yosemite', 'yosemite', 220890, 'muscle');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `musel_categories`
--

CREATE TABLE `musel_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `musel_categories`
--

INSERT INTO `musel_categories` (`name`, `label`) VALUES
('compacts', 'Kompaktwagen'),
('muscle', 'Muselscars');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --Sport + Supersport-- `supers`
--

CREATE TABLE `supers` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `supers`
--

INSERT INTO `supers` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 375890, 'super'),
('Alpha', 'alpha', 189590, 'sports'),
('Banshee', 'banshee', 298990, 'sports'),
('Banshee 900R', 'banshee2', 421750, 'super'),
('Bestia GTS', 'bestiagts', 275890, 'sports'),
('Blista Compact', 'blista2', 129890, 'sports'),
('Buffalo S', 'buffalo2', 189790, 'sports'),
('Bullet', 'bullet', 399990, 'super'),
('Carbonizzare', 'carbonizzare', 220190, 'sports'),
('Cheetah', 'cheetah', 431790, 'super'),
('Comet', 'comet2', 289790, 'sports'),
('Comet 3', 'comet3', 310870, 'sports'),
('Coquette', 'coquette', 305790, 'sports'),
('Elegy Retro Custom', 'elegy', 278490, 'sports'),
('Elegy RH8', 'elegy2', 298790, 'sports'),
('Entity XF', 'entityxf', 425790, 'super'),
('Feltzer', 'feltzer2', 325790, 'sports'),
('Flash GT', 'flashgt', 319790, 'sports'),
('FMJ', 'fmj', 430790, 'super'),
('Furore GT', 'furoregt', 305490, 'sports'),
('Fusilade', 'fusilade', 278790, 'sports'),
('Futo', 'futo', 210790, 'sports'),
('GP1', 'gp1', 412790, 'super'),
('Infernus', 'infernus', 430790, 'super'),
('Italigtb2', 'italigtb2', 475790, 'super'),
('Italo GTO', 'italigto', 40000, 'sports'),
('Jester', 'jester', 389750, 'sports'),
('Lynx', 'lynx', 289720, 'sports'),
('Massacro', 'massacro', 316790, 'sports'),
('Nero Custom', 'nero2', 485790, 'super'),
('9F Cabrio', 'ninef2', 339790, 'sports'),
('Osiris', 'osiris', 422790, 'super'),
('Pariah', 'pariah', 224790, 'sports'),
('Penetrator', 'penetrator', 375890, 'super'),
('Penumbra', 'penumbra', 220890, 'sports'),
('Pfister811', 'pfister811', 475890, 'super'),
('raiden', 'raiden', 221790, 'sports'),
('Rapid GT', 'rapidgt', 239750, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 245790, 'sports'),
('Reaper', 'reaper', 412590, 'super'),
('Revolter', 'revolter', 220890, 'sports'),
('Ubermacht SC-1', 'sc1', 375890, 'super'),
('Schafter V12', 'schafter3', 325790, 'sports'),
('Schlagen GT', 'schlagen', 342890, 'sports'),
('Schwartzer', 'schwarzer', 278990, 'sports'),
('Sentinel3', 'sentinel3', 178490, 'sports'),
('Seven 70', 'seven70', 276390, 'sports'),
('Spectre Custom', 'specter2', 369790, 'sports'),
('Sultan', 'sultan', 210820, 'sports'),
('SultanRS', 'sultanrs', 369690, 'super'),
('Surano', 'surano', 269990, 'sports'),
('T20', 't20', 410890, 'super'),
('Tempesta', 'tempesta', 459790, 'super'),
('Turismo R', 'turismor', 490790, 'super'),
('Vacca', 'vacca', 438970, 'super'),
('Verlierer', 'verlierer2', 215790, 'sports'),
('Zentorno', 'zentorno', 525790, 'super');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `super_categories`
--

CREATE TABLE `super_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `super_categories`
--

INSERT INTO `super_categories` (`name`, `label`) VALUES
('sports', 'Supersportwagen'),
('super', 'Supers');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --Transporter + Gewerbe-- `trucks`
--

CREATE TABLE `trucks` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `trucks`
--

INSERT INTO `trucks` (`name`, `model`, `price`, `category`) VALUES
('Benson', 'benson', 55000, 'box'),
('Hauler', 'hauler', 100000, 'haul'),
('Mule 1', 'mule', 40000, 'box'),
('Mule 2', 'mule2', 40000, 'box'),
('Mule 3', 'mule3', 40000, 'box'),
('Packer', 'packer', 100000, 'haul'),
('Phantom', 'phantom', 105000, 'haul'),
('Phantom Custom', 'phantom3', 110000, 'haul'),
('Pounder', 'pounder', 55000, 'box'),
('Pounder 2', 'pounder2', 55000, 'box');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `truck_categories`
--

CREATE TABLE `truck_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `truck_categories`
--

INSERT INTO `truck_categories` (`name`, `label`) VALUES
('box', 'LKW'),
('haul', 'Sattelschlepper');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle --SUV + Geländewagen-- `vans`
--

CREATE TABLE `vans` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `vans`
--

INSERT INTO `vans` (`name`, `model`, `price`, `category`) VALUES
('Youga', ' youga', 59790, 'van'),
('Youga 2', ' youga2', 67890, 'van'),
('Baller LE LWB', 'baller4', 72490, 'suvs'),
('Bf Injection', 'bfinjection', 79790, 'offroad'),
('Bifta', 'bifta', 110790, 'offroad'),
('Bison', 'bison', 132790, 'van'),
('Beejay XL', 'bjxl', 27890, 'suvs'),
('Blazer', 'blazer', 35790, 'offroad'),
('Bobcat XL', 'bobcatxl', 89790, 'van'),
('Bodhi', 'bodhi2', 29790, 'offroad'),
('Brawler', 'brawler', 189790, 'offroad'),
('Burrito 3', 'burrito3', 69790, 'van'),
('Camper', 'camper', 110790, 'van'),
('Cavalcade', 'cavalcade2', 27900, 'suvs'),
('Contender', 'contender', 67590, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 32590, 'suvs'),
('Dubsta 6x6', 'dubsta3', 225790, 'offroad'),
('Fathom FQ2', 'fq2', 86890, 'suvs'),
('Freecrawler', 'freecrawler', 189790, 'offroad'),
('Grabger', 'granger', 37290, 'suvs'),
('Gresley', 'gresley', 62490, 'suvs'),
('Guardian', 'guardian', 45000, 'offroad'),
('Habanero', 'habanero', 66890, 'suvs'),
('Huntley S', 'huntley', 61890, 'suvs'),
('Kalahari', 'kalahari', 62790, 'offroad'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Landstalker', 'landstalker', 42790, 'suvs'),
('Mesa', 'mesa', 61990, 'suvs'),
('Mesa Trail', 'mesa3', 175790, 'suvs'),
('Moonbeam Custom', 'moonbeam2', 72890, 'van'),
('Paradise', 'paradise', 24790, 'van'),
('Patriot', 'patriot', 102490, 'suvs'),
('Radius', 'radi', 61890, 'suvs'),
('Rancher XL', 'rancherxl', 119790, 'offroad'),
('Rebel', 'rebel2', 109990, 'offroad'),
('Riata', 'riata', 109990, 'offroad'),
('Rocoto', 'rocoto', 60890, 'suvs'),
('Rumpo 3', 'rumpo3', 81780, 'van'),
('Sadler', 'sadler', 72790, 'offroad'),
('Sandking', 'sandking', 187990, 'offroad'),
('Seminole', 'seminole', 34590, 'suvs'),
('Serrano', 'serrano', 35290, 'suvs'),
('Speedo', 'speedo', 67490, 'van'),
('Surfer', 'surfer', 69790, 'van'),
('Toros', 'toros', 42890, 'suvs'),
('XLS', 'xls', 42890, 'suvs');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `van_categories`
--

CREATE TABLE `van_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `van_categories`
--

INSERT INTO `van_categories` (`name`, `label`) VALUES
('offroad', 'Geländewagen'),
('suvs', 'SUV'),
('van', 'Vans');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `aircraft_categories`
--
ALTER TABLE `aircraft_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `bike_categories`
--
ALTER TABLE `bike_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `limos`
--
ALTER TABLE `limos`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `limo_categories`
--
ALTER TABLE `limo_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `luxus`
--
ALTER TABLE `luxus`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `luxu_categories`
--
ALTER TABLE `luxu_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `musels`
--
ALTER TABLE `musels`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `musel_categories`
--
ALTER TABLE `musel_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `supers`
--
ALTER TABLE `supers`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `super_categories`
--
ALTER TABLE `super_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `truck_categories`
--
ALTER TABLE `truck_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `vans`
--
ALTER TABLE `vans`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `van_categories`
--
ALTER TABLE `van_categories`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
