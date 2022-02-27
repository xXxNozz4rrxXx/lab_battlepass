CREATE TABLE IF NOT EXISTS `lab_battlepass` (
  `identifier` varchar(255) NULL DEFAULT '',
  `level` int(3) NOT NULL DEFAULT '0',
  `xp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;