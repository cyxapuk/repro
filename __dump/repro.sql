-- --------------------------------------------------------
-- Хост:                         92.53.125.77
-- Версия сервера:               5.1.58 - Gentoo Linux percona-server-5.1.58_p129
-- ОС Сервера:                   pc-linux-gnu
-- HeidiSQL Версия:              8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица cyxapuk09_repro.module_catalog
CREATE TABLE IF NOT EXISTS `module_catalog` (
  `catalog_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `catalog_title` char(255) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_category
CREATE TABLE IF NOT EXISTS `module_catalog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` char(255) DEFAULT NULL,
  `category_system_title` char(255) DEFAULT NULL,
  `category_sort` tinyint(4) NOT NULL DEFAULT '0',
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  `catalog_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  KEY `index1` (`catalog_id`,`category_parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_category_index
CREATE TABLE IF NOT EXISTS `module_catalog_category_index` (
  `category_id` bigint(20) NOT NULL,
  `catalog_id` tinyint(4) NOT NULL DEFAULT '0',
  `category_parent_id` bigint(20) NOT NULL DEFAULT '0',
  `category_title` varchar(255) NOT NULL,
  `category` longtext,
  `category_sort` varchar(255) NOT NULL DEFAULT '0',
  UNIQUE KEY `category_id` (`category_id`),
  UNIQUE KEY `UK_module_catalog_category_ind` (`catalog_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_category_propertie
CREATE TABLE IF NOT EXISTS `module_catalog_category_propertie` (
  `propertie_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `propertie_title` char(255) DEFAULT NULL,
  `propertie_system_title` char(255) NOT NULL,
  `propertie_parent_id` bigint(20) NOT NULL DEFAULT '0',
  `propertie_sort` int(11) DEFAULT NULL,
  `type_id` tinyint(4) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `catalog_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`propertie_id`),
  KEY `index1` (`type_id`),
  KEY `index2` (`category_id`),
  KEY `index3` (`category_id`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_category_propertie_array
CREATE TABLE IF NOT EXISTS `module_catalog_category_propertie_array` (
  `array_id` int(11) NOT NULL AUTO_INCREMENT,
  `array_value` char(255) DEFAULT NULL,
  `propertie_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`array_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_category_propertie_value
CREATE TABLE IF NOT EXISTS `module_catalog_category_propertie_value` (
  `value_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `value_content` text NOT NULL,
  `propertie_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_object
CREATE TABLE IF NOT EXISTS `module_catalog_object` (
  `object_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_title` char(255) DEFAULT NULL,
  `object_system_title` char(255) DEFAULT NULL,
  `object_sort` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `catalog_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `index1` (`object_id`,`catalog_id`,`category_id`),
  KEY `index2` (`object_id`,`category_id`),
  KEY `index3` (`category_id`,`catalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_object_index
CREATE TABLE IF NOT EXISTS `module_catalog_object_index` (
  `object_id` bigint(20) NOT NULL,
  `catalog_id` tinyint(4) NOT NULL DEFAULT '0',
  `category_id` bigint(20) NOT NULL DEFAULT '0',
  `object_title` varchar(255) NOT NULL,
  `object` longtext,
  `object_sort` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `object_id` (`object_id`),
  UNIQUE KEY `UK_module_catalog_object_index` (`catalog_id`,`category_id`,`object_id`),
  UNIQUE KEY `UK_module_catalog_object_inde2` (`category_id`,`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_object_propertie
CREATE TABLE IF NOT EXISTS `module_catalog_object_propertie` (
  `propertie_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `propertie_title` varchar(255) DEFAULT NULL,
  `propertie_system_title` varchar(255) DEFAULT NULL,
  `propertie_parent_id` bigint(20) NOT NULL DEFAULT '0',
  `propertie_sort` int(11) DEFAULT NULL,
  `type_id` tinyint(4) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `catalog_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`propertie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_object_propertie_array
CREATE TABLE IF NOT EXISTS `module_catalog_object_propertie_array` (
  `array_id` int(11) NOT NULL AUTO_INCREMENT,
  `array_value` char(255) DEFAULT NULL,
  `propertie_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`array_id`),
  KEY `index1` (`propertie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_object_propertie_value
CREATE TABLE IF NOT EXISTS `module_catalog_object_propertie_value` (
  `value_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `value_content` text NOT NULL,
  `propertie_id` bigint(20) NOT NULL DEFAULT '0',
  `object_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.module_catalog_type
CREATE TABLE IF NOT EXISTS `module_catalog_type` (
  `type_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `type_title` char(255) DEFAULT NULL,
  `type_array` tinyint(4) NOT NULL DEFAULT '0',
  `type_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=769;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_language
CREATE TABLE IF NOT EXISTS `system_language` (
  `Id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Abr` varchar(255) DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '1',
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_log
CREATE TABLE IF NOT EXISTS `system_log` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Data` text NOT NULL,
  `Ip` varchar(255) NOT NULL,
  `Errors` text NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_menu
CREATE TABLE IF NOT EXISTS `system_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_menu_page
CREATE TABLE IF NOT EXISTS `system_menu_page` (
  `MenuId` int(11) NOT NULL,
  `PageId` bigint(20) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_page
CREATE TABLE IF NOT EXISTS `system_page` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Meta` text,
  `Alias` varchar(255) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '0',
  `NameML` text,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ParentId` bigint(20) NOT NULL DEFAULT '0',
  `TemplateId` int(11) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_page_content
CREATE TABLE IF NOT EXISTS `system_page_content` (
  `PageId` bigint(20) NOT NULL DEFAULT '0',
  `Content` longblob,
  UNIQUE KEY `PageId` (`PageId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_session
CREATE TABLE IF NOT EXISTS `system_session` (
  `session_id` char(255) NOT NULL,
  `session_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `session_last` datetime DEFAULT NULL,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_site
CREATE TABLE IF NOT EXISTS `system_site` (
  `Name` varchar(255) DEFAULT NULL,
  `Meta` text,
  `NameML` text,
  `Email` varchar(255) DEFAULT NULL,
  `Alias` tinyint(4) NOT NULL DEFAULT '0',
  `Status` tinyint(4) NOT NULL DEFAULT '0',
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PageId` int(11) NOT NULL DEFAULT '0',
  `LangId` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_template
CREATE TABLE IF NOT EXISTS `system_template` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `Time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Экспортируемые данные не выделены.


-- Дамп структуры для таблица cyxapuk09_repro.system_user
CREATE TABLE IF NOT EXISTS `system_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Login` char(255) NOT NULL,
  `Password` char(255) NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT '0',
  `Superadmin` tinyint(4) NOT NULL DEFAULT '0',
  `Email` varchar(255) NOT NULL,
  `MessengerTypeId` tinyint(4) NOT NULL,
  `MessengerContact` varchar(255) NOT NULL,
  `Notifications` tinyint(4) NOT NULL DEFAULT '1',
  `Hash` varchar(255) NOT NULL,
  `Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы cyxapuk09_repro.system_user: 2 rows
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` (`Id`, `Login`, `Password`, `Status`, `Superadmin`, `Email`, `MessengerTypeId`, `MessengerContact`, `Notifications`, `Hash`, `Created`) VALUES
	(1, 'cyxapuk', '2300938', 1, 1, 'cyxapuk.ru@gmail.com', 1, '117045076', 1, '', '2013-02-28 21:31:43'),
	(2, 'admin', 'gtgtcLA3', 1, 0, 'admin@kokon.ru', 1, '', 0, '', '2013-04-23 09:33:46');
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
