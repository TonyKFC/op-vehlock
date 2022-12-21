CREATE TABLE IF NOT EXISTS `op-vehkeys` (
  `plate` varchar(50) NOT NULL,
  `identifier` varchar(255) NULL,
  `key_combo` varchar(50) NULL,
  `jobs` longtext NULL,
  KEY `identifier` (`identifier`),
  KEY `key_combo` (`key_combo`),
  KEY `plate` (`plate`),
  KEY `jobs` (`jobs`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `op-vehlock` (
  `plate` varchar(50) NOT NULL,
  `state` enum('true','false') NOT NULL DEFAULT 'true',
  PRIMARY KEY (`plate`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
