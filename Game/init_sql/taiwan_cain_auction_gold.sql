
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_cain_auction_gold` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_cain_auction_gold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_average_price` (
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `average_price` int(11) DEFAULT NULL,
  `seperate_upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`,`upgrade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `auction_average_price` VALUES (1090,0,5000000,0),(3027,0,2000,0),(3033,0,999,0),(3034,0,1300,0),(3035,0,1300,0),(3036,0,999,0),(3037,0,233,0),(3108,0,3593,0),(3109,0,4444,0),(3112,0,5555,0),(3113,0,1000,0),(3114,0,5312,0),(3115,0,5000,0),(3116,0,2000,0),(3151,0,4000,0),(3170,0,1500,0),(3187,0,122222,0),(3203,0,6666,0),(3205,0,1000,0),(3210,0,50000,0),(3211,0,2510,0),(3212,0,6666,0),(3217,0,5555,0),(3218,0,2333,0),(3227,0,23000000,0),(3230,0,1000,0),(3249,0,6666,0),(3266,0,1000,0),(3269,0,2000,0),(3270,0,1000,0),(3271,0,1000,0),(3272,0,2000,0),(3273,0,1000,0),(3274,0,5000,0),(3275,0,5000,0),(3276,0,2000,0),(3278,0,1000,0),(3279,0,1000,0),(3294,0,9999,0),(3295,0,23333,0),(3298,0,22222,0),(3299,0,25000,0),(3308,0,8888,0),(3309,0,2000,0),(3310,0,1000,0),(3331,0,3000000,0),(3614,0,13000000,0),(3619,0,2000000,0),(3620,0,25000000,0),(3621,0,2000000,0),(3624,0,2000000,0),(3625,0,25000000,0),(3626,0,2187500,0),(3627,0,13000000,0),(3629,0,4000000,0),(3663,0,13000000,0),(4084,0,50000,0),(10082,0,10000000,0),(10164,0,10000000,0),(10165,0,10000000,0),(10489,6,500000,0),(11328,0,30000000,0),(11329,0,200000000,0),(13328,0,200000000,0),(14146,2,10000000,0),(15315,0,1000000,0),(15318,0,200000000,0),(16405,0,700000,0),(17310,4,1000000,0),(17313,0,20000000,0),(17313,4,10000000,0),(17313,5,10000000,0),(18146,0,10000000,0),(19310,0,10000,0),(19320,0,200000000,0),(22092,0,1500000,0),(22142,0,100000,0),(26243,0,21000000,0),(26244,0,20000000,0),(26807,0,1000000,0),(27129,0,50000000,0),(27600,0,22222,0),(27602,0,22222,0),(27671,0,10000,0),(27675,0,99999999,0),(27967,0,1999999,0),(31367,0,12000,0),(63013,0,100000,0),(63014,0,100000,0),(63069,0,968750,0),(63117,0,50000,0),(440045,0,500000,0),(450010,0,2222222,0),(2600014,0,5000,0),(2600018,0,10000,0),(2600021,0,15000,0),(2600026,0,206250,0),(2600068,0,100000,0),(2600075,0,50000,0),(2600081,0,100000,0),(2675336,0,1000,0),(2675345,0,500,0),(2675347,0,50,0),(600330007,0,11025000,0),(600330008,0,10000000,0),(600330010,0,49999999,0),(600330012,0,50000000,0),(690000280,0,100,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_history` (
  `auction_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `occ_time` datetime DEFAULT NULL,
  `event_type` tinyint(4) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `seal_flag` tinyint(4) DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `add_info` int(11) DEFAULT NULL,
  `upgrade` tinyint(3) unsigned DEFAULT NULL,
  `amplify_option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seal_cnt` tinyint(3) unsigned DEFAULT NULL,
  `endurance` smallint(5) unsigned DEFAULT NULL,
  `extend_info` int(10) unsigned DEFAULT NULL,
  `owner_postal_id` int(10) unsigned DEFAULT NULL,
  `buyer_postal_id` int(10) unsigned DEFAULT NULL,
  `unit_price` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_history_202009` (
  `auction_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `occ_time` datetime DEFAULT NULL,
  `event_type` tinyint(4) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `seal_flag` tinyint(4) DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `add_info` int(11) DEFAULT NULL,
  `upgrade` tinyint(3) unsigned DEFAULT NULL,
  `amplify_option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seal_cnt` tinyint(3) unsigned DEFAULT NULL,
  `endurance` smallint(5) unsigned DEFAULT NULL,
  `extend_info` int(10) unsigned DEFAULT NULL,
  `owner_postal_id` int(10) unsigned DEFAULT NULL,
  `buyer_postal_id` int(10) unsigned DEFAULT NULL,
  `unit_price` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_history_202010` (
  `auction_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `occ_time` datetime DEFAULT NULL,
  `event_type` tinyint(4) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `seal_flag` tinyint(4) DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `add_info` int(11) DEFAULT NULL,
  `upgrade` tinyint(3) unsigned DEFAULT NULL,
  `amplify_option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seal_cnt` tinyint(3) unsigned DEFAULT NULL,
  `endurance` smallint(5) unsigned DEFAULT NULL,
  `extend_info` int(10) unsigned DEFAULT NULL,
  `owner_postal_id` int(10) unsigned DEFAULT NULL,
  `buyer_postal_id` int(10) unsigned DEFAULT NULL,
  `unit_price` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_history_buyer` (
  `auction_id` bigint(20) unsigned DEFAULT NULL,
  `occ_time` datetime DEFAULT NULL,
  `pre_buyer_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `pre_price` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pre_buyer_postal_id` int(10) unsigned DEFAULT NULL,
  KEY `idx_auction_id` (`auction_id`) USING BTREE,
  KEY `idx_buyer_id` (`buyer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_history_buyer_202009` (
  `auction_id` bigint(20) unsigned DEFAULT NULL,
  `occ_time` datetime DEFAULT NULL,
  `pre_buyer_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `pre_price` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pre_buyer_postal_id` int(10) unsigned DEFAULT NULL,
  KEY `idx_auction_id` (`auction_id`) USING BTREE,
  KEY `idx_buyer_id` (`buyer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_history_buyer_202010` (
  `auction_id` bigint(20) unsigned DEFAULT NULL,
  `occ_time` datetime DEFAULT NULL,
  `pre_buyer_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `pre_price` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pre_buyer_postal_id` int(10) unsigned DEFAULT NULL,
  KEY `idx_auction_id` (`auction_id`) USING BTREE,
  KEY `idx_buyer_id` (`buyer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_main` (
  `auction_id` bigint(20) NOT NULL DEFAULT '0',
  `occ_time` datetime DEFAULT NULL,
  `expire_time` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `owner_name` varchar(20) DEFAULT NULL,
  `owner_type` tinyint(4) NOT NULL DEFAULT '0',
  `owner_nexon_id` varchar(25) NOT NULL DEFAULT '',
  `buyer_id` int(11) DEFAULT NULL,
  `buyer_name` varchar(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `instant_price` bigint(20) DEFAULT NULL,
  `seal_flag` tinyint(3) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `add_info` int(11) DEFAULT NULL,
  `upgrade` tinyint(3) unsigned DEFAULT NULL,
  `amplify_option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seal_cnt` tinyint(3) unsigned DEFAULT NULL,
  `endurance` smallint(5) unsigned DEFAULT NULL,
  `extend_info` int(10) unsigned DEFAULT NULL,
  `black_point` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_price` int(11) DEFAULT NULL,
  `random_option` varbinary(14) NOT NULL DEFAULT '',
  `roi_high_key` bigint(20) NOT NULL DEFAULT '0',
  `roi_low_key` int(11) NOT NULL DEFAULT '0',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_manual_average_price` (
  `no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `upgrade` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `average_price` int(11) unsigned NOT NULL DEFAULT '0',
  `is_apply` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_serverid_isapply` (`is_apply`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_roi_average_price` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roi_high_key` bigint(20) NOT NULL DEFAULT '0',
  `roi_low_key` int(10) unsigned NOT NULL DEFAULT '0',
  `roi_index1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roi_index2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roi_index3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `average_price` int(10) unsigned NOT NULL DEFAULT '0',
  `real_purchase_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  UNIQUE KEY `item_id` (`item_id`,`upgrade`,`roi_high_key`,`roi_low_key`,`roi_index1`,`roi_index2`,`roi_index3`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `auction_roi_average_price` VALUES (1,2675347,0,256,256,0,0,0,123,1,0),(2,2675336,0,3759432703752024096,807415840,0,0,0,5000,1,0),(3,2675347,0,109655883776,0,0,0,0,50,1,0),(4,2675347,0,4324786632,808466481,0,0,0,100,1,0),(5,2675347,0,33536,58982400,0,0,0,100,1,0),(6,2675345,0,0,16777216,0,0,0,250,1,0),(7,2675345,0,3184080327621484592,540024884,0,0,0,250,1,0),(8,2675345,0,0,805306368,0,0,0,250,1,0),(9,2675347,0,4294967295,808466481,0,0,0,50,1,0),(10,2675347,0,4331013236,808466481,0,0,0,50,1,0),(11,2675347,0,3184744437224583548,847000113,0,0,0,50,1,0),(12,2223102,0,128850984990000,0,0,0,0,22222,1,0),(13,2263106,0,128850984990000,0,0,0,0,3000,1,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_roi_constraint` (
  `db_inf_max_price` int(10) unsigned NOT NULL DEFAULT '0',
  `db_inf_min_price` int(10) unsigned NOT NULL DEFAULT '0',
  `db_inf_prob` int(10) unsigned NOT NULL DEFAULT '0',
  `db_inf_limit_count` int(10) unsigned NOT NULL DEFAULT '0',
  `db_inf_base_mul_min_a` int(10) unsigned NOT NULL DEFAULT '0',
  `db_inf_base_mul_max_b` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_system_iteminfo` (
  `sys_auction_id` int(11) DEFAULT '0',
  `probability` smallint(5) unsigned DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `seal_flag` tinyint(3) unsigned DEFAULT '0',
  `item_id` int(10) unsigned DEFAULT '0',
  `add_info` int(11) DEFAULT '0',
  `upgrade` tinyint(3) unsigned DEFAULT '0',
  `seal_cnt` tinyint(3) unsigned DEFAULT '0',
  `endurance` smallint(5) unsigned DEFAULT '0',
  `extend_info` int(10) unsigned DEFAULT '0',
  KEY `idx1` (`sys_auction_id`,`item_id`) USING BTREE,
  KEY `idx2` (`item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_system_main` (
  `sys_auction_id` int(11) NOT NULL AUTO_INCREMENT,
  `occ_time` datetime DEFAULT '0000-00-00 00:00:00',
  `regist_interval` int(11) DEFAULT '0',
  `regist_time` time DEFAULT '00:00:00',
  `start_date` date DEFAULT '0000-00-00',
  `end_date` date DEFAULT '0000-00-00',
  `expire_interval` smallint(5) unsigned DEFAULT '0',
  `last_auction_time` datetime DEFAULT '0000-00-00 00:00:00',
  `expected_regist_time` time DEFAULT '00:00:00',
  PRIMARY KEY (`sys_auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
