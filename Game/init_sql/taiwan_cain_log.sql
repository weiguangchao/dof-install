
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_cain_log` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_cain_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_lev_status` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` tinyint(4) NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  `occ_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`lev`),
  KEY `idx_channel_no` (`channel_no`) USING BTREE,
  KEY `idx_lev` (`lev`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `channel_lev_status` VALUES ('2020-09-03 14:04:19',11,1,0),('2020-09-03 14:04:19',11,2,0),('2020-09-03 14:04:19',11,3,0),('2020-09-03 14:04:19',11,4,0),('2020-09-03 14:04:19',11,5,0),('2020-09-03 14:04:19',11,6,0),('2020-09-03 14:04:19',11,7,0),('2020-09-03 14:04:19',11,8,0),('2020-09-03 14:04:19',11,9,0),('2020-09-03 14:04:19',11,10,0),('2020-09-03 14:04:19',11,11,0),('2020-09-03 14:04:19',11,12,0),('2020-09-03 14:04:19',11,13,0),('2020-09-03 14:04:19',11,14,0),('2020-09-03 14:04:19',11,15,0),('2020-09-03 14:04:19',11,16,0),('2020-09-03 14:04:19',11,17,0),('2020-09-03 14:04:19',11,18,0),('2020-09-03 14:04:19',11,19,0),('2020-09-03 14:04:19',11,20,0),('2020-09-03 14:04:19',11,21,0),('2020-09-03 14:04:19',11,22,0),('2020-09-03 14:04:19',11,23,0),('2020-09-03 14:04:19',11,24,0),('2020-09-03 14:04:19',11,25,0),('2020-09-03 14:04:19',11,26,0),('2020-09-03 14:04:19',11,27,1),('2020-09-03 14:04:19',11,28,0),('2020-09-03 14:04:19',11,29,0),('2020-09-03 14:04:19',11,30,0),('2020-09-03 14:04:19',11,31,0),('2020-09-03 14:04:19',11,32,0),('2020-09-03 14:04:19',11,33,0),('2020-09-03 14:04:19',11,34,0),('2020-09-03 14:04:19',11,35,0),('2020-09-03 14:04:19',11,36,0),('2020-09-03 14:04:19',11,37,0),('2020-09-03 14:04:19',11,38,0),('2020-09-03 14:04:19',11,39,0),('2020-09-03 14:04:19',11,40,0),('2020-09-03 14:04:19',11,41,0),('2020-09-03 14:04:19',11,42,0),('2020-09-03 14:04:19',11,43,0),('2020-09-03 14:04:19',11,44,0),('2020-09-03 14:04:19',11,45,0),('2020-09-03 14:04:19',11,46,0),('2020-09-03 14:04:19',11,47,0),('2020-09-03 14:04:19',11,48,0),('2020-09-03 14:04:19',11,49,0),('2020-09-03 14:04:19',11,50,0),('2020-09-03 14:04:19',11,51,0),('2020-09-03 14:04:19',11,52,0),('2020-09-03 14:04:19',11,53,0),('2020-09-03 14:04:19',11,54,0),('2020-09-03 14:04:19',11,55,0),('2020-09-03 14:04:19',11,56,0),('2020-09-03 14:04:19',11,57,0),('2020-09-03 14:04:19',11,58,0),('2020-09-03 14:04:19',11,59,0),('2020-09-03 14:04:19',11,60,0),('2020-09-03 14:04:19',11,61,0),('2020-09-03 14:04:19',11,62,0),('2020-09-03 14:04:19',11,63,0),('2020-09-03 14:04:19',11,64,0),('2020-09-03 14:04:19',11,65,0),('2020-09-03 14:04:19',11,66,0),('2020-09-03 14:04:19',11,67,0),('2020-09-03 14:04:19',11,68,0),('2020-09-03 14:04:19',11,69,0),('2020-09-03 14:04:19',11,70,0),('2020-09-03 16:59:43',11,1,0),('2020-09-03 16:59:43',11,2,0),('2020-09-03 16:59:43',11,3,0),('2020-09-03 16:59:43',11,4,0),('2020-09-03 16:59:43',11,5,0),('2020-09-03 16:59:43',11,6,0),('2020-09-03 16:59:43',11,7,0),('2020-09-03 16:59:43',11,8,0),('2020-09-03 16:59:43',11,9,0),('2020-09-03 16:59:43',11,10,0),('2020-09-03 16:59:43',11,11,0),('2020-09-03 16:59:43',11,12,0),('2020-09-03 16:59:43',11,13,0),('2020-09-03 16:59:43',11,14,0),('2020-09-03 16:59:43',11,15,0),('2020-09-03 16:59:43',11,16,0),('2020-09-03 16:59:43',11,17,0),('2020-09-03 16:59:43',11,18,0),('2020-09-03 16:59:43',11,19,0),('2020-09-03 16:59:43',11,20,0),('2020-09-03 16:59:43',11,21,0),('2020-09-03 16:59:43',11,22,0),('2020-09-03 16:59:43',11,23,0),('2020-09-03 16:59:43',11,24,0),('2020-09-03 16:59:43',11,25,0),('2020-09-03 16:59:43',11,26,0),('2020-09-03 16:59:43',11,27,0),('2020-09-03 16:59:43',11,28,0),('2020-09-03 16:59:43',11,29,0),('2020-09-03 16:59:43',11,30,0),('2020-09-03 16:59:43',11,31,0),('2020-09-03 16:59:43',11,32,0),('2020-09-03 16:59:43',11,33,0),('2020-09-03 16:59:43',11,34,0),('2020-09-03 16:59:43',11,35,0),('2020-09-03 16:59:43',11,36,0),('2020-09-03 16:59:43',11,37,0),('2020-09-03 16:59:43',11,38,0),('2020-09-03 16:59:43',11,39,0),('2020-09-03 16:59:43',11,40,0),('2020-09-03 16:59:43',11,41,0),('2020-09-03 16:59:43',11,42,0),('2020-09-03 16:59:43',11,43,0),('2020-09-03 16:59:43',11,44,0),('2020-09-03 16:59:43',11,45,0),('2020-09-03 16:59:43',11,46,0),('2020-09-03 16:59:43',11,47,0),('2020-09-03 16:59:43',11,48,0),('2020-09-03 16:59:43',11,49,0),('2020-09-03 16:59:43',11,50,0),('2020-09-03 16:59:43',11,51,0),('2020-09-03 16:59:43',11,52,0),('2020-09-03 16:59:43',11,53,0),('2020-09-03 16:59:43',11,54,0),('2020-09-03 16:59:43',11,55,0),('2020-09-03 16:59:43',11,56,0),('2020-09-03 16:59:43',11,57,0),('2020-09-03 16:59:43',11,58,0),('2020-09-03 16:59:43',11,59,0),('2020-09-03 16:59:43',11,60,0),('2020-09-03 16:59:43',11,61,0),('2020-09-03 16:59:43',11,62,0),('2020-09-03 16:59:43',11,63,0),('2020-09-03 16:59:43',11,64,0),('2020-09-03 16:59:43',11,65,0),('2020-09-03 16:59:43',11,66,0),('2020-09-03 16:59:43',11,67,0),('2020-09-03 16:59:43',11,68,0),('2020-09-03 16:59:43',11,69,0),('2020-09-03 16:59:43',11,70,0),('2020-09-03 17:04:59',11,1,0),('2020-09-03 17:04:59',11,2,0),('2020-09-03 17:04:59',11,3,0),('2020-09-03 17:04:59',11,4,0),('2020-09-03 17:04:59',11,5,0),('2020-09-03 17:04:59',11,6,0),('2020-09-03 17:04:59',11,7,0),('2020-09-03 17:04:59',11,8,0),('2020-09-03 17:04:59',11,9,0),('2020-09-03 17:04:59',11,10,0),('2020-09-03 17:04:59',11,11,0),('2020-09-03 17:04:59',11,12,0),('2020-09-03 17:04:59',11,13,0),('2020-09-03 17:04:59',11,14,0),('2020-09-03 17:04:59',11,15,0),('2020-09-03 17:04:59',11,16,0),('2020-09-03 17:04:59',11,17,0),('2020-09-03 17:04:59',11,18,0),('2020-09-03 17:04:59',11,19,0),('2020-09-03 17:04:59',11,20,0),('2020-09-03 17:04:59',11,21,0),('2020-09-03 17:04:59',11,22,0),('2020-09-03 17:04:59',11,23,0),('2020-09-03 17:04:59',11,24,0),('2020-09-03 17:04:59',11,25,0),('2020-09-03 17:04:59',11,26,0),('2020-09-03 17:04:59',11,27,0),('2020-09-03 17:04:59',11,28,0),('2020-09-03 17:04:59',11,29,0),('2020-09-03 17:04:59',11,30,0),('2020-09-03 17:04:59',11,31,0),('2020-09-03 17:04:59',11,32,0),('2020-09-03 17:04:59',11,33,0),('2020-09-03 17:04:59',11,34,0),('2020-09-03 17:04:59',11,35,0),('2020-09-03 17:04:59',11,36,0),('2020-09-03 17:04:59',11,37,0),('2020-09-03 17:04:59',11,38,0),('2020-09-03 17:04:59',11,39,0),('2020-09-03 17:04:59',11,40,0),('2020-09-03 17:04:59',11,41,0),('2020-09-03 17:04:59',11,42,0),('2020-09-03 17:04:59',11,43,0),('2020-09-03 17:04:59',11,44,0),('2020-09-03 17:04:59',11,45,0),('2020-09-03 17:04:59',11,46,0),('2020-09-03 17:04:59',11,47,0),('2020-09-03 17:04:59',11,48,0),('2020-09-03 17:04:59',11,49,0),('2020-09-03 17:04:59',11,50,0),('2020-09-03 17:04:59',11,51,0),('2020-09-03 17:04:59',11,52,0),('2020-09-03 17:04:59',11,53,0),('2020-09-03 17:04:59',11,54,0),('2020-09-03 17:04:59',11,55,0),('2020-09-03 17:04:59',11,56,0),('2020-09-03 17:04:59',11,57,0),('2020-09-03 17:04:59',11,58,0),('2020-09-03 17:04:59',11,59,0),('2020-09-03 17:04:59',11,60,0),('2020-09-03 17:04:59',11,61,0),('2020-09-03 17:04:59',11,62,0),('2020-09-03 17:04:59',11,63,0),('2020-09-03 17:04:59',11,64,0),('2020-09-03 17:04:59',11,65,0),('2020-09-03 17:04:59',11,66,0),('2020-09-03 17:04:59',11,67,0),('2020-09-03 17:04:59',11,68,0),('2020-09-03 17:04:59',11,69,0),('2020-09-03 17:04:59',11,70,0),('2020-09-03 21:09:12',11,1,0),('2020-09-03 21:09:12',11,2,0),('2020-09-03 21:09:12',11,3,0),('2020-09-03 21:09:12',11,4,0),('2020-09-03 21:09:12',11,5,0),('2020-09-03 21:09:12',11,6,0),('2020-09-03 21:09:12',11,7,0),('2020-09-03 21:09:12',11,8,0),('2020-09-03 21:09:12',11,9,0),('2020-09-03 21:09:12',11,10,0),('2020-09-03 21:09:12',11,11,0),('2020-09-03 21:09:12',11,12,0),('2020-09-03 21:09:12',11,13,0),('2020-09-03 21:09:12',11,14,0),('2020-09-03 21:09:12',11,15,0),('2020-09-03 21:09:12',11,16,0),('2020-09-03 21:09:12',11,17,0),('2020-09-03 21:09:12',11,18,0),('2020-09-03 21:09:12',11,19,0),('2020-09-03 21:09:12',11,20,0),('2020-09-03 21:09:12',11,21,0),('2020-09-03 21:09:12',11,22,0),('2020-09-03 21:09:12',11,23,0),('2020-09-03 21:09:12',11,24,0),('2020-09-03 21:09:12',11,25,0),('2020-09-03 21:09:12',11,26,0),('2020-09-03 21:09:12',11,27,0),('2020-09-03 21:09:12',11,28,0),('2020-09-03 21:09:12',11,29,0),('2020-09-03 21:09:12',11,30,0),('2020-09-03 21:09:12',11,31,0),('2020-09-03 21:09:12',11,32,0),('2020-09-03 21:09:12',11,33,0),('2020-09-03 21:09:12',11,34,0),('2020-09-03 21:09:12',11,35,0),('2020-09-03 21:09:12',11,36,0),('2020-09-03 21:09:12',11,37,0),('2020-09-03 21:09:12',11,38,0),('2020-09-03 21:09:12',11,39,0),('2020-09-03 21:09:12',11,40,0),('2020-09-03 21:09:12',11,41,0),('2020-09-03 21:09:12',11,42,0),('2020-09-03 21:09:12',11,43,0),('2020-09-03 21:09:12',11,44,0),('2020-09-03 21:09:12',11,45,0),('2020-09-03 21:09:12',11,46,0),('2020-09-03 21:09:12',11,47,0),('2020-09-03 21:09:12',11,48,0),('2020-09-03 21:09:12',11,49,0),('2020-09-03 21:09:12',11,50,0),('2020-09-03 21:09:12',11,51,0),('2020-09-03 21:09:12',11,52,0),('2020-09-03 21:09:12',11,53,0),('2020-09-03 21:09:12',11,54,0),('2020-09-03 21:09:12',11,55,0),('2020-09-03 21:09:12',11,56,0),('2020-09-03 21:09:12',11,57,0),('2020-09-03 21:09:12',11,58,0),('2020-09-03 21:09:12',11,59,0),('2020-09-03 21:09:12',11,60,0),('2020-09-03 21:09:12',11,61,0),('2020-09-03 21:09:12',11,62,0),('2020-09-03 21:09:12',11,63,0),('2020-09-03 21:09:12',11,64,0),('2020-09-03 21:09:12',11,65,0),('2020-09-03 21:09:12',11,66,0),('2020-09-03 21:09:12',11,67,0),('2020-09-03 21:09:12',11,68,0),('2020-09-03 21:09:12',11,69,0),('2020-09-03 21:09:12',11,70,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_down` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `occ_count` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concurrent_user_status` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `player_status` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon_index` int(11) NOT NULL DEFAULT '0',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `occ_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`player_status`,`dungeon_index`,`channel_no`),
  KEY `idx_player_status` (`player_status`) USING BTREE,
  KEY `idx_dungeon_index` (`dungeon_index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `concurrent_user_status` VALUES ('2020-09-03 12:30:00',1,0,3011,1),('2020-09-03 13:30:00',1,0,3011,1),('2020-09-03 14:00:00',1,0,3011,1),('2020-09-03 14:00:00',0,0,3011,1),('2020-09-03 14:30:00',0,0,3011,1),('2020-09-03 15:00:00',0,0,3011,1),('2020-09-03 15:30:00',0,0,3011,1),('2020-09-03 23:30:00',0,0,3011,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crash_down_by_dungeon` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dungeon_index` int(11) NOT NULL DEFAULT '0',
  `down_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`dungeon_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crash_down_by_packet` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `packet_index` smallint(5) NOT NULL DEFAULT '0',
  `down_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`packet_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crash_down_by_playstatus` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `play_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `down_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`play_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_date` (
  `aa` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_dbq_log` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dbq` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `dnf_dbq_log` VALUES ('2020-09-03 11:54:06',11,11),('2020-09-03 12:24:23',11,11),('2020-09-03 13:58:25',11,12),('2020-09-03 16:36:16',11,14),('2020-09-03 16:40:57',11,14),('2020-09-03 16:49:06',11,14),('2020-09-03 16:59:43',11,13),('2020-09-03 17:15:38',11,14),('2020-09-03 21:48:38',11,14),('2020-09-03 22:35:15',11,13);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_hack_log` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `hack_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `etc` int(10) unsigned NOT NULL DEFAULT '0',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`m_id`,`hack_type`,`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `dnf_hack_log` VALUES (1,1,101,'2020-09-03 23:21:44',0,5,'2020-09-03'),(1,1,109,'2020-09-03 23:21:44',0,4,'2020-09-03'),(1,1,112,'2020-09-03 23:21:44',0,15,'2020-09-03'),(1,1,134,'2020-09-03 23:21:44',0,31,'2020-09-03'),(1,1,201,'2020-09-03 23:21:44',0,2,'2020-09-03'),(1,1,207,'2020-09-03 23:21:44',0,8,'2020-09-03'),(1,1,217,'2020-09-03 23:21:44',0,2,'2020-09-03'),(1,1,218,'2020-09-03 23:21:44',0,1,'2020-09-03'),(1,1,219,'2020-09-03 23:21:44',0,2,'2020-09-03'),(1,1,222,'2020-09-03 23:21:44',0,3,'2020-09-03'),(1,1,223,'2020-09-03 23:21:44',0,11,'2020-09-03'),(1,1,230,'2020-09-03 23:21:44',0,38,'2020-09-03'),(1,1,231,'2020-09-03 23:21:44',0,8,'2020-09-03'),(1,1,232,'2020-09-03 23:21:44',0,15,'2020-09-03'),(1,1,233,'2020-09-03 23:21:44',0,1,'2020-09-03'),(1,1,301,'2020-09-03 23:21:44',0,2,'2020-09-03'),(1,1,302,'2020-09-03 23:21:44',0,35,'2020-09-03'),(1,1,312,'2020-09-03 23:21:44',0,1,'2020-09-03'),(1,1,407,'2020-09-03 23:21:44',0,6,'2020-09-03'),(1,1,414,'2020-09-03 23:21:44',0,7,'2020-09-03'),(1,1,417,'2020-09-03 23:21:44',0,1,'2020-09-03'),(1,1,418,'2020-09-03 23:21:44',0,2,'2020-09-03'),(1,1,502,'2020-09-03 23:21:44',0,1,'2020-09-03'),(1,1,503,'2020-09-03 23:21:44',0,6,'2020-09-03'),(1,1,801,'2020-09-03 23:21:44',0,1,'2020-09-03'),(1,1,803,'2020-09-03 23:21:44',0,13,'2020-09-03'),(1,1,821,'2020-09-03 23:21:44',0,12,'2020-09-03'),(1,1,832,'2020-09-03 23:21:44',0,16,'2020-09-03'),(1,1,1316,'2020-09-03 23:21:44',121,2,'2020-09-03'),(1,1,1342,'2020-09-03 23:21:44',211,18,'2020-09-03'),(1,1,1410,'2020-09-03 23:21:44',12,1,'2020-09-03'),(1,1,3677,'2020-09-03 23:21:44',0,22,'2020-09-03');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_hack_log_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `hack_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `etc` int(10) unsigned NOT NULL DEFAULT '0',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`sdate`,`occ_date`,`m_id`,`hack_type`),
  KEY `idx_occdate` (`occ_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_party_ping_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `str_ip` char(16) NOT NULL DEFAULT '',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `ip_1` char(16) NOT NULL DEFAULT '',
  `nat_type_1` tinyint(4) NOT NULL DEFAULT '0',
  `ping1` int(11) NOT NULL DEFAULT '0',
  `mtu_1` int(11) NOT NULL DEFAULT '0',
  `ip_2` char(16) NOT NULL DEFAULT '',
  `nat_type_2` tinyint(4) NOT NULL DEFAULT '0',
  `ping2` int(11) NOT NULL DEFAULT '0',
  `mtu_2` int(11) NOT NULL DEFAULT '0',
  `ip_3` char(16) NOT NULL DEFAULT '',
  `nat_type_3` tinyint(4) NOT NULL DEFAULT '0',
  `ping3` int(11) NOT NULL DEFAULT '0',
  `mtu_3` int(11) NOT NULL DEFAULT '0',
  `ip_4` char(16) NOT NULL DEFAULT '',
  `nat_type_4` tinyint(4) NOT NULL DEFAULT '0',
  `ping4` int(11) NOT NULL DEFAULT '0',
  `mtu_4` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_id` int(11) NOT NULL DEFAULT '0',
  `dungeon_id` int(11) NOT NULL DEFAULT '0',
  `end_reason` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_party_ping_history_pvp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `str_ip` char(16) NOT NULL DEFAULT '',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `ip_1` char(16) NOT NULL DEFAULT '',
  `nat_type_1` tinyint(4) NOT NULL DEFAULT '0',
  `ping1` int(11) NOT NULL DEFAULT '0',
  `mtu_1` int(11) NOT NULL DEFAULT '0',
  `ip_2` char(16) NOT NULL DEFAULT '',
  `nat_type_2` tinyint(4) NOT NULL DEFAULT '0',
  `ping2` int(11) NOT NULL DEFAULT '0',
  `mtu_2` int(11) NOT NULL DEFAULT '0',
  `ip_3` char(16) NOT NULL DEFAULT '',
  `nat_type_3` tinyint(4) NOT NULL DEFAULT '0',
  `ping3` int(11) NOT NULL DEFAULT '0',
  `mtu_3` int(11) NOT NULL DEFAULT '0',
  `ip_4` char(16) NOT NULL DEFAULT '',
  `nat_type_4` tinyint(4) NOT NULL DEFAULT '0',
  `ping4` int(11) NOT NULL DEFAULT '0',
  `mtu_4` int(11) NOT NULL DEFAULT '0',
  `ip_5` char(16) NOT NULL DEFAULT '',
  `nat_type_5` tinyint(4) NOT NULL DEFAULT '0',
  `ping5` int(11) NOT NULL DEFAULT '0',
  `mtu_5` int(11) NOT NULL DEFAULT '0',
  `ip_6` char(16) NOT NULL DEFAULT '',
  `nat_type_6` tinyint(4) NOT NULL DEFAULT '0',
  `ping6` int(11) NOT NULL DEFAULT '0',
  `mtu_6` int(11) NOT NULL DEFAULT '0',
  `ip_7` char(16) NOT NULL DEFAULT '',
  `nat_type_7` tinyint(4) NOT NULL DEFAULT '0',
  `ping7` int(11) NOT NULL DEFAULT '0',
  `mtu_7` int(11) NOT NULL DEFAULT '0',
  `ip_8` char(16) NOT NULL DEFAULT '',
  `nat_type_8` tinyint(4) NOT NULL DEFAULT '0',
  `ping8` int(11) NOT NULL DEFAULT '0',
  `mtu_8` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_id` int(11) NOT NULL DEFAULT '0',
  `dungeon_id` int(11) NOT NULL DEFAULT '0',
  `end_reason` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_party_result_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `str_ip` char(16) NOT NULL DEFAULT '',
  `nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `party_result` tinyint(4) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_id` int(11) NOT NULL DEFAULT '0',
  `dungeon_id` int(11) NOT NULL DEFAULT '0',
  `peer_ip` char(16) NOT NULL DEFAULT '',
  `peer_nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `established_time` int(10) unsigned NOT NULL DEFAULT '0',
  `IsConnectedToRelaySrv` char(1) NOT NULL DEFAULT '',
  `ConnectedTimeToRelaySrv` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_ip` char(16) NOT NULL DEFAULT '',
  `relay_udp_port` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_tcp_port` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_party_result_history_pvp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `str_ip` char(16) NOT NULL DEFAULT '',
  `nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `party_result` tinyint(4) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_id` int(11) NOT NULL DEFAULT '0',
  `dungeon_id` int(11) NOT NULL DEFAULT '0',
  `peer_ip` char(16) NOT NULL DEFAULT '',
  `peer_nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `established_time` int(10) unsigned NOT NULL DEFAULT '0',
  `IsConnectedToRelaySrv` char(1) NOT NULL DEFAULT '',
  `ConnectedTimeToRelaySrv` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_ip` char(16) NOT NULL DEFAULT '',
  `relay_udp_port` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_tcp_port` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_party_stat_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `str_ip` char(16) NOT NULL DEFAULT '',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `try_num` int(11) NOT NULL DEFAULT '0',
  `party_result` char(30) NOT NULL DEFAULT '',
  `party_num` int(11) NOT NULL DEFAULT '0',
  `ping1` int(11) NOT NULL DEFAULT '0',
  `ping2` int(11) NOT NULL DEFAULT '0',
  `ping3` int(11) NOT NULL DEFAULT '0',
  `ping4` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_proxy_log` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `nat_ip` varchar(16) NOT NULL DEFAULT '',
  `peer_ip` varchar(16) NOT NULL DEFAULT '',
  `nat_tye` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_zeromoney_log` (
  `to_m_id` int(11) NOT NULL DEFAULT '0',
  `to_nat_ip` varchar(16) NOT NULL DEFAULT '',
  `to_peer_ip` varchar(16) NOT NULL DEFAULT '',
  `to_nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `to_mac_addr` varchar(64) NOT NULL DEFAULT '',
  `from_m_id` int(11) NOT NULL DEFAULT '0',
  `from_nat_ip` varchar(16) NOT NULL DEFAULT '',
  `from_peer_ip` varchar(16) NOT NULL DEFAULT '',
  `from_nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `from_mac_addr` varchar(64) NOT NULL DEFAULT '',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `injury_money` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_to_m_id` (`to_m_id`) USING BTREE,
  KEY `idx_from_m_id` (`from_m_id`) USING BTREE,
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dungeon_fail` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  `occ_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`lev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `dungeon_fail` VALUES ('2020-09-03',15,1),('2020-09-03',26,1),('2020-09-03',27,7),('2020-09-03',28,5),('2020-09-03',29,8),('2020-09-03',30,12),('2020-09-03',31,11),('2020-09-03',32,13),('2020-09-03',33,11),('2020-09-03',34,13),('2020-09-03',35,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dungeon_lev_log` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `dungeon_id` int(11) NOT NULL DEFAULT '0',
  `sum_lev` int(11) NOT NULL DEFAULT '0',
  `used_coin` int(11) NOT NULL DEFAULT '0',
  `try_cnt` int(11) NOT NULL DEFAULT '0',
  `clear_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`dungeon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_goldcard_log` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_quest_party_member` (
  `charac_no` int(11) unsigned NOT NULL DEFAULT '0',
  `quest_no` int(11) NOT NULL DEFAULT '0',
  `member_1` int(11) NOT NULL DEFAULT '0',
  `member_1_name` varchar(20) NOT NULL DEFAULT '',
  `member_1_lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `member_2` int(11) NOT NULL DEFAULT '0',
  `member_2_name` varchar(20) NOT NULL DEFAULT '',
  `member_2_lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `member_3` int(11) NOT NULL DEFAULT '0',
  `member_3_name` varchar(20) NOT NULL DEFAULT '',
  `member_3_lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`quest_no`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_acquire_item` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `m_id` bigint(20) unsigned DEFAULT NULL,
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `item_type` int(11) NOT NULL DEFAULT '0',
  `item_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`charac_no`,`item_id`),
  KEY `idx_date_mid_itemid` (`occ_date`,`m_id`,`item_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_advance_alter_entrance` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `stage_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entrance_count` int(10) unsigned NOT NULL DEFAULT '0',
  `success_count` int(10) unsigned NOT NULL DEFAULT '0',
  `obtain_star` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`stage_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_advance_alter_layer_stat` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `item_type` smallint(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(5) unsigned NOT NULL DEFAULT '0',
  `item_level` smallint(10) unsigned NOT NULL DEFAULT '0',
  `use_count` smallint(10) unsigned NOT NULL DEFAULT '0',
  `use_star` smallint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`item_type`,`item_id`,`item_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_arad_event_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_assault` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `channel_no` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assault_count` int(10) unsigned NOT NULL DEFAULT '0',
  `load_fail_count` int(11) DEFAULT NULL,
  `p2p_fail_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`occ_date`,`channel_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_avatar_grind` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `grade` enum('normal','high','rare') NOT NULL DEFAULT 'normal',
  `body_part` enum('headgear','hair','face','jacket','pants','shoes','breast','waist','skin') NOT NULL DEFAULT 'headgear',
  `avatar_emblem_grind` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar_bindcube_grind` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar_rechargestone_grind` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`grade`,`body_part`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_avatar_grind` VALUES ('2020-09-03','normal','headgear',0,0,0),('2020-09-03','normal','hair',0,0,0),('2020-09-03','normal','face',0,0,0),('2020-09-03','normal','jacket',0,0,0),('2020-09-03','normal','pants',0,0,0),('2020-09-03','normal','shoes',0,0,0),('2020-09-03','normal','breast',0,0,0),('2020-09-03','normal','waist',0,0,0),('2020-09-03','normal','skin',0,0,0),('2020-09-03','high','headgear',0,0,0),('2020-09-03','high','hair',0,0,0),('2020-09-03','high','face',0,0,0),('2020-09-03','high','jacket',0,0,0),('2020-09-03','high','pants',0,0,0),('2020-09-03','high','shoes',0,0,0),('2020-09-03','high','breast',0,0,0),('2020-09-03','high','waist',0,0,0),('2020-09-03','high','skin',0,0,0),('2020-09-03','rare','headgear',0,0,0),('2020-09-03','rare','hair',0,0,0),('2020-09-03','rare','face',0,0,0),('2020-09-03','rare','jacket',0,0,0),('2020-09-03','rare','pants',0,0,0),('2020-09-03','rare','shoes',0,0,0),('2020-09-03','rare','breast',0,0,0),('2020-09-03','rare','waist',0,0,0),('2020-09-03','rare','skin',0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_cerashop_gift` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `from_mid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `to_mid` int(10) unsigned NOT NULL DEFAULT '0',
  `to_charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `item_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=18237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_charac_money` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `money_plus` int(10) unsigned NOT NULL DEFAULT '0',
  `money_minus` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_charac_money` VALUES (1,'2020-09-03',15455,2580,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_client_ting` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0',
  `cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`reason`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_client_ting_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0',
  `cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`reason`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_client_ting_stat` VALUES ('2020-09-03 12:54:23',11,48,1),('2020-09-03 15:58:25',11,5,1),('2020-09-03 16:28:25',11,5,1),('2020-09-03 17:45:38',11,5,3),('2020-09-03 17:45:38',11,11,1),('2020-09-03 17:45:38',11,21,3),('2020-09-03 21:09:12',11,5,4),('2020-09-03 21:09:12',11,11,1),('2020-09-03 22:18:37',11,5,5),('2020-09-03 23:05:15',11,5,1),('2020-09-03 23:05:15',11,11,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_cube_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `item_index` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `item_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`level`,`item_index`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_cube_stat` VALUES ('2020-09-03 16:36:42',11,26,3033,0,4),('2020-09-03 16:36:42',11,27,3033,0,310),('2020-09-03 16:36:42',11,28,3033,0,12),('2020-09-03 16:36:42',11,29,3033,0,132),('2020-09-03 16:36:42',11,30,3033,0,432),('2020-09-03 16:36:42',11,31,3033,0,34),('2020-09-03 16:36:42',11,32,3033,0,30),('2020-09-03 16:36:42',11,32,3033,4,20),('2020-09-03 16:36:42',11,33,3033,0,34),('2020-09-03 16:36:42',11,34,3033,0,234),('2020-09-03 16:36:42',11,35,3033,0,26),('2020-09-03 16:36:42',11,27,3034,0,16),('2020-09-03 16:36:42',11,28,3034,0,8),('2020-09-03 16:36:42',11,29,3034,0,24),('2020-09-03 16:36:42',11,30,3034,0,16),('2020-09-03 16:36:42',11,31,3034,0,220),('2020-09-03 16:36:42',11,32,3034,0,414),('2020-09-03 16:36:42',11,32,3034,4,20),('2020-09-03 16:36:42',11,33,3034,0,26),('2020-09-03 16:36:42',11,34,3034,0,246),('2020-09-03 16:36:42',11,35,3034,0,38),('2020-09-03 16:36:42',11,35,3034,101,200),('2020-09-03 16:36:42',11,26,3035,0,12),('2020-09-03 16:36:42',11,27,3035,0,160),('2020-09-03 16:36:42',11,28,3035,0,12),('2020-09-03 16:36:42',11,29,3035,0,26),('2020-09-03 16:36:42',11,30,3035,0,36),('2020-09-03 16:36:42',11,31,3035,0,52),('2020-09-03 16:36:42',11,32,3035,0,228),('2020-09-03 16:36:42',11,32,3035,4,20),('2020-09-03 16:36:42',11,33,3035,0,18),('2020-09-03 16:36:42',11,34,3035,0,224),('2020-09-03 16:36:42',11,35,3035,0,38),('2020-09-03 16:36:42',11,26,3036,0,4),('2020-09-03 16:36:42',11,27,3036,0,16),('2020-09-03 16:36:42',11,28,3036,0,28),('2020-09-03 16:36:42',11,29,3036,0,16),('2020-09-03 16:36:42',11,30,3036,0,24),('2020-09-03 16:36:42',11,31,3036,0,28),('2020-09-03 16:36:42',11,32,3036,0,34),('2020-09-03 16:36:42',11,32,3036,4,20),('2020-09-03 16:36:42',11,33,3036,0,228),('2020-09-03 16:36:42',11,34,3036,0,36),('2020-09-03 16:36:42',11,35,3036,0,246),('2020-09-03 16:36:42',11,26,3037,0,258),('2020-09-03 16:36:42',11,27,3037,0,1130),('2020-09-03 16:36:42',11,28,3037,0,820),('2020-09-03 16:36:42',11,29,3037,0,902),('2020-09-03 16:36:42',11,30,3037,0,1432),('2020-09-03 16:36:42',11,31,3037,0,1940),('2020-09-03 16:36:42',11,32,3037,0,1956),('2020-09-03 16:36:42',11,33,3037,0,1476),('2020-09-03 16:36:42',11,34,3037,0,2258),('2020-09-03 16:36:42',11,35,3037,0,1794),('2020-09-03 16:36:42',11,34,3039,4,1),('2020-09-03 16:36:42',11,35,3039,3,2),('2020-09-03 16:36:42',11,35,3039,102,4),('2020-09-03 16:36:42',11,32,3042,4,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_deathtower_playdata_job` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_grow` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `playcount` int(10) unsigned NOT NULL DEFAULT '0',
  `avg_clear_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`type`,`charac_job`,`charac_grow`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_deathtower_playdata_party` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `party_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `playcount` int(10) unsigned NOT NULL DEFAULT '0',
  `avg_clear_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`type`,`party_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_deathtower_value` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `clear_stage` int(10) unsigned NOT NULL DEFAULT '0',
  `recipeCnt` int(10) unsigned NOT NULL DEFAULT '0',
  `rareCnt` int(10) unsigned NOT NULL DEFAULT '0',
  `uniqCnt` int(10) unsigned NOT NULL DEFAULT '0',
  `card_item_goldprice` int(10) unsigned NOT NULL DEFAULT '0',
  `card_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `repair_price` int(10) unsigned NOT NULL DEFAULT '0',
  `commonCnt` int(10) unsigned NOT NULL DEFAULT '0',
  `uncommonCnt` int(10) unsigned NOT NULL DEFAULT '0',
  `try_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`type`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_charac` (
  `channel_no` int(11) NOT NULL DEFAULT '0' COMMENT '채널번호',
  `dungeon_index` int(11) NOT NULL DEFAULT '0' COMMENT '던전번호',
  `dungeon_diff` int(11) NOT NULL DEFAULT '0' COMMENT '던전난이도',
  `charac_job` int(11) NOT NULL DEFAULT '0' COMMENT '케릭직업',
  `charac_grow` int(11) NOT NULL DEFAULT '0' COMMENT '케릭성장직업',
  `clear_time` int(11) NOT NULL DEFAULT '0' COMMENT '클리어시간',
  `die_count` int(11) NOT NULL DEFAULT '0' COMMENT '죽은 횟수',
  `hp_consume` int(11) NOT NULL DEFAULT '0' COMMENT 'hp 소비량',
  `mp_consume` int(11) NOT NULL DEFAULT '0' COMMENT 'mp 소비량',
  `hit_count` int(11) NOT NULL DEFAULT '0' COMMENT '히트수',
  `hit_per_avg_damage` int(11) NOT NULL DEFAULT '0' COMMENT '평균 데미지',
  `hp_recovery` int(11) NOT NULL DEFAULT '0' COMMENT 'hp 회복량',
  `mp_recovery` int(11) NOT NULL DEFAULT '0' COMMENT 'mp 회복량',
  `success` int(11) NOT NULL DEFAULT '0' COMMENT '성공구분',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '등록일시',
  `update_count` int(11) NOT NULL DEFAULT '0' COMMENT '업데이트 횟수',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '레벨',
  `exp_avg` int(11) NOT NULL DEFAULT '0' COMMENT '경험치평균',
  `dungeon_standard_level` int(11) NOT NULL DEFAULT '0' COMMENT '던전표준레벨',
  `fatigue_consume` int(11) NOT NULL DEFAULT '0' COMMENT '소비된피로도',
  `exp_add` int(11) NOT NULL DEFAULT '0' COMMENT '경험치합계',
  `party_user_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`last_time`,`channel_no`,`dungeon_index`,`dungeon_diff`,`dungeon_standard_level`,`charac_job`,`charac_grow`,`success`,`party_user_count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='케릭터별 던전 로그 정보 저장';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_dungeon_charac` VALUES (0,14,0,0,2,38,0,0,2,0,0,0,0,0,'2020-09-03 16:36:42',1,26,29362,1,3,0,1,0),(0,14,0,0,2,34,0,0,2,0,0,0,0,1,'2020-09-03 16:36:42',1,26,29362,1,3,0,1,99),(0,15,2,0,2,48,0,165,0,1,165,0,0,0,'2020-09-03 16:36:42',1,35,3008,0,2,0,1,0),(0,15,2,0,2,44,0,165,0,1,165,0,0,1,'2020-09-03 16:36:42',1,35,3008,0,2,0,1,99),(0,21,2,0,2,49,0,0,5,0,0,0,0,0,'2020-09-03 16:36:42',1,31,113062,1,4,0,1,0),(0,21,2,0,2,48,0,0,5,0,0,0,0,1,'2020-09-03 16:36:42',1,31,113062,1,4,0,1,99),(0,22,2,0,2,48,0,324,0,1,324,0,0,0,'2020-09-03 16:36:42',1,32,106204,1,5,0,1,0),(0,22,2,0,2,44,0,324,0,1,324,0,0,1,'2020-09-03 16:36:42',1,32,106204,1,5,0,1,99),(0,23,2,0,2,45,0,2017,0,22,91,0,0,0,'2020-09-03 16:36:42',1,33,174003,1,6,0,1,0),(0,23,2,0,2,42,0,2017,0,22,91,0,0,1,'2020-09-03 16:36:42',1,33,174003,1,6,0,1,99),(0,24,2,0,2,62,0,0,0,0,0,0,0,0,'2020-09-03 16:36:42',1,34,127351,1,6,0,1,0),(0,24,2,0,2,61,0,0,0,0,0,0,0,1,'2020-09-03 16:36:42',1,34,127351,1,6,0,1,99);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_entrance` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `channel_no` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dungeon_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `enter_count` int(10) unsigned NOT NULL DEFAULT '0',
  `exercise_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`channel_no`,`dungeon_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_entrance_hour` (
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dungeon_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hour_enter_count` int(10) unsigned NOT NULL DEFAULT '0',
  `cnt_enter_count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`channel_no`,`dungeon_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_dungeon_entrance_hour` VALUES ('2020-09-03 14:57:47',11,14,1,0),('2020-09-03 15:57:47',11,14,7,0),('2020-09-03 15:57:47',11,15,14,0),('2020-09-03 15:57:47',11,17,7,0),('2020-09-03 15:57:47',11,21,8,0),('2020-09-03 15:57:47',11,22,16,0),('2020-09-03 15:57:47',11,23,9,0),('2020-09-03 15:57:47',11,24,18,0),('2020-09-03 15:57:47',11,25,9,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_exp` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fatigue` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`lev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_monster` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `dungeon_index` int(11) NOT NULL DEFAULT '0',
  `dungeon_diff` int(11) NOT NULL DEFAULT '0',
  `monster_index` int(11) NOT NULL DEFAULT '0',
  `damage_total` int(11) NOT NULL DEFAULT '0',
  `damage_count` int(11) NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`last_time`,`channel_no`,`dungeon_index`,`dungeon_diff`,`monster_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_party` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `dungeon_index` int(11) NOT NULL DEFAULT '0',
  `dungeon_diff` int(11) NOT NULL DEFAULT '0',
  `dungeon_standard_level` tinyint(4) NOT NULL DEFAULT '0',
  `abuse_party` tinyint(4) NOT NULL DEFAULT '0',
  `balkun_party` tinyint(4) NOT NULL DEFAULT '0',
  `party_user_count` int(11) NOT NULL DEFAULT '0',
  `clear_time` int(11) NOT NULL DEFAULT '0',
  `die_count` int(11) NOT NULL DEFAULT '0',
  `hp_consume` int(11) NOT NULL DEFAULT '0',
  `mp_consume` int(11) NOT NULL DEFAULT '0',
  `hit_count` int(11) NOT NULL DEFAULT '0',
  `hit_per_avg_damage` int(11) NOT NULL DEFAULT '0',
  `hp_recovery` int(11) NOT NULL DEFAULT '0',
  `mp_recovery` int(11) NOT NULL DEFAULT '0',
  `success` int(11) NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_count` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `fatigue_consume` int(11) NOT NULL DEFAULT '0',
  `exp_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`last_time`,`channel_no`,`dungeon_index`,`dungeon_diff`,`dungeon_standard_level`,`abuse_party`,`balkun_party`,`party_user_count`,`success`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_dungeon_party` VALUES (0,14,0,1,0,0,1,38,0,0,2,0,0,0,0,0,'2020-09-03 16:36:42',1,26,3,29362),(0,14,0,1,0,0,1,34,0,0,2,0,0,0,0,1,'2020-09-03 16:36:42',1,26,3,29362),(0,15,2,0,0,0,1,48,0,165,0,1,165,0,0,0,'2020-09-03 16:36:42',1,35,2,3008),(0,15,2,0,0,0,1,44,0,165,0,1,165,0,0,1,'2020-09-03 16:36:42',1,35,2,3008),(0,21,2,1,0,0,1,49,0,0,5,0,0,0,0,0,'2020-09-03 16:36:42',1,31,4,113062),(0,21,2,1,0,0,1,48,0,0,5,0,0,0,0,1,'2020-09-03 16:36:42',1,31,4,113062),(0,22,2,1,0,0,1,48,0,324,0,1,324,0,0,0,'2020-09-03 16:36:42',1,32,5,106204),(0,22,2,1,0,0,1,44,0,324,0,1,324,0,0,1,'2020-09-03 16:36:42',1,32,5,106204),(0,23,2,1,0,0,1,45,0,2017,0,22,91,0,0,0,'2020-09-03 16:36:42',1,33,6,174003),(0,23,2,1,0,0,1,42,0,2017,0,22,91,0,0,1,'2020-09-03 16:36:42',1,33,6,174003),(0,24,2,1,0,0,1,62,0,0,0,0,0,0,0,0,'2020-09-03 16:36:42',1,34,6,127351),(0,24,2,1,0,0,1,61,0,0,0,0,0,0,0,1,'2020-09-03 16:36:42',1,34,6,127351);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_party_job` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `dungeon_index` int(11) NOT NULL DEFAULT '0',
  `dungeon_diff` int(11) NOT NULL DEFAULT '0',
  `dungeon_standard_level` tinyint(4) NOT NULL DEFAULT '0',
  `abuse_party` tinyint(4) NOT NULL DEFAULT '0',
  `balkun_party` tinyint(4) NOT NULL DEFAULT '0',
  `charac_job` int(11) NOT NULL DEFAULT '0',
  `charac_grow` int(11) NOT NULL DEFAULT '0',
  `party_user_count` int(11) NOT NULL DEFAULT '0',
  `success` int(11) NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job_count` int(11) NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`last_time`,`channel_no`,`dungeon_index`,`dungeon_diff`,`dungeon_standard_level`,`abuse_party`,`balkun_party`,`charac_job`,`charac_grow`,`party_user_count`,`success`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_dungeon_party_job` VALUES (0,14,0,1,0,0,0,2,1,0,'2020-09-03 16:36:42',1,0),(0,14,0,1,0,0,0,2,1,1,'2020-09-03 16:36:42',1,99),(0,15,2,0,0,0,0,2,1,0,'2020-09-03 16:36:42',1,0),(0,15,2,0,0,0,0,2,1,1,'2020-09-03 16:36:42',1,99),(0,21,2,1,0,0,0,2,1,0,'2020-09-03 16:36:42',1,0),(0,21,2,1,0,0,0,2,1,1,'2020-09-03 16:36:42',1,99),(0,22,2,1,0,0,0,2,1,0,'2020-09-03 16:36:42',1,0),(0,22,2,1,0,0,0,2,1,1,'2020-09-03 16:36:42',1,99),(0,23,2,1,0,0,0,2,1,0,'2020-09-03 16:36:42',1,0),(0,23,2,1,0,0,0,2,1,1,'2020-09-03 16:36:42',1,99),(0,24,2,1,0,0,0,2,1,0,'2020-09-03 16:36:42',1,0),(0,24,2,1,0,0,0,2,1,1,'2020-09-03 16:36:42',1,99);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_dungeon_skill` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `dungeon_index` int(11) NOT NULL DEFAULT '0',
  `dungeon_diff` int(11) NOT NULL DEFAULT '0',
  `charac_job` int(11) NOT NULL DEFAULT '0',
  `charac_grow` int(11) NOT NULL DEFAULT '0',
  `skill_index` int(11) NOT NULL DEFAULT '0',
  `skill_use` int(11) NOT NULL DEFAULT '0',
  `skill_count` int(11) NOT NULL DEFAULT '0',
  `skill_cool_time` int(11) NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`last_time`,`channel_no`,`dungeon_index`,`dungeon_diff`,`charac_job`,`charac_grow`,`skill_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_eco_point` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `save_time` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `add_point` int(10) unsigned NOT NULL DEFAULT '0',
  `use_point` int(10) unsigned NOT NULL DEFAULT '0',
  `save_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`save_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_emblem_compound` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '날짜',
  `channel_no` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '채널 번호',
  `grade0` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade4` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade5` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade6` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  PRIMARY KEY (`occ_date`,`channel_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_emblem_create` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '날짜',
  `grade0` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade4` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade5` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  `grade6` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '등급 별 카운트',
  PRIMARY KEY (`cur_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_fatigue_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `fatigue` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_game_channel` (
  `gc_up_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gc_game` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gc_no` int(11) unsigned NOT NULL DEFAULT '0',
  `gc_channel` char(32) NOT NULL DEFAULT '',
  `gc_ch_group` smallint(5) NOT NULL DEFAULT '0',
  `gc_ip` char(64) NOT NULL DEFAULT '',
  `gc_new` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_now` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_out` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gc_up_time`,`gc_game`,`gc_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_game_channel` VALUES ('2020-09-03 12:03:31',3,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 12:20:30',3,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 12:33:46',3,3011,'ch.11',11,'192.168.50.10',1,0,1),('2020-09-03 12:43:46',3,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 12:53:46',3,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 13:03:46',3,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 13:16:57',3,3011,'ch.11',11,'192.168.50.10',1,1,0),('2020-09-03 13:37:02',3,3011,'ch.11',11,'192.168.50.10',1,1,0),('2020-09-03 13:47:02',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 13:57:02',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 14:07:47',3,3011,'ch.11',11,'192.168.50.10',1,1,0),('2020-09-03 14:17:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 14:27:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 14:37:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 14:47:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 14:57:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 15:07:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 15:17:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 15:27:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 15:37:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 15:47:47',3,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 15:57:47',3,3011,'ch.11',11,'192.168.50.10',2,2,1),('2020-09-03 16:07:47',3,3011,'ch.11',11,'192.168.50.10',0,0,2),('2020-09-03 16:17:47',3,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 16:27:47',3,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 17:24:33',1,3011,'ch.11',11,'192.168.50.10',4,1,3),('2020-09-03 17:34:33',1,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 17:44:33',1,3011,'ch.11',11,'192.168.50.10',3,1,3),('2020-09-03 17:54:33',1,3011,'ch.11',11,'192.168.50.10',3,1,3),('2020-09-03 21:09:12',1,3011,'ch.11',11,'192.168.50.10',0,0,1),('2020-09-03 21:19:12',1,3011,'ch.11',11,'192.168.50.10',0,0,0),('2020-09-03 21:57:48',1,3011,'ch.11',11,'192.168.50.10',2,1,1),('2020-09-03 22:07:48',1,3011,'ch.11',11,'192.168.50.10',1,0,2),('2020-09-03 22:17:48',1,3011,'ch.11',11,'192.168.50.10',3,1,2),('2020-09-03 22:27:48',1,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 22:44:29',1,3011,'ch.11',11,'192.168.50.10',1,1,0),('2020-09-03 22:54:29',1,3011,'ch.11',11,'192.168.50.10',0,1,0),('2020-09-03 23:04:29',1,3011,'ch.11',11,'192.168.50.10',1,1,1),('2020-09-03 23:14:29',1,3011,'ch.11',11,'192.168.50.10',1,1,1),('2020-09-03 23:24:29',1,3011,'ch.11',11,'192.168.50.10',0,1,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_gameserver_load_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_no` int(10) unsigned NOT NULL DEFAULT '0',
  `dbq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `logdbq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `netq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `packetq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_id`,`channel_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_gameserver_load_stat` VALUES ('2020-09-03 12:24:59',3,11,11,0,0,4),('2020-09-03 12:25:00',3,11,0,0,0,1),('2020-09-03 13:14:10',3,11,0,0,0,11),('2020-09-03 13:41:07',3,11,0,0,0,11),('2020-09-03 15:18:52',3,11,0,0,0,12);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_gameserver_load_stat_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_no` int(10) unsigned NOT NULL DEFAULT '0',
  `dbq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `logdbq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `netq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `packetq_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`sdate`,`occ_time`,`server_id`,`channel_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_gold_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `dungeon_drop` int(10) unsigned NOT NULL DEFAULT '0',
  `result_card` int(10) unsigned NOT NULL DEFAULT '0',
  `sell_store` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_reward` int(10) unsigned NOT NULL DEFAULT '0',
  `death_tower_reward` int(10) unsigned NOT NULL DEFAULT '0',
  `illusion_tower_reward` int(10) unsigned NOT NULL DEFAULT '0',
  `war_area_drop` int(10) unsigned NOT NULL DEFAULT '0',
  `member_tax` int(10) unsigned NOT NULL DEFAULT '0',
  `sell_auction` int(10) unsigned NOT NULL DEFAULT '0',
  `fail_sell_auction` int(10) unsigned NOT NULL DEFAULT '0',
  `fail_bidding_auction` int(10) unsigned NOT NULL DEFAULT '0',
  `buy_store` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina_recovery` int(10) unsigned NOT NULL DEFAULT '0',
  `repair_item` int(10) unsigned NOT NULL DEFAULT '0',
  `private_store_commission` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_card` int(10) unsigned NOT NULL DEFAULT '0',
  `auction_commission` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_drop` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_use` int(10) unsigned NOT NULL DEFAULT '0',
  `mail_commission` int(10) unsigned NOT NULL DEFAULT '0',
  `punish_user` int(10) unsigned NOT NULL DEFAULT '0',
  `restrict_trade` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_level_up` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_skill` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_mail` int(10) unsigned NOT NULL DEFAULT '0',
  `item_compound` int(10) unsigned NOT NULL DEFAULT '0',
  `auction_bidding` int(10) unsigned NOT NULL DEFAULT '0',
  `war_area_enter` int(10) unsigned NOT NULL DEFAULT '0',
  `assault_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `blood_dungeon_reward` int(10) unsigned NOT NULL DEFAULT '0',
  `power_dungeon_drop` int(10) unsigned NOT NULL DEFAULT '0',
  `power_dungeon_result_card` int(10) unsigned NOT NULL DEFAULT '0',
  `blood_dungeon_enter` int(10) unsigned NOT NULL DEFAULT '0',
  `blood_dungeon_lotto` int(10) unsigned NOT NULL DEFAULT '0',
  `buy_cerashop` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_guild_agit` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_guild_cargo` int(10) unsigned NOT NULL DEFAULT '0',
  `break_away_reward` int(10) unsigned NOT NULL DEFAULT '0',
  `link_charac_bonus` int(10) unsigned NOT NULL DEFAULT '0',
  `ultimate_dungeon_reward` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_fund` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_fund_dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_shop_init_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `unseal` int(10) unsigned NOT NULL DEFAULT '0',
  `lottery` int(10) unsigned NOT NULL DEFAULT '0',
  `amplify` int(10) unsigned NOT NULL DEFAULT '0',
  `roi_regen` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_gold_stat` VALUES ('2020-09-03 16:36:42',1,26,4129,1894,3302,0,0,0,0,0,0,0,0,0,0,0,0,2980,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,27,37270,27095,29844,8806,0,0,0,0,0,0,0,0,0,0,0,17880,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,28,45905,32298,31801,8409,0,0,0,0,0,0,0,0,0,0,0,16100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,29,40796,30090,24413,20741,0,0,0,0,0,0,0,0,0,0,0,23260,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,30,72100,53362,314266,13598,0,0,0,0,0,0,0,0,0,0,0,34360,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,31,98346,84022,70153,3341,0,0,0,0,0,0,0,0,0,0,0,36760,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,32,108615,90524,85678,10000,0,0,0,0,0,0,0,0,0,0,0,41180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,33,121901,98730,72825,17383,0,0,0,0,0,0,0,0,0,0,0,38920,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,34,156951,128932,73291,14334,0,0,0,0,0,0,0,0,0,0,0,47520,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:42',1,35,90282,78395,68034,18584,0,0,0,0,0,0,0,21000,0,268,0,32600,0,0,0,1000,0,0,0,0,0,0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_hardware_ting` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category2` int(11) NOT NULL DEFAULT '0',
  `category3` int(11) NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `ting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`category1`,`category2`,`category3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_hardware_ting` VALUES ('2020-09-03 13:23:39',0,6,3,1,0),('2020-09-03 13:23:39',1,4318,7042,1,0),('2020-09-03 13:23:39',2,0,0,1,0),('2020-09-03 13:23:39',3,0,7,1,0),('2020-09-03 15:57:40',0,6,3,1,0),('2020-09-03 15:57:40',1,4318,7042,1,0),('2020-09-03 15:57:40',2,0,0,1,0),('2020-09-03 15:57:40',3,0,7,1,0),('2020-09-03 17:44:24',0,6,3,1,0),('2020-09-03 17:44:24',1,4318,7042,1,0),('2020-09-03 17:44:24',2,0,0,1,0),('2020-09-03 17:44:24',3,0,7,1,0),('2020-09-03 22:17:43',0,6,3,1,0),('2020-09-03 22:17:43',1,4318,7042,1,0),('2020-09-03 22:17:43',2,0,0,1,0),('2020-09-03 22:17:43',3,0,7,1,0),('2020-09-03 23:04:24',0,6,3,2,0),('2020-09-03 23:04:24',1,4318,7042,2,0),('2020-09-03 23:04:24',2,0,0,2,0),('2020-09-03 23:04:24',3,0,7,2,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_develop` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `develop` smallint(6) NOT NULL DEFAULT '0',
  `sucess_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`it_no`),
  KEY `idx_it_no` (`it_no`) USING BTREE,
  KEY `idx_server_id` (`server_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_drop` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `channel_no` smallint(5) unsigned NOT NULL DEFAULT '0',
  `drop_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackable_common` int(10) unsigned NOT NULL DEFAULT '0',
  `stackable_uncommon` int(10) unsigned NOT NULL DEFAULT '0',
  `stackable_rare` int(10) unsigned NOT NULL DEFAULT '0',
  `stackable_unique` int(10) unsigned NOT NULL DEFAULT '0',
  `stackable_epic` int(10) unsigned NOT NULL DEFAULT '0',
  `equip_common` int(10) unsigned NOT NULL DEFAULT '0',
  `equip_uncommon` int(10) unsigned NOT NULL DEFAULT '0',
  `equip_rare` int(10) unsigned NOT NULL DEFAULT '0',
  `equip_unique` int(10) unsigned NOT NULL DEFAULT '0',
  `equip_epic` int(10) unsigned NOT NULL DEFAULT '0',
  `recipe_common` int(10) unsigned NOT NULL DEFAULT '0',
  `recipe_uncommon` int(10) unsigned NOT NULL DEFAULT '0',
  `recipe_rare` int(10) unsigned NOT NULL DEFAULT '0',
  `recipe_unique` int(10) unsigned NOT NULL DEFAULT '0',
  `recipe_epic` int(10) unsigned NOT NULL DEFAULT '0',
  `artifact_common` int(10) unsigned NOT NULL DEFAULT '0',
  `artifact_uncommon` int(10) unsigned NOT NULL DEFAULT '0',
  `artifact_rare` int(10) unsigned NOT NULL DEFAULT '0',
  `artifact_unique` int(10) unsigned NOT NULL DEFAULT '0',
  `artifact_epic` int(10) unsigned NOT NULL DEFAULT '0',
  `equip_chronicle` int(10) unsigned NOT NULL DEFAULT '0',
  `recipe_chronicle` int(10) unsigned NOT NULL DEFAULT '0',
  `artifact_chronicle` int(10) unsigned NOT NULL DEFAULT '0',
  `Stackable_chronicle` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`channel_no`,`drop_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_item_drop` VALUES ('2020-09-03',11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03',11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03',11,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_stat` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `process_id` tinyint(4) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`server_info`,`process_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_stat_multiproc` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `process_id` tinyint(4) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`server_info`,`process_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_stat_multiproc_fix` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `process_id` tinyint(4) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`server_info`,`process_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_stat_single` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `process_id` tinyint(4) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`server_info`,`process_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_upgrade` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `process_id` tinyint(4) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `upgrade` int(11) NOT NULL DEFAULT '0',
  `amplify_item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rarity` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`server_info`,`process_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_item_upgrade_multiproc` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `process_id` tinyint(4) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `upgrade` int(11) NOT NULL DEFAULT '0',
  `amplify_item_cnt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rarity` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`server_info`,`process_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_job_gold` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `gold_average` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_max` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_sum` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`server_info`,`job`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_level_dungeon_play_count` (
  `level` smallint(6) NOT NULL DEFAULT '0',
  `total_charac_count` int(10) unsigned NOT NULL DEFAULT '0',
  `total_dungeon_play_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_login_logout` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`event_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_lucky_ticket_stat` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `type_flag` tinyint(4) NOT NULL DEFAULT '0',
  `ticket_flag` tinyint(4) NOT NULL DEFAULT '0',
  `item_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `succ_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idx`),
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_mercenary` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finish_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `period` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rarity` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_monstertower_layer_stat` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `key_id` int(11) unsigned NOT NULL DEFAULT '0',
  `layer` smallint(5) unsigned NOT NULL DEFAULT '0',
  `monster_diff` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `charac_job` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `charac_grow` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `play_cnt` int(11) unsigned NOT NULL DEFAULT '0',
  `success_cnt` int(11) unsigned NOT NULL DEFAULT '0',
  `play_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `uniq_cnt` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_nat_daily` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `nat_type_other` tinyint(4) NOT NULL DEFAULT '0',
  `success_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `fail_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`nat_type`,`nat_type_other`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_nat_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nat_type` tinyint(4) NOT NULL DEFAULT '0',
  `nat_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`nat_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_nat_stat` VALUES ('2020-09-03 14:58:25',2,1),('2020-09-03 15:58:25',2,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_num_occupations` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_occupations_charscreen` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_occupations_seriaroom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_login_per_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_logout_per_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_ontime_reward` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_no` int(10) unsigned NOT NULL DEFAULT '0',
  `reward_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`time`,`event_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_otherserver_load_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `kind` tinyint(4) NOT NULL DEFAULT '0',
  `q_cnt` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_type`,`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_packet_dispatcher_error_line` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` tinyint(4) NOT NULL DEFAULT '0',
  `error_line` int(10) unsigned NOT NULL DEFAULT '0',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`error_line`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_packet_dispatcher_error_line` VALUES ('2020-09-03 21:13:00',0,0,5),('2020-09-03 23:19:24',0,0,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_party_type` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `guild_count` int(11) NOT NULL DEFAULT '0',
  `member_count` int(11) NOT NULL DEFAULT '0',
  `helped_count` int(11) NOT NULL DEFAULT '0',
  `normal_count` int(11) NOT NULL DEFAULT '0',
  `member_helped_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_no`,`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_playtime` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `play_time` int(11) NOT NULL DEFAULT '0',
  `lobby_intime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lobby_outtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `idx_lobby_outtime` (`lobby_outtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_police_chatting` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_type` tinyint(4) NOT NULL DEFAULT '0',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE,
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_pvp_map` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `map_id` int(11) NOT NULL DEFAULT '0',
  `play_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_no`,`map_id`,`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_pvp_player_rate` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `single_one_to_one` int(11) NOT NULL DEFAULT '0',
  `single_one_to_one_other` int(11) NOT NULL DEFAULT '0',
  `team_one_to_one` int(11) NOT NULL DEFAULT '0',
  `team_one_to_one_other` int(11) NOT NULL DEFAULT '0',
  `relay_one_to_one` int(11) NOT NULL DEFAULT '0',
  `relay_one_to_one_other` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_no`,`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_query_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `q_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_no` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `response_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`q_id`,`gc_no`),
  KEY `idx_q_id` (`q_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_query_stat` VALUES ('2020-09-03 11:54:06',1,11,1,1),('2020-09-03 11:54:06',4,11,1,0),('2020-09-03 11:54:06',5,11,2,1),('2020-09-03 11:54:06',36,11,1,16),('2020-09-03 11:54:06',43,11,1,20),('2020-09-03 11:54:06',44,11,1,3),('2020-09-03 11:54:06',46,11,1,3),('2020-09-03 11:54:06',47,11,1,33),('2020-09-03 11:54:06',48,11,1,2),('2020-09-03 11:54:06',49,11,1,19),('2020-09-03 11:54:06',50,11,1,51),('2020-09-03 11:54:06',51,11,1,8),('2020-09-03 11:54:06',52,11,1,2),('2020-09-03 11:54:06',53,11,1,29),('2020-09-03 11:54:06',54,11,1,1),('2020-09-03 11:54:06',57,11,1,4),('2020-09-03 11:54:06',58,11,1,4),('2020-09-03 11:54:06',59,11,1,2),('2020-09-03 11:54:06',60,11,1,3),('2020-09-03 11:54:06',61,11,1,1),('2020-09-03 11:54:06',62,11,1,2),('2020-09-03 11:54:06',99,11,1,1),('2020-09-03 11:54:06',6770,11,1,1),('2020-09-03 12:11:09',63,11,2,17),('2020-09-03 12:11:09',75,11,1,26),('2020-09-03 12:11:09',1,11,1,4),('2020-09-03 12:11:09',4,11,1,0),('2020-09-03 12:11:09',5,11,2,2),('2020-09-03 12:11:09',36,11,1,19),('2020-09-03 12:11:09',43,11,1,26),('2020-09-03 12:11:09',44,11,1,2),('2020-09-03 12:11:09',46,11,1,4),('2020-09-03 12:11:09',47,11,1,7),('2020-09-03 12:11:09',48,11,1,3),('2020-09-03 12:11:09',49,11,1,2),('2020-09-03 12:11:09',50,11,1,87),('2020-09-03 12:11:09',51,11,1,2),('2020-09-03 12:11:09',52,11,1,0),('2020-09-03 12:11:09',53,11,1,20),('2020-09-03 12:11:09',54,11,1,4),('2020-09-03 12:11:09',57,11,1,6),('2020-09-03 12:11:09',58,11,1,1),('2020-09-03 12:11:09',59,11,1,1),('2020-09-03 12:11:09',60,11,1,1),('2020-09-03 12:11:09',61,11,1,0),('2020-09-03 12:11:09',62,11,1,0),('2020-09-03 12:11:09',99,11,1,2),('2020-09-03 12:11:09',6770,11,1,1),('2020-09-03 12:24:23',63,11,2,76),('2020-09-03 12:24:23',75,11,1,16),('2020-09-03 12:24:23',1,11,1,2),('2020-09-03 12:24:23',4,11,1,0),('2020-09-03 12:24:23',5,11,2,1),('2020-09-03 12:24:23',36,11,1,12),('2020-09-03 12:24:23',43,11,1,14),('2020-09-03 12:24:23',44,11,1,1),('2020-09-03 12:24:23',46,11,1,4),('2020-09-03 12:24:23',47,11,1,3),('2020-09-03 12:24:23',48,11,1,3),('2020-09-03 12:24:23',49,11,1,2),('2020-09-03 12:24:23',50,11,1,159),('2020-09-03 12:24:23',51,11,1,91),('2020-09-03 12:24:23',52,11,1,2),('2020-09-03 12:24:23',53,11,1,10),('2020-09-03 12:24:23',54,11,1,1),('2020-09-03 12:24:23',57,11,1,3),('2020-09-03 12:24:23',58,11,1,0),('2020-09-03 12:24:23',59,11,1,3),('2020-09-03 12:24:23',60,11,1,1),('2020-09-03 12:24:23',61,11,1,1),('2020-09-03 12:24:23',62,11,1,0),('2020-09-03 12:24:23',99,11,1,12),('2020-09-03 12:24:23',6770,11,1,8),('2020-09-03 12:53:29',20036,0,1,19),('2020-09-03 12:53:29',20050,0,1,8),('2020-09-03 12:53:29',20073,0,40,25),('2020-09-03 12:53:29',20167,0,1,37),('2020-09-03 12:53:29',20186,0,1,2),('2020-09-03 12:53:29',20187,0,1,1),('2020-09-03 12:53:29',20204,0,29,0),('2020-09-03 12:53:29',20228,0,1,2),('2020-09-03 12:53:29',20244,0,1,27),('2020-09-03 12:53:29',20293,0,1,1),('2020-09-03 12:53:29',20300,0,15,9),('2020-09-03 12:53:31',20105,0,30,30),('2020-09-03 12:53:31',20262,0,29,34),('2020-09-03 12:53:31',20267,0,1,0),('2020-09-03 12:53:31',20268,0,1,4),('2020-09-03 12:53:31',20269,0,1,22),('2020-09-03 12:53:31',20270,0,1,17),('2020-09-03 12:53:33',20036,0,1,3),('2020-09-03 12:53:33',20096,0,1,40),('2020-09-03 12:54:23',63,11,7,9),('2020-09-03 12:54:23',67,11,3,49),('2020-09-03 12:54:23',70,11,1,0),('2020-09-03 12:54:23',75,11,26,4),('2020-09-03 12:54:23',98,11,3,7),('2020-09-03 12:54:23',6596,11,1,8),('2020-09-03 12:54:23',6671,11,2,8),('2020-09-03 12:54:23',6702,11,19,9),('2020-09-03 12:54:23',6703,11,19,18),('2020-09-03 12:54:23',6731,11,1,1),('2020-09-03 12:54:23',11630,11,2,35),('2020-09-03 12:54:23',64,11,1,1),('2020-09-03 12:54:23',65,11,1,5),('2020-09-03 12:54:23',72,11,20,5),('2020-09-03 12:54:23',73,11,20,5),('2020-09-03 12:54:23',74,11,20,4),('2020-09-03 12:54:23',97,11,59,74),('2020-09-03 12:54:23',6570,11,1,23),('2020-09-03 12:54:23',6571,11,1,2),('2020-09-03 12:54:23',6572,11,1,1),('2020-09-03 12:54:23',6573,11,1,1),('2020-09-03 12:54:23',6574,11,1,1),('2020-09-03 12:54:23',6575,11,1,1),('2020-09-03 12:54:23',6576,11,1,2),('2020-09-03 12:54:23',6577,11,1,1),('2020-09-03 12:54:23',6579,11,1,1),('2020-09-03 12:54:23',6581,11,1,0),('2020-09-03 12:54:23',6582,11,1,1),('2020-09-03 12:54:23',6583,11,1,4),('2020-09-03 12:54:23',6584,11,1,1),('2020-09-03 12:54:23',6585,11,1,1),('2020-09-03 12:54:23',6586,11,1,1),('2020-09-03 12:54:23',6587,11,1,4),('2020-09-03 12:54:23',6589,11,1,1),('2020-09-03 12:54:23',6591,11,1,7),('2020-09-03 12:54:23',6593,11,1,15),('2020-09-03 12:54:23',6595,11,1,0),('2020-09-03 12:54:23',6617,11,1,17),('2020-09-03 12:54:23',6618,11,1,2),('2020-09-03 12:54:23',6619,11,1,2),('2020-09-03 12:54:23',6620,11,1,2),('2020-09-03 12:54:23',6622,11,1,2),('2020-09-03 12:54:23',6623,11,1,1),('2020-09-03 12:54:23',6624,11,1,0),('2020-09-03 12:54:23',6625,11,1,1),('2020-09-03 12:54:23',6626,11,1,2),('2020-09-03 12:54:23',6627,11,1,0),('2020-09-03 12:54:23',6628,11,1,1),('2020-09-03 12:54:23',6630,11,1,1),('2020-09-03 12:54:23',6631,11,1,0),('2020-09-03 12:54:23',6632,11,1,0),('2020-09-03 12:54:23',6633,11,1,1),('2020-09-03 12:54:23',6634,11,1,0),('2020-09-03 12:54:23',6635,11,1,0),('2020-09-03 12:54:23',6636,11,1,0),('2020-09-03 12:54:23',6637,11,1,1),('2020-09-03 12:54:23',6638,11,1,1),('2020-09-03 12:54:23',6640,11,1,0),('2020-09-03 12:54:23',6642,11,1,0),('2020-09-03 12:54:23',6643,11,1,0),('2020-09-03 12:54:23',6644,11,1,1),('2020-09-03 12:54:23',6645,11,1,1),('2020-09-03 12:54:23',6646,11,1,1),('2020-09-03 12:54:23',6647,11,1,0),('2020-09-03 12:54:23',6648,11,1,0),('2020-09-03 12:54:23',6649,11,1,24),('2020-09-03 12:54:23',6650,11,1,8),('2020-09-03 12:54:23',6651,11,1,1),('2020-09-03 12:54:23',6652,11,1,3),('2020-09-03 12:54:23',6653,11,1,1),('2020-09-03 12:54:23',6654,11,2,1),('2020-09-03 12:54:23',6655,11,1,0),('2020-09-03 12:54:23',6658,11,1,0),('2020-09-03 12:54:23',6661,11,1,3),('2020-09-03 12:54:23',6662,11,1,0),('2020-09-03 12:54:23',6663,11,1,2),('2020-09-03 12:54:23',6667,11,1,1),('2020-09-03 12:54:23',6668,11,1,0),('2020-09-03 12:54:23',6669,11,2,6),('2020-09-03 12:54:23',6673,11,1,0),('2020-09-03 12:54:23',6674,11,1,1),('2020-09-03 12:54:23',6675,11,1,37),('2020-09-03 12:54:23',6676,11,1,0),('2020-09-03 12:54:23',6677,11,1,1),('2020-09-03 12:54:23',6678,11,1,0),('2020-09-03 12:54:23',6679,11,1,0),('2020-09-03 12:54:23',6682,11,1,1),('2020-09-03 12:54:23',6683,11,1,9),('2020-09-03 12:54:23',6685,11,1,1),('2020-09-03 12:54:23',6686,11,1,1),('2020-09-03 12:54:23',6688,11,1,0),('2020-09-03 12:54:23',6692,11,1,0),('2020-09-03 12:54:23',6694,11,1,1),('2020-09-03 12:54:23',6698,11,1,1),('2020-09-03 12:54:23',6700,11,1,1),('2020-09-03 12:54:23',6701,11,1,0),('2020-09-03 12:54:23',6724,11,1,88),('2020-09-03 12:54:23',6725,11,1,83),('2020-09-03 12:54:23',6726,11,1,4),('2020-09-03 12:54:23',6727,11,1,0),('2020-09-03 12:54:23',6728,11,1,1),('2020-09-03 12:54:23',6809,11,1,2),('2020-09-03 12:54:23',6837,11,1,2),('2020-09-03 12:54:23',6908,11,1,0),('2020-09-03 12:54:23',7160,11,1,17),('2020-09-03 12:54:23',7176,11,1,0),('2020-09-03 12:54:23',9820,11,1,0),('2020-09-03 12:54:23',11614,11,1,1),('2020-09-03 13:07:26',63,11,1,2),('2020-09-03 13:07:26',75,11,1,1),('2020-09-03 13:07:26',1,11,1,1),('2020-09-03 13:07:26',4,11,1,0),('2020-09-03 13:07:26',5,11,2,0),('2020-09-03 13:07:26',36,11,1,1),('2020-09-03 13:07:26',43,11,1,2),('2020-09-03 13:07:26',44,11,1,0),('2020-09-03 13:07:26',46,11,1,1),('2020-09-03 13:07:26',47,11,1,1),('2020-09-03 13:07:26',48,11,1,1),('2020-09-03 13:07:26',49,11,1,2),('2020-09-03 13:07:26',50,11,1,5),('2020-09-03 13:07:26',51,11,1,1),('2020-09-03 13:07:26',52,11,1,0),('2020-09-03 13:07:26',53,11,1,0),('2020-09-03 13:07:26',54,11,1,4),('2020-09-03 13:07:26',57,11,1,0),('2020-09-03 13:07:26',58,11,1,0),('2020-09-03 13:07:26',59,11,1,0),('2020-09-03 13:07:26',60,11,1,0),('2020-09-03 13:07:26',61,11,1,0),('2020-09-03 13:07:26',62,11,1,0),('2020-09-03 13:07:26',99,11,1,0),('2020-09-03 13:07:26',6770,11,1,0),('2020-09-03 13:24:29',20012,0,11,3),('2020-09-03 13:24:29',20036,0,1,1),('2020-09-03 13:24:29',20050,0,1,0),('2020-09-03 13:24:29',20186,0,1,1),('2020-09-03 13:24:29',20187,0,1,0),('2020-09-03 13:24:29',20204,0,31,0),('2020-09-03 13:24:29',20300,0,15,4),('2020-09-03 13:24:31',20012,0,6,2),('2020-09-03 13:24:31',20088,0,4,15),('2020-09-03 13:24:31',20089,0,4,0),('2020-09-03 13:24:31',20105,0,31,12),('2020-09-03 13:24:31',20114,0,2,2),('2020-09-03 13:24:31',20189,0,1,1),('2020-09-03 13:24:31',20262,0,31,24),('2020-09-03 13:24:33',20012,0,2,2),('2020-09-03 13:24:33',20036,0,1,1),('2020-09-03 13:27:35',63,11,1,1),('2020-09-03 13:27:35',75,11,1,1),('2020-09-03 13:27:35',1,11,1,2),('2020-09-03 13:27:35',4,11,1,0),('2020-09-03 13:27:35',5,11,2,1),('2020-09-03 13:27:35',36,11,1,1),('2020-09-03 13:27:35',43,11,1,1),('2020-09-03 13:27:35',44,11,1,1),('2020-09-03 13:27:35',46,11,1,1),('2020-09-03 13:27:35',47,11,1,2),('2020-09-03 13:27:35',48,11,1,1),('2020-09-03 13:27:35',49,11,1,2),('2020-09-03 13:27:35',50,11,1,1),('2020-09-03 13:27:35',51,11,1,1),('2020-09-03 13:27:35',52,11,1,1),('2020-09-03 13:27:35',53,11,1,2),('2020-09-03 13:27:35',54,11,1,0),('2020-09-03 13:27:35',57,11,1,0),('2020-09-03 13:27:35',58,11,1,0),('2020-09-03 13:27:35',59,11,1,0),('2020-09-03 13:27:35',60,11,1,0),('2020-09-03 13:27:35',61,11,1,0),('2020-09-03 13:27:35',62,11,1,0),('2020-09-03 13:27:35',99,11,1,0),('2020-09-03 13:27:35',6770,11,1,0),('2020-09-03 13:54:29',20012,0,6,1),('2020-09-03 13:54:29',20036,0,1,1),('2020-09-03 13:54:29',20050,0,1,0),('2020-09-03 13:54:29',20186,0,1,1),('2020-09-03 13:54:29',20187,0,1,0),('2020-09-03 13:54:29',20204,0,30,0),('2020-09-03 13:54:29',20300,0,15,6),('2020-09-03 13:54:31',20012,0,6,1),('2020-09-03 13:54:31',20105,0,30,13),('2020-09-03 13:54:31',20114,0,1,0),('2020-09-03 13:54:31',20262,0,30,26),('2020-09-03 13:54:31',20268,0,1,0),('2020-09-03 13:54:33',20012,0,1,0),('2020-09-03 13:54:33',20036,0,1,0),('2020-09-03 13:58:25',1,11,1,4),('2020-09-03 13:58:25',4,11,1,0),('2020-09-03 13:58:25',5,11,2,1),('2020-09-03 13:58:25',36,11,1,7),('2020-09-03 13:58:25',43,11,1,24),('2020-09-03 13:58:25',44,11,1,2),('2020-09-03 13:58:25',46,11,1,4),('2020-09-03 13:58:25',47,11,1,5),('2020-09-03 13:58:25',48,11,1,3),('2020-09-03 13:58:25',49,11,1,1),('2020-09-03 13:58:25',50,11,1,90),('2020-09-03 13:58:25',51,11,1,4),('2020-09-03 13:58:25',52,11,1,2),('2020-09-03 13:58:25',53,11,1,2),('2020-09-03 13:58:25',54,11,1,0),('2020-09-03 13:58:25',57,11,1,1),('2020-09-03 13:58:25',58,11,1,0),('2020-09-03 13:58:25',59,11,1,3),('2020-09-03 13:58:25',60,11,1,1),('2020-09-03 13:58:25',61,11,1,1),('2020-09-03 13:58:25',62,11,1,0),('2020-09-03 13:58:25',99,11,1,9),('2020-09-03 13:58:25',6770,11,1,26),('2020-09-03 14:27:29',20036,0,1,13),('2020-09-03 14:27:29',20050,0,1,9),('2020-09-03 14:27:29',20073,0,40,9),('2020-09-03 14:27:29',20167,0,1,52),('2020-09-03 14:27:29',20186,0,1,2),('2020-09-03 14:27:29',20187,0,1,1),('2020-09-03 14:27:29',20204,0,29,0),('2020-09-03 14:27:29',20228,0,1,3),('2020-09-03 14:27:29',20244,0,1,22),('2020-09-03 14:27:29',20293,0,1,1),('2020-09-03 14:27:29',20300,0,15,12),('2020-09-03 14:27:31',20105,0,30,22),('2020-09-03 14:27:31',20262,0,29,38),('2020-09-03 14:27:31',20270,0,1,10),('2020-09-03 14:27:33',20036,0,1,2),('2020-09-03 14:27:33',20096,0,1,24),('2020-09-03 14:28:25',63,11,9,25),('2020-09-03 14:28:25',67,11,2,82),('2020-09-03 14:28:25',70,11,1,1),('2020-09-03 14:28:25',75,11,26,4),('2020-09-03 14:28:25',98,11,3,2),('2020-09-03 14:28:25',130,11,70,13),('2020-09-03 14:28:25',6596,11,1,12),('2020-09-03 14:28:25',6671,11,2,11),('2020-09-03 14:28:25',6702,11,21,21),('2020-09-03 14:28:25',6703,11,1,9),('2020-09-03 14:28:25',13654,11,1,0),('2020-09-03 14:28:25',64,11,1,4),('2020-09-03 14:28:25',65,11,1,1),('2020-09-03 14:28:25',72,11,20,3),('2020-09-03 14:28:25',73,11,20,5),('2020-09-03 14:28:25',74,11,20,4),('2020-09-03 14:28:25',97,11,59,73),('2020-09-03 14:28:25',6570,11,1,10),('2020-09-03 14:28:25',6571,11,1,1),('2020-09-03 14:28:25',6572,11,1,1),('2020-09-03 14:28:25',6573,11,1,1),('2020-09-03 14:28:25',6574,11,1,1),('2020-09-03 14:28:25',6575,11,1,1),('2020-09-03 14:28:25',6576,11,1,2),('2020-09-03 14:28:25',6577,11,1,2),('2020-09-03 14:28:25',6579,11,1,0),('2020-09-03 14:28:25',6581,11,1,0),('2020-09-03 14:28:25',6582,11,1,0),('2020-09-03 14:28:25',6583,11,1,3),('2020-09-03 14:28:25',6584,11,1,1),('2020-09-03 14:28:25',6585,11,1,1),('2020-09-03 14:28:25',6586,11,1,1),('2020-09-03 14:28:25',6587,11,1,2),('2020-09-03 14:28:25',6589,11,1,0),('2020-09-03 14:28:25',6591,11,1,38),('2020-09-03 14:28:25',6593,11,1,0),('2020-09-03 14:28:25',6595,11,1,0),('2020-09-03 14:28:25',6615,11,1,1),('2020-09-03 14:28:25',6617,11,1,31),('2020-09-03 14:28:25',6618,11,1,4),('2020-09-03 14:28:25',6619,11,1,3),('2020-09-03 14:28:25',6620,11,1,4),('2020-09-03 14:28:25',6622,11,1,1),('2020-09-03 14:28:25',6623,11,1,0),('2020-09-03 14:28:25',6624,11,1,0),('2020-09-03 14:28:25',6625,11,1,0),('2020-09-03 14:28:25',6626,11,1,1),('2020-09-03 14:28:25',6627,11,1,0),('2020-09-03 14:28:25',6628,11,1,1),('2020-09-03 14:28:25',6630,11,1,0),('2020-09-03 14:28:25',6631,11,1,0),('2020-09-03 14:28:25',6632,11,1,0),('2020-09-03 14:28:25',6633,11,1,1),('2020-09-03 14:28:25',6634,11,1,0),('2020-09-03 14:28:25',6635,11,1,0),('2020-09-03 14:28:25',6636,11,1,0),('2020-09-03 14:28:25',6637,11,1,0),('2020-09-03 14:28:25',6638,11,1,0),('2020-09-03 14:28:25',6640,11,1,0),('2020-09-03 14:28:25',6642,11,1,0),('2020-09-03 14:28:25',6643,11,1,0),('2020-09-03 14:28:25',6644,11,1,0),('2020-09-03 14:28:25',6645,11,1,0),('2020-09-03 14:28:25',6646,11,1,0),('2020-09-03 14:28:25',6647,11,1,1),('2020-09-03 14:28:25',6648,11,1,0),('2020-09-03 14:28:25',6649,11,1,23),('2020-09-03 14:28:25',6650,11,2,16),('2020-09-03 14:28:25',6652,11,2,21),('2020-09-03 14:28:25',6653,11,2,5),('2020-09-03 14:28:25',6654,11,4,1),('2020-09-03 14:28:25',6655,11,2,0),('2020-09-03 14:28:25',6658,11,2,16),('2020-09-03 14:28:25',6661,11,2,1),('2020-09-03 14:28:25',6662,11,2,0),('2020-09-03 14:28:25',6663,11,2,1),('2020-09-03 14:28:25',6667,11,2,2),('2020-09-03 14:28:25',6668,11,2,0),('2020-09-03 14:28:25',6669,11,139,58),('2020-09-03 14:28:25',6674,11,1,6),('2020-09-03 14:28:25',6676,11,2,4),('2020-09-03 14:28:25',6677,11,3,23),('2020-09-03 14:28:25',6678,11,3,3),('2020-09-03 14:28:25',6679,11,2,2),('2020-09-03 14:28:25',6682,11,7,5),('2020-09-03 14:28:25',6683,11,2,1),('2020-09-03 14:28:25',6684,11,1,0),('2020-09-03 14:28:25',6685,11,2,3),('2020-09-03 14:28:25',6686,11,1,0),('2020-09-03 14:28:25',6689,11,1,0),('2020-09-03 14:28:25',6691,11,1,0),('2020-09-03 14:28:25',6692,11,2,3),('2020-09-03 14:28:25',6693,11,1,0),('2020-09-03 14:28:25',6694,11,2,1),('2020-09-03 14:28:25',6696,11,1,1),('2020-09-03 14:28:25',6698,11,3,1),('2020-09-03 14:28:25',6700,11,3,1),('2020-09-03 14:28:25',6701,11,3,0),('2020-09-03 14:28:25',6801,11,1,14),('2020-09-03 14:28:25',6802,11,1,3),('2020-09-03 14:28:25',6809,11,1,3),('2020-09-03 14:28:25',6908,11,1,0),('2020-09-03 14:28:25',7176,11,2,1),('2020-09-03 14:28:25',9820,11,2,1),('2020-09-03 14:58:25',63,11,9,3),('2020-09-03 14:58:25',67,11,1,0),('2020-09-03 14:58:25',75,11,95,12),('2020-09-03 14:58:25',98,11,3,1),('2020-09-03 14:58:25',6671,11,1,0),('2020-09-03 14:58:25',6730,11,1,2),('2020-09-03 14:58:25',6731,11,1,1),('2020-09-03 14:58:25',97,11,60,54),('2020-09-03 14:58:25',6677,11,2,2),('2020-09-03 14:58:25',6678,11,2,1),('2020-09-03 14:58:25',6682,11,2,1),('2020-09-03 14:58:25',6683,11,1,0),('2020-09-03 14:58:25',6685,11,1,0),('2020-09-03 14:58:25',6689,11,1,0),('2020-09-03 14:58:25',6698,11,2,0),('2020-09-03 14:58:25',6700,11,2,0),('2020-09-03 14:58:25',6701,11,2,0),('2020-09-03 14:58:29',20012,0,11,6),('2020-09-03 14:58:29',20186,0,1,0),('2020-09-03 14:58:29',20187,0,1,0),('2020-09-03 14:58:29',20204,0,31,0),('2020-09-03 14:58:29',20300,0,15,5),('2020-09-03 14:58:31',20012,0,3,2),('2020-09-03 14:58:31',20105,0,31,13),('2020-09-03 14:58:31',20114,0,2,2),('2020-09-03 14:58:31',20262,0,31,33),('2020-09-03 14:58:33',20012,0,2,3),('2020-09-03 15:28:25',63,11,9,3),('2020-09-03 15:28:25',67,11,1,0),('2020-09-03 15:28:25',75,11,12,2),('2020-09-03 15:28:25',98,11,3,1),('2020-09-03 15:28:25',6671,11,1,0),('2020-09-03 15:28:25',6702,11,85,51),('2020-09-03 15:28:25',6703,11,8,2),('2020-09-03 15:28:25',7369,11,1,1),('2020-09-03 15:28:25',11630,11,2,0),('2020-09-03 15:28:25',13654,11,4,2),('2020-09-03 15:28:25',97,11,60,64),('2020-09-03 15:28:25',6615,11,2,3),('2020-09-03 15:28:25',6677,11,3,4),('2020-09-03 15:28:25',6678,11,3,2),('2020-09-03 15:28:25',6682,11,3,1),('2020-09-03 15:28:25',6683,11,2,1),('2020-09-03 15:28:25',6684,11,2,3),('2020-09-03 15:28:25',6685,11,2,2),('2020-09-03 15:28:25',6686,11,1,0),('2020-09-03 15:28:25',6689,11,2,2),('2020-09-03 15:28:25',6691,11,2,2),('2020-09-03 15:28:25',6692,11,2,2),('2020-09-03 15:28:25',6694,11,2,2),('2020-09-03 15:28:25',6696,11,2,4),('2020-09-03 15:28:25',6698,11,3,2),('2020-09-03 15:28:25',6700,11,3,1),('2020-09-03 15:28:25',6701,11,3,0),('2020-09-03 15:28:25',7173,11,2,5),('2020-09-03 15:28:25',9820,11,2,1),('2020-09-03 15:28:29',20012,0,4,0),('2020-09-03 15:28:29',20186,0,1,0),('2020-09-03 15:28:29',20187,0,1,0),('2020-09-03 15:28:29',20204,0,30,0),('2020-09-03 15:28:29',20300,0,15,5),('2020-09-03 15:28:31',20012,0,3,0),('2020-09-03 15:28:31',20105,0,30,12),('2020-09-03 15:28:31',20114,0,1,0),('2020-09-03 15:28:31',20164,0,9,3),('2020-09-03 15:28:31',20262,0,30,27),('2020-09-03 15:58:25',63,11,9,3),('2020-09-03 15:58:25',67,11,1,1),('2020-09-03 15:58:25',75,11,21,4),('2020-09-03 15:58:25',98,11,3,1),('2020-09-03 15:58:25',6596,11,2,1),('2020-09-03 15:58:25',6671,11,1,0),('2020-09-03 15:58:25',6702,11,45,26),('2020-09-03 15:58:25',6703,11,1,0),('2020-09-03 15:58:25',6730,11,1,0),('2020-09-03 15:58:25',6731,11,9,1),('2020-09-03 15:58:25',13654,11,2,0),('2020-09-03 15:58:25',97,11,60,60),('2020-09-03 15:58:25',6570,11,2,1),('2020-09-03 15:58:25',6571,11,2,0),('2020-09-03 15:58:25',6572,11,2,0),('2020-09-03 15:58:25',6573,11,2,0),('2020-09-03 15:58:25',6574,11,2,1),('2020-09-03 15:58:25',6575,11,2,1),('2020-09-03 15:58:25',6576,11,2,0),('2020-09-03 15:58:25',6577,11,2,0),('2020-09-03 15:58:25',6578,11,1,0),('2020-09-03 15:58:25',6579,11,2,0),('2020-09-03 15:58:25',6580,11,1,0),('2020-09-03 15:58:25',6581,11,2,0),('2020-09-03 15:58:25',6582,11,2,0),('2020-09-03 15:58:25',6583,11,2,0),('2020-09-03 15:58:25',6584,11,2,0),('2020-09-03 15:58:25',6585,11,2,1),('2020-09-03 15:58:25',6586,11,2,0),('2020-09-03 15:58:25',6587,11,2,4),('2020-09-03 15:58:25',6588,11,1,0),('2020-09-03 15:58:25',6589,11,2,1),('2020-09-03 15:58:25',6590,11,2,1),('2020-09-03 15:58:25',6591,11,2,1),('2020-09-03 15:58:25',6592,11,1,1),('2020-09-03 15:58:25',6593,11,2,0),('2020-09-03 15:58:25',6594,11,1,0),('2020-09-03 15:58:25',6595,11,2,0),('2020-09-03 15:58:25',6597,11,3,2),('2020-09-03 15:58:25',6598,11,2,1),('2020-09-03 15:58:25',6599,11,2,1),('2020-09-03 15:58:25',6602,11,2,0),('2020-09-03 15:58:25',6615,11,1,0),('2020-09-03 15:58:25',6618,11,1,0),('2020-09-03 15:58:25',6619,11,1,1),('2020-09-03 15:58:25',6620,11,1,0),('2020-09-03 15:58:25',6622,11,1,1),('2020-09-03 15:58:25',6623,11,1,0),('2020-09-03 15:58:25',6624,11,1,0),('2020-09-03 15:58:25',6625,11,1,0),('2020-09-03 15:58:25',6626,11,1,0),('2020-09-03 15:58:25',6627,11,1,0),('2020-09-03 15:58:25',6628,11,1,0),('2020-09-03 15:58:25',6630,11,1,1),('2020-09-03 15:58:25',6631,11,1,0),('2020-09-03 15:58:25',6632,11,1,0),('2020-09-03 15:58:25',6633,11,1,0),('2020-09-03 15:58:25',6634,11,1,0),('2020-09-03 15:58:25',6635,11,1,0),('2020-09-03 15:58:25',6636,11,1,0),('2020-09-03 15:58:25',6637,11,1,0),('2020-09-03 15:58:25',6638,11,1,3),('2020-09-03 15:58:25',6640,11,1,0),('2020-09-03 15:58:25',6642,11,1,0),('2020-09-03 15:58:25',6643,11,1,0),('2020-09-03 15:58:25',6644,11,1,0),('2020-09-03 15:58:25',6645,11,1,0),('2020-09-03 15:58:25',6646,11,1,0),('2020-09-03 15:58:25',6647,11,1,0),('2020-09-03 15:58:25',6648,11,1,0),('2020-09-03 15:58:25',6649,11,1,9),('2020-09-03 15:58:25',6650,11,1,0),('2020-09-03 15:58:25',6652,11,1,1),('2020-09-03 15:58:25',6653,11,1,1),('2020-09-03 15:58:25',6654,11,2,1),('2020-09-03 15:58:25',6655,11,1,0),('2020-09-03 15:58:25',6658,11,1,0),('2020-09-03 15:58:25',6661,11,1,0),('2020-09-03 15:58:25',6662,11,1,0),('2020-09-03 15:58:25',6663,11,1,0),('2020-09-03 15:58:25',6667,11,1,0),('2020-09-03 15:58:25',6668,11,1,0),('2020-09-03 15:58:25',6669,11,2,0),('2020-09-03 15:58:25',6673,11,1,6),('2020-09-03 15:58:25',6674,11,1,3),('2020-09-03 15:58:25',6675,11,2,3),('2020-09-03 15:58:25',6676,11,1,1),('2020-09-03 15:58:25',6677,11,3,4),('2020-09-03 15:58:25',6678,11,3,2),('2020-09-03 15:58:25',6679,11,1,1),('2020-09-03 15:58:25',6682,11,6,3),('2020-09-03 15:58:25',6683,11,1,1),('2020-09-03 15:58:25',6684,11,1,0),('2020-09-03 15:58:25',6685,11,1,1),('2020-09-03 15:58:25',6688,11,1,0),('2020-09-03 15:58:25',6689,11,1,1),('2020-09-03 15:58:25',6691,11,1,1),('2020-09-03 15:58:25',6692,11,1,0),('2020-09-03 15:58:25',6693,11,1,0),('2020-09-03 15:58:25',6694,11,1,1),('2020-09-03 15:58:25',6696,11,1,1),('2020-09-03 15:58:25',6698,11,3,1),('2020-09-03 15:58:25',6700,11,3,2),('2020-09-03 15:58:25',6701,11,3,0),('2020-09-03 15:58:25',6724,11,2,15),('2020-09-03 15:58:25',6725,11,2,3),('2020-09-03 15:58:25',6726,11,1,1),('2020-09-03 15:58:25',6727,11,1,0),('2020-09-03 15:58:25',6728,11,1,0),('2020-09-03 15:58:25',6729,11,1,0),('2020-09-03 15:58:25',6767,11,1,1),('2020-09-03 15:58:25',6768,11,1,2),('2020-09-03 15:58:25',6809,11,1,0),('2020-09-03 15:58:25',7104,11,2,1),('2020-09-03 15:58:25',7160,11,1,0),('2020-09-03 15:58:25',7173,11,1,1),('2020-09-03 15:58:25',7176,11,1,0),('2020-09-03 15:58:25',9062,11,1,1),('2020-09-03 15:58:25',9820,11,2,0),('2020-09-03 15:59:29',20012,0,4,0),('2020-09-03 15:59:29',20036,0,1,2),('2020-09-03 15:59:29',20050,0,1,3),('2020-09-03 15:59:29',20186,0,1,0),('2020-09-03 15:59:29',20187,0,1,0),('2020-09-03 15:59:29',20204,0,31,0),('2020-09-03 15:59:29',20300,0,16,5),('2020-09-03 15:59:31',20012,0,4,1),('2020-09-03 15:59:31',20088,0,4,1),('2020-09-03 15:59:31',20089,0,4,1),('2020-09-03 15:59:31',20105,0,31,13),('2020-09-03 15:59:31',20114,0,1,0),('2020-09-03 15:59:31',20189,0,1,0),('2020-09-03 15:59:31',20262,0,31,24),('2020-09-03 15:59:31',20267,0,2,0),('2020-09-03 15:59:31',20268,0,2,11),('2020-09-03 15:59:31',20270,0,1,4),('2020-09-03 15:59:33',20036,0,1,5),('2020-09-03 16:28:25',63,11,9,2),('2020-09-03 16:28:25',67,11,1,0),('2020-09-03 16:28:25',75,11,110,15),('2020-09-03 16:28:25',98,11,3,1),('2020-09-03 16:28:25',6731,11,1,0),('2020-09-03 16:28:25',6769,11,1,0),('2020-09-03 16:28:25',7369,11,1,1),('2020-09-03 16:28:25',97,11,60,60),('2020-09-03 16:28:25',6673,11,1,0),('2020-09-03 16:28:25',6674,11,1,0),('2020-09-03 16:28:25',6675,11,3,2),('2020-09-03 16:28:25',6677,11,1,0),('2020-09-03 16:28:25',6678,11,1,0),('2020-09-03 16:28:25',6682,11,1,0),('2020-09-03 16:28:25',6698,11,1,0),('2020-09-03 16:28:25',6700,11,1,0),('2020-09-03 16:28:25',6701,11,1,0),('2020-09-03 16:28:25',6724,11,3,1),('2020-09-03 16:28:25',6725,11,3,1),('2020-09-03 16:28:25',6727,11,1,0),('2020-09-03 16:28:25',6728,11,1,0),('2020-09-03 16:28:25',6729,11,3,1),('2020-09-03 16:28:25',6767,11,1,0),('2020-09-03 16:28:25',6768,11,1,0),('2020-09-03 16:29:29',20012,0,6,1),('2020-09-03 16:29:29',20186,0,1,0),('2020-09-03 16:29:29',20187,0,1,0),('2020-09-03 16:29:29',20204,0,30,0),('2020-09-03 16:29:29',20300,0,15,5),('2020-09-03 16:29:31',20012,0,9,1),('2020-09-03 16:29:31',20105,0,30,14),('2020-09-03 16:29:31',20114,0,1,0),('2020-09-03 16:29:31',20189,0,1,0),('2020-09-03 16:29:31',20210,0,11,4),('2020-09-03 16:29:31',20262,0,30,29),('2020-09-03 16:29:33',20012,0,1,2),('2020-09-03 17:44:14',20036,0,1,9),('2020-09-03 17:44:14',20073,0,40,15),('2020-09-03 17:44:14',20167,0,1,25),('2020-09-03 17:44:14',20186,0,1,13),('2020-09-03 17:44:14',20187,0,1,2),('2020-09-03 17:44:14',20204,0,29,0),('2020-09-03 17:44:14',20228,0,1,13),('2020-09-03 17:44:14',20244,0,1,14),('2020-09-03 17:44:14',20293,0,1,2),('2020-09-03 17:44:14',20300,0,14,12),('2020-09-03 17:44:16',20105,0,30,34),('2020-09-03 17:44:16',20262,0,29,79),('2020-09-03 17:44:18',20036,0,2,22),('2020-09-03 17:44:18',20096,0,1,32),('2020-09-03 22:17:33',20036,0,1,18),('2020-09-03 22:17:33',20073,0,40,30),('2020-09-03 22:17:33',20167,0,1,170),('2020-09-03 22:17:33',20186,0,1,7),('2020-09-03 22:17:33',20187,0,1,5),('2020-09-03 22:17:33',20204,0,29,0),('2020-09-03 22:17:33',20228,0,1,20),('2020-09-03 22:17:33',20244,0,1,30),('2020-09-03 22:17:33',20293,0,1,12),('2020-09-03 22:17:33',20300,0,15,6),('2020-09-03 22:17:35',20105,0,30,102),('2020-09-03 22:17:35',20262,0,29,60),('2020-09-03 22:17:37',20036,0,1,25),('2020-09-03 22:17:37',20096,0,1,164),('2020-09-03 23:04:14',20036,0,1,2),('2020-09-03 23:04:14',20073,0,40,14),('2020-09-03 23:04:14',20167,0,1,279),('2020-09-03 23:04:14',20186,0,1,6),('2020-09-03 23:04:14',20187,0,1,2),('2020-09-03 23:04:14',20204,0,29,0),('2020-09-03 23:04:14',20228,0,1,29),('2020-09-03 23:04:14',20244,0,1,11),('2020-09-03 23:04:14',20293,0,1,7),('2020-09-03 23:04:14',20300,0,14,9),('2020-09-03 23:04:16',20105,0,30,51),('2020-09-03 23:04:16',20262,0,29,55),('2020-09-03 23:04:18',20036,0,1,16),('2020-09-03 23:04:18',20096,0,1,251);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_query_stat_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `q_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_no` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `response_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`sdate`,`occ_time`,`q_id`),
  KEY `idx_q_id` (`q_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_random_option` (
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `unseal_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `unseal_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `regen_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `regen_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `change_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `change_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pick_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`,`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_random_option` VALUES (20,'2020-09-03',0,0,0,0,0,0,300,0),(30,'2020-09-03',0,0,0,0,0,0,55,0),(40,'2020-09-03',0,0,0,0,0,0,119,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_response_time_201604` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `packet_id` int(10) unsigned NOT NULL DEFAULT '0',
  `packet_count` int(10) unsigned NOT NULL DEFAULT '0',
  `total_response_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `avg_response_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`channel_no`,`packet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_secret_shop` (
  `npc_idx` tinyint(4) NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `dungeon_idx` int(11) NOT NULL DEFAULT '0',
  `show_count` int(10) unsigned NOT NULL DEFAULT '0',
  `show_charac_count` int(10) unsigned NOT NULL DEFAULT '0',
  `buy_count` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc_idx`,`occ_date`,`dungeon_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_secret_shop` VALUES (1,'2020-09-03',14,1,1,0,0),(1,'2020-09-03',15,1,1,0,0),(1,'2020-09-03',17,2,2,0,0),(1,'2020-09-03',21,1,1,0,0),(1,'2020-09-03',22,2,2,0,0),(1,'2020-09-03',23,1,1,0,0),(1,'2020-09-03',24,2,2,0,0),(1,'2020-09-03',25,2,2,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_server_optimize_stat` (
  `channel_no` smallint(5) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_count` int(10) unsigned NOT NULL DEFAULT '0',
  `sp_less_5` int(10) unsigned NOT NULL DEFAULT '0',
  `sp_less_10` int(10) unsigned NOT NULL DEFAULT '0',
  `sp_less_30` int(10) unsigned NOT NULL DEFAULT '0',
  `sp_less_50` int(10) unsigned NOT NULL DEFAULT '0',
  `sp_less_100` int(10) unsigned NOT NULL DEFAULT '0',
  `sp_more_100` int(10) unsigned NOT NULL DEFAULT '0',
  `result` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_no`,`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_tower_despair_uv_stat` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `server_id` tinyint(3) NOT NULL DEFAULT '0',
  `uv` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_tower_despair_uv_stat` VALUES ('2020-09-03',1,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_upgrade_pot` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `id_2670203` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670204` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670205` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670206` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670241` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670242` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670243` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670244` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670245` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670246` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670247` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670248` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670249` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670250` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670251` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670252` int(10) unsigned NOT NULL DEFAULT '0',
  `id_2670253` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_value_stat` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `level` int(11) NOT NULL DEFAULT '0',
  `uv` int(10) unsigned NOT NULL DEFAULT '0',
  `drop_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `drop_item` int(10) unsigned NOT NULL DEFAULT '0',
  `result_card_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `result_card_item` int(10) unsigned NOT NULL DEFAULT '0',
  `store_item_buy` int(10) unsigned NOT NULL DEFAULT '0',
  `jar_item` int(10) unsigned NOT NULL DEFAULT '0',
  `disjoint_create` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_faild_forced_disjoint` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_reward` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_store_item_buy` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_upgrade_attempt` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_upgrade_faild` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_stamina_recovery` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_quest_consume` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_auction_commision` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_item_disjoint` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_item_repair` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_item_use` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_item_drop` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_gold_drop` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_card_item` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_gold_card_price` int(10) unsigned NOT NULL DEFAULT '0',
  `deathtower_card_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `deathtower_card_item` int(10) unsigned NOT NULL DEFAULT '0',
  `consume_qp_init` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_no`,`occ_time`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_value_stat` VALUES (1,'2020-09-03 16:36:42',7,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(1,'2020-09-03 16:36:42',26,0,4129,12414,1894,5760,0,13680,2662,0,0,0,0,0,0,0,0,15452,0,0,0,0,2880,2980,0,0,0),(1,'2020-09-03 16:36:42',27,0,37270,90533,27095,32148,0,0,13314,0,12766,0,0,0,0,0,0,62624,0,0,0,0,14596,17880,0,0,0),(1,'2020-09-03 16:36:42',28,0,45905,88189,32298,25812,0,0,8448,0,15393,0,0,0,0,0,0,51588,0,0,0,0,14884,16100,0,0,0),(1,'2020-09-03 16:36:42',29,0,40796,60819,30090,35712,0,0,9818,0,23837,0,0,0,0,0,0,51900,0,0,0,0,20448,23260,0,0,0),(1,'2020-09-03 16:36:42',30,0,72100,135328,53362,47432,0,0,16358,0,23534,0,0,0,0,0,0,76076,0,0,0,0,28132,34360,0,0,0),(1,'2020-09-03 16:36:42',31,0,98346,174919,84022,66752,0,0,20740,0,9101,0,0,0,0,0,0,95928,0,0,0,0,36628,36760,0,0,0),(1,'2020-09-03 16:36:42',32,0,108615,169132,90524,84624,0,0,22390,0,19656,0,0,0,0,0,0,102460,0,0,0,0,46224,41180,0,0,0),(1,'2020-09-03 16:36:42',33,0,121901,159903,98730,62136,0,0,15990,0,18183,0,0,0,0,0,0,80620,0,0,0,0,28828,38920,0,0,0),(1,'2020-09-03 16:36:42',34,0,156951,223798,128932,88056,0,0,25562,0,31086,0,0,0,0,0,0,163344,0,0,0,0,45720,47520,0,0,0),(1,'2020-09-03 16:36:42',35,0,90282,121860,78395,50904,4200,600,19338,0,42664,21000,0,0,0,0,0,88265,268,0,0,0,28488,32600,0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_war_stat` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `war_zone_cnt` int(11) NOT NULL DEFAULT '0',
  `peace_zone_cnt` int(11) NOT NULL DEFAULT '0',
  `rare_item_cnt` int(11) NOT NULL DEFAULT '0',
  `unique_item_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`channel_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_account` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_channel_no` int(11) NOT NULL DEFAULT '0',
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_view_log` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`occ_time`,`m_id`),
  KEY `idx_charac_m_id` (`charac_m_id`) USING BTREE,
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mage_grow_log` (
  `grow_type1` int(11) NOT NULL DEFAULT '0',
  `grow_type2` int(11) NOT NULL DEFAULT '0',
  `grow_type3` int(11) NOT NULL DEFAULT '0',
  `grow_type4` int(11) NOT NULL DEFAULT '0',
  `grow_type5` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_environment` (
  `os_type` int(11) NOT NULL DEFAULT '0',
  `hard_wholesize` int(10) unsigned NOT NULL DEFAULT '0',
  `hard_remainsize` int(10) unsigned NOT NULL DEFAULT '0',
  `memory_wholesize` int(10) unsigned NOT NULL DEFAULT '0',
  `memory_remainsize` int(10) unsigned NOT NULL DEFAULT '0',
  `virtualmem_wholesize` int(10) unsigned NOT NULL DEFAULT '0',
  `virtualmem_remainsize` int(10) unsigned NOT NULL DEFAULT '0',
  `cpu_speed` int(11) NOT NULL DEFAULT '0',
  `cpu_count` int(11) NOT NULL DEFAULT '0',
  `cpu_vendor` varchar(20) NOT NULL DEFAULT '',
  `graphic_name` varchar(128) NOT NULL DEFAULT '',
  `graphic_memory` int(10) unsigned NOT NULL DEFAULT '0',
  `average_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_environment_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`),
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_status` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `room_number` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `play_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `no_participants` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`room_number`,`play_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_stamina_shusia` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  `occ_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`lev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `re_stamina_shusia` VALUES ('2015-07-23',34,1),('2015-07-23',70,1),('2015-07-23',37,1),('2015-07-24',36,1),('2015-07-24',40,1),('2015-07-24',70,1),('2015-07-24',60,1),('2015-07-24',68,1),('2015-07-24',69,1),('2015-07-24',22,1),('2015-07-24',21,1),('2015-07-24',50,1),('2015-07-24',44,3),('2015-07-24',46,3),('2015-07-24',26,1),('2015-07-25',70,2),('2015-07-25',26,1),('2015-07-25',64,1),('2015-07-25',22,1),('2015-07-25',49,1),('2015-07-25',50,1),('2015-07-25',25,1),('2015-07-25',38,1),('2015-07-25',59,1),('2015-07-25',60,1),('2015-07-25',62,1),('2015-07-25',58,1),('2015-07-25',31,1),('2015-07-25',35,1),('2015-07-25',41,1),('2015-07-25',43,1),('2015-07-25',44,1),('2015-07-26',70,1),('2015-07-26',65,1),('2015-07-26',60,1),('2015-07-26',50,1),('2015-07-26',66,1),('2015-07-26',67,1),('2015-07-26',30,1),('2015-07-26',26,1),('2015-07-26',27,1),('2015-07-26',64,1),('2015-07-26',31,1),('2015-07-26',69,1),('2015-07-26',35,2),('2015-07-26',44,1),('2015-07-26',63,1),('2015-07-26',38,1),('2015-07-26',62,1),('2015-07-26',20,1),('2015-07-26',25,1),('2015-07-26',41,1),('2015-07-26',47,1),('2015-07-26',48,2),('2015-07-26',61,1),('2015-07-26',51,1),('2015-07-26',43,1),('2015-07-27',30,1),('2015-07-27',35,1),('2015-07-27',49,1),('2015-07-27',51,1),('2015-07-27',66,1),('2015-07-27',70,2),('2015-07-27',27,2),('2015-07-27',42,1),('2015-07-27',26,1),('2015-07-27',46,1),('2015-07-27',53,2),('2015-07-27',55,1),('2015-07-27',25,2),('2015-07-27',22,1),('2015-07-27',33,1),('2015-07-27',58,1),('2015-07-27',69,1),('2015-07-27',60,1),('2015-07-27',61,3),('2015-07-27',62,5),('2015-07-27',67,1),('2015-07-27',18,1),('2015-07-27',21,1),('2015-07-27',45,2),('2015-07-27',41,2),('2015-07-27',43,1),('2015-07-27',29,1),('2015-07-27',31,1),('2016-04-09',85,2),('2016-04-17',19,1),('2016-04-17',25,1),('2016-04-17',26,2),('2016-04-17',28,1),('2016-04-17',29,1),('2016-04-17',31,1),('2016-04-18',26,1),('2016-04-18',27,1),('2016-04-18',30,1),('2016-04-18',31,1),('2016-04-18',33,1),('2016-04-18',23,1),('2016-04-18',32,1),('2016-04-18',19,1),('2016-04-18',18,1),('2016-04-18',40,1),('2016-04-18',24,1),('2016-04-18',25,1),('2016-04-19',31,1),('2016-04-19',29,3),('2016-04-19',30,1),('2016-04-19',35,1),('2016-04-19',40,1),('2016-04-19',41,1),('2016-04-19',42,1),('2016-04-19',19,1),('2016-04-19',32,2),('2016-04-19',39,1),('2016-04-19',22,1),('2016-04-19',34,1),('2016-04-19',18,1),('2016-04-19',37,1),('2016-04-19',33,1),('2016-04-20',28,2),('2016-04-20',30,6),('2016-04-20',32,1),('2016-04-20',33,1),('2016-04-20',37,1),('2016-04-20',38,1),('2016-04-20',39,1),('2016-04-20',46,1),('2016-04-20',40,1),('2016-04-20',42,1),('2016-04-20',19,1),('2016-04-20',36,1),('2016-04-20',18,1),('2016-04-21',35,1),('2016-04-21',41,1),('2016-04-21',37,1),('2016-04-21',56,1),('2016-04-21',38,1),('2016-04-21',39,2),('2016-04-21',32,1),('2016-04-21',29,1),('2016-04-21',30,1),('2016-04-21',40,1),('2016-04-21',19,1),('2016-04-21',31,1),('2016-04-21',33,1),('2016-04-21',34,2),('2016-04-21',50,1),('2016-04-22',35,1),('2016-04-22',34,1),('2016-04-22',36,1),('2016-04-22',18,1),('2016-04-22',37,1),('2016-04-22',51,1),('2016-04-22',62,1),('2016-04-22',25,1),('2016-04-23',40,1),('2016-04-23',46,1),('2016-04-23',33,1),('2016-04-23',39,1),('2016-04-23',45,2),('2016-04-23',42,1),('2016-04-23',37,1),('2016-04-23',43,1),('2016-04-23',58,1),('2016-04-23',47,1),('2016-04-23',48,1),('2016-04-24',42,1),('2016-04-24',58,1),('2016-04-24',47,1),('2016-04-24',59,1),('2016-04-24',54,1),('2016-04-24',45,1),('2016-04-24',56,2),('2016-04-24',33,1),('2016-04-24',34,1),('2016-04-24',38,1),('2016-04-24',62,1),('2016-04-24',68,1),('2016-04-24',63,2),('2016-04-24',69,1),('2016-04-24',55,1),('2016-04-24',48,1),('2016-04-24',49,1),('2016-04-24',39,1),('2016-04-25',34,1),('2016-04-25',65,1),('2016-04-25',55,1),('2016-04-25',37,1),('2016-04-25',45,1),('2016-04-25',51,1),('2016-04-25',25,1),('2016-04-25',57,1),('2016-04-25',38,2),('2016-04-25',66,1),('2016-04-25',58,1),('2016-04-25',59,1),('2016-04-25',35,1),('2016-04-25',43,2),('2016-04-25',67,1),('2016-04-26',61,2),('2016-04-26',18,1),('2016-04-26',55,1),('2016-04-26',28,1),('2016-04-26',38,1),('2016-04-26',24,1),('2016-04-26',29,1),('2016-04-26',68,1),('2016-04-26',30,1),('2016-04-26',31,1),('2016-04-26',32,2),('2016-04-26',69,1),('2016-04-26',47,2),('2016-04-26',48,1),('2016-04-26',63,1),('2016-04-26',50,2),('2016-04-27',57,1),('2016-04-27',35,1),('2016-04-27',52,1),('2016-04-27',33,1),('2016-04-27',53,1),('2016-04-27',55,6),('2016-04-27',56,3),('2016-04-28',63,2),('2016-04-28',64,1),('2016-04-28',23,1),('2016-04-28',24,1),('2016-04-28',57,1),('2016-04-28',26,1),('2016-04-28',45,1),('2016-04-28',35,1),('2016-04-28',27,1),('2016-04-28',48,1),('2016-04-28',59,1),('2016-04-28',18,1),('2016-04-28',25,1),('2016-04-29',65,1),('2016-04-29',50,1),('2016-04-29',66,1),('2016-04-29',58,1),('2016-04-29',56,1),('2016-04-29',46,1),('2016-04-29',51,1),('2016-04-29',26,1),('2016-04-29',61,1),('2016-04-29',62,1),('2016-04-29',36,1),('2016-04-29',64,1),('2016-04-29',29,1),('2016-04-30',66,2),('2016-04-30',33,1),('2016-04-30',48,1),('2016-04-30',51,1),('2016-04-30',69,4),('2016-04-30',35,2),('2016-04-30',81,1),('2016-04-30',36,1),('2016-04-30',27,1),('2016-04-30',62,2),('2016-04-30',34,1),('2016-04-30',68,1),('2016-04-30',40,1),('2016-04-30',38,1),('2016-04-30',42,1),('2016-05-01',59,2),('2016-05-01',29,1),('2016-05-01',81,1),('2016-05-01',18,1),('2016-05-01',70,1),('2016-05-01',39,1),('2016-05-01',82,1),('2016-05-01',19,1),('2016-05-01',57,1),('2016-05-01',68,1),('2016-05-01',71,2),('2016-05-01',38,2),('2016-05-01',74,4),('2016-05-01',75,1),('2016-05-01',36,1),('2016-05-01',78,7),('2016-05-01',41,1),('2016-05-01',79,3),('2016-05-01',31,1),('2016-05-02',24,2),('2016-05-02',26,1),('2016-05-02',40,1),('2016-05-02',61,1),('2016-05-02',34,1),('2016-05-02',31,1),('2016-05-02',32,1),('2016-05-02',33,1),('2016-05-02',41,1),('2016-05-02',25,1),('2016-05-02',68,1),('2016-05-02',43,1),('2016-05-02',19,1),('2016-05-02',48,2),('2016-05-02',29,1),('2016-05-02',38,2),('2016-05-02',79,1),('2016-05-02',55,1),('2016-05-02',66,1),('2016-05-02',81,5),('2016-05-02',82,1),('2016-05-03',43,2),('2016-05-03',44,2),('2016-05-03',53,1),('2016-05-03',45,2),('2016-05-03',46,7),('2016-05-03',61,1),('2016-05-03',68,1),('2016-05-03',31,1),('2016-05-03',83,1),('2016-05-03',34,1),('2016-05-03',48,1),('2016-05-03',67,2),('2016-05-03',81,2),('2016-05-03',32,1),('2016-05-03',50,1),('2016-05-04',64,1),('2016-05-04',70,1),('2016-05-04',83,3),('2016-05-04',85,2),('2016-05-05',85,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reliable_member_log` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`occ_date`,`m_id`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_gold_daily` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_gold_rank` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`m_id`),
  KEY `idx_gold` (`gold`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
