
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `d_channel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `d_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_dungeon_data` (
  `kind_name` varchar(20) NOT NULL DEFAULT '',
  `dungeon_name` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ch_dungeon_data` VALUES ('`[Alfhlyra]`','<4::channel_info_dname_4>'),('`[ancient]`','<4::channel_info_dname_8>'),('`[Antwer]`','<4::channel_info_dname_11>'),('`[behemoth]`','<4::channel_info_dname_3>'),('`[deathtower]`','<4::channel_info_dname_7>'),('`[elven_guard]`','<4::channel_info_dname_0>'),('`[Fortress]`','<4::channel_info_dname_9>'),('`[granfloris]`','<4::channel_info_dname_1>'),('`[impossible]`','<4::channel_info_dname_12>'),('`[north_myre]`','<4::channel_info_dname_5>'),('`[seatrain]`','<4::channel_info_dname_13>'),('`[sky_catle]`','<4::channel_info_dname_2>'),('`[stormpass]`','<4::channel_info_dname_6>'),('`[dragonroad]`','<4::channel_info_dname_14>'),('`[timedoor]`','<4::channel_info_dname_15>'),('`[powerstation]`','<4::channel_info_dname_16>');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_dungeon_data_old` (
  `kind_name` varchar(20) CHARACTER SET sjis NOT NULL DEFAULT '',
  `dungeon_name` varchar(30) CHARACTER SET sjis NOT NULL DEFAULT '',
  PRIMARY KEY (`kind_name`,`dungeon_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ch_dungeon_data_old` VALUES ('`[Alfhlyra]`','<4::channel_info_dname_4>'),('`[behemoth]`','<4::channel_info_dname_3>'),('`[elven_guard]`','<4::channel_info_dname_0>'),('`[granfloris]`','<4::channel_info_dname_1>'),('`[north_myre]`','<4::channel_info_dname_5>'),('`[sky_catle]`','<4::channel_info_dname_2>');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_dungeon_list` (
  `kind_name` varchar(20) NOT NULL DEFAULT '',
  `dungeon_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ch_dungeon_list` VALUES ('`[elven_guard]`',1),('`[elven_guard]`',2),('`[granfloris]`',3),('`[granfloris]`',4),('`[granfloris]`',5),('`[granfloris]`',6),('`[granfloris]`',7),('`[granfloris]`',8),('`[granfloris]`',9),('`[sky_catle]`',11),('`[sky_catle]`',12),('`[sky_catle]`',13),('`[sky_catle]`',14),('`[sky_catle]`',15),('`[sky_catle]`',16),('`[sky_catle]`',17),('`[behemoth]`',21),('`[behemoth]`',22),('`[behemoth]`',23),('`[behemoth]`',24),('`[behemoth]`',25),('`[behemoth]`',26),('`[Alfhlyra]`',31),('`[Alfhlyra]`',32),('`[Fortress]`',110),('`[Alfhlyra]`',34),('`[north_myre]`',35),('`[north_myre]`',32),('`[north_myre]`',31),('`[north_myre]`',50),('`[granfloris]`',1000),('`[behemoth]`',27),('`[stormpass]`',40),('`[stormpass]`',41),('`[Alfhlyra]`',35),('`[Alfhlyra]`',36),('`[Alfhlyra]`',50),('`[Fortress]`',61),('`[north_myre]`',34),('`[north_myre]`',36),('`[Fortress]`',60),('`[Alfhlyra]`',37),('`[Alfhlyra]`',51),('`[north_myre]`',37),('`[north_myre]`',51),('`[stormpass]`',42),('`[stormpass]`',43),('`[stormpass]`',44),('`[stormpass]`',45),('`[Antwer]`',80),('`[Antwer]`',81),('`[Antwer]`',82),('`[granfloris]`',2),('`[granfloris]`',1),('`[stormpass]`',141),('`[behemoth]`',91),('`[ancient]`',1506),('`[deathtower]`',11000),('`[ancient]`',33),('`[ancient]`',1500),('`[ancient]`',1501),('`[ancient]`',1502),('`[Fortress]`',111),('`[Fortress]`',112),('`[seatrain]`',86),('`[seatrain]`',87),('`[seatrain]`',1504),('`[north_myre]`',52),('`[north_myre]`',53),('`[north_myre]`',1506),('`[Antwer]`',83),('`[Antwer]`',84),('`[Antwer]`',85),('`[Antwer]`',86),('`[Antwer]`',87),('`[Antwer]`',88),('`[Antwer]`',89),('`[behemoth]`',90),('`[stormpass]`',140),('`[seatrain]`',92),('`[seatrain]`',93),('`[impossible]`',62),('`[impossible]`',63),('`[impossible]`',64),('`[impossible]`',1500),('`[impossible]`',1501),('`[impossible]`',1502),('`[impossible]`',33),('`[ancient]`',1504),('`[timedoor]`',94),('`[powerstation]`',95);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_dungeon_list_old` (
  `kind_name` varchar(20) CHARACTER SET sjis NOT NULL DEFAULT '',
  `dungeon_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dungeon_id`),
  KEY `idx_kind_name` (`kind_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ch_dungeon_list_old` VALUES ('`[Alfhlyra]`',31),('`[Alfhlyra]`',32),('`[Alfhlyra]`',33),('`[Alfhlyra]`',34),('`[Alfhlyra]`',80),('`[Alfhlyra]`',1500),('`[behemoth]`',21),('`[behemoth]`',22),('`[behemoth]`',23),('`[behemoth]`',24),('`[behemoth]`',25),('`[behemoth]`',26),('`[elven_guard]`',1),('`[elven_guard]`',2),('`[granfloris]`',3),('`[granfloris]`',4),('`[granfloris]`',5),('`[granfloris]`',6),('`[granfloris]`',7),('`[granfloris]`',8),('`[granfloris]`',9),('`[north_myre]`',35),('`[north_myre]`',40),('`[north_myre]`',41),('`[north_myre]`',50),('`[sky_catle]`',11),('`[sky_catle]`',12),('`[sky_catle]`',13),('`[sky_catle]`',14),('`[sky_catle]`',15),('`[sky_catle]`',17);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_gc_info` (
  `group_name` varchar(20) NOT NULL DEFAULT '',
  `group_gc_no` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ch_gc_info` VALUES ('ruke','8000'),('hilder','7000'),('casillas','6000'),('siroco','4000'),('prey','5000'),('diregie','3000'),('cain','2000'),('first','100000'),('seria','9000'),('anton','10000');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_script_version` (
  `script_version` varchar(10) CHARACTER SET sjis NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ch_script_version` VALUES ('59');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_server_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_use` tinyint(4) NOT NULL DEFAULT '0',
  `channel_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `channel_name` varchar(30) NOT NULL DEFAULT '',
  `channel_kind` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `kind_name` varchar(20) NOT NULL DEFAULT '',
  `exp_rate` float NOT NULL DEFAULT '0',
  `exp_1` float NOT NULL DEFAULT '0',
  `exp_2` float NOT NULL DEFAULT '0',
  `exp_3` float NOT NULL DEFAULT '0',
  `exp_4` float NOT NULL DEFAULT '0',
  `exp_5` float NOT NULL DEFAULT '0',
  `exp_6` float NOT NULL DEFAULT '0',
  `exp_7` float NOT NULL DEFAULT '0',
  `exp_8` float NOT NULL DEFAULT '0',
  `exp_9` float NOT NULL DEFAULT '0',
  `exp_10` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `server_id` (`server_id`,`channel_number`) USING BTREE,
  KEY `idx_channel_number` (`channel_number`) USING BTREE,
  KEY `idx_is_use` (`is_use`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `ch_server_data` VALUES (1,1,1,1,'<4::channel_info_cname_508>',11,'deathtower',0,0,0,0,0,0,0,0,0,0,0),(2,1,1,6,'<4::channel_info_cname_6>',3,'none',0,0,0,0,0,0,0,0,0,0,0),(3,1,1,7,'<4::channel_info_cname_7>',3,'none',0,0,0,0,0,0,0,0,0,0,0),(4,1,1,11,'<4::channel_info_cname_11>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(5,1,1,12,'<4::channel_info_cname_12>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(6,1,1,13,'<4::channel_info_cname_13>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(7,1,1,14,'<4::channel_info_cname_14>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(8,1,1,15,'<4::channel_info_cname_15>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(9,1,1,16,'<4::channel_info_cname_21>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(10,1,1,17,'<4::channel_info_cname_22>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(11,1,1,18,'<4::channel_info_cname_23>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(12,1,1,19,'<4::channel_info_cname_24>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(13,1,1,20,'<4::channel_info_cname_31>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(14,1,1,21,'<4::channel_info_cname_32>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(15,1,1,22,'<4::channel_info_cname_33>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(16,1,1,23,'<4::channel_info_cname_34>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(17,1,1,24,'<4::channel_info_cname_41>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(18,1,1,25,'<4::channel_info_cname_42>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(19,1,1,26,'<4::channel_info_cname_43>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(20,1,1,27,'<4::channel_info_cname_61>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(21,1,1,28,'<4::channel_info_cname_62>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(22,1,1,29,'<4::channel_info_cname_63>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(23,1,1,30,'<4::channel_info_cname_71>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(24,1,1,31,'<4::channel_info_cname_72>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(25,1,1,32,'<4::channel_info_cname_73>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(26,1,1,33,'<4::channel_info_cname_51>',0,'north_myre',2,0,0,0,0,0,0,0,0,0,0),(27,1,1,34,'<4::channel_info_cname_52>',0,'north_myre',2,0,0,0,0,0,0,0,0,0,0),(28,1,1,35,'<4::channel_info_cname_91>',0,'Antwer',2,0,0,0,0,0,0,0,0,0,0),(29,1,1,36,'<4::channel_info_cname_92>',0,'Antwer',2,0,0,0,0,0,0,0,0,0,0),(30,1,1,37,'<4::channel_info_cname_111>',0,'seatrain',2,0,0,0,0,0,0,0,0,0,0),(31,1,1,38,'<4::channel_info_cname_112>',0,'seatrain',2,0,0,0,0,0,0,0,0,0,0),(32,1,1,39,'<4::channel_info_cname_121>',0,'ancient',2,0,0,0,0,0,0,0,0,0,0),(33,2,1,1,'<4::channel_info_cname_508>',11,'deathtower',0,0,0,0,0,0,0,0,0,0,0),(34,2,1,6,'<4::channel_info_cname_6>',3,'none',0,0,0,0,0,0,0,0,0,0,0),(35,2,1,7,'<4::channel_info_cname_7>',3,'none',0,0,0,0,0,0,0,0,0,0,0),(36,2,1,11,'<4::channel_info_cname_11>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(37,2,1,12,'<4::channel_info_cname_12>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(38,2,1,13,'<4::channel_info_cname_13>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(39,2,1,14,'<4::channel_info_cname_14>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(40,2,1,15,'<4::channel_info_cname_15>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(41,2,1,16,'<4::channel_info_cname_21>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(42,2,1,17,'<4::channel_info_cname_22>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(43,2,1,18,'<4::channel_info_cname_23>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(44,2,1,19,'<4::channel_info_cname_24>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(45,2,1,20,'<4::channel_info_cname_31>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(46,2,1,21,'<4::channel_info_cname_32>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(47,2,1,22,'<4::channel_info_cname_33>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(48,2,1,23,'<4::channel_info_cname_34>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(49,2,1,24,'<4::channel_info_cname_41>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(50,2,1,25,'<4::channel_info_cname_42>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(51,2,1,26,'<4::channel_info_cname_43>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(52,2,1,27,'<4::channel_info_cname_61>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(53,2,1,28,'<4::channel_info_cname_62>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(54,2,1,29,'<4::channel_info_cname_63>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(55,2,1,30,'<4::channel_info_cname_71>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(56,2,1,31,'<4::channel_info_cname_72>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(57,2,1,32,'<4::channel_info_cname_73>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(58,2,1,33,'<4::channel_info_cname_51>',0,'north_myre',2,0,0,0,0,0,0,0,0,0,0),(59,2,1,34,'<4::channel_info_cname_52>',0,'north_myre',2,0,0,0,0,0,0,0,0,0,0),(60,2,1,35,'<4::channel_info_cname_91>',0,'Antwer',2,0,0,0,0,0,0,0,0,0,0),(61,2,1,36,'<4::channel_info_cname_92>',0,'Antwer',2,0,0,0,0,0,0,0,0,0,0),(62,2,1,37,'<4::channel_info_cname_111>',0,'seatrain',2,0,0,0,0,0,0,0,0,0,0),(63,2,1,38,'<4::channel_info_cname_112>',0,'seatrain',2,0,0,0,0,0,0,0,0,0,0),(64,2,1,39,'<4::channel_info_cname_121>',0,'ancient',2,0,0,0,0,0,0,0,0,0,0),(65,3,1,1,'<4::channel_info_cname_508>',11,'deathtower',0,0,0,0,0,0,0,0,0,0,0),(66,3,1,6,'<4::channel_info_cname_6>',3,'none',0,0,0,0,0,0,0,0,0,0,0),(67,3,1,7,'<4::channel_info_cname_7>',3,'none',0,0,0,0,0,0,0,0,0,0,0),(68,3,1,11,'<4::channel_info_cname_11>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(69,3,1,12,'<4::channel_info_cname_12>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(70,3,1,13,'<4::channel_info_cname_13>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(71,3,1,14,'<4::channel_info_cname_14>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(72,3,1,15,'<4::channel_info_cname_15>',0,'granfloris',5,0,0,0,0,0,0,0,0,0,0),(73,3,1,16,'<4::channel_info_cname_21>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(74,3,1,17,'<4::channel_info_cname_22>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(75,3,1,18,'<4::channel_info_cname_23>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(76,3,1,19,'<4::channel_info_cname_24>',0,'sky_catle',3,0,0,0,0,0,0,0,0,0,0),(77,3,1,20,'<4::channel_info_cname_31>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(78,3,1,21,'<4::channel_info_cname_32>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(79,3,1,22,'<4::channel_info_cname_33>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(80,3,1,23,'<4::channel_info_cname_34>',0,'behemoth',2,0,0,0,0,0,0,0,0,0,0),(81,3,1,24,'<4::channel_info_cname_41>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(82,3,1,25,'<4::channel_info_cname_42>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(83,3,1,26,'<4::channel_info_cname_43>',0,'Alfhlyra',2,0,0,0,0,0,0,0,0,0,0),(84,3,1,27,'<4::channel_info_cname_61>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(85,3,1,28,'<4::channel_info_cname_62>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(86,3,1,29,'<4::channel_info_cname_63>',0,'stormpass',2,0,0,0,0,0,0,0,0,0,0),(87,3,1,30,'<4::channel_info_cname_71>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(88,3,1,31,'<4::channel_info_cname_72>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(89,3,1,32,'<4::channel_info_cname_73>',0,'Fortress',2,0,0,0,0,0,0,0,0,0,0),(90,3,1,33,'<4::channel_info_cname_51>',0,'north_myre',2,0,0,0,0,0,0,0,0,0,0),(91,3,1,34,'<4::channel_info_cname_52>',0,'north_myre',2,0,0,0,0,0,0,0,0,0,0),(92,3,1,35,'<4::channel_info_cname_91>',0,'Antwer',2,0,0,0,0,0,0,0,0,0,0),(93,3,1,36,'<4::channel_info_cname_92>',0,'Antwer',2,0,0,0,0,0,0,0,0,0,0),(94,3,1,37,'<4::channel_info_cname_111>',0,'seatrain',2,0,0,0,0,0,0,0,0,0,0),(95,3,1,38,'<4::channel_info_cname_112>',0,'seatrain',2,0,0,0,0,0,0,0,0,0,0),(96,3,1,39,'<4::channel_info_cname_121>',0,'ancient',2,0,0,0,0,0,0,0,0,0,0),(97,3,1,52,'<4::channel_info_cname_505>',13,'none',0,0,0,0,0,0,0,0,0,0,0),(98,3,1,53,'<4::channel_info_cname_501>',8,'none',0,0,0,0,0,0,0,0,0,0,0),(99,3,1,54,'<4::channel_info_cname_502>',8,'none',0,0,0,0,0,0,0,0,0,0,0),(100,3,1,55,'<4::channel_info_cname_503>',8,'none',0,0,0,0,0,0,0,0,0,0,0),(101,3,1,56,'<4::channel_info_cname_504>',8,'none',0,0,0,0,0,0,0,0,0,0,0);
