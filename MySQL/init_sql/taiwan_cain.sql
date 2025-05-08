
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_cain` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_cain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_cargo` (
  `m_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `capacity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cargo` blob NOT NULL,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
CREATE TABLE `aura_avatar_option` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `option_type` tinyint(4) NOT NULL DEFAULT '0',
  `value_1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`option_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_market_condition_ctrl` (
  `optimum_gold_supply` bigint(20) unsigned NOT NULL DEFAULT '0',
  `over_gold` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_market_condition_ctrl_change` (
  `occ_time` date NOT NULL DEFAULT '0000-00-00',
  `total_gold_old` bigint(20) unsigned NOT NULL DEFAULT '0',
  `over_gold_old` bigint(20) unsigned NOT NULL DEFAULT '0',
  `total_gold_new` bigint(20) unsigned NOT NULL DEFAULT '0',
  `over_gold_new` bigint(20) unsigned NOT NULL DEFAULT '0',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_market_condition_ctrl_daily` (
  `occ_time` date NOT NULL DEFAULT '0000-00-00',
  `total_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `auction_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `over_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `optimum_gold_supply` bigint(20) unsigned NOT NULL DEFAULT '0',
  `gold_phase` int(11) NOT NULL DEFAULT '0',
  `item_phase` int(11) NOT NULL DEFAULT '0',
  `durability_phase` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_dungeon_rank_select` (
  `min_amount` bigint(20) NOT NULL DEFAULT '0',
  `max_amount` bigint(20) NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reward_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reward_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `winner_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`min_amount`,`max_amount`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_occ_info` (
  `gc_no` int(10) unsigned NOT NULL DEFAULT '0',
  `age` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_num` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gc_no`,`age`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `channel_occ_info` VALUES (1052,1,0),(1052,2,0),(1052,3,0),(1052,4,0),(1052,5,0),(1052,6,0),(1052,7,0),(1052,8,0),(1052,9,0),(1052,10,0),(1052,11,0),(1052,12,0),(1052,13,0),(1052,14,0),(1052,15,0),(1052,16,0),(1052,17,0),(1052,18,0),(1052,19,0),(1052,20,0),(1052,21,0),(1052,22,0),(1052,23,0),(1052,24,0),(1052,25,0),(1052,26,0),(1052,27,0),(1052,28,0),(1052,29,0),(1052,30,0),(1052,31,0),(1052,32,0),(1052,33,0),(1052,34,0),(1052,35,0),(1052,36,0),(1052,37,0),(1052,38,0),(1052,39,0),(1052,40,0),(1052,41,0),(1052,42,0),(1052,43,0),(1052,44,0),(1052,45,0),(1052,46,0),(1052,47,0),(1052,48,0),(1052,49,0),(1052,50,0),(1052,51,0),(1052,52,0),(1052,53,0),(1052,54,0),(1052,55,0),(1052,56,0),(1052,57,0),(1052,58,0),(1052,59,0),(1052,60,0),(1052,61,0),(1052,62,0),(1052,63,0),(1052,64,0),(1052,65,0),(1052,66,0),(1052,67,0),(1052,68,0),(1052,69,0),(1052,70,0),(1052,71,0),(1052,72,0),(1052,73,0),(1052,74,0),(1052,75,0),(1052,76,0),(1052,77,0),(1052,78,0),(1052,79,0),(1052,80,0),(1052,81,0),(1052,82,0),(1052,83,0),(1052,84,0),(1052,85,0),(1052,86,0),(1052,87,0),(1052,88,0),(1052,89,0),(1052,90,0),(1052,91,0),(1052,92,0),(1052,93,0),(1052,94,0),(1052,95,0),(1052,96,0),(1052,97,0),(1052,98,0),(1052,99,0),(1052,100,0),(3001,1,0),(3001,2,0),(3001,3,0),(3001,4,0),(3001,5,0),(3001,6,0),(3001,7,0),(3001,8,0),(3001,9,0),(3001,10,0),(3001,11,0),(3001,12,0),(3001,13,0),(3001,14,0),(3001,15,0),(3001,16,0),(3001,17,0),(3001,18,0),(3001,19,0),(3001,20,0),(3001,21,0),(3001,22,0),(3001,23,0),(3001,24,0),(3001,25,0),(3001,26,0),(3001,27,0),(3001,28,0),(3001,29,0),(3001,30,0),(3001,31,0),(3001,32,0),(3001,33,0),(3001,34,0),(3001,35,0),(3001,36,0),(3001,37,0),(3001,38,0),(3001,39,0),(3001,40,0),(3001,41,0),(3001,42,0),(3001,43,0),(3001,44,0),(3001,45,0),(3001,46,0),(3001,47,0),(3001,48,0),(3001,49,0),(3001,50,0),(3001,51,0),(3001,52,0),(3001,53,0),(3001,54,0),(3001,55,0),(3001,56,0),(3001,57,0),(3001,58,0),(3001,59,0),(3001,60,0),(3001,61,0),(3001,62,0),(3001,63,0),(3001,64,0),(3001,65,0),(3001,66,0),(3001,67,0),(3001,68,0),(3001,69,0),(3001,70,0),(3001,71,0),(3001,72,0),(3001,73,0),(3001,74,0),(3001,75,0),(3001,76,0),(3001,77,0),(3001,78,0),(3001,79,0),(3001,80,0),(3001,81,0),(3001,82,0),(3001,83,0),(3001,84,0),(3001,85,0),(3001,86,0),(3001,87,0),(3001,88,0),(3001,89,0),(3001,90,0),(3001,91,0),(3001,92,0),(3001,93,0),(3001,94,0),(3001,95,0),(3001,96,0),(3001,97,0),(3001,98,0),(3001,99,0),(3001,100,0),(3006,1,0),(3006,2,0),(3006,3,0),(3006,4,0),(3006,5,0),(3006,6,0),(3006,7,0),(3006,8,0),(3006,9,0),(3006,10,0),(3006,11,0),(3006,12,0),(3006,13,0),(3006,14,0),(3006,15,0),(3006,16,0),(3006,17,0),(3006,18,0),(3006,19,0),(3006,20,0),(3006,21,0),(3006,22,0),(3006,23,0),(3006,24,0),(3006,25,0),(3006,26,0),(3006,27,0),(3006,28,0),(3006,29,0),(3006,30,0),(3006,31,0),(3006,32,0),(3006,33,0),(3006,34,0),(3006,35,0),(3006,36,0),(3006,37,0),(3006,38,0),(3006,39,0),(3006,40,0),(3006,41,0),(3006,42,0),(3006,43,0),(3006,44,0),(3006,45,0),(3006,46,0),(3006,47,0),(3006,48,0),(3006,49,0),(3006,50,0),(3006,51,0),(3006,52,0),(3006,53,0),(3006,54,0),(3006,55,0),(3006,56,0),(3006,57,0),(3006,58,0),(3006,59,0),(3006,60,0),(3006,61,0),(3006,62,0),(3006,63,0),(3006,64,0),(3006,65,0),(3006,66,0),(3006,67,0),(3006,68,0),(3006,69,0),(3006,70,0),(3006,71,0),(3006,72,0),(3006,73,0),(3006,74,0),(3006,75,0),(3006,76,0),(3006,77,0),(3006,78,0),(3006,79,0),(3006,80,0),(3006,81,0),(3006,82,0),(3006,83,0),(3006,84,0),(3006,85,0),(3006,86,0),(3006,87,0),(3006,88,0),(3006,89,0),(3006,90,0),(3006,91,0),(3006,92,0),(3006,93,0),(3006,94,0),(3006,95,0),(3006,96,0),(3006,97,0),(3006,98,0),(3006,99,0),(3006,100,0),(3011,1,0),(3011,2,0),(3011,3,0),(3011,4,0),(3011,5,0),(3011,6,0),(3011,7,0),(3011,8,0),(3011,9,0),(3011,10,0),(3011,11,0),(3011,12,0),(3011,13,0),(3011,14,0),(3011,15,0),(3011,16,0),(3011,17,0),(3011,18,0),(3011,19,0),(3011,20,0),(3011,21,0),(3011,22,0),(3011,23,0),(3011,24,0),(3011,25,0),(3011,26,0),(3011,27,0),(3011,28,0),(3011,29,0),(3011,30,0),(3011,31,0),(3011,32,0),(3011,33,0),(3011,34,0),(3011,35,0),(3011,36,0),(3011,37,0),(3011,38,0),(3011,39,0),(3011,40,0),(3011,41,0),(3011,42,0),(3011,43,0),(3011,44,0),(3011,45,0),(3011,46,0),(3011,47,0),(3011,48,0),(3011,49,0),(3011,50,0),(3011,51,0),(3011,52,0),(3011,53,0),(3011,54,0),(3011,55,0),(3011,56,0),(3011,57,0),(3011,58,0),(3011,59,0),(3011,60,0),(3011,61,0),(3011,62,0),(3011,63,0),(3011,64,0),(3011,65,0),(3011,66,0),(3011,67,0),(3011,68,0),(3011,69,0),(3011,70,0),(3011,71,0),(3011,72,0),(3011,73,0),(3011,74,0),(3011,75,0),(3011,76,0),(3011,77,0),(3011,78,0),(3011,79,0),(3011,80,0),(3011,81,0),(3011,82,0),(3011,83,0),(3011,84,0),(3011,85,0),(3011,86,0),(3011,87,0),(3011,88,0),(3011,89,0),(3011,90,0),(3011,91,0),(3011,92,0),(3011,93,0),(3011,94,0),(3011,95,0),(3011,96,0),(3011,97,0),(3011,98,0),(3011,99,0),(3011,100,0),(3012,1,0),(3012,2,0),(3012,3,0),(3012,4,0),(3012,5,0),(3012,6,0),(3012,7,0),(3012,8,0),(3012,9,0),(3012,10,0),(3012,11,0),(3012,12,0),(3012,13,0),(3012,14,0),(3012,15,0),(3012,16,0),(3012,17,0),(3012,18,0),(3012,19,0),(3012,20,0),(3012,21,0),(3012,22,0),(3012,23,0),(3012,24,0),(3012,25,0),(3012,26,0),(3012,27,0),(3012,28,0),(3012,29,0),(3012,30,0),(3012,31,0),(3012,32,0),(3012,33,0),(3012,34,0),(3012,35,0),(3012,36,0),(3012,37,0),(3012,38,0),(3012,39,0),(3012,40,0),(3012,41,0),(3012,42,0),(3012,43,0),(3012,44,0),(3012,45,0),(3012,46,0),(3012,47,0),(3012,48,0),(3012,49,0),(3012,50,0),(3012,51,0),(3012,52,0),(3012,53,0),(3012,54,0),(3012,55,0),(3012,56,0),(3012,57,0),(3012,58,0),(3012,59,0),(3012,60,0),(3012,61,0),(3012,62,0),(3012,63,0),(3012,64,0),(3012,65,0),(3012,66,0),(3012,67,0),(3012,68,0),(3012,69,0),(3012,70,0),(3012,71,0),(3012,72,0),(3012,73,0),(3012,74,0),(3012,75,0),(3012,76,0),(3012,77,0),(3012,78,0),(3012,79,0),(3012,80,0),(3012,81,0),(3012,82,0),(3012,83,0),(3012,84,0),(3012,85,0),(3012,86,0),(3012,87,0),(3012,88,0),(3012,89,0),(3012,90,0),(3012,91,0),(3012,92,0),(3012,93,0),(3012,94,0),(3012,95,0),(3012,96,0),(3012,97,0),(3012,98,0),(3012,99,0),(3012,100,0),(3013,1,0),(3013,2,0),(3013,3,0),(3013,4,0),(3013,5,0),(3013,6,0),(3013,7,0),(3013,8,0),(3013,9,0),(3013,10,0),(3013,11,0),(3013,12,0),(3013,13,0),(3013,14,0),(3013,15,0),(3013,16,0),(3013,17,0),(3013,18,0),(3013,19,0),(3013,20,0),(3013,21,0),(3013,22,0),(3013,23,0),(3013,24,0),(3013,25,0),(3013,26,0),(3013,27,0),(3013,28,0),(3013,29,0),(3013,30,0),(3013,31,0),(3013,32,0),(3013,33,0),(3013,34,0),(3013,35,0),(3013,36,0),(3013,37,0),(3013,38,0),(3013,39,0),(3013,40,0),(3013,41,0),(3013,42,0),(3013,43,0),(3013,44,0),(3013,45,0),(3013,46,0),(3013,47,0),(3013,48,0),(3013,49,0),(3013,50,0),(3013,51,0),(3013,52,0),(3013,53,0),(3013,54,0),(3013,55,0),(3013,56,0),(3013,57,0),(3013,58,0),(3013,59,0),(3013,60,0),(3013,61,0),(3013,62,0),(3013,63,0),(3013,64,0),(3013,65,0),(3013,66,0),(3013,67,0),(3013,68,0),(3013,69,0),(3013,70,0),(3013,71,0),(3013,72,0),(3013,73,0),(3013,74,0),(3013,75,0),(3013,76,0),(3013,77,0),(3013,78,0),(3013,79,0),(3013,80,0),(3013,81,0),(3013,82,0),(3013,83,0),(3013,84,0),(3013,85,0),(3013,86,0),(3013,87,0),(3013,88,0),(3013,89,0),(3013,90,0),(3013,91,0),(3013,92,0),(3013,93,0),(3013,94,0),(3013,95,0),(3013,96,0),(3013,97,0),(3013,98,0),(3013,99,0),(3013,100,0),(3016,1,0),(3016,2,0),(3016,3,0),(3016,4,0),(3016,5,0),(3016,6,0),(3016,7,0),(3016,8,0),(3016,9,0),(3016,10,0),(3016,11,0),(3016,12,0),(3016,13,0),(3016,14,0),(3016,15,0),(3016,16,0),(3016,17,0),(3016,18,0),(3016,19,0),(3016,20,0),(3016,21,0),(3016,22,0),(3016,23,0),(3016,24,0),(3016,25,0),(3016,26,0),(3016,27,0),(3016,28,0),(3016,29,0),(3016,30,0),(3016,31,0),(3016,32,0),(3016,33,0),(3016,34,0),(3016,35,0),(3016,36,0),(3016,37,0),(3016,38,0),(3016,39,0),(3016,40,0),(3016,41,0),(3016,42,0),(3016,43,0),(3016,44,0),(3016,45,0),(3016,46,0),(3016,47,0),(3016,48,0),(3016,49,0),(3016,50,0),(3016,51,0),(3016,52,0),(3016,53,0),(3016,54,0),(3016,55,0),(3016,56,0),(3016,57,0),(3016,58,0),(3016,59,0),(3016,60,0),(3016,61,0),(3016,62,0),(3016,63,0),(3016,64,0),(3016,65,0),(3016,66,0),(3016,67,0),(3016,68,0),(3016,69,0),(3016,70,0),(3016,71,0),(3016,72,0),(3016,73,0),(3016,74,0),(3016,75,0),(3016,76,0),(3016,77,0),(3016,78,0),(3016,79,0),(3016,80,0),(3016,81,0),(3016,82,0),(3016,83,0),(3016,84,0),(3016,85,0),(3016,86,0),(3016,87,0),(3016,88,0),(3016,89,0),(3016,90,0),(3016,91,0),(3016,92,0),(3016,93,0),(3016,94,0),(3016,95,0),(3016,96,0),(3016,97,0),(3016,98,0),(3016,99,0),(3016,100,0),(3020,1,0),(3020,2,0),(3020,3,0),(3020,4,0),(3020,5,0),(3020,6,0),(3020,7,0),(3020,8,0),(3020,9,0),(3020,10,0),(3020,11,0),(3020,12,0),(3020,13,0),(3020,14,0),(3020,15,0),(3020,16,0),(3020,17,0),(3020,18,0),(3020,19,0),(3020,20,0),(3020,21,0),(3020,22,0),(3020,23,0),(3020,24,0),(3020,25,0),(3020,26,0),(3020,27,0),(3020,28,0),(3020,29,0),(3020,30,0),(3020,31,0),(3020,32,0),(3020,33,0),(3020,34,0),(3020,35,0),(3020,36,0),(3020,37,0),(3020,38,0),(3020,39,0),(3020,40,0),(3020,41,0),(3020,42,0),(3020,43,0),(3020,44,0),(3020,45,0),(3020,46,0),(3020,47,0),(3020,48,0),(3020,49,0),(3020,50,0),(3020,51,0),(3020,52,0),(3020,53,0),(3020,54,0),(3020,55,0),(3020,56,0),(3020,57,0),(3020,58,0),(3020,59,0),(3020,60,0),(3020,61,0),(3020,62,0),(3020,63,0),(3020,64,0),(3020,65,0),(3020,66,0),(3020,67,0),(3020,68,0),(3020,69,0),(3020,70,0),(3020,71,0),(3020,72,0),(3020,73,0),(3020,74,0),(3020,75,0),(3020,76,0),(3020,77,0),(3020,78,0),(3020,79,0),(3020,80,0),(3020,81,0),(3020,82,0),(3020,83,0),(3020,84,0),(3020,85,0),(3020,86,0),(3020,87,0),(3020,88,0),(3020,89,0),(3020,90,0),(3020,91,0),(3020,92,0),(3020,93,0),(3020,94,0),(3020,95,0),(3020,96,0),(3020,97,0),(3020,98,0),(3020,99,0),(3020,100,0),(3021,1,0),(3021,2,0),(3021,3,0),(3021,4,0),(3021,5,0),(3021,6,0),(3021,7,0),(3021,8,0),(3021,9,0),(3021,10,0),(3021,11,0),(3021,12,0),(3021,13,0),(3021,14,0),(3021,15,0),(3021,16,0),(3021,17,0),(3021,18,0),(3021,19,0),(3021,20,0),(3021,21,0),(3021,22,0),(3021,23,0),(3021,24,0),(3021,25,0),(3021,26,0),(3021,27,0),(3021,28,0),(3021,29,0),(3021,30,0),(3021,31,0),(3021,32,0),(3021,33,0),(3021,34,0),(3021,35,0),(3021,36,0),(3021,37,0),(3021,38,0),(3021,39,0),(3021,40,0),(3021,41,0),(3021,42,0),(3021,43,0),(3021,44,0),(3021,45,0),(3021,46,0),(3021,47,0),(3021,48,0),(3021,49,0),(3021,50,0),(3021,51,0),(3021,52,0),(3021,53,0),(3021,54,0),(3021,55,0),(3021,56,0),(3021,57,0),(3021,58,0),(3021,59,0),(3021,60,0),(3021,61,0),(3021,62,0),(3021,63,0),(3021,64,0),(3021,65,0),(3021,66,0),(3021,67,0),(3021,68,0),(3021,69,0),(3021,70,0),(3021,71,0),(3021,72,0),(3021,73,0),(3021,74,0),(3021,75,0),(3021,76,0),(3021,77,0),(3021,78,0),(3021,79,0),(3021,80,0),(3021,81,0),(3021,82,0),(3021,83,0),(3021,84,0),(3021,85,0),(3021,86,0),(3021,87,0),(3021,88,0),(3021,89,0),(3021,90,0),(3021,91,0),(3021,92,0),(3021,93,0),(3021,94,0),(3021,95,0),(3021,96,0),(3021,97,0),(3021,98,0),(3021,99,0),(3021,100,0),(3024,1,0),(3024,2,0),(3024,3,0),(3024,4,0),(3024,5,0),(3024,6,0),(3024,7,0),(3024,8,0),(3024,9,0),(3024,10,0),(3024,11,0),(3024,12,0),(3024,13,0),(3024,14,0),(3024,15,0),(3024,16,0),(3024,17,0),(3024,18,0),(3024,19,0),(3024,20,0),(3024,21,0),(3024,22,0),(3024,23,0),(3024,24,0),(3024,25,0),(3024,26,0),(3024,27,0),(3024,28,0),(3024,29,0),(3024,30,0),(3024,31,0),(3024,32,0),(3024,33,0),(3024,34,0),(3024,35,0),(3024,36,0),(3024,37,0),(3024,38,0),(3024,39,0),(3024,40,0),(3024,41,0),(3024,42,0),(3024,43,0),(3024,44,0),(3024,45,0),(3024,46,0),(3024,47,0),(3024,48,0),(3024,49,0),(3024,50,0),(3024,51,0),(3024,52,0),(3024,53,0),(3024,54,0),(3024,55,0),(3024,56,0),(3024,57,0),(3024,58,0),(3024,59,0),(3024,60,0),(3024,61,0),(3024,62,0),(3024,63,0),(3024,64,0),(3024,65,0),(3024,66,0),(3024,67,0),(3024,68,0),(3024,69,0),(3024,70,0),(3024,71,0),(3024,72,0),(3024,73,0),(3024,74,0),(3024,75,0),(3024,76,0),(3024,77,0),(3024,78,0),(3024,79,0),(3024,80,0),(3024,81,0),(3024,82,0),(3024,83,0),(3024,84,0),(3024,85,0),(3024,86,0),(3024,87,0),(3024,88,0),(3024,89,0),(3024,90,0),(3024,91,0),(3024,92,0),(3024,93,0),(3024,94,0),(3024,95,0),(3024,96,0),(3024,97,0),(3024,98,0),(3024,99,0),(3024,100,0),(3027,1,0),(3027,2,0),(3027,3,0),(3027,4,0),(3027,5,0),(3027,6,0),(3027,7,0),(3027,8,0),(3027,9,0),(3027,10,0),(3027,11,0),(3027,12,0),(3027,13,0),(3027,14,0),(3027,15,0),(3027,16,0),(3027,17,0),(3027,18,0),(3027,19,0),(3027,20,0),(3027,21,0),(3027,22,0),(3027,23,0),(3027,24,0),(3027,25,0),(3027,26,0),(3027,27,0),(3027,28,0),(3027,29,0),(3027,30,0),(3027,31,0),(3027,32,0),(3027,33,0),(3027,34,0),(3027,35,0),(3027,36,0),(3027,37,0),(3027,38,0),(3027,39,0),(3027,40,0),(3027,41,0),(3027,42,0),(3027,43,0),(3027,44,0),(3027,45,0),(3027,46,0),(3027,47,0),(3027,48,0),(3027,49,0),(3027,50,0),(3027,51,0),(3027,52,0),(3027,53,0),(3027,54,0),(3027,55,0),(3027,56,0),(3027,57,0),(3027,58,0),(3027,59,0),(3027,60,0),(3027,61,0),(3027,62,0),(3027,63,0),(3027,64,0),(3027,65,0),(3027,66,0),(3027,67,0),(3027,68,0),(3027,69,0),(3027,70,0),(3027,71,0),(3027,72,0),(3027,73,0),(3027,74,0),(3027,75,0),(3027,76,0),(3027,77,0),(3027,78,0),(3027,79,0),(3027,80,0),(3027,81,0),(3027,82,0),(3027,83,0),(3027,84,0),(3027,85,0),(3027,86,0),(3027,87,0),(3027,88,0),(3027,89,0),(3027,90,0),(3027,91,0),(3027,92,0),(3027,93,0),(3027,94,0),(3027,95,0),(3027,96,0),(3027,97,0),(3027,98,0),(3027,99,0),(3027,100,0),(3031,1,0),(3031,2,0),(3031,3,0),(3031,4,0),(3031,5,0),(3031,6,0),(3031,7,0),(3031,8,0),(3031,9,0),(3031,10,0),(3031,11,0),(3031,12,0),(3031,13,0),(3031,14,0),(3031,15,0),(3031,16,0),(3031,17,0),(3031,18,0),(3031,19,0),(3031,20,0),(3031,21,0),(3031,22,0),(3031,23,0),(3031,24,0),(3031,25,0),(3031,26,0),(3031,27,0),(3031,28,0),(3031,29,0),(3031,30,0),(3031,31,0),(3031,32,0),(3031,33,0),(3031,34,0),(3031,35,0),(3031,36,0),(3031,37,0),(3031,38,0),(3031,39,0),(3031,40,0),(3031,41,0),(3031,42,0),(3031,43,0),(3031,44,0),(3031,45,0),(3031,46,0),(3031,47,0),(3031,48,0),(3031,49,0),(3031,50,0),(3031,51,0),(3031,52,0),(3031,53,0),(3031,54,0),(3031,55,0),(3031,56,0),(3031,57,0),(3031,58,0),(3031,59,0),(3031,60,0),(3031,61,0),(3031,62,0),(3031,63,0),(3031,64,0),(3031,65,0),(3031,66,0),(3031,67,0),(3031,68,0),(3031,69,0),(3031,70,0),(3031,71,0),(3031,72,0),(3031,73,0),(3031,74,0),(3031,75,0),(3031,76,0),(3031,77,0),(3031,78,0),(3031,79,0),(3031,80,0),(3031,81,0),(3031,82,0),(3031,83,0),(3031,84,0),(3031,85,0),(3031,86,0),(3031,87,0),(3031,88,0),(3031,89,0),(3031,90,0),(3031,91,0),(3031,92,0),(3031,93,0),(3031,94,0),(3031,95,0),(3031,96,0),(3031,97,0),(3031,98,0),(3031,99,0),(3031,100,0),(3033,1,0),(3033,2,0),(3033,3,0),(3033,4,0),(3033,5,0),(3033,6,0),(3033,7,0),(3033,8,0),(3033,9,0),(3033,10,0),(3033,11,0),(3033,12,0),(3033,13,0),(3033,14,0),(3033,15,0),(3033,16,0),(3033,17,0),(3033,18,0),(3033,19,0),(3033,20,0),(3033,21,0),(3033,22,0),(3033,23,0),(3033,24,0),(3033,25,0),(3033,26,0),(3033,27,0),(3033,28,0),(3033,29,0),(3033,30,0),(3033,31,0),(3033,32,0),(3033,33,0),(3033,34,0),(3033,35,0),(3033,36,0),(3033,37,0),(3033,38,0),(3033,39,0),(3033,40,0),(3033,41,0),(3033,42,0),(3033,43,0),(3033,44,0),(3033,45,0),(3033,46,0),(3033,47,0),(3033,48,0),(3033,49,0),(3033,50,0),(3033,51,0),(3033,52,0),(3033,53,0),(3033,54,0),(3033,55,0),(3033,56,0),(3033,57,0),(3033,58,0),(3033,59,0),(3033,60,0),(3033,61,0),(3033,62,0),(3033,63,0),(3033,64,0),(3033,65,0),(3033,66,0),(3033,67,0),(3033,68,0),(3033,69,0),(3033,70,0),(3033,71,0),(3033,72,0),(3033,73,0),(3033,74,0),(3033,75,0),(3033,76,0),(3033,77,0),(3033,78,0),(3033,79,0),(3033,80,0),(3033,81,0),(3033,82,0),(3033,83,0),(3033,84,0),(3033,85,0),(3033,86,0),(3033,87,0),(3033,88,0),(3033,89,0),(3033,90,0),(3033,91,0),(3033,92,0),(3033,93,0),(3033,94,0),(3033,95,0),(3033,96,0),(3033,97,0),(3033,98,0),(3033,99,0),(3033,100,0),(3035,1,0),(3035,2,0),(3035,3,0),(3035,4,0),(3035,5,0),(3035,6,0),(3035,7,0),(3035,8,0),(3035,9,0),(3035,10,0),(3035,11,0),(3035,12,0),(3035,13,0),(3035,14,0),(3035,15,0),(3035,16,0),(3035,17,0),(3035,18,0),(3035,19,0),(3035,20,0),(3035,21,0),(3035,22,0),(3035,23,0),(3035,24,0),(3035,25,0),(3035,26,0),(3035,27,0),(3035,28,0),(3035,29,0),(3035,30,0),(3035,31,0),(3035,32,0),(3035,33,0),(3035,34,0),(3035,35,0),(3035,36,0),(3035,37,0),(3035,38,0),(3035,39,0),(3035,40,0),(3035,41,0),(3035,42,0),(3035,43,0),(3035,44,0),(3035,45,0),(3035,46,0),(3035,47,0),(3035,48,0),(3035,49,0),(3035,50,0),(3035,51,0),(3035,52,0),(3035,53,0),(3035,54,0),(3035,55,0),(3035,56,0),(3035,57,0),(3035,58,0),(3035,59,0),(3035,60,0),(3035,61,0),(3035,62,0),(3035,63,0),(3035,64,0),(3035,65,0),(3035,66,0),(3035,67,0),(3035,68,0),(3035,69,0),(3035,70,0),(3035,71,0),(3035,72,0),(3035,73,0),(3035,74,0),(3035,75,0),(3035,76,0),(3035,77,0),(3035,78,0),(3035,79,0),(3035,80,0),(3035,81,0),(3035,82,0),(3035,83,0),(3035,84,0),(3035,85,0),(3035,86,0),(3035,87,0),(3035,88,0),(3035,89,0),(3035,90,0),(3035,91,0),(3035,92,0),(3035,93,0),(3035,94,0),(3035,95,0),(3035,96,0),(3035,97,0),(3035,98,0),(3035,99,0),(3035,100,0),(3037,1,0),(3037,2,0),(3037,3,0),(3037,4,0),(3037,5,0),(3037,6,0),(3037,7,0),(3037,8,0),(3037,9,0),(3037,10,0),(3037,11,0),(3037,12,0),(3037,13,0),(3037,14,0),(3037,15,0),(3037,16,0),(3037,17,0),(3037,18,0),(3037,19,0),(3037,20,0),(3037,21,0),(3037,22,0),(3037,23,0),(3037,24,0),(3037,25,0),(3037,26,0),(3037,27,0),(3037,28,0),(3037,29,0),(3037,30,0),(3037,31,0),(3037,32,0),(3037,33,0),(3037,34,0),(3037,35,0),(3037,36,0),(3037,37,0),(3037,38,0),(3037,39,0),(3037,40,0),(3037,41,0),(3037,42,0),(3037,43,0),(3037,44,0),(3037,45,0),(3037,46,0),(3037,47,0),(3037,48,0),(3037,49,0),(3037,50,0),(3037,51,0),(3037,52,0),(3037,53,0),(3037,54,0),(3037,55,0),(3037,56,0),(3037,57,0),(3037,58,0),(3037,59,0),(3037,60,0),(3037,61,0),(3037,62,0),(3037,63,0),(3037,64,0),(3037,65,0),(3037,66,0),(3037,67,0),(3037,68,0),(3037,69,0),(3037,70,0),(3037,71,0),(3037,72,0),(3037,73,0),(3037,74,0),(3037,75,0),(3037,76,0),(3037,77,0),(3037,78,0),(3037,79,0),(3037,80,0),(3037,81,0),(3037,82,0),(3037,83,0),(3037,84,0),(3037,85,0),(3037,86,0),(3037,87,0),(3037,88,0),(3037,89,0),(3037,90,0),(3037,91,0),(3037,92,0),(3037,93,0),(3037,94,0),(3037,95,0),(3037,96,0),(3037,97,0),(3037,98,0),(3037,99,0),(3037,100,0),(3039,1,0),(3039,2,0),(3039,3,0),(3039,4,0),(3039,5,0),(3039,6,0),(3039,7,0),(3039,8,0),(3039,9,0),(3039,10,0),(3039,11,0),(3039,12,0),(3039,13,0),(3039,14,0),(3039,15,0),(3039,16,0),(3039,17,0),(3039,18,0),(3039,19,0),(3039,20,0),(3039,21,0),(3039,22,0),(3039,23,0),(3039,24,0),(3039,25,0),(3039,26,0),(3039,27,0),(3039,28,0),(3039,29,0),(3039,30,0),(3039,31,0),(3039,32,0),(3039,33,0),(3039,34,0),(3039,35,0),(3039,36,0),(3039,37,0),(3039,38,0),(3039,39,0),(3039,40,0),(3039,41,0),(3039,42,0),(3039,43,0),(3039,44,0),(3039,45,0),(3039,46,0),(3039,47,0),(3039,48,0),(3039,49,0),(3039,50,0),(3039,51,0),(3039,52,0),(3039,53,0),(3039,54,0),(3039,55,0),(3039,56,0),(3039,57,0),(3039,58,0),(3039,59,0),(3039,60,0),(3039,61,0),(3039,62,0),(3039,63,0),(3039,64,0),(3039,65,0),(3039,66,0),(3039,67,0),(3039,68,0),(3039,69,0),(3039,70,0),(3039,71,0),(3039,72,0),(3039,73,0),(3039,74,0),(3039,75,0),(3039,76,0),(3039,77,0),(3039,78,0),(3039,79,0),(3039,80,0),(3039,81,0),(3039,82,0),(3039,83,0),(3039,84,0),(3039,85,0),(3039,86,0),(3039,87,0),(3039,88,0),(3039,89,0),(3039,90,0),(3039,91,0),(3039,92,0),(3039,93,0),(3039,94,0),(3039,95,0),(3039,96,0),(3039,97,0),(3039,98,0),(3039,99,0),(3039,100,0),(3052,1,0),(3052,2,0),(3052,3,0),(3052,4,0),(3052,5,0),(3052,6,0),(3052,7,0),(3052,8,0),(3052,9,0),(3052,10,0),(3052,11,0),(3052,12,0),(3052,13,0),(3052,14,0),(3052,15,0),(3052,16,0),(3052,17,0),(3052,18,0),(3052,19,0),(3052,20,0),(3052,21,0),(3052,22,0),(3052,23,0),(3052,24,0),(3052,25,0),(3052,26,0),(3052,27,0),(3052,28,0),(3052,29,0),(3052,30,0),(3052,31,0),(3052,32,0),(3052,33,0),(3052,34,0),(3052,35,0),(3052,36,0),(3052,37,0),(3052,38,0),(3052,39,0),(3052,40,0),(3052,41,0),(3052,42,0),(3052,43,0),(3052,44,0),(3052,45,0),(3052,46,0),(3052,47,0),(3052,48,0),(3052,49,0),(3052,50,0),(3052,51,0),(3052,52,0),(3052,53,0),(3052,54,0),(3052,55,0),(3052,56,0),(3052,57,0),(3052,58,0),(3052,59,0),(3052,60,0),(3052,61,0),(3052,62,0),(3052,63,0),(3052,64,0),(3052,65,0),(3052,66,0),(3052,67,0),(3052,68,0),(3052,69,0),(3052,70,0),(3052,71,0),(3052,72,0),(3052,73,0),(3052,74,0),(3052,75,0),(3052,76,0),(3052,77,0),(3052,78,0),(3052,79,0),(3052,80,0),(3052,81,0),(3052,82,0),(3052,83,0),(3052,84,0),(3052,85,0),(3052,86,0),(3052,87,0),(3052,88,0),(3052,89,0),(3052,90,0),(3052,91,0),(3052,92,0),(3052,93,0),(3052,94,0),(3052,95,0),(3052,96,0),(3052,97,0),(3052,98,0),(3052,99,0),(3052,100,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_achievement` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `achievement` blob NOT NULL,
  `last_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_achievement` VALUES (1,0x00180000789CEDC1010D000000C2A0F74F6D0F07140000000000F06618000001,'2020-09-03 23:21:44');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_action_point` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `ap_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `is_reward_medal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_reward_item_1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_reward_item_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_reward_item_3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_reward_item_4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ap_clear_state` blob NOT NULL,
  PRIMARY KEY (`charac_no`,`occ_date`),
  KEY `idx_occ_date` (`occ_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_action_point_desc` (
  `action_group_index` int(11) NOT NULL DEFAULT '0',
  `action_index` int(11) NOT NULL DEFAULT '0',
  `action_group_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`action_group_index`,`action_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_best_record` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `dungeon_no` smallint(6) NOT NULL DEFAULT '0',
  `difficulty` smallint(6) NOT NULL DEFAULT '0',
  `style` int(11) NOT NULL DEFAULT '0',
  `technic` int(11) NOT NULL DEFAULT '0',
  `attacked` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`dungeon_no`,`difficulty`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_blood_best_record` (
  `charac_no` int(11) unsigned NOT NULL DEFAULT '0',
  `dungeon_index` int(11) unsigned NOT NULL DEFAULT '0',
  `best_round` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `best_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`dungeon_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_blood_dungeon_reward` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `week_occ_date` date NOT NULL DEFAULT '0000-00-00',
  `week_point` int(10) unsigned NOT NULL DEFAULT '0',
  `week_enter_count` int(10) unsigned NOT NULL DEFAULT '0',
  `week_use_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `last_play_date` date NOT NULL DEFAULT '0000-00-00',
  `enter_count` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reward` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reward_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reward_gold` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`week_occ_date`),
  KEY `idx_week_occ_date` (`week_occ_date`) USING BTREE,
  KEY `idx_last_play_date` (`last_play_date`) USING BTREE,
  KEY `idx_reward` (`reward`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_blood_inout` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `dungeon1` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon2` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon3` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon4` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon5` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon6` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon7` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon8` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon9` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon10` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_cerashop_restrict` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `ipg_no` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `next_date` int(10) unsigned NOT NULL DEFAULT '0',
  `end_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_access_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`ipg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_dimension_inout` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `dungeon1` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon2` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon3` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon4` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon5` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon6` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon7` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon8` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon9` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon10` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_dungeon` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `dungeon` blob NOT NULL,
  `best_clear_time` blob NOT NULL,
  `blue_marble_enter_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_inform_notice` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_dungeon_test` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `dungeon` blob NOT NULL,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_expert_job` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `expert_job_giveup_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expert_job_info` int(11) NOT NULL DEFAULT '0',
  `expert_job_info_ex` int(11) NOT NULL DEFAULT '0',
  `recipe` blob NOT NULL,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_friends` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `friend_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`friend_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_housing_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `installed` smallint(5) unsigned NOT NULL DEFAULT '0',
  `decoration_inven` binary(144) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `version` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_housing_tree_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `current_point` smallint(6) NOT NULL DEFAULT '0',
  `leaf_point` smallint(6) NOT NULL DEFAULT '0',
  `day_water_count` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_housing_water_history` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `give_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `give_charac_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`charac_no`,`give_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_info` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL AUTO_INCREMENT,
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `village` tinyint(4) NOT NULL DEFAULT '1',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '1',
  `exp` int(11) NOT NULL DEFAULT '0',
  `grow_type` tinyint(4) NOT NULL DEFAULT '0',
  `HP` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxHP` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxMP` smallint(6) unsigned NOT NULL DEFAULT '0',
  `phy_attack` smallint(6) unsigned NOT NULL DEFAULT '0',
  `phy_defense` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mag_attack` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mag_defense` smallint(6) unsigned NOT NULL DEFAULT '0',
  `element_resist` tinyblob NOT NULL,
  `spec_property` tinyblob NOT NULL,
  `inven_weight` int(6) NOT NULL DEFAULT '0',
  `hp_regen` smallint(6) NOT NULL DEFAULT '0',
  `mp_regen` smallint(6) NOT NULL DEFAULT '0',
  `move_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `attack_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `cast_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `hit_recovery` smallint(6) NOT NULL DEFAULT '0',
  `jump` smallint(6) NOT NULL DEFAULT '0',
  `charac_weight` int(11) NOT NULL DEFAULT '0',
  `fatigue` smallint(6) NOT NULL DEFAULT '0',
  `max_fatigue` smallint(6) NOT NULL DEFAULT '70',
  `premium_fatigue` smallint(6) NOT NULL DEFAULT '0',
  `max_premium_fatigue` smallint(6) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dungeon_clear_point` int(11) NOT NULL DEFAULT '0',
  `delete_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_right` tinyint(4) NOT NULL DEFAULT '0',
  `member_flag` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '1',
  `expert_job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `skill_tree_index` tinyint(4) NOT NULL DEFAULT '-1',
  `link_charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `event_charac_level` tinyint(4) NOT NULL DEFAULT '0',
  `guild_secede` tinyint(2) NOT NULL DEFAULT '0',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `finish_time` int(11) NOT NULL DEFAULT '0',
  `competition_area` tinyint(2) NOT NULL DEFAULT '-1',
  `competition_period` tinyint(2) NOT NULL DEFAULT '-1',
  `mercenary_start_time` int(11) NOT NULL DEFAULT '0',
  `mercenary_finish_time` int(11) NOT NULL DEFAULT '0',
  `mercenary_area` tinyint(4) NOT NULL DEFAULT '-1',
  `mercenary_period` tinyint(4) NOT NULL DEFAULT '-1',
  `VIP` varchar(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`charac_no`),
  UNIQUE KEY `charac_name` (`charac_name`) USING BTREE,
  KEY `charac_info_idx1` (`m_id`) USING BTREE,
  KEY `charac_info_idx2` (`exp`) USING BTREE,
  KEY `idx_guild_id` (`guild_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_info` VALUES (1,1,'yyyyz',1,0,7,0,0,0,4500,2900,363,363,297,297,0x00000000C80038FF,0x00000000000000000000000000000000000000000000000000000000000000000000,498000,0,650,8500,8500,7000,6090,4300,680000,0,156,0,0,'2020-09-03 23:08:53','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0,0,0,1,0,-1,0,0,0,0,0,-1,-1,0,0,-1,-1,'1');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_item_stat` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `cooltime_item` blob NOT NULL,
  `effect_item` blob NOT NULL,
  `check_flag` blob NOT NULL,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_kill_monster_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `boss_info` blob NOT NULL,
  `named_info` blob NOT NULL,
  `apc_boss_info` blob NOT NULL,
  PRIMARY KEY (`charac_no`),
  KEY `pk_charac_no` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_kill_monster_info` VALUES (1,0x4C1D0000789CEDC4310100200C03B0EEE4C615D2908B02860E92232349CDD7EE6B9D2E000000000000009FBBD15701FA,0x30750000789CEDC13101000000C2A0F54F6D094FA000000000000000000000000000000000000000000000000000000000003E0675300001,0x4C1D0000789CEDC13101000000C2A0F54FED6F06A00000000000000078031D4C0001);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_link_bonus` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `mercenary_start_time` int(11) NOT NULL DEFAULT '0',
  `mercenary_finish_time` int(11) NOT NULL DEFAULT '0',
  `mercenary_area` tinyint(4) NOT NULL DEFAULT '-1',
  `mercenary_period` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_link_message` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_link_message` VALUES (1,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_manage_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `tag_charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `striker_skill_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_equip_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_members` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `master_no` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_npc` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `npc_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `npc_data` blob NOT NULL,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_npc` VALUES (1,0,'');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_option` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `options` blob NOT NULL,
  `best_clear_time` blob NOT NULL,
  `blue_marble_enter_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_inform_notice` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_option` VALUES (1,0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF,0xC05D0000789CEDC8310D80401405C15740A84870818E93858913730AF040458117E8BF029299649B9D92DC3DC5FC753CF58F3559AEFAB73D6967FD00000000000000000000000000000000000000000000007FF102AE1B0598,0,'');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_quest` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `quest_10` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_15` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_20` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_30` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_40` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_40_ext` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_50` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_60` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_70` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_etc` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `play_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_1_trigger` int(11) NOT NULL DEFAULT '0',
  `play_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_2_trigger` int(11) NOT NULL DEFAULT '0',
  `play_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_3_trigger` int(11) NOT NULL DEFAULT '0',
  `play_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_4_trigger` int(11) NOT NULL DEFAULT '0',
  `play_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_5_trigger` int(11) NOT NULL DEFAULT '0',
  `play_6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_6_trigger` int(11) NOT NULL DEFAULT '0',
  `play_7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_7_trigger` int(11) NOT NULL DEFAULT '0',
  `play_8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_8_trigger` int(11) NOT NULL DEFAULT '0',
  `play_9` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_9_trigger` int(11) NOT NULL DEFAULT '0',
  `play_10` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_10_trigger` int(11) NOT NULL DEFAULT '0',
  `quest_50_ext` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_60_ext` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_etc_ext` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_60_ext_2nd` binary(64) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_quest_ref` (
  `origin_idx` int(11) NOT NULL DEFAULT '0',
  `mapped_idx` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`origin_idx`),
  UNIQUE KEY `mapped_idx` (`mapped_idx`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_quest_shop` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `qp` int(10) unsigned NOT NULL DEFAULT '0',
  `max_hp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `max_mp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `psy_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `psy_defense` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mag_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mag_defence` smallint(5) unsigned NOT NULL DEFAULT '0',
  `move_speed` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attack_speed` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hp_regen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mp_regen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `all_element_resist` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fire_element_resist` smallint(5) unsigned NOT NULL DEFAULT '0',
  `water_element_resist` smallint(5) unsigned NOT NULL DEFAULT '0',
  `light_element_resist` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dark_element_resist` smallint(5) unsigned NOT NULL DEFAULT '0',
  `all_element_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fire_element_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `water_element_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `light_element_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dark_element_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `psy_critical` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mag_critical` smallint(5) unsigned NOT NULL DEFAULT '0',
  `good_hit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `evasion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hit_recovery` smallint(5) unsigned NOT NULL DEFAULT '0',
  `init_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `separate_psy_mag_attack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `quest_piece` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_quest_shop` VALUES (1,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_ridable_stat` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `cooltime` blob NOT NULL,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_stat` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `village` tinyint(4) NOT NULL DEFAULT '1',
  `exp` int(11) NOT NULL DEFAULT '0',
  `HP` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `fatigue` smallint(11) NOT NULL DEFAULT '0',
  `used_fatigue` smallint(11) NOT NULL DEFAULT '0',
  `premium_fatigue` smallint(11) NOT NULL DEFAULT '0',
  `dungeon_clear_point` int(11) NOT NULL DEFAULT '0',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `forbidden_to_play` char(1) NOT NULL DEFAULT '',
  `forbidden_due_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tutorial_flag` int(11) NOT NULL DEFAULT '0',
  `trade_gold_total` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_gold_total_billion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trade_gold_daily` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeon_map_pass_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeon_map_help_pass_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `help_abuse_point` int(10) unsigned NOT NULL DEFAULT '0',
  `chaos_point` int(10) unsigned NOT NULL DEFAULT '0',
  `chaos_exp` int(10) unsigned NOT NULL DEFAULT '0',
  `chaos_mode_count` int(10) unsigned NOT NULL DEFAULT '0',
  `chaos_kill_count` int(10) unsigned NOT NULL DEFAULT '0',
  `chaos_die_count` int(10) unsigned NOT NULL DEFAULT '0',
  `chaos_die_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `chaos_kill_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `assault_count` int(10) unsigned NOT NULL DEFAULT '0',
  `luck_point` int(11) NOT NULL DEFAULT '5000',
  `dungeon_play_count` int(10) unsigned NOT NULL DEFAULT '0',
  `help_abuse_ratio` int(10) NOT NULL DEFAULT '0',
  `help_abuse_exp` int(10) NOT NULL DEFAULT '0',
  `expert_job_exp` int(11) NOT NULL DEFAULT '0',
  `fatigue_battery_charging` int(11) NOT NULL DEFAULT '0',
  `escalade_tutorial_flag` varchar(32) NOT NULL DEFAULT '',
  `power_war_point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `power_war_assault_count` int(10) unsigned NOT NULL DEFAULT '0',
  `power_war_assault_victory_count` int(10) unsigned NOT NULL DEFAULT '0',
  `fatigue_grownup_buff` int(10) unsigned NOT NULL DEFAULT '0',
  `village_prev` tinyint(4) NOT NULL DEFAULT '1',
  `last_play_time_powerwar` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emotion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_slot_flag` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `member_dungeon_flag` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  `member_bonus_fatigue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday_effect_time` datetime DEFAULT '0000-00-00 00:00:00',
  `visible_flags` tinyint(4) unsigned NOT NULL DEFAULT '2',
  `add_equipslot_flag` tinyint(4) NOT NULL DEFAULT '0',
  `channel_equipslot_switch` tinyint(4) NOT NULL DEFAULT '0',
  `expand_equipslot_switch` tinyint(4) NOT NULL DEFAULT '0',
  `growth_power_reward` tinyint(4) NOT NULL DEFAULT '0',
  `chaos_respon_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_play_dungeon_index` int(10) unsigned NOT NULL DEFAULT '0',
  `total_play_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`),
  KEY `idx_exp` (`exp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_stat` VALUES (1,2,33067,100,21,21,0,0,'2020-09-03 23:24:34','0','0000-00-00 00:00:00',-1073741794,0,0,0,0,0,0,0,0,0,0,0,'1970-01-01 08:00:00','1970-01-01 08:00:00',0,5220,0,0,0,0,0,'P?\0\0\0\0\0\0\0\0\0\0\0\0\0',0,0,0,0,1,'1970-01-01 08:00:00',0,0,1,1,0,'0000-00-00 00:00:00',2,0,0,0,0,'1970-01-01 08:00:00',5,890);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_titlebook` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `specific_section` blob NOT NULL,
  `general_section` blob NOT NULL,
  `despair` blob NOT NULL,
  `event` blob NOT NULL,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_titlebook` VALUES (1,0xA82F0000789CEDC13101000000C2A0F54F6D094FA000000000000000000000008097012FA80001,0xAE100000789CEDC13101000000C2A0F54F6D0D0FA0000000009E0C10AE0001,0x981C0000789CEDC13101000000C2A0F54F6D0A3FA000000000000000BE061C980001,0x4C0E0000789CEDC13101000000C2A0F54F6D067FA0000000E0330E4C0001);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_tower_despair` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `first_layer_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `today_enter_count` tinyint(4) NOT NULL DEFAULT '0',
  `last_clear_layer` tinyint(4) NOT NULL DEFAULT '0',
  `enter_count_by_week` int(11) NOT NULL DEFAULT '0',
  `m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_clear_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`),
  KEY `m_date` (`m_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_tower_despair_apc` (
  `reg_date` date NOT NULL DEFAULT '0000-00-00',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `seq` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reg_date`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_tower_rank` (
  `tower_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `part_type` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `member_info` char(128) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tower_index`,`part_type`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_tower_rank_top5` (
  `tower_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `part_type` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `member_info` char(128) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tower_index`,`part_type`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_tower_record` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `tower_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `member_info_1` char(32) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `stage_1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `play_time_1` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time_1` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_info_2` char(64) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `stage_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `play_time_2` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time_2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_info_3` char(96) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `stage_3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `play_time_3` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time_3` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_info_4` char(128) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `stage_4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `play_time_4` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time_4` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_trade_limit_info` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `last_trade_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_trade_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nexon_user` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`),
  KEY `idx_mid` (`m_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_view` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `info` blob NOT NULL,
  `slot_effect_count` tinyint(3) unsigned NOT NULL DEFAULT '18',
  `charac_slot_limit` tinyint(3) unsigned NOT NULL DEFAULT '18',
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `charac_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_view` VALUES (1,0xD0140000789CEDCDA11580300043C1D450DBD5988005BA409984B118092C60C1F0EEDC8F4949324E6BEE6ADA637BCFD6AFBD4FF3F2E11D00000000F00307CEDD0501,18,18,'',0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_view_act8` (
  `m_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `info` blob NOT NULL,
  `slot_effect_count` tinyint(3) unsigned NOT NULL DEFAULT '18',
  `charac_slot_limit` tinyint(3) unsigned NOT NULL DEFAULT '18',
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_table2` (
  `account_id` char(30) NOT NULL,
  `charac_id` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_pcroom` (
  `ip_no` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(20) NOT NULL DEFAULT '',
  `firm_name` varchar(50) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  `leader` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(11) NOT NULL DEFAULT '',
  `start_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `end_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip_no`),
  UNIQUE KEY `start_ip` (`ip`,`start_ip`) USING BTREE,
  UNIQUE KEY `end_ip` (`ip`,`end_ip`) USING BTREE,
  KEY `idx_district` (`district`) USING BTREE,
  KEY `idx_leader` (`leader`) USING BTREE,
  KEY `idx_firm_name` (`firm_name`) USING BTREE,
  KEY `idx_ip` (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eco_point` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `eco_point` int(10) unsigned NOT NULL DEFAULT '0',
  `point_500` tinyint(4) NOT NULL DEFAULT '0',
  `point_300` tinyint(4) NOT NULL DEFAULT '0',
  `point_100` tinyint(4) NOT NULL DEFAULT '0',
  `point_50` tinyint(4) NOT NULL DEFAULT '0',
  `point_20` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1106_idol_bring_up` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pot_type` tinyint(4) NOT NULL DEFAULT '0',
  `water_cnt` tinyint(4) NOT NULL DEFAULT '0',
  `give_title_flag` tinyint(4) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `give_title_flag2` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_additional_condition_info` (
  `charac_no` int(11) unsigned NOT NULL DEFAULT '0',
  `current_step` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `reward_step` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_condition_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `current_step` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reward_step` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_conditionable_info` (
  `charac_no` int(11) unsigned NOT NULL DEFAULT '0',
  `current_step` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `reward_step` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_detective_goblin` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_dungeon_clear` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `clear_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `event_dungeon_clear` VALUES (1,5,'2020-09-03 23:24:34');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_levelup_support` (
  `charac_no` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`charac_no`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_used_fatigue_at_mage` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `fatigue_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_visit_room_info` (
  `charac_no` int(11) unsigned NOT NULL DEFAULT '0',
  `visit_cnt` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `visit_charac_no` blob,
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_level_ref` (
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `lev` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_channel` (
  `gc_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gc_now` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_ip` varchar(64) NOT NULL DEFAULT '',
  `gc_port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_max` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_game` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gc_channel` varchar(32) NOT NULL DEFAULT '',
  `gc_ch_group` smallint(5) NOT NULL DEFAULT '0',
  `gc_channeltype` varchar(25) NOT NULL DEFAULT '',
  `gc_up_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gc_swordman_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_fighter_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_gunner_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_mage_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_priest_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_at_gunner_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_thief_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_hangame` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_nexon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gc_no`),
  KEY `idxGC_GAME` (`gc_game`) USING BTREE,
  KEY `idxch_group` (`gc_ch_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3053 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `game_channel` VALUES (1052,0,'192.168.50.10',10052,600,1,'ch.52',52,'[none]','2015-07-19 01:55:26',0,0,0,0,0,0,0,0,0,13),(3001,0,'192.168.50.10',10001,600,1,'ch.1',1,'[deathtower]','2015-08-15 01:56:05',0,0,0,0,0,0,0,0,0,11),(3006,0,'192.168.50.10',10006,600,1,'ch.06',6,'[none]','2015-07-27 18:32:58',0,0,0,0,0,0,0,0,0,3),(3011,1,'192.168.50.10',10011,600,1,'ch.11',11,'[granfloris]','2020-09-03 23:33:53',1,0,0,0,0,0,0,0,1,0),(3012,13,'192.168.50.10',10012,600,1,'ch.12',12,'[granfloris]','2015-07-27 18:33:09',8,1,1,0,1,0,1,0,13,0),(3013,6,'192.168.50.10',10013,600,1,'ch.13',13,'[granfloris]','2015-07-27 18:32:50',3,0,2,1,0,0,0,0,6,0),(3016,0,'192.168.50.10',10016,600,1,'ch.16',16,'[sky_catle]','2015-07-19 21:00:05',0,0,0,0,0,0,0,0,0,0),(3020,0,'192.168.50.10',10020,600,1,'ch.20',20,'[behemoth]','2015-07-19 21:00:21',0,0,0,0,0,0,0,0,0,0),(3021,1,'192.168.50.10',10021,600,1,'ch.21',21,'[behemoth]','2015-09-03 18:24:55',1,0,0,0,0,0,0,0,1,0),(3024,0,'192.168.50.10',10024,600,1,'ch.24',24,'[Alfhlyra]','2015-07-19 20:11:24',0,0,0,0,0,0,0,0,0,0),(3027,0,'192.168.50.10',10027,600,1,'ch.27',27,'[stormpass]','2015-07-20 14:33:40',0,0,0,0,0,0,0,0,0,0),(3031,0,'192.168.50.10',10031,600,1,'ch.31',31,'[Fortress]','2015-07-23 12:34:22',0,0,0,0,0,0,0,0,0,0),(3033,0,'192.168.50.10',10033,600,1,'ch.33',33,'[north_myre]','2015-07-20 14:33:48',0,0,0,0,0,0,0,0,0,0),(3035,0,'192.168.50.10',10035,600,1,'ch.35',35,'[Antwer]','2015-07-19 21:04:36',0,0,0,0,0,0,0,0,0,0),(3037,0,'192.168.50.10',10111,600,1,'ch.37',37,'[seatrain]','2015-07-20 14:33:51',0,0,0,0,0,0,0,0,0,0),(3039,0,'192.168.50.10',10039,600,1,'ch.39',39,'[ancient]','2015-07-19 21:21:36',0,0,0,0,0,0,0,0,0,0),(3052,1,'192.168.50.10',10031,600,1,'ch.52',52,'[none]','2016-05-04 16:14:55',1,0,0,0,0,0,0,0,1,13);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_info` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(11) NOT NULL DEFAULT '',
  `start_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `end_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vendor_no` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_no` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `charge_flag` tinyint(4) NOT NULL DEFAULT '0',
  `settle_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  UNIQUE KEY `ip` (`ip`,`start_ip`,`end_ip`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_ip` (`ip`) USING BTREE,
  KEY `idx_start_ip` (`start_ip`) USING BTREE,
  KEY `idx_end_ip` (`end_ip`) USING BTREE,
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_gen_ref` (
  `item_grade` tinyint(4) NOT NULL DEFAULT '0',
  `rate_type` tinyint(4) NOT NULL DEFAULT '0',
  `money_rate` smallint(6) NOT NULL DEFAULT '0',
  `item_rate` smallint(6) NOT NULL DEFAULT '0',
  `free_rate` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_making_skill_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `weapon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cloth` smallint(5) unsigned NOT NULL DEFAULT '0',
  `leather` smallint(5) unsigned NOT NULL DEFAULT '0',
  `light_armor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `heavy_armor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plate` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amulet` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wrist` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `support` smallint(5) unsigned NOT NULL DEFAULT '0',
  `magic_stone` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_select_std` (
  `item_grade` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  `bottom` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limit_npc_item` (
  `item_index` int(10) unsigned NOT NULL DEFAULT '0',
  `max_count` int(10) unsigned NOT NULL DEFAULT '0',
  `sell_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_num_occupations` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_occupations_charscreen` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `num_occupations_seriaroom` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `num_login_per_min` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `num_logout_per_min` mediumint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_num_occupations` VALUES ('2020-09-03 21:14:58',0,0,0,0),('2020-09-03 21:15:58',0,0,0,0),('2020-09-03 21:16:58',0,0,0,0),('2020-09-03 21:17:58',0,0,0,0),('2020-09-03 21:18:58',0,0,0,0),('2020-09-03 21:19:58',0,0,0,0),('2020-09-03 21:20:58',0,0,0,0),('2020-09-03 21:21:58',0,0,0,0),('2020-09-03 21:22:58',0,0,0,0),('2020-09-03 21:23:58',0,0,0,0),('2020-09-03 21:24:58',0,0,0,0),('2020-09-03 21:25:58',0,0,0,0),('2020-09-03 21:26:58',0,0,0,0),('2020-09-03 21:45:58',0,0,0,0),('2020-09-03 21:46:58',0,0,0,0),('2020-09-03 21:49:41',0,0,0,0),('2020-09-03 21:50:41',1,0,1,0),('2020-09-03 21:51:41',1,0,0,0),('2020-09-03 21:52:41',1,0,0,0),('2020-09-03 21:53:41',1,0,1,2),('2020-09-03 21:54:41',1,0,0,0),('2020-09-03 21:55:41',1,0,0,0),('2020-09-03 21:56:41',1,0,0,0),('2020-09-03 21:57:41',1,0,0,0),('2020-09-03 21:58:41',1,0,0,0),('2020-09-03 21:59:41',1,0,0,0),('2020-09-03 22:00:41',1,0,0,0),('2020-09-03 22:01:41',1,0,0,0),('2020-09-03 22:02:41',1,0,0,0),('2020-09-03 22:03:41',1,0,0,0),('2020-09-03 22:04:41',1,0,0,0),('2020-09-03 22:05:41',1,0,0,0),('2020-09-03 22:06:41',1,0,0,0),('2020-09-03 22:07:41',1,0,1,2),('2020-09-03 22:08:41',1,0,1,2),('2020-09-03 22:09:41',1,0,0,0),('2020-09-03 22:10:41',1,0,1,2),('2020-09-03 22:11:41',1,0,1,2),('2020-09-03 22:12:41',1,0,0,0),('2020-09-03 22:13:41',1,0,0,0),('2020-09-03 22:14:41',1,0,0,0),('2020-09-03 22:15:41',1,0,0,0),('2020-09-03 22:16:41',1,0,0,0),('2020-09-03 22:17:41',1,0,0,0),('2020-09-03 22:18:41',1,0,0,0),('2020-09-03 22:19:41',1,0,0,0),('2020-09-03 22:20:41',1,0,0,0),('2020-09-03 22:21:41',1,0,0,0),('2020-09-03 22:22:41',1,0,0,0),('2020-09-03 22:23:41',1,0,0,0),('2020-09-03 22:24:41',1,0,0,0),('2020-09-03 22:25:41',1,0,0,0),('2020-09-03 22:26:41',1,0,0,0),('2020-09-03 22:27:41',1,0,0,0),('2020-09-03 22:28:41',1,0,0,0),('2020-09-03 22:29:41',1,0,0,0),('2020-09-03 22:30:41',1,0,0,0),('2020-09-03 22:31:41',1,0,0,0),('2020-09-03 22:32:41',1,0,0,0),('2020-09-03 22:33:41',1,0,0,0),('2020-09-03 22:36:22',0,0,0,0),('2020-09-03 22:37:22',0,0,0,0),('2020-09-03 22:38:22',0,0,0,0),('2020-09-03 22:39:22',0,0,0,0),('2020-09-03 22:40:22',0,0,0,0),('2020-09-03 22:41:22',1,0,1,0),('2020-09-03 22:42:22',1,0,0,0),('2020-09-03 22:43:22',1,0,0,0),('2020-09-03 22:44:22',1,0,0,0),('2020-09-03 22:45:22',1,0,0,0),('2020-09-03 22:46:22',1,0,0,0),('2020-09-03 22:47:22',1,0,0,0),('2020-09-03 22:48:22',1,0,0,0),('2020-09-03 22:49:22',1,0,0,0),('2020-09-03 22:50:22',1,0,0,0),('2020-09-03 22:51:22',1,0,0,0),('2020-09-03 22:52:22',1,0,0,0),('2020-09-03 22:53:22',1,0,0,0),('2020-09-03 22:54:22',1,0,0,0),('2020-09-03 22:55:22',1,0,0,0),('2020-09-03 22:56:22',1,0,0,0),('2020-09-03 22:57:22',1,0,0,0),('2020-09-03 22:58:22',1,0,0,0),('2020-09-03 22:59:22',1,0,0,0),('2020-09-03 23:00:22',1,0,0,0),('2020-09-03 23:01:22',1,0,0,0),('2020-09-03 23:02:22',1,0,1,2),('2020-09-03 23:03:22',1,0,0,0),('2020-09-03 23:04:22',1,0,0,0),('2020-09-03 23:05:22',1,0,0,0),('2020-09-03 23:06:22',1,0,0,0),('2020-09-03 23:07:22',1,0,0,0),('2020-09-03 23:08:22',1,0,0,0),('2020-09-03 23:09:22',1,0,1,2),('2020-09-03 23:10:22',1,1,0,0),('2020-09-03 23:11:22',1,1,0,0),('2020-09-03 23:12:22',1,1,0,0),('2020-09-03 23:13:22',1,1,0,0),('2020-09-03 23:14:22',1,1,0,0),('2020-09-03 23:15:22',1,1,0,0),('2020-09-03 23:16:22',1,1,0,0),('2020-09-03 23:17:22',1,1,0,0),('2020-09-03 23:18:22',1,1,0,0),('2020-09-03 23:19:22',1,1,0,0),('2020-09-03 23:20:22',1,1,0,0),('2020-09-03 23:21:22',1,1,0,0),('2020-09-03 23:22:22',1,1,0,0),('2020-09-03 23:23:22',1,1,0,0),('2020-09-03 23:24:22',1,1,0,0),('2020-09-03 23:25:22',1,1,1,1),('2020-09-03 23:26:22',1,1,0,0),('2020-09-03 23:27:22',1,1,0,0),('2020-09-03 23:28:22',1,1,0,0),('2020-09-03 23:29:22',1,1,0,0),('2020-09-03 23:30:22',1,1,0,0),('2020-09-03 23:31:22',1,1,0,0),('2020-09-03 23:32:22',1,1,0,0),('2020-09-03 23:33:22',1,1,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_booster_gage` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `gage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_dungeon` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeon` text NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_dungeon` VALUES (1,'4|1,5|1,3506|1,10000|1');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_gen_ref` (
  `grade` int(11) NOT NULL DEFAULT '0',
  `bottom_grade` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `random_value` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster_reward_ref` (
  `level` smallint(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `monster_reward_ref` VALUES (1,30),(2,40),(3,50),(4,60),(5,70),(6,80),(7,90),(8,100),(9,110),(10,120),(11,130),(12,140),(13,150),(14,160),(15,170),(16,185),(17,201),(18,218),(19,235),(20,253),(21,271),(22,290),(23,310),(24,330),(25,351),(26,372),(27,394),(28,417),(29,440),(30,464),(31,488),(32,513),(33,539),(34,565),(35,592),(36,619),(37,647),(38,676),(39,705),(40,735),(41,765),(42,796),(43,828),(44,860),(45,893),(46,926),(47,960),(48,995),(49,1030),(50,1066),(51,1102),(52,1139),(53,1177),(54,1215),(55,1254),(56,1293),(57,1333),(58,1374),(59,1415),(60,1457),(61,1499),(62,1542),(63,1586),(64,1630),(65,1675),(66,1720),(67,1766),(68,1813),(69,1860),(70,1908),(71,1956),(72,2005),(73,2055),(74,2105),(75,2156),(76,2207),(77,2259),(78,2312),(79,2365),(80,2419),(81,2473),(82,2528),(83,2584),(84,2640),(85,2697),(86,2754),(87,2812),(88,2871),(89,2930),(90,2990),(91,3050),(92,3111),(93,3173),(94,3235),(95,3298),(96,3361),(97,3425),(98,3490),(99,3555),(100,3575);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_charac_quest` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `clear_quest` blob NOT NULL,
  `quest_notify` blob NOT NULL,
  `play_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_1_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_2_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_3_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_4_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_5_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_6_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_7_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_8_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_9` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_9_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_10` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_10_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `auto_clear` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `play_11` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_11_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_12` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_12_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_13` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_13_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_14` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_14_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_15` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_15_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_16` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_16_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_17` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_17_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_18` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_18_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_19` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_19_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `play_20` smallint(5) unsigned NOT NULL DEFAULT '0',
  `play_20_trigger` int(10) unsigned NOT NULL DEFAULT '0',
  `urgentQuestIndex` smallint(6) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `new_charac_quest` VALUES (1,0x30750000789CEDD7B10900301002407FFFA5536583201FB85BC0422C4C0AE66A84A593F2B35211EC343112A8333A0080B7FC5A00000000000000000000000000000000000000000000000058ED0004750012,0x00000000000000000000000000000000000000000000000000000000000000000000000000000000,110,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_rank_avg` (
  `dungeon_index` smallint(6) NOT NULL DEFAULT '0',
  `party_level` smallint(6) NOT NULL DEFAULT '0',
  `clear_count` bigint(20) NOT NULL DEFAULT '0',
  `average` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dungeon_index`,`party_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_grade_expand` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `pvp_grade` int(11) NOT NULL DEFAULT '0',
  `pvp_point` int(11) NOT NULL DEFAULT '0',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`),
  KEY `idx_pvp_grade` (`pvp_grade`) USING BTREE,
  KEY `idx_pvp_point` (`pvp_point`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_grade_ref` (
  `grade` int(11) NOT NULL DEFAULT '0',
  `limit_pts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_result` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `pvp_point` int(11) NOT NULL DEFAULT '0',
  `pvp_grade` int(11) NOT NULL DEFAULT '0',
  `pvp_grade_ext` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `avg_kill_count` int(11) NOT NULL DEFAULT '0',
  `avg_buf_count` int(11) NOT NULL DEFAULT '0',
  `avg_debuf_count` int(11) NOT NULL DEFAULT '0',
  `avg_heal_count` int(11) NOT NULL DEFAULT '0',
  `avg_counter_count` int(11) NOT NULL DEFAULT '0',
  `avg_back_atk_count` int(11) NOT NULL DEFAULT '0',
  `avg_union_hit_count` int(11) NOT NULL DEFAULT '0',
  `avg_overkill_count` int(11) NOT NULL DEFAULT '0',
  `avg_aerial_count` int(11) NOT NULL DEFAULT '0',
  `avg_combo_count` int(11) NOT NULL DEFAULT '0',
  `avg_attacked_count` int(11) NOT NULL DEFAULT '0',
  `avg_deal_damage` int(11) NOT NULL DEFAULT '0',
  `avg_technic` int(11) NOT NULL DEFAULT '0',
  `avg_style` int(11) NOT NULL DEFAULT '0',
  `avg_hit_penalty` int(11) NOT NULL DEFAULT '0',
  `pvp_count` int(11) NOT NULL DEFAULT '0',
  `win_point` int(11) NOT NULL DEFAULT '0',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `play_count` int(10) unsigned NOT NULL DEFAULT '0',
  `play_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pvp_grade_ext_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `pvp_result` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_category` (
  `quest_idx` int(11) NOT NULL DEFAULT '0',
  `quest_name` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`quest_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=sjis;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `quest_category` VALUES (1,'ç¥žè–çš„å®ˆè­·è€…'),(2,'å¤©ç©ºä¹‹åŸŽé–‹æ‹“è€…'),(3,'çƒˆç„°å¾æœè€…'),(4,'ç²¾éˆçš„é­”æ³•é™£'),(5,'äººå¶çš„èª˜æƒ‘'),(6,'çŸ³å·¨äººçµ‚çµè€…'),(7,'å‰å¾€å¤©ç©ºä¹‹åŸŽ'),(8,'ç²¾éˆçš„é­”æ³•é™£'),(9,'å± é¾å‹‡å£«'),(10,'å·¨äººçµæ®ºè€…'),(11,'å†°å¿ƒä¹‹é­‚'),(12,'æ¯›çš®æœé›†å°ˆå®¶'),(13,'èžåŒ–çš„å†°é›ª'),(14,'æ­£ç¾©çš„ä½¿è€…'),(15,'ç´¢è¥¿é›…çš„ç½æ˜Ÿ'),(16,'å…‰ä¹‹åŸŽä¸» - è³½æ ¼å“ˆç‰¹'),(17,'ä¸æ»…çš„è³½æ ¼å“ˆç‰¹'),(18,'å…‰ä¹‹åŸŽä¸»çš„èª•ç”Ÿ'),(19,'å·´å¡çˆ¾çš„éºè¨€'),(20,'ç››è¼‰è¨˜æ†¶çš„æ°´æ™¶çƒ'),(21,'å‘æš—é»‘åŸŽé€²è»'),(22,'èª¿æŸ¥GBLç¥žæ®¿'),(23,'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€'),(24,'ç•°èƒ½ä¹‹å¥§ç§˜'),(25,'AT-5T é§•é§›é”äºº'),(26,'é›œæŠ€æ„›å¥½è€…'),(27,'èµ«äºžè¥¿æ–¯çš„é è¨€'),(28,'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 1'),(29,'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 2'),(30,'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 3'),(31,'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 4'),(32,'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 5'),(33,'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 6'),(34,'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ å®Œ'),(35,'ç·Šæ€¥ä»»å‹™'),(36,'ä»¥å¾©ä»‡çš„åç¾©'),(37,'ç¾…ç‰¹æ–¯çš„è¨˜æ†¶'),(38,'å­˜åœ¨çš„ä½¿å¾’'),(39,'å‰å¾€é˜¿æ³•åˆ©äºžè‡¨æ™‚ç‡Ÿåœ°'),(40,'æˆ°çˆ­çš„å±æ©Ÿ'),(41,'åŠ çˆ¾çš„æ¸¬è©¦'),(42,'å¸ƒèŠæ–¯çš„è¨—ä»˜'),(43,'æ‹¿åŽ»çµ¦è«¾é “'),(44,'å‚³æŸ“ç—…ç ”ç©¶'),(45,'å‚³é”è§£æ¯’è—¥'),(46,'é‚„æ²’å¤ªæ™š'),(47,'é˜»æ­¢æˆ°çˆ­ï¼'),(48,'é€šå‘æš—é»‘åŸŽä¹‹è·¯'),(49,'å¼·æ‚çš„è­‰æ˜Ž'),(50,'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€'),(51,'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€'),(52,'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€'),(53,'æ•£æ’­å‚³æŸ“ç—…çš„æ‘è£'),(54,'æ­£å¼çš„èª¿æŸ¥'),(55,'çŠ¬äººå“ˆå¤š'),(56,'ç›œè³Šåœ˜çš„é ­ç›®'),(57,'èˆ‡æš—ç²¾éˆç›¸åŒçš„è™•å¢ƒ'),(58,'å¾Œå‹¤è£œçµ¦éšŠé•·'),(59,'å…‰æ˜Žå®ˆè­·è€…'),(60,'ç„¡æƒ…çš„ä¼æœ¨å·¥'),(61,'ç« é­šæ•æ‰‹'),(62,'äº¡è€…å³½è°·'),(63,'é è¨€å®¶å¸ŒèŽ«å¨œ'),(64,'è¿·å¦„ä¹‹å¡”'),(65,'è¢«éºå¿˜è€…ä¹‹å¡”'),(66,'è¿·äº‚ä¹‹æ‘å“ˆç©†æž—'),(67,'è¿½æŸ¥ç¬›å­è²'),(68,'é¼ é ­äºº'),(69,'é­”ç¬›ä½¿è€…çš®ç‰¹'),(70,'èª¿æŸ¥æš—é»‘åŸŽ'),(71,'è¬¹æ…Žçš„æ±€é«˜'),(72,'æ²‰é»˜çš„äº¨æ™®åˆ©'),(73,'ç„¡é ­é¨Žå£«'),(74,'è©²å‰å¾€æš—é»‘åŸŽâ€¦'),(75,'æ•µå‹é›£åˆ†'),(76,'ç–‘æƒ‘'),(77,'ç‚ºäº†æš—ç²¾éˆçš„æœªä¾†'),(78,'ç·Šæ€¥ä»»å‹™'),(79,'ç·Šæ€¥ä»»å‹™'),(80,'ç·Šæ€¥ä»»å‹™'),(81,'ç·Šæ€¥ä»»å‹™'),(82,'ç·Šæ€¥ä»»å‹™'),(83,'ç·Šæ€¥ä»»å‹™'),(84,'ç·Šæ€¥ä»»å‹™'),(85,'ç·Šæ€¥ä»»å‹™'),(86,'ç·Šæ€¥ä»»å‹™'),(87,'ç·Šæ€¥ä»»å‹™'),(88,'ç·Šæ€¥ä»»å‹™'),(89,'ç·Šæ€¥ä»»å‹™'),(90,'ç·Šæ€¥ä»»å‹™'),(92,'å¤šå€‹çš„å¡”'),(93,'å¡å‹’ç‰¹è¿½æ“Šè€…'),(94,'æ‡¸è³žä»¤ - æ³¢ç¾…ä¸'),(95,'äº¡è€…å€‘'),(96,'é»‘æš—çš„è¨˜æ†¶'),(97,'æ¯€æ»…çš„ç—•è·¡'),(98,'ç·Šæ€¥ä»»å‹™'),(99,'ç·Šæ€¥ä»»å‹™'),(100,'ç·Šæ€¥ä»»å‹™'),(101,'æž—ç´æ–¯å¤§å”'),(102,'å†’éšªé–‹å§‹'),(103,'å™ªéŸ³å…¬å®³'),(104,'æµå‹•çš„å¢æž— æ ¼è˜­ä¹‹æ£®'),(105,'ç‰›é ­ç¸çš„ç‹‚æš´'),(106,'è®“äººæ„Ÿåˆ°é ­ç—›çš„è²“å¦–ç¾¤'),(107,'å‘¼å–šé–ƒé›»çš„å“¥å¸ƒæž—'),(108,'å‡±è«¾å“¥å¸ƒæž—çš„å‚³èªª'),(109,'åŽ»éŽå¢æž—æ·±è™•çš„äºº'),(110,'æ¯’çš„é¦™æ°£'),(111,'ç‰›é ­çŽ‹è–©çƒå¡”'),(112,'é‚ªæƒ¡æ°£æ¯çš„å‰å…†'),(113,'ç°è‰²çµæ™¶ç¢Žç‰‡'),(114,'é‚ªæƒ¡æ°£æ¯çš„ä¾†æ­·'),(115,'ç·Šæ€¥ä»»å‹™'),(116,'ç˜‹æŽ‰çš„é­”æ³•å¸«å…‹æ‹‰èµ«'),(117,'èª¿æŸ¥åŠ›é‡æ¸›å¼±çš„é­”æ³•é™£'),(118,'é€šç·ä»¤ - æ³¢ç¾…ä¸ (2/2)'),(119,'æ°´è½çŸ³å‡º'),(120,'äººå¶ä¹‹çŽ‹é“æ ¼è£¡'),(121,'çŸ³å·¨äººå¡”'),(122,'é»ƒé‡‘çŸ³å·¨äºº'),(123,'ç ”ç©¶çŸ³å·¨äºº'),(124,'é™¤æŽ‰æ™®æ‹‰å¡”å°¼çš„æ–¹æ³•'),(125,'åŸŽçš„å­˜åœ¨'),(126,'å…‰ä¹‹åŸŽä¸»çš„å®®æ®¿'),(127,'ç§»å‹•çš„è¿·å®®'),(128,'å°å°çŸ³'),(129,'æ­é–‹ç¥žç§˜é¢ç´—'),(130,'æ‡¸è³žä»¤ - ç‰›é ­æ¢°çŽ‹'),(131,'æš—ç²¾éˆçš„åˆ€æ³•'),(132,'è¿·å®®ä¸­çš„åŠå£«'),(133,'æ‰€æœ‰çš„è·¯èšç‚ºä¸€â€¦'),(134,'ç·Šæ€¥ä»»å‹™'),(135,'é€šç·ä»¤ - ç‰›é ­æ¢°çŽ‹ (2/2)'),(136,'æ‡¸è³žä»¤ - èŸ²çŽ‹æˆ®è ±'),(137,'é€šç·ä»¤ - èŸ²çŽ‹æˆ®è ± (2/2)'),(138,'æ‡¸è³žä»¤ - ç‹„ç‘žå‰çš„å¹»å½±'),(139,'é€šç·ä»¤ - ç‹„ç‘žå‰çš„å¹»å½±'),(144,'æ™ºæ…§èˆ‡é‡‘éŒ¢'),(145,'æ³¢è¿ªçˆ¾çš„æŒ‡ä»¤æ›¸'),(146,'æŽƒææ©Ÿå™¨äºº'),(147,'ç›®æ¨™è—å½±é¦¬è–©å–¬'),(148,'å°‹æ‰¾å›å¾’'),(149,'å®Œç¾Žçš„æ¼”æŠ€'),(150,'è±åŽšçš„çŽå‹µ'),(151,'åˆç†åˆ†é…'),(152,'ç·Šæ€¥ä»»å‹™'),(153,'ç·Šæ€¥ä»»å‹™'),(154,'å…‰ä¹‹èˆžæ‰‹é²'),(155,'ç²å¾—å¹²æ“¾ç™¼å°„å™¨'),(156,'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 1'),(157,'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 2'),(158,'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 3'),(159,'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 4'),(160,'ç·Šæ€¥ä»»å‹™'),(161,'ç·Šæ€¥ä»»å‹™'),(162,'ç·Šæ€¥ä»»å‹™'),(163,'ç·Šæ€¥ä»»å‹™'),(164,''),(165,'é›ªå±±çš„å ±ç­” (2/2)'),(166,'ç•°æ¬¡å…ƒç¢Žç‰‡(é‡è¤‡)'),(172,'å¼·åŒ–æ­¦å™¨'),(173,'å°ˆé–€è·æ¥­ - æ”¶é›†ç„¡è‰²å°'),(174,'å°ˆé–€è·æ¥­ - æ”¶é›†è—è‰²å°'),(175,'å°ˆé–€è·æ¥­ - æ”¶é›†é»‘è‰²å°'),(176,'å°ˆé–€è·æ¥­ - æ”¶é›†ç´…è‰²å°'),(177,'å°ˆé–€è·æ¥­ - æ”¶é›†ç™½è‰²å°'),(178,'å°ˆé–€è·æ¥­ - å…Œæ›ä¸‹ç´šå…ƒ'),(179,'å°ˆé–€è·æ¥­ - å…Œæ›ä¸Šç´šå…ƒ'),(180,'å°ˆé–€è·æ¥­ - å…Œæ›å¹³å‡¡çš„'),(181,'å°ˆé–€è·æ¥­ - å…Œæ›æ·¬ç…‰çš„'),(182,'ç·Šæ€¥ä»»å‹™'),(183,'ç·Šæ€¥ä»»å‹™'),(184,'ç·Šæ€¥ä»»å‹™'),(185,'ç·Šæ€¥ä»»å‹™'),(186,'ç·Šæ€¥ä»»å‹™'),(187,'ç·Šæ€¥ä»»å‹™'),(188,'ç·Šæ€¥ä»»å‹™'),(189,'ç·Šæ€¥ä»»å‹™'),(190,'ç·Šæ€¥ä»»å‹™'),(191,'ç·Šæ€¥ä»»å‹™'),(192,'ç·Šæ€¥ä»»å‹™'),(193,'ç·Šæ€¥ä»»å‹™'),(194,'ç·Šæ€¥ä»»å‹™'),(195,'ç·Šæ€¥ä»»å‹™'),(196,'ç·Šæ€¥ä»»å‹™'),(197,'ç·Šæ€¥ä»»å‹™'),(198,'ç·Šæ€¥ä»»å‹™'),(199,'ç·Šæ€¥ä»»å‹™'),(200,'ç·Šæ€¥ä»»å‹™'),(201,'è¾›é”éºå¤±çš„æ§Œå­'),(202,'å¥‡æ€ªçŸ³é ­'),(203,'æš—é»‘é›·é³´å»¢å¢Ÿ'),(204,'ç·Šæ€¥ä»»å‹™'),(205,'ç·Šæ€¥ä»»å‹™'),(206,'å°ˆé–€è·æ¥­ - å…Œæ›å¼·éŸŒçš„'),(207,'ç·Šæ€¥ä»»å‹™'),(208,'ç·Šæ€¥ä»»å‹™'),(209,'ç·Šæ€¥ä»»å‹™'),(210,'ç·Šæ€¥ä»»å‹™'),(211,'å­¸ç¿’æŠ€èƒ½ 2'),(212,'æ‘æ°‘çš„å§”è¨— - ä¸€èˆ¬ä»»å‹™'),(213,'ç¨±è™Ÿç°¿ 1'),(214,'ç¨±è™Ÿç°¿ 2'),(215,'é­”æ³•å°å°é“å…·'),(216,'è§£é™¤é­”æ³•å°å°'),(217,'ç²å¾—ç„¡è‰²å°æ™¶å¡Šç¢Žç‰‡'),(218,'å†ç”Ÿé­”æ³•å°å°'),(219,'é­”æ³•å°å°è®Šæ›'),(220,'ç·Šæ€¥ä»»å‹™'),(221,'ç·Šæ€¥ä»»å‹™'),(222,'ç·Šæ€¥ä»»å‹™'),(223,'ç·Šæ€¥ä»»å‹™'),(224,'ç·Šæ€¥ä»»å‹™'),(225,'ç·Šæ€¥ä»»å‹™'),(226,'ç·Šæ€¥ä»»å‹™'),(227,'ç·Šæ€¥ä»»å‹™'),(228,'ç·Šæ€¥ä»»å‹™'),(229,'ç·Šæ€¥ä»»å‹™'),(230,'ç·Šæ€¥ä»»å‹™'),(231,'ç·Šæ€¥ä»»å‹™'),(232,'ç·Šæ€¥ä»»å‹™'),(233,'ç·Šæ€¥ä»»å‹™'),(234,'ç·Šæ€¥ä»»å‹™'),(235,'ç·Šæ€¥ä»»å‹™'),(236,'ç·Šæ€¥ä»»å‹™'),(237,'ç·Šæ€¥ä»»å‹™'),(238,'ç·Šæ€¥ä»»å‹™'),(239,'ç·Šæ€¥ä»»å‹™'),(240,'ç·Šæ€¥ä»»å‹™'),(241,'ç·Šæ€¥ä»»å‹™'),(242,'ç·Šæ€¥ä»»å‹™'),(243,'ç·Šæ€¥ä»»å‹™'),(244,'ç·Šæ€¥ä»»å‹™'),(245,'ç·Šæ€¥ä»»å‹™'),(246,'ç·Šæ€¥ä»»å‹™'),(247,'ç·Šæ€¥ä»»å‹™'),(248,'ç·Šæ€¥ä»»å‹™'),(249,'ç·Šæ€¥ä»»å‹™'),(250,'ç·Šæ€¥ä»»å‹™'),(251,'ç·Šæ€¥ä»»å‹™'),(252,'ç·Šæ€¥ä»»å‹™'),(253,'ç·Šæ€¥ä»»å‹™'),(254,'ç·Šæ€¥ä»»å‹™'),(255,'ç·Šæ€¥ä»»å‹™'),(256,'ç·Šæ€¥ä»»å‹™'),(257,'ç·Šæ€¥ä»»å‹™'),(258,'ç·Šæ€¥ä»»å‹™'),(259,'ç·Šæ€¥ä»»å‹™'),(260,'ç·Šæ€¥ä»»å‹™'),(261,'ç·Šæ€¥ä»»å‹™'),(262,'ç·Šæ€¥ä»»å‹™'),(263,'ç·Šæ€¥ä»»å‹™'),(264,'ç·Šæ€¥ä»»å‹™'),(265,'ç·Šæ€¥ä»»å‹™'),(266,'ç·Šæ€¥ä»»å‹™'),(267,'ç·Šæ€¥ä»»å‹™'),(268,'ç·Šæ€¥ä»»å‹™'),(269,'ç·Šæ€¥ä»»å‹™'),(270,'ç·Šæ€¥ä»»å‹™'),(271,'ç·Šæ€¥ä»»å‹™'),(272,'ç·Šæ€¥ä»»å‹™'),(273,'ç·Šæ€¥ä»»å‹™'),(274,'ç·Šæ€¥ä»»å‹™'),(275,'ç·Šæ€¥ä»»å‹™'),(276,'ç·Šæ€¥ä»»å‹™'),(277,'ç·Šæ€¥ä»»å‹™'),(278,'ç·Šæ€¥ä»»å‹™'),(279,'ç·Šæ€¥ä»»å‹™'),(280,'ç·Šæ€¥ä»»å‹™'),(281,'ç·Šæ€¥ä»»å‹™'),(282,'ç·Šæ€¥ä»»å‹™'),(283,'ç·Šæ€¥ä»»å‹™'),(284,'ç·Šæ€¥ä»»å‹™'),(285,'ç·Šæ€¥ä»»å‹™'),(286,'ç·Šæ€¥ä»»å‹™'),(287,'ç·Šæ€¥ä»»å‹™'),(288,'ç·Šæ€¥ä»»å‹™'),(289,'ç·Šæ€¥ä»»å‹™'),(290,'ç²¾ç…‰ç‚­'),(291,'å¤©ç©ºä¹‹æµ·çš„ç´”æ·¨æ°´'),(292,'ç·Šæ€¥ä»»å‹™'),(293,'ç·Šæ€¥ä»»å‹™'),(294,'ç·Šæ€¥ä»»å‹™'),(295,'ç·Šæ€¥ä»»å‹™'),(296,'ç·Šæ€¥ä»»å‹™'),(297,'ç·Šæ€¥ä»»å‹™'),(298,'å¤±çœ ç—‡'),(299,'ç·Šæ€¥ä»»å‹™'),(300,'ç·Šæ€¥ä»»å‹™'),(301,'ç·Šæ€¥ä»»å‹™'),(302,'ç·Šæ€¥ä»»å‹™'),(303,'ç·Šæ€¥ä»»å‹™'),(304,'ç·Šæ€¥ä»»å‹™'),(305,'ç·Šæ€¥ä»»å‹™'),(306,'ç·Šæ€¥ä»»å‹™'),(307,'ç·Šæ€¥ä»»å‹™'),(308,'ç·Šæ€¥ä»»å‹™'),(309,'ç·Šæ€¥ä»»å‹™'),(310,'ç·Šæ€¥ä»»å‹™'),(311,'ç·Šæ€¥ä»»å‹™'),(312,'ç·Šæ€¥ä»»å‹™'),(313,'ç·Šæ€¥ä»»å‹™'),(314,'ç·Šæ€¥ä»»å‹™'),(315,'ç·Šæ€¥ä»»å‹™'),(316,'ç·Šæ€¥ä»»å‹™'),(317,'ç·Šæ€¥ä»»å‹™'),(318,'ç·Šæ€¥ä»»å‹™'),(319,'ç·Šæ€¥ä»»å‹™'),(320,'ç·Šæ€¥ä»»å‹™'),(321,'ç·Šæ€¥ä»»å‹™'),(322,'ç·Šæ€¥ä»»å‹™'),(323,'ç·Šæ€¥ä»»å‹™'),(324,'ç·Šæ€¥ä»»å‹™'),(325,'ç·Šæ€¥ä»»å‹™'),(326,'ç·Šæ€¥ä»»å‹™'),(327,'ç·Šæ€¥ä»»å‹™'),(328,'ç·Šæ€¥ä»»å‹™'),(329,'ç·Šæ€¥ä»»å‹™'),(330,'ç·Šæ€¥ä»»å‹™'),(331,'ç·Šæ€¥ä»»å‹™'),(332,'ç·Šæ€¥ä»»å‹™'),(333,'ç·Šæ€¥ä»»å‹™'),(334,'ç·Šæ€¥ä»»å‹™'),(335,'ç·Šæ€¥ä»»å‹™'),(336,'ç·Šæ€¥ä»»å‹™'),(337,'ç·Šæ€¥ä»»å‹™'),(338,'ç·Šæ€¥ä»»å‹™'),(339,'ç·Šæ€¥ä»»å‹™'),(340,'ç·Šæ€¥ä»»å‹™'),(341,'ç·Šæ€¥ä»»å‹™'),(342,'ç·Šæ€¥ä»»å‹™'),(343,'ç·Šæ€¥ä»»å‹™'),(344,'ç·Šæ€¥ä»»å‹™'),(345,'éˆé­‚çš„æ‚²å‚·å¶å–Š'),(346,'è£½ä½œéŽ®é­‚é¦™'),(347,'å‚³éžéŽ®é­‚é¦™'),(348,'ç·Šæ€¥ä»»å‹™'),(349,'å‘é˜¿è²çˆ¾ç‰¹å­¸ç¿’æŠ€èƒ½ 1'),(350,'ç·Šæ€¥ä»»å‹™'),(351,'ç·Šæ€¥ä»»å‹™'),(352,'ç·Šæ€¥ä»»å‹™'),(353,'ç·Šæ€¥ä»»å‹™'),(354,'ç·Šæ€¥ä»»å‹™'),(355,'å‘é˜¿è²çˆ¾ç‰¹å­¸ç¿’æŠ€èƒ½ 2'),(356,'æ²’æœ‰é€å‡ºçš„ä¿¡'),(357,'å§”è¨—è§£è®€ä¿¡ä»¶'),(358,'å¤æ´›å…‹çš„æ¢ä»¶'),(359,'å‚³é”è¢«è§£è®€çš„ä¿¡ä»¶'),(360,'æœªè¢«ä¿®å¾©çš„é­”æ³•é™£'),(361,'è®Šå¼·çš„å¤©ç©ºä¹‹åŸŽæ°£æ¯'),(362,'æ‡¸ç©ºåŸŽçš„å­˜åœ¨'),(363,'æ‡¸ç©ºåŸŽçš„ç¬¬ä¸€å€‹é—œå£'),(364,'æ‡¸ç©ºåŸŽçš„ç¬¬äºŒå€‹é—œå£'),(365,'æ‡¸ç©ºåŸŽçš„ç¬¬ä¸‰å€‹é—œå£'),(366,'ç·Šæ€¥ä»»å‹™'),(367,'æ‡¸ç©ºåŸŽçš„æœ€å¾Œé—œå£'),(368,'ç·Šæ€¥ä»»å‹™'),(369,'ç·Šæ€¥ä»»å‹™'),(370,'ç·Šæ€¥ä»»å‹™'),(371,'ç·Šæ€¥ä»»å‹™'),(372,'ç·Šæ€¥ä»»å‹™'),(373,'ç·Šæ€¥ä»»å‹™'),(374,'ç·Šæ€¥ä»»å‹™'),(375,'ç·Šæ€¥ä»»å‹™'),(376,'ç·Šæ€¥ä»»å‹™'),(377,'ç·Šæ€¥ä»»å‹™'),(378,'ç·Šæ€¥ä»»å‹™'),(379,'ç·Šæ€¥ä»»å‹™'),(380,'ç·Šæ€¥ä»»å‹™'),(381,'ç·Šæ€¥ä»»å‹™'),(382,'ç·Šæ€¥ä»»å‹™'),(383,'ç·Šæ€¥ä»»å‹™'),(384,'ç·Šæ€¥ä»»å‹™'),(385,'ç·Šæ€¥ä»»å‹™'),(386,'ç·Šæ€¥ä»»å‹™'),(387,'ç·Šæ€¥ä»»å‹™'),(388,'[å¤ä»£åœ°ä¸‹åŸŽ] èª°çš„æˆ°çˆ­'),(389,'[å¤ä»£åœ°ä¸‹åŸŽ] åŠ çˆ¾çš„æƒ±'),(390,'[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„'),(391,'[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„'),(392,'[å¤ä»£åœ°ä¸‹åŸŽ] è©¢å•è³½èŽ‰'),(393,'[å¤ä»£åœ°ä¸‹åŸŽ] æ›¾ç¶“è¼ç…Œ'),(394,'[å¤ä»£åœ°ä¸‹åŸŽ] ç‚ºäº†å—è‹¦'),(395,'ç·Šæ€¥ä»»å‹™'),(396,'[å¤ä»£åœ°ä¸‹åŸŽ] å†æ‰¾è³½èŽ‰'),(397,'[å¤ä»£åœ°ä¸‹åŸŽ] çŽ‹çš„äº”é¨Ž'),(398,'[å¤ä»£åœ°ä¸‹åŸŽ] å‰å¤§çš„æ³¢'),(399,'[å¤ä»£åœ°ä¸‹åŸŽ] é¢¨ä¹‹æ¸¦è˜‡'),(400,'[å¤ä»£åœ°ä¸‹åŸŽ] å®ˆè­·ä¹‹é‚'),(401,'[å¤ä»£åœ°ä¸‹åŸŽ] å†°ä¹‹åŸƒæ–¯'),(402,'[å¤ä»£åœ°ä¸‹åŸŽ] ç‚Žä¹‹å¤æ‹‰'),(403,'[å¤ä»£åœ°ä¸‹åŸŽ] å…‰ä¹‹æ²ƒå¾·'),(404,'ç·Šæ€¥ä»»å‹™'),(408,'[å¤ä»£åœ°ä¸‹åŸŽ] å†æŽ¢çŽ‹çš„'),(409,'ç·Šæ€¥ä»»å‹™'),(410,'ç·Šæ€¥ä»»å‹™'),(411,'ç·Šæ€¥ä»»å‹™'),(412,'æˆ°çˆ­çš„ä¿®ç·´'),(413,'ç†”å²©ç©´çš„ä¿®ç·´'),(414,'å¸ƒèŠæ–¯ä¹Ÿç„¡æ³•é”åˆ°çš„éšŽ'),(415,'æž—ç´æ–¯çš„å¹«åŠ©'),(416,'å¤æ´›å…‹çš„è¨—ä»˜'),(417,'åŽŸè«’ï¼Ÿ å ±ä»‡ï¼Ÿ'),(418,'ç·Šæ€¥ä»»å‹™'),(419,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸åœ‹é–“è«œ'),(420,'[å¤ä»£åœ°ä¸‹åŸŽ] è©¢å•å¡å¦®'),(421,'[å¤ä»£åœ°ä¸‹åŸŽ] å‘åœŸç½è«®'),(422,'[å¤ä»£åœ°ä¸‹åŸŽ] é‹æ°£è©¦é©—'),(423,'[å¤ä»£åœ°ä¸‹åŸŽ] åœŸç½äººå¶'),(424,'[å¤ä»£åœ°ä¸‹åŸŽ] åšè‚¯äººå¶'),(425,'[å¤è€]å—¯ï¼Ÿ åœŸç½ï¼Ÿ'),(426,'[å¤ä»£åœ°ä¸‹åŸŽ] åšè‚¯çš„åŠ'),(427,'[å¤ä»£åœ°ä¸‹åŸŽ] å†æ¬¡æŠ½é¸'),(428,'[å¤ä»£åœ°ä¸‹åŸŽ] èª¿æŸ¥æ¯”çˆ¾'),(429,'[å¤è€]å¸åœ‹çš„å¯¦é©—â€¦ é‚„'),(430,'[å¤ä»£åœ°ä¸‹åŸŽ] å…ç–«è† å›Š'),(431,'[å¤ä»£åœ°ä¸‹åŸŽ] æ”¶è³¼æ³°æ‹‰'),(432,'[å¤ä»£åœ°ä¸‹åŸŽ] ä¸èƒ½å€’æµ'),(433,'ç·Šæ€¥ä»»å‹™'),(434,'ç·Šæ€¥ä»»å‹™'),(435,'ç·Šæ€¥ä»»å‹™'),(436,'ç·Šæ€¥ä»»å‹™'),(437,'ç·Šæ€¥ä»»å‹™'),(438,'å¤§ä½¿çš„ä¸‹è½'),(439,'ç·Šæ€¥ä»»å‹™'),(440,'ç·Šæ€¥ä»»å‹™'),(441,'è¢«æ¶èµ°çš„é‘°åŒ™'),(442,'èˆ‡é‚ªé¾å°æ±º'),(443,'é‚ªå¿µé«”'),(444,'è‚¢è§£çš„é‚ªé¾èº«é«”'),(445,'é‚ªé¾çš„å°å°'),(446,'è§£æ•‘æ‚²å‚·çš„éˆé­‚'),(447,'å¯©åˆ¤è€…é¦¬å¡žçˆ¾çš„æ—¥è¨˜ - '),(448,'é¦¬å¡žçˆ¾ç•™ä¸‹çš„ç·šç´¢'),(449,'è¡€è…¥æ·¨åŒ–çš„ç´‹ç« '),(450,'è¡€è…¥ä¼Šæ©'),(451,'å¯ç–‘çš„ä¿¡æ¯'),(452,'æˆ‘åœ¨å¤§é™¸çš„è‚šå­è£¡'),(453,'å¯©åˆ¤è€…é¦¬å¡žçˆ¾çš„æ—¥è¨˜ - '),(454,'ç¾åœ¨ä½ å¯ä»¥å®‰å¿ƒçš„èµ°äº†'),(455,'ç·Šæ€¥ä»»å‹™'),(456,'ç·Šæ€¥ä»»å‹™'),(457,'ç·Šæ€¥ä»»å‹™'),(458,'ç·Šæ€¥ä»»å‹™'),(459,'ç·Šæ€¥ä»»å‹™'),(460,'ç·Šæ€¥ä»»å‹™'),(461,'ç·Šæ€¥ä»»å‹™'),(462,'ç·Šæ€¥ä»»å‹™'),(487,'ç·Šæ€¥ä»»å‹™'),(488,'ç·Šæ€¥ä»»å‹™'),(489,'ç·Šæ€¥ä»»å‹™'),(490,'ç·Šæ€¥ä»»å‹™'),(491,'ç·Šæ€¥ä»»å‹™'),(492,'ç·Šæ€¥ä»»å‹™'),(493,'ç·Šæ€¥ä»»å‹™'),(494,'ç·Šæ€¥ä»»å‹™'),(495,'ç·Šæ€¥ä»»å‹™'),(496,'ç·Šæ€¥ä»»å‹™'),(497,'ç·Šæ€¥ä»»å‹™'),(498,'ç·Šæ€¥ä»»å‹™'),(499,'ç·Šæ€¥ä»»å‹™'),(500,'ç·Šæ€¥ä»»å‹™'),(501,'é¬¼åŠå£«ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾'),(502,'é¬¼åŠå£«ä¹‹è·¯ - æ‰€è¬‚çš„è½‰'),(503,'æ›´å¼·çš„æ•µäºº'),(504,'G.S.Dçš„è©¦é©—'),(505,'æ–°æ­¦å™¨çš„å¨åŠ›'),(506,'é¬¼åŠå£«ä¹‹è·¯ - G.S.D'),(507,'é¬¼åŠå£«ä¹‹è·¯ - ä»»å‹™å•†åº—'),(508,'ç·Šæ€¥ä»»å‹™'),(509,'ç·Šæ€¥ä»»å‹™'),(510,'ç·Šæ€¥ä»»å‹™'),(511,'æ ¼é¬¥å®¶ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾'),(512,'æ ¼é¬¥å®¶ä¹‹è·¯ - æ‰€è¬‚çš„è½‰'),(513,'æ›´å¼·çš„æ•µäºº'),(514,'G.S.Dçš„è©¦é©—'),(515,'æ–°æ­¦å™¨çš„å¨åŠ›'),(516,'æ ¼é¬¥å®¶ä¹‹è·¯ - é¢¨éœ‡'),(517,'æ ¼é¬¥å®¶ä¹‹è·¯ - ä»»å‹™å•†åº—'),(518,'ç·Šæ€¥ä»»å‹™'),(519,'ç·Šæ€¥ä»»å‹™'),(520,'ç·Šæ€¥ä»»å‹™'),(521,'ç¥žæ§ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾çš„'),(522,'ç¥žæ§ä¹‹è·¯ - æ‰€è¬‚çš„è½‰è·'),(523,'æ›´å¼·çš„æ•µäºº'),(524,'G.S.Dçš„è©¦é©—'),(525,'æ–°æ­¦å™¨çš„å¨åŠ›'),(526,'ç¥žæ§ä¹‹è·¯ - å‡±èŽ‰'),(527,'ç¥žæ§æ‰‹ä¹‹è·¯ - ä»»å‹™å•†åº—'),(528,'ç·Šæ€¥ä»»å‹™'),(529,'ç·Šæ€¥ä»»å‹™'),(530,'ç·Šæ€¥ä»»å‹™'),(531,'é­”æ³•å¸«ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾'),(532,'é­”æ³•å¸«ä¹‹è·¯ - æ‰€è¬‚çš„è½‰'),(533,'æ›´å¼·çš„æ•µäºº'),(534,'G.S.Dçš„è©¦é©—'),(535,'æ–°æ­¦å™¨çš„å¨åŠ›'),(536,'é­”æ³•å¸«ä¹‹è·¯ - èŽŽè˜­'),(537,'é­”æ³•å¸«ä¹‹è·¯ - ä»»å‹™å•†åº—'),(538,'ç·Šæ€¥ä»»å‹™'),(539,'ç·Šæ€¥ä»»å‹™'),(540,'ç·Šæ€¥ä»»å‹™'),(541,'è–è·è€…ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾'),(542,'è–è·è€…ä¹‹è·¯ - æ‰€è¬‚çš„è½‰'),(543,'æ›´å¼·çš„æ•µäºº'),(544,'G.S.Dçš„è©¦é©—'),(545,'æ–°æ­¦å™¨çš„å¨åŠ›'),(546,'è–è·è€…ä¹‹è·¯ - æ­Œè˜­è’‚æ–¯'),(547,'è–è·è€…ä¹‹è·¯ - ä»»å‹™å•†åº—'),(548,'ç·Šæ€¥ä»»å‹™'),(549,'æ¸›è¼•ä¿¡å¾’çš„ç—›è‹¦'),(550,'è«‹å¯¬æ•æˆ‘'),(551,'å¢æž—æŽ¢éšª'),(552,'è®Šç•°çš„æ¨¹ç²¾'),(553,'ç·Šæ€¥ä»»å‹™'),(554,'é»‘æš—çš„ç…‰ç„'),(555,'å‘ç„¡ç›¡çš„é»‘æš—å‰é€²'),(556,'ç·Šæ€¥ä»»å‹™'),(557,'å®¿æ•µ'),(558,'å¤©å¸·å·¨ç¸ä¸Šçš„æœ€é«˜é»ž'),(559,'ç ´å£žä¿¡å¾’çš„æ­¦å™¨'),(560,'ç·Šæ€¥ä»»å‹™'),(561,'æ‡¸è³žä»¤: å¯¶è—çµäººç´®å¡é'),(562,'å‰å¾€ç¬¬ä¸€è„Šæ¤Ž'),(563,'è§£æ”¾éˆé­‚'),(564,'ç·Šæ€¥ä»»å‹™'),(565,'ç·Šæ€¥ä»»å‹™'),(566,'ç·Šæ€¥ä»»å‹™'),(567,'ç·Šæ€¥ä»»å‹™'),(568,'ç·Šæ€¥ä»»å‹™'),(569,'ç·Šæ€¥ä»»å‹™'),(570,'ç·Šæ€¥ä»»å‹™'),(571,'ç·Šæ€¥ä»»å‹™'),(572,'ç·Šæ€¥ä»»å‹™'),(573,'åˆè¦‹ä½¿å¾’'),(574,'ç·Šæ€¥ä»»å‹™'),(575,'ç·Šæ€¥ä»»å‹™'),(576,'ç·Šæ€¥ä»»å‹™'),(577,'ç·Šæ€¥ä»»å‹™'),(578,'ç·Šæ€¥ä»»å‹™'),(579,'ç·Šæ€¥ä»»å‹™'),(580,'ç·Šæ€¥ä»»å‹™'),(581,'ç·Šæ€¥ä»»å‹™'),(582,'ç·Šæ€¥ä»»å‹™'),(583,'ç·Šæ€¥ä»»å‹™'),(584,'ç·Šæ€¥ä»»å‹™'),(585,'ç·Šæ€¥ä»»å‹™'),(586,'ç·Šæ€¥ä»»å‹™'),(587,'ç·Šæ€¥ä»»å‹™'),(588,'ç·Šæ€¥ä»»å‹™'),(589,'ç·Šæ€¥ä»»å‹™'),(590,'ç·Šæ€¥ä»»å‹™'),(591,'ç·Šæ€¥ä»»å‹™'),(592,'ç·Šæ€¥ä»»å‹™'),(593,'ç·Šæ€¥ä»»å‹™'),(594,'ç·Šæ€¥ä»»å‹™'),(595,'ç·Šæ€¥ä»»å‹™'),(596,'ç·Šæ€¥ä»»å‹™'),(597,'ç·Šæ€¥ä»»å‹™'),(598,'ç·Šæ€¥ä»»å‹™'),(599,'ç·Šæ€¥ä»»å‹™'),(600,'ç·Šæ€¥ä»»å‹™'),(601,'ç·Šæ€¥ä»»å‹™'),(602,'ç·Šæ€¥ä»»å‹™'),(603,'ç·Šæ€¥ä»»å‹™'),(604,'ç·Šæ€¥ä»»å‹™'),(605,'ç·Šæ€¥ä»»å‹™'),(606,'ç·Šæ€¥ä»»å‹™'),(607,'ç·Šæ€¥ä»»å‹™'),(608,'ç·Šæ€¥ä»»å‹™'),(609,'ç·Šæ€¥ä»»å‹™'),(610,'ç·Šæ€¥ä»»å‹™'),(611,'ç·Šæ€¥ä»»å‹™'),(612,'ç·Šæ€¥ä»»å‹™'),(613,'ç·Šæ€¥ä»»å‹™'),(614,'ç·Šæ€¥ä»»å‹™'),(615,'ç·Šæ€¥ä»»å‹™'),(616,'ç·Šæ€¥ä»»å‹™'),(617,'ç·Šæ€¥ä»»å‹™'),(618,'ç·Šæ€¥ä»»å‹™'),(619,'ç¥žæ§ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾çš„'),(620,'ç¥žæ§ä¹‹è·¯ - æ‰€è¬‚çš„è½‰è·'),(621,'æ›´å¼·çš„æ•µäºº'),(622,'G.S.Dçš„è©¦é©—'),(623,'æ–°æ­¦å™¨çš„å¨åŠ›'),(624,'ç¥žæ§ä¹‹è·¯ - å‡±èŽ‰'),(625,'ç¥žæ§æ‰‹ä¹‹è·¯ - ä»»å‹™å•†åº—'),(626,'ç·Šæ€¥ä»»å‹™'),(627,'è®“æµæµªçš„çš„éˆé­‚å¾—åˆ°å®‰'),(628,'ç·Šæ€¥ä»»å‹™'),(629,'ç·Šæ€¥ä»»å‹™'),(630,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³¢ç¾…ä¸çš„'),(631,'ç›œè³Šä¹‹è·¯ - èµ«é “ç‘ªçˆ¾çš„'),(632,'ç›œè³Šä¹‹è·¯ - æ‰€è¬‚çš„è½‰è·'),(633,'æ›´å¼·çš„æ•µäºº'),(634,'G.S.Dçš„è©¦é©—'),(635,'æ–°æ­¦å™¨çš„å¨åŠ›'),(636,'ç›œè³Šä¹‹è·¯ - ç±³å¥ˆç‰¹'),(637,'ç›œè³Šä¹‹è·¯ - ä»»å‹™å•†åº—'),(638,'[å¤ä»£åœ°ä¸‹åŸŽ] çªç„¶ä¾†è¥²'),(639,'[å¤ä»£åœ°ä¸‹åŸŽ] åŠ çˆ¾çš„æƒ±'),(640,'[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„'),(641,'[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„'),(642,'[å¤ä»£åœ°ä¸‹åŸŽ] è©¢å•è³½èŽ‰'),(643,'[å¤ä»£åœ°ä¸‹åŸŽ] æ›¾ç¶“è¼ç…Œ'),(644,'[å¤ä»£åœ°ä¸‹åŸŽ] ç‚ºäº†å—è‹¦'),(645,'[å¤ä»£åœ°ä¸‹åŸŽ] å†æ‰¾è³½èŽ‰'),(646,'[å¤ä»£åœ°ä¸‹åŸŽ] çŽ‹çš„äº”é¨Ž'),(647,'[å¤ä»£åœ°ä¸‹åŸŽ] å‰å¤§çš„æ³¢'),(648,'ç·Šæ€¥ä»»å‹™'),(649,'ç©¿æˆ´è¼”åŠ©è£å‚™ (2/2)'),(650,'ä½©æˆ´é­”æ³•çŸ³ (2/2)'),(651,'ç·Šæ€¥ä»»å‹™'),(652,'ç·Šæ€¥ä»»å‹™'),(653,'ç·Šæ€¥ä»»å‹™'),(654,'ç·Šæ€¥ä»»å‹™'),(655,'ç·Šæ€¥ä»»å‹™'),(656,'ç·Šæ€¥ä»»å‹™'),(657,'ç·Šæ€¥ä»»å‹™'),(658,'ç·Šæ€¥ä»»å‹™'),(659,'ç·Šæ€¥ä»»å‹™'),(660,'ç·Šæ€¥ä»»å‹™'),(661,'ç·Šæ€¥ä»»å‹™'),(662,'ç·Šæ€¥ä»»å‹™'),(663,'ç·Šæ€¥ä»»å‹™'),(664,'ç·Šæ€¥ä»»å‹™'),(665,'ç·Šæ€¥ä»»å‹™'),(666,'ç·Šæ€¥ä»»å‹™'),(667,'ç·Šæ€¥ä»»å‹™'),(668,'ç·Šæ€¥ä»»å‹™'),(669,'ç·Šæ€¥ä»»å‹™'),(670,'ç·Šæ€¥ä»»å‹™'),(671,'ç·Šæ€¥ä»»å‹™'),(672,'ç·Šæ€¥ä»»å‹™'),(673,'ç·Šæ€¥ä»»å‹™'),(674,'ç©¿æˆ´è¼”åŠ©è£å‚™ (1/2)'),(675,'ä½©æˆ´é­”æ³•çŸ³ (1/2)'),(676,'ç©¿æˆ´è¼”åŠ©è£å‚™'),(677,'ä½©æˆ´é­”æ³•çŸ³'),(678,'ç·Šæ€¥ä»»å‹™'),(679,'æ™¶å¡Šçš„ç§˜å¯†'),(680,'ç·Šæ€¥ä»»å‹™'),(681,'ç·Šæ€¥ä»»å‹™'),(682,'ç·Šæ€¥ä»»å‹™'),(683,'ç·Šæ€¥ä»»å‹™'),(684,'ç·Šæ€¥ä»»å‹™'),(685,'ç·Šæ€¥ä»»å‹™'),(686,'ç·Šæ€¥ä»»å‹™'),(687,'ç·Šæ€¥ä»»å‹™'),(688,'ç·Šæ€¥ä»»å‹™'),(689,'ç·Šæ€¥ä»»å‹™'),(690,'ç·Šæ€¥ä»»å‹™'),(691,'ç·Šæ€¥ä»»å‹™'),(692,'ç·Šæ€¥ä»»å‹™'),(693,'ç·Šæ€¥ä»»å‹™'),(694,'ç·Šæ€¥ä»»å‹™'),(695,'ç·Šæ€¥ä»»å‹™'),(696,'ç·Šæ€¥ä»»å‹™'),(697,'ç·Šæ€¥ä»»å‹™'),(698,'ç·Šæ€¥ä»»å‹™'),(699,'ç·Šæ€¥ä»»å‹™'),(700,'ç·Šæ€¥ä»»å‹™'),(701,'ç·Šæ€¥ä»»å‹™'),(702,'ç·Šæ€¥ä»»å‹™'),(703,'ç·Šæ€¥ä»»å‹™'),(704,'ç·Šæ€¥ä»»å‹™'),(705,'ç·Šæ€¥ä»»å‹™'),(706,'ç·Šæ€¥ä»»å‹™'),(707,'ç·Šæ€¥ä»»å‹™'),(708,'ç·Šæ€¥ä»»å‹™'),(709,'ç·Šæ€¥ä»»å‹™'),(710,'ç·Šæ€¥ä»»å‹™'),(711,'ç·Šæ€¥ä»»å‹™'),(712,'ç·Šæ€¥ä»»å‹™'),(713,'ç·Šæ€¥ä»»å‹™'),(714,'ç·Šæ€¥ä»»å‹™'),(715,'ç·Šæ€¥ä»»å‹™'),(716,'ç·Šæ€¥ä»»å‹™'),(717,'ç·Šæ€¥ä»»å‹™'),(718,'ç·Šæ€¥ä»»å‹™'),(719,'ç·Šæ€¥ä»»å‹™'),(720,'ç·Šæ€¥ä»»å‹™'),(721,'ç·Šæ€¥ä»»å‹™'),(722,'ç·Šæ€¥ä»»å‹™'),(723,'ç·Šæ€¥ä»»å‹™'),(724,'ç·Šæ€¥ä»»å‹™'),(725,'ç·Šæ€¥ä»»å‹™'),(726,'ç·Šæ€¥ä»»å‹™'),(727,'ç·Šæ€¥ä»»å‹™'),(728,'ç·Šæ€¥ä»»å‹™'),(729,'ç·Šæ€¥ä»»å‹™'),(730,'ç·Šæ€¥ä»»å‹™'),(731,'ç·Šæ€¥ä»»å‹™'),(732,'ç·Šæ€¥ä»»å‹™'),(733,'ç·Šæ€¥ä»»å‹™'),(734,'ç·Šæ€¥ä»»å‹™'),(735,'ç·Šæ€¥ä»»å‹™'),(736,'ç·Šæ€¥ä»»å‹™'),(737,'ç·Šæ€¥ä»»å‹™'),(738,'ç·Šæ€¥ä»»å‹™'),(739,'ç·Šæ€¥ä»»å‹™'),(740,'ç·Šæ€¥ä»»å‹™'),(741,'ç·Šæ€¥ä»»å‹™'),(742,'ç·Šæ€¥ä»»å‹™'),(743,'ç·Šæ€¥ä»»å‹™'),(744,'ç·Šæ€¥ä»»å‹™'),(745,'ç·Šæ€¥ä»»å‹™'),(746,'ç·Šæ€¥ä»»å‹™'),(747,'ç·Šæ€¥ä»»å‹™'),(748,'ç·Šæ€¥ä»»å‹™'),(749,'ç·Šæ€¥ä»»å‹™'),(750,'ç·Šæ€¥ä»»å‹™'),(751,'ç·Šæ€¥ä»»å‹™'),(752,'ç·Šæ€¥ä»»å‹™'),(753,'ç·Šæ€¥ä»»å‹™'),(754,'ç·Šæ€¥ä»»å‹™'),(755,'ç·Šæ€¥ä»»å‹™'),(756,'ç·Šæ€¥ä»»å‹™'),(757,'ç·Šæ€¥ä»»å‹™'),(758,'ç·Šæ€¥ä»»å‹™'),(759,'ç·Šæ€¥ä»»å‹™'),(760,'ç·Šæ€¥ä»»å‹™'),(761,'ç·Šæ€¥ä»»å‹™'),(762,'ç·Šæ€¥ä»»å‹™'),(763,'ç·Šæ€¥ä»»å‹™'),(764,'ç·Šæ€¥ä»»å‹™'),(765,'ç·Šæ€¥ä»»å‹™'),(766,'ç·Šæ€¥ä»»å‹™'),(767,'ç·Šæ€¥ä»»å‹™'),(768,'ç·Šæ€¥ä»»å‹™'),(769,'ç·Šæ€¥ä»»å‹™'),(770,'ç·Šæ€¥ä»»å‹™'),(771,'ç·Šæ€¥ä»»å‹™'),(772,'ç·Šæ€¥ä»»å‹™'),(773,'ç·Šæ€¥ä»»å‹™'),(774,'ç·Šæ€¥ä»»å‹™'),(775,'ç·Šæ€¥ä»»å‹™'),(776,'ç·Šæ€¥ä»»å‹™'),(777,'ç·Šæ€¥ä»»å‹™'),(778,'ç·Šæ€¥ä»»å‹™'),(779,'ç·Šæ€¥ä»»å‹™'),(780,'ç·Šæ€¥ä»»å‹™'),(781,'ç·Šæ€¥ä»»å‹™'),(782,'ç·Šæ€¥ä»»å‹™'),(783,'ç·Šæ€¥ä»»å‹™'),(784,'ç·Šæ€¥ä»»å‹™'),(785,'ç·Šæ€¥ä»»å‹™'),(786,'ç·Šæ€¥ä»»å‹™'),(787,'ç·Šæ€¥ä»»å‹™'),(788,'ç·Šæ€¥ä»»å‹™'),(789,'ç·Šæ€¥ä»»å‹™'),(790,'ç·Šæ€¥ä»»å‹™'),(791,'ç·Šæ€¥ä»»å‹™'),(792,'ç·Šæ€¥ä»»å‹™'),(793,'ç·Šæ€¥ä»»å‹™'),(794,'ç·Šæ€¥ä»»å‹™'),(795,'ç·Šæ€¥ä»»å‹™'),(796,'ç·Šæ€¥ä»»å‹™'),(797,'ç·Šæ€¥ä»»å‹™'),(798,'ç·Šæ€¥ä»»å‹™'),(799,'ç·Šæ€¥ä»»å‹™'),(800,'ç·Šæ€¥ä»»å‹™'),(801,'ç·Šæ€¥ä»»å‹™'),(802,'ç·Šæ€¥ä»»å‹™'),(803,'ç·Šæ€¥ä»»å‹™'),(804,'ç·Šæ€¥ä»»å‹™'),(805,'ç·Šæ€¥ä»»å‹™'),(806,'ç·Šæ€¥ä»»å‹™'),(807,'ç·Šæ€¥ä»»å‹™'),(808,'ç·Šæ€¥ä»»å‹™'),(809,'ç·Šæ€¥ä»»å‹™'),(810,'ç·Šæ€¥ä»»å‹™'),(811,'ç·Šæ€¥ä»»å‹™'),(812,'ç·Šæ€¥ä»»å‹™'),(813,'ç·Šæ€¥ä»»å‹™'),(814,'ç·Šæ€¥ä»»å‹™'),(815,'ç·Šæ€¥ä»»å‹™'),(816,'ç·Šæ€¥ä»»å‹™'),(817,'ç·Šæ€¥ä»»å‹™'),(818,'ç·Šæ€¥ä»»å‹™'),(819,'ç·Šæ€¥ä»»å‹™'),(820,'ç·Šæ€¥ä»»å‹™'),(821,'ç·Šæ€¥ä»»å‹™'),(822,'ç·Šæ€¥ä»»å‹™'),(823,'ç·Šæ€¥ä»»å‹™'),(824,'ç·Šæ€¥ä»»å‹™'),(825,'ç·Šæ€¥ä»»å‹™'),(826,'ç·Šæ€¥ä»»å‹™'),(827,'ç·Šæ€¥ä»»å‹™'),(828,'ç·Šæ€¥ä»»å‹™'),(829,'ç·Šæ€¥ä»»å‹™'),(830,'ç·Šæ€¥ä»»å‹™'),(831,'ç·Šæ€¥ä»»å‹™'),(832,'ç·Šæ€¥ä»»å‹™'),(833,'ç·Šæ€¥ä»»å‹™'),(834,'ç·Šæ€¥ä»»å‹™'),(835,'ç·Šæ€¥ä»»å‹™'),(836,'ç·Šæ€¥ä»»å‹™'),(837,'ç·Šæ€¥ä»»å‹™'),(838,'ç·Šæ€¥ä»»å‹™'),(839,'ç·Šæ€¥ä»»å‹™'),(840,'ç·Šæ€¥ä»»å‹™'),(841,'ç·Šæ€¥ä»»å‹™'),(842,'ç·Šæ€¥ä»»å‹™'),(843,'ç·Šæ€¥ä»»å‹™'),(844,'ç·Šæ€¥ä»»å‹™'),(845,'ç·Šæ€¥ä»»å‹™'),(846,'ç·Šæ€¥ä»»å‹™'),(847,'ç·Šæ€¥ä»»å‹™'),(848,'ç·Šæ€¥ä»»å‹™'),(849,'ç·Šæ€¥ä»»å‹™'),(850,'ç·Šæ€¥ä»»å‹™'),(851,'ç·Šæ€¥ä»»å‹™'),(852,'ç·Šæ€¥ä»»å‹™'),(853,'ç·Šæ€¥ä»»å‹™'),(854,'ç·Šæ€¥ä»»å‹™'),(855,'ç·Šæ€¥ä»»å‹™'),(856,'ç·Šæ€¥ä»»å‹™'),(857,'ç·Šæ€¥ä»»å‹™'),(858,'ç·Šæ€¥ä»»å‹™'),(859,'ç·Šæ€¥ä»»å‹™'),(860,'ç·Šæ€¥ä»»å‹™'),(861,'ç·Šæ€¥ä»»å‹™'),(862,'ç·Šæ€¥ä»»å‹™'),(863,'ç·Šæ€¥ä»»å‹™'),(864,'ç·Šæ€¥ä»»å‹™'),(865,'ç·Šæ€¥ä»»å‹™'),(866,'ç·Šæ€¥ä»»å‹™'),(867,'ç·Šæ€¥ä»»å‹™'),(868,'ç·Šæ€¥ä»»å‹™'),(869,'ç·Šæ€¥ä»»å‹™'),(870,'ç·Šæ€¥ä»»å‹™'),(871,'ç·Šæ€¥ä»»å‹™'),(872,'ç·Šæ€¥ä»»å‹™'),(873,'ç·Šæ€¥ä»»å‹™'),(874,'ç·Šæ€¥ä»»å‹™'),(875,'ç·Šæ€¥ä»»å‹™'),(876,'ç·Šæ€¥ä»»å‹™'),(877,'ç·Šæ€¥ä»»å‹™'),(878,'ç·Šæ€¥ä»»å‹™'),(879,'ç·Šæ€¥ä»»å‹™'),(880,'ç·Šæ€¥ä»»å‹™'),(881,'ç·Šæ€¥ä»»å‹™'),(882,'ç·Šæ€¥ä»»å‹™'),(883,'ç·Šæ€¥ä»»å‹™'),(884,'ç·Šæ€¥ä»»å‹™'),(885,'ç·Šæ€¥ä»»å‹™'),(886,'ç·Šæ€¥ä»»å‹™'),(887,'ç·Šæ€¥ä»»å‹™'),(888,'ç·Šæ€¥ä»»å‹™'),(889,'ç·Šæ€¥ä»»å‹™'),(890,'ç·Šæ€¥ä»»å‹™'),(891,'ç·Šæ€¥ä»»å‹™'),(892,'ç·Šæ€¥ä»»å‹™'),(893,'ç·Šæ€¥ä»»å‹™'),(894,'ç·Šæ€¥ä»»å‹™'),(895,'ç·Šæ€¥ä»»å‹™'),(896,'ç·Šæ€¥ä»»å‹™'),(897,'ç·Šæ€¥ä»»å‹™'),(898,'ç·Šæ€¥ä»»å‹™'),(899,'ç·Šæ€¥ä»»å‹™'),(900,'ç·Šæ€¥ä»»å‹™'),(901,'ç·Šæ€¥ä»»å‹™'),(902,'ç·Šæ€¥ä»»å‹™'),(903,'è¦ºé†’ - é¾æ²é¢¨ 1'),(904,'è¦ºé†’ - é¾æ²é¢¨ 2'),(905,'è¦ºé†’ - é¾æ²é¢¨ 3'),(906,'è¦ºé†’ - é¾æ²é¢¨ 4'),(907,'ç·Šæ€¥ä»»å‹™'),(908,'ç·Šæ€¥ä»»å‹™'),(909,'è¦ºé†’ - æ¯’å§¬ 1'),(910,'è¦ºé†’ - æ¯’å§¬ 2'),(911,'è¦ºé†’ - æ¯’å§¬ 3'),(912,'è¦ºé†’ - æ¯’å§¬ 4'),(913,'ç·Šæ€¥ä»»å‹™'),(914,'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (1/4)'),(915,'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (2/4)'),(916,'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (3/4)'),(917,'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (4/4)'),(918,'ç·Šæ€¥ä»»å‹™'),(919,'è¦ºé†’ - é¬¥é­‚ 1'),(920,'è¦ºé†’ - é¬¥é­‚ 2'),(921,'è¦ºé†’ - é¬¥é­‚ 3'),(922,'è¦ºé†’ - é¬¥é­‚ 4'),(923,'ç·Šæ€¥ä»»å‹™'),(924,'ç·Šæ€¥ä»»å‹™'),(925,'è¦ºé†’ - æ¯€æ»…è€… 1'),(926,'è¦ºé†’ - æ¯€æ»…è€… 2'),(927,'è¦ºé†’ - æ¯€æ»…è€… 3'),(928,'è¦ºé†’ - æ¯€æ»…è€… 4'),(929,'ç·Šæ€¥ä»»å‹™'),(930,'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 1'),(931,'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 2'),(932,'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 3'),(933,'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 4'),(934,'ç·Šæ€¥ä»»å‹™'),(935,'ç·Šæ€¥ä»»å‹™'),(936,'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 1'),(937,'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 2'),(938,'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 3'),(939,'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 4'),(940,'ç·Šæ€¥ä»»å‹™'),(941,'ç·Šæ€¥ä»»å‹™'),(942,'è¦ºé†’ - å°‡è» 1'),(943,'è¦ºé†’ - å°‡è» 2'),(944,'è¦ºé†’ - å°‡è» 3'),(945,'è¦ºé†’ - å°‡è» 4'),(946,'ç·Šæ€¥ä»»å‹™'),(947,'ç·Šæ€¥ä»»å‹™'),(948,'è¦ºé†’ - å¤§é­”å°Žå£« 1'),(949,'è¦ºé†’ - å¤§é­”å°Žå£« 2'),(950,'è¦ºé†’ - å¤§é­”å°Žå£« 3'),(951,'è¦ºé†’ - å¤§é­”å°Žå£« 4'),(952,'ç·Šæ€¥ä»»å‹™'),(953,'ç·Šæ€¥ä»»å‹™'),(954,'ç·Šæ€¥ä»»å‹™'),(955,'ç·Šæ€¥ä»»å‹™'),(956,'ç·Šæ€¥ä»»å‹™'),(957,'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 1'),(958,'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 2'),(959,'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 3'),(960,'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 4'),(961,'ç·Šæ€¥ä»»å‹™'),(962,'ç·Šæ€¥ä»»å‹™'),(963,'ç·Šæ€¥ä»»å‹™'),(964,'ç·Šæ€¥ä»»å‹™'),(965,'ç·Šæ€¥ä»»å‹™'),(966,'ç·Šæ€¥ä»»å‹™'),(967,'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 1'),(968,'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 2'),(969,'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 3'),(970,'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 4'),(971,'ç·Šæ€¥ä»»å‹™'),(972,'ç·Šæ€¥ä»»å‹™'),(973,'ç·Šæ€¥ä»»å‹™'),(974,'è¦ºé†’ - åŠè– 1'),(975,'è¦ºé†’ - åŠè– 2'),(976,'è¦ºé†’ - åŠè– 3'),(977,'è¦ºé†’ - åŠè– 4'),(978,'ç·Šæ€¥ä»»å‹™'),(979,'ç·Šæ€¥ä»»å‹™'),(980,'ç·Šæ€¥ä»»å‹™'),(981,'è¦ºé†’ - é­‚ç‹© 1'),(982,'è¦ºé†’ - é­‚ç‹© 2'),(983,'è¦ºé†’ - é­‚ç‹© 3'),(984,'è¦ºé†’ - é­‚ç‹© 4'),(985,'ç·Šæ€¥ä»»å‹™'),(986,'ç·Šæ€¥ä»»å‹™'),(987,'ç·Šæ€¥ä»»å‹™'),(988,'è¦ºé†’ - ç„è¡€é­”ç¥ž 1'),(989,'è¦ºé†’ - ç„è¡€é­”ç¥ž 2'),(990,'è¦ºé†’ - ç„è¡€é­”ç¥ž 3'),(991,'è¦ºé†’ - ç„è¡€é­”ç¥ž 4'),(992,'ç·Šæ€¥ä»»å‹™'),(993,'ç·Šæ€¥ä»»å‹™'),(994,'ç·Šæ€¥ä»»å‹™'),(995,'è¦ºé†’ - å¤§æš—é»‘å¤© 1'),(996,'è¦ºé†’ - å¤§æš—é»‘å¤© 2'),(997,'è¦ºé†’ - å¤§æš—é»‘å¤© 3'),(998,'è¦ºé†’ - å¤§æš—é»‘å¤© 4'),(999,'è½‰è· - (Class Change)'),(1000,'ç·Šæ€¥ä»»å‹™'),(1001,'ç·Šæ€¥ä»»å‹™'),(1002,'ç·Šæ€¥ä»»å‹™'),(1004,'ç·Šæ€¥ä»»å‹™'),(1005,'ç·Šæ€¥ä»»å‹™'),(1006,'ç·Šæ€¥ä»»å‹™'),(1007,'ç·Šæ€¥ä»»å‹™'),(1008,'ç·Šæ€¥ä»»å‹™'),(1009,'ç·Šæ€¥ä»»å‹™'),(1010,'ç·Šæ€¥ä»»å‹™'),(1011,'ç·Šæ€¥ä»»å‹™'),(1012,'å­¸ç¿’æŠ€èƒ½ 1'),(1013,'ç·Šæ€¥ä»»å‹™'),(1015,'ç·Šæ€¥ä»»å‹™'),(1016,'è³½èŽ‰äºž'),(1017,'ç·Šæ€¥ä»»å‹™'),(1018,'ç·Šæ€¥ä»»å‹™'),(1019,'ç·Šæ€¥ä»»å‹™'),(1020,'ç·Šæ€¥ä»»å‹™'),(1021,'ç·Šæ€¥ä»»å‹™'),(1022,'ç·Šæ€¥ä»»å‹™'),(1023,'ç·Šæ€¥ä»»å‹™'),(1024,'ç·Šæ€¥ä»»å‹™'),(1025,'ç·Šæ€¥ä»»å‹™'),(1026,'ç·Šæ€¥ä»»å‹™'),(1027,'ç·Šæ€¥ä»»å‹™'),(1028,'æ”¶é›†ç¾Žéº—çš„å°æ™¶å¡Š'),(1029,'ç·Šæ€¥ä»»å‹™'),(1030,'ç·Šæ€¥ä»»å‹™'),(1031,'ç·Šæ€¥ä»»å‹™'),(1032,'ç·Šæ€¥ä»»å‹™'),(1033,'ç·Šæ€¥ä»»å‹™'),(1034,'ç·Šæ€¥ä»»å‹™'),(1035,'ç·Šæ€¥ä»»å‹™'),(1036,'ç·Šæ€¥ä»»å‹™'),(1037,'ç·Šæ€¥ä»»å‹™'),(1038,'ç·Šæ€¥ä»»å‹™'),(1039,'ç·Šæ€¥ä»»å‹™'),(1040,'ç·Šæ€¥ä»»å‹™'),(1041,'ç·Šæ€¥ä»»å‹™'),(1042,'ç·Šæ€¥ä»»å‹™'),(1043,'ç·Šæ€¥ä»»å‹™'),(1044,'ç·Šæ€¥ä»»å‹™'),(1045,'ç·Šæ€¥ä»»å‹™'),(1046,'ç·Šæ€¥ä»»å‹™'),(1047,'ç·Šæ€¥ä»»å‹™'),(1048,'ç·Šæ€¥ä»»å‹™'),(1049,'ç·Šæ€¥ä»»å‹™'),(1052,'ç·Šæ€¥ä»»å‹™'),(1053,'ç·Šæ€¥ä»»å‹™'),(1054,'ç·Šæ€¥ä»»å‹™'),(1055,'ç·Šæ€¥ä»»å‹™'),(1056,'ç·Šæ€¥ä»»å‹™'),(1057,'ç·Šæ€¥ä»»å‹™'),(1058,'ç·Šæ€¥ä»»å‹™'),(1059,'ç·Šæ€¥ä»»å‹™'),(1060,'ç·Šæ€¥ä»»å‹™'),(1061,'ç·Šæ€¥ä»»å‹™'),(1062,'æ–°èœå–® - å¾·é›·å…‹é¦™æª³'),(1063,'ç·Šæ€¥ä»»å‹™'),(1064,'æ–°èœå–® - ç‰¹çƒ¤ç« é­šç‡’'),(1065,'ç·Šæ€¥ä»»å‹™'),(1066,'ç·Šæ€¥ä»»å‹™'),(1067,'ç·Šæ€¥ä»»å‹™'),(1068,'ç·Šæ€¥ä»»å‹™'),(1069,'ç·Šæ€¥ä»»å‹™'),(1070,'ç·Šæ€¥ä»»å‹™'),(1071,'ç·Šæ€¥ä»»å‹™'),(1072,'ç·Šæ€¥ä»»å‹™'),(1073,'ç·Šæ€¥ä»»å‹™'),(1074,'ç·Šæ€¥ä»»å‹™'),(1075,'ç·Šæ€¥ä»»å‹™'),(1076,'ç·Šæ€¥ä»»å‹™'),(1077,'ç·Šæ€¥ä»»å‹™'),(1078,'ç·Šæ€¥ä»»å‹™'),(1079,'ç·Šæ€¥ä»»å‹™'),(1080,'ç·Šæ€¥ä»»å‹™'),(1081,'ç·Šæ€¥ä»»å‹™'),(1082,'ç·Šæ€¥ä»»å‹™'),(1083,'ç¨®æ—çš„æ¦®è€€'),(1084,'ç·Šæ€¥ä»»å‹™'),(1085,'ç·Šæ€¥ä»»å‹™'),(1086,'ç·Šæ€¥ä»»å‹™'),(1087,'ç·Šæ€¥ä»»å‹™'),(1088,'ç·Šæ€¥ä»»å‹™'),(1089,'ç·Šæ€¥ä»»å‹™'),(1090,'ç·Šæ€¥ä»»å‹™'),(1091,'ç·Šæ€¥ä»»å‹™'),(1092,'ç·Šæ€¥ä»»å‹™'),(1093,'ç·Šæ€¥ä»»å‹™'),(1094,'ç·Šæ€¥ä»»å‹™'),(1095,'ç·Šæ€¥ä»»å‹™'),(1096,'ç·Šæ€¥ä»»å‹™'),(1097,'ç·Šæ€¥ä»»å‹™'),(1098,'ç·Šæ€¥ä»»å‹™'),(1099,'ç·Šæ€¥ä»»å‹™'),(1100,'ç·Šæ€¥ä»»å‹™'),(1101,'ç·Šæ€¥ä»»å‹™'),(1102,'ç·Šæ€¥ä»»å‹™'),(1103,'ç·Šæ€¥ä»»å‹™'),(1104,'ç·Šæ€¥ä»»å‹™'),(1105,'ç·Šæ€¥ä»»å‹™'),(1106,'G.S.Dçš„ä¿®ç·´ - å¿ƒçœ¼'),(1107,'ç·Šæ€¥ä»»å‹™'),(1108,'ç·Šæ€¥ä»»å‹™'),(1109,'é­”åŠ›æå– - èž¢çŸ³'),(1110,'ç·Šæ€¥ä»»å‹™'),(1111,'ç·Šæ€¥ä»»å‹™'),(1112,'ç·Šæ€¥ä»»å‹™'),(1113,'ç·Šæ€¥ä»»å‹™'),(1114,'ç·Šæ€¥ä»»å‹™'),(1115,'ç·Šæ€¥ä»»å‹™'),(1116,'ç·Šæ€¥ä»»å‹™'),(1117,'ç·Šæ€¥ä»»å‹™'),(1118,'ç·Šæ€¥ä»»å‹™'),(1119,'ç·Šæ€¥ä»»å‹™'),(1120,'ç·Šæ€¥ä»»å‹™'),(1121,'ç·Šæ€¥ä»»å‹™'),(1122,'ç·Šæ€¥ä»»å‹™'),(1123,'ç·Šæ€¥ä»»å‹™'),(1124,'ç·Šæ€¥ä»»å‹™'),(1125,'ç·Šæ€¥ä»»å‹™'),(1126,'ç·Šæ€¥ä»»å‹™'),(1127,'ç·Šæ€¥ä»»å‹™'),(1128,'ç·Šæ€¥ä»»å‹™'),(1129,'ç·Šæ€¥ä»»å‹™'),(1130,'ç·Šæ€¥ä»»å‹™'),(1131,'ç·Šæ€¥ä»»å‹™'),(1132,'ç·Šæ€¥ä»»å‹™'),(1133,'ç·Šæ€¥ä»»å‹™'),(1134,'ç·Šæ€¥ä»»å‹™'),(1135,'ç·Šæ€¥ä»»å‹™'),(1136,'ç·Šæ€¥ä»»å‹™'),(1137,'ç·Šæ€¥ä»»å‹™'),(1138,'ç·Šæ€¥ä»»å‹™'),(1139,'ç·Šæ€¥ä»»å‹™'),(1140,'ç·Šæ€¥ä»»å‹™'),(1141,'ç·Šæ€¥ä»»å‹™'),(1142,'ç·Šæ€¥ä»»å‹™'),(1143,'ç·Šæ€¥ä»»å‹™'),(1144,'ç·Šæ€¥ä»»å‹™'),(1145,'ç·Šæ€¥ä»»å‹™'),(1148,'ç·Šæ€¥ä»»å‹™'),(1149,'ç·Šæ€¥ä»»å‹™'),(1151,'ç·Šæ€¥ä»»å‹™'),(1153,'ç·Šæ€¥ä»»å‹™'),(1154,'é©…å‹•è¿·ä½ é‘½é ­'),(1155,'ç·Šæ€¥ä»»å‹™'),(1156,'æ”¶é›†å»¢æ£„ç‰©å“'),(1157,'ç·Šæ€¥ä»»å‹™'),(1158,'ç·Šæ€¥ä»»å‹™'),(1159,'ç·Šæ€¥ä»»å‹™'),(1160,'ç·Šæ€¥ä»»å‹™'),(1161,'ç·Šæ€¥ä»»å‹™'),(1163,'ç·Šæ€¥ä»»å‹™'),(1164,'ç·Šæ€¥ä»»å‹™'),(1165,'ç·Šæ€¥ä»»å‹™'),(1166,'ç·Šæ€¥ä»»å‹™'),(1167,'é­”åŠ›æå– - å°–æ™¶çŸ³'),(1168,'ç·Šæ€¥ä»»å‹™'),(1169,'ç·Šæ€¥ä»»å‹™'),(1170,'ç·Šæ€¥ä»»å‹™'),(1171,'ç·Šæ€¥ä»»å‹™'),(1172,'ç·Šæ€¥ä»»å‹™'),(1173,'ç·Šæ€¥ä»»å‹™'),(1174,'ç·Šæ€¥ä»»å‹™'),(1175,'ç·Šæ€¥ä»»å‹™'),(1176,'ç·Šæ€¥ä»»å‹™'),(1177,'ç·Šæ€¥ä»»å‹™'),(1178,'ç·Šæ€¥ä»»å‹™'),(1179,'ç·Šæ€¥ä»»å‹™'),(1180,'ç·Šæ€¥ä»»å‹™'),(1181,'ç·Šæ€¥ä»»å‹™'),(1182,'ç·Šæ€¥ä»»å‹™'),(1183,'ç·Šæ€¥ä»»å‹™'),(1184,'ç·Šæ€¥ä»»å‹™'),(1185,'ç·Šæ€¥ä»»å‹™'),(1186,'ç·Šæ€¥ä»»å‹™'),(1187,'ç·Šæ€¥ä»»å‹™'),(1188,'ç·Šæ€¥ä»»å‹™'),(1189,'ç·Šæ€¥ä»»å‹™'),(1190,'ç·Šæ€¥ä»»å‹™'),(1191,'ç·Šæ€¥ä»»å‹™'),(1192,'ç·Šæ€¥ä»»å‹™'),(1193,'ç·Šæ€¥ä»»å‹™'),(1194,'ç·Šæ€¥ä»»å‹™'),(1195,'ç·Šæ€¥ä»»å‹™'),(1196,'ç·Šæ€¥ä»»å‹™'),(1197,'ç·Šæ€¥ä»»å‹™'),(1198,'ç·Šæ€¥ä»»å‹™'),(1199,'ç·Šæ€¥ä»»å‹™'),(1200,'ç·Šæ€¥ä»»å‹™'),(1201,'ç·Šæ€¥ä»»å‹™'),(1202,'ç·Šæ€¥ä»»å‹™'),(1203,'ç·Šæ€¥ä»»å‹™'),(1204,'ç·Šæ€¥ä»»å‹™'),(1205,'ç·Šæ€¥ä»»å‹™'),(1206,'ç·Šæ€¥ä»»å‹™'),(1207,'é­”åŠ›æå– - é¾äººä¹‹çœ¼'),(1208,'ç·Šæ€¥ä»»å‹™'),(1209,'ç·Šæ€¥ä»»å‹™'),(1210,'ç·Šæ€¥ä»»å‹™'),(1211,'ç·Šæ€¥ä»»å‹™'),(1212,'ç·Šæ€¥ä»»å‹™'),(1213,'ç·Šæ€¥ä»»å‹™'),(1214,'ç·Šæ€¥ä»»å‹™'),(1215,'ç·Šæ€¥ä»»å‹™'),(1216,'ç·Šæ€¥ä»»å‹™'),(1217,'ç·Šæ€¥ä»»å‹™'),(1218,'ç·Šæ€¥ä»»å‹™'),(1219,'ç‰›é ­çš„éŠé‡‘è¡“è€ƒå¯Ÿ'),(1220,'ç·Šæ€¥ä»»å‹™'),(1221,'ç·Šæ€¥ä»»å‹™'),(1222,'ç·Šæ€¥ä»»å‹™'),(1223,'ç·Šæ€¥ä»»å‹™'),(1224,'ç·Šæ€¥ä»»å‹™'),(1225,'é­”åŠ›æå– - é‹¯çŸ³'),(1226,'ç·Šæ€¥ä»»å‹™'),(1227,'ç·Šæ€¥ä»»å‹™'),(1230,'ç·Šæ€¥ä»»å‹™'),(1231,'ç·Šæ€¥ä»»å‹™'),(1232,'ç·Šæ€¥ä»»å‹™'),(1233,'ç·Šæ€¥ä»»å‹™'),(1234,'ç·Šæ€¥ä»»å‹™'),(1235,'ç·Šæ€¥ä»»å‹™'),(1236,'ç·Šæ€¥ä»»å‹™'),(1237,'ç·Šæ€¥ä»»å‹™'),(1238,'ç·Šæ€¥ä»»å‹™'),(1239,'ç·Šæ€¥ä»»å‹™'),(1240,'ç·Šæ€¥ä»»å‹™'),(1241,'å‡±èŽ‰çš„è€ƒé©—'),(1242,'ç·Šæ€¥ä»»å‹™'),(1243,'è£½ä½œæŸ¯å¡ç©†çš„å¹²æ“¾æ™¶ç‰‡'),(1244,'ç·Šæ€¥ä»»å‹™'),(1245,'ç·Šæ€¥ä»»å‹™'),(1246,'ç·Šæ€¥ä»»å‹™'),(1247,'ç·Šæ€¥ä»»å‹™'),(1248,'ç·Šæ€¥ä»»å‹™'),(1249,'ç·Šæ€¥ä»»å‹™'),(1250,'ç·Šæ€¥ä»»å‹™'),(1251,'ç·Šæ€¥ä»»å‹™'),(1252,'ç·Šæ€¥ä»»å‹™'),(1253,'ç·Šæ€¥ä»»å‹™'),(1254,'ç·Šæ€¥ä»»å‹™'),(1255,'ç·Šæ€¥ä»»å‹™'),(1256,'ç·Šæ€¥ä»»å‹™'),(1257,'ç·Šæ€¥ä»»å‹™'),(1258,'ç·Šæ€¥ä»»å‹™'),(1259,'æ“Šé€€ç›œè³Šåœ˜'),(1260,'æ¶ˆæ»…ç›œè³Šåœ˜'),(1261,'ç›œè³Šåœ˜çš„ç‹—'),(1262,'ç·Šæ€¥ä»»å‹™'),(1263,'ç·Šæ€¥ä»»å‹™'),(1264,'ç·Šæ€¥ä»»å‹™'),(1265,'ç·Šæ€¥ä»»å‹™'),(1266,'ç·Šæ€¥ä»»å‹™'),(1267,'ç·Šæ€¥ä»»å‹™'),(1268,'ç·Šæ€¥ä»»å‹™'),(1269,'ç·Šæ€¥ä»»å‹™'),(1270,'ç·Šæ€¥ä»»å‹™'),(1271,'ç·Šæ€¥ä»»å‹™'),(1272,'ç·Šæ€¥ä»»å‹™'),(1273,'ç·Šæ€¥ä»»å‹™'),(1274,'ç·Šæ€¥ä»»å‹™'),(1275,'ç·Šæ€¥ä»»å‹™'),(1276,'ç·Šæ€¥ä»»å‹™'),(1277,'ç·Šæ€¥ä»»å‹™'),(1278,'ç·Šæ€¥ä»»å‹™'),(1279,'ç·Šæ€¥ä»»å‹™'),(1280,'ç·Šæ€¥ä»»å‹™'),(1281,'ç·Šæ€¥ä»»å‹™'),(1282,'ç·Šæ€¥ä»»å‹™'),(1283,'ç·Šæ€¥ä»»å‹™'),(1284,'ç·Šæ€¥ä»»å‹™'),(1285,'ç·Šæ€¥ä»»å‹™'),(1286,'ç·Šæ€¥ä»»å‹™'),(1287,'ç·Šæ€¥ä»»å‹™'),(1288,'ç·Šæ€¥ä»»å‹™'),(1289,'ç·Šæ€¥ä»»å‹™'),(1290,'ç·Šæ€¥ä»»å‹™'),(1291,'ç·Šæ€¥ä»»å‹™'),(1292,'ç·Šæ€¥ä»»å‹™'),(1293,'ç·Šæ€¥ä»»å‹™'),(1294,'ç·Šæ€¥ä»»å‹™'),(1295,'ç·Šæ€¥ä»»å‹™'),(1296,'ç·Šæ€¥ä»»å‹™'),(1297,'ç·Šæ€¥ä»»å‹™'),(1298,'ç·Šæ€¥ä»»å‹™'),(1299,'ç·Šæ€¥ä»»å‹™'),(1300,'ç·Šæ€¥ä»»å‹™'),(1301,'ç·Šæ€¥ä»»å‹™'),(1302,'ç·Šæ€¥ä»»å‹™'),(1303,'ç·Šæ€¥ä»»å‹™'),(1304,'ç·Šæ€¥ä»»å‹™'),(1305,'ç·Šæ€¥ä»»å‹™'),(1306,'ç·Šæ€¥ä»»å‹™'),(1307,'ç·Šæ€¥ä»»å‹™'),(1308,'ç·Šæ€¥ä»»å‹™'),(1309,'ç·Šæ€¥ä»»å‹™'),(1310,'ç·Šæ€¥ä»»å‹™'),(1311,'ç·Šæ€¥ä»»å‹™'),(1312,'ç·Šæ€¥ä»»å‹™'),(1313,'ç·Šæ€¥ä»»å‹™'),(1314,'ç·Šæ€¥ä»»å‹™'),(1315,'ç·Šæ€¥ä»»å‹™'),(1316,'ç·Šæ€¥ä»»å‹™'),(1317,'ç·Šæ€¥ä»»å‹™'),(1318,'ç·Šæ€¥ä»»å‹™'),(1319,'ç·Šæ€¥ä»»å‹™'),(1320,'ç·Šæ€¥ä»»å‹™'),(1321,'ç·Šæ€¥ä»»å‹™'),(1322,'ç·Šæ€¥ä»»å‹™'),(1323,'ç·Šæ€¥ä»»å‹™'),(1324,'ç·Šæ€¥ä»»å‹™'),(1325,'ç·Šæ€¥ä»»å‹™'),(1326,'ç·Šæ€¥ä»»å‹™'),(1327,'ç·Šæ€¥ä»»å‹™'),(1328,'ç·Šæ€¥ä»»å‹™'),(1329,'ç·Šæ€¥ä»»å‹™'),(1330,'ç·Šæ€¥ä»»å‹™'),(1331,'ç·Šæ€¥ä»»å‹™'),(1332,'[å¤ä»£åœ°ä¸‹åŸŽ] ä¸æ»…ä¹‹çŽ‹'),(1333,'ç·Šæ€¥ä»»å‹™'),(1334,'ç·Šæ€¥ä»»å‹™'),(1335,'ç·Šæ€¥ä»»å‹™'),(1336,'ç·Šæ€¥ä»»å‹™'),(1337,'ç·Šæ€¥ä»»å‹™'),(1338,'ç·Šæ€¥ä»»å‹™'),(1339,'ç·Šæ€¥ä»»å‹™'),(1340,'ç·Šæ€¥ä»»å‹™'),(1341,'ç·Šæ€¥ä»»å‹™'),(1342,'ç·Šæ€¥ä»»å‹™'),(1343,'ç·Šæ€¥ä»»å‹™'),(1344,'ç·Šæ€¥ä»»å‹™'),(1345,'ç·Šæ€¥ä»»å‹™'),(1346,'ç·Šæ€¥ä»»å‹™'),(1347,'ç·Šæ€¥ä»»å‹™'),(1348,'ç·Šæ€¥ä»»å‹™'),(1349,'ç·Šæ€¥ä»»å‹™'),(1350,'ç·Šæ€¥ä»»å‹™'),(1351,'ç·Šæ€¥ä»»å‹™'),(1352,'ç·Šæ€¥ä»»å‹™'),(1353,'ç·Šæ€¥ä»»å‹™'),(1354,'ç·Šæ€¥ä»»å‹™'),(1355,'ç·Šæ€¥ä»»å‹™'),(1356,'ç·Šæ€¥ä»»å‹™'),(1357,'ç·Šæ€¥ä»»å‹™'),(1358,'ç·Šæ€¥ä»»å‹™'),(1359,'ç·Šæ€¥ä»»å‹™'),(1360,'ç·Šæ€¥ä»»å‹™'),(1361,'ç·Šæ€¥ä»»å‹™'),(1362,'ç·Šæ€¥ä»»å‹™'),(1363,'ç·Šæ€¥ä»»å‹™'),(1364,'ç·Šæ€¥ä»»å‹™'),(1365,'ç·Šæ€¥ä»»å‹™'),(1366,'ç·Šæ€¥ä»»å‹™'),(1367,'ç·Šæ€¥ä»»å‹™'),(1368,'ç·Šæ€¥ä»»å‹™'),(1369,'ç·Šæ€¥ä»»å‹™'),(1370,'ç·Šæ€¥ä»»å‹™'),(1371,'ç·Šæ€¥ä»»å‹™'),(1372,'ç·Šæ€¥ä»»å‹™'),(1373,'ç·Šæ€¥ä»»å‹™'),(1374,'ç·Šæ€¥ä»»å‹™'),(1375,'ç·Šæ€¥ä»»å‹™'),(1376,'ç·Šæ€¥ä»»å‹™'),(1377,'ç·Šæ€¥ä»»å‹™'),(1378,'ç·Šæ€¥ä»»å‹™'),(1379,'ç·Šæ€¥ä»»å‹™'),(1380,'ç·Šæ€¥ä»»å‹™'),(1381,'ç·Šæ€¥ä»»å‹™'),(1382,'ç·Šæ€¥ä»»å‹™'),(1383,'ç·Šæ€¥ä»»å‹™'),(1384,'ç·Šæ€¥ä»»å‹™'),(1385,'ç·Šæ€¥ä»»å‹™'),(1386,'ç·Šæ€¥ä»»å‹™'),(1387,'ç·Šæ€¥ä»»å‹™'),(1388,'ç·Šæ€¥ä»»å‹™'),(1389,'ç·Šæ€¥ä»»å‹™'),(1390,'ç·Šæ€¥ä»»å‹™'),(1391,'ç·Šæ€¥ä»»å‹™'),(1392,'ç·Šæ€¥ä»»å‹™'),(1393,'ç·Šæ€¥ä»»å‹™'),(1431,'çµäººç§˜å¯†'),(1432,'è‰¾åŠ›æ–¯çš„æ±‚æ´'),(1471,'ç¾Žé£Ÿå®¶ - å¤æ´›å…‹'),(1473,'ç¾Žå‘³çš„ç« é­šè§¸é¬š'),(1474,'æ¬¡å“æ™¶ç‰‡çš„ç”¨é€”'),(1475,'å¤±è¹¤çš„å¤æ´›å…‹'),(1476,'çš‡å¸çš„å¤§ç†çŸ³åƒ'),(1477,'æ”¶é›†çŸ³åƒç¢Žå¡Š'),(1478,'å¤æ´›å…‹çš„æ”¯æ´'),(1492,'æ‚²é³´è‰ç¨®å­'),(1493,'æœ€å¥½çš„çµ²ç¶¢'),(1531,'é­”æ³•ç ”ç©¶ - å…‰å±¬æ€§ç¯‡'),(1535,'ç·Šæ€¥ä»»å‹™'),(1536,'ç·Šæ€¥ä»»å‹™'),(1537,'ç·Šæ€¥ä»»å‹™'),(1538,'ç·Šæ€¥ä»»å‹™'),(1539,'ç·Šæ€¥ä»»å‹™'),(1540,'ç·Šæ€¥ä»»å‹™'),(1541,'ç·Šæ€¥ä»»å‹™'),(1542,'ç·Šæ€¥ä»»å‹™'),(1543,'ç·Šæ€¥ä»»å‹™'),(1544,'ç·Šæ€¥ä»»å‹™'),(1545,'ç·Šæ€¥ä»»å‹™'),(1546,'ç·Šæ€¥ä»»å‹™'),(1547,'ç·Šæ€¥ä»»å‹™'),(1548,'ç·Šæ€¥ä»»å‹™'),(1549,'ç·Šæ€¥ä»»å‹™'),(1550,'ç·Šæ€¥ä»»å‹™'),(1551,'ç·Šæ€¥ä»»å‹™'),(1552,'ç¦æ­¢çš„GBL æ•™çš„å¤æ–‡æ›¸'),(1553,'ä¸å¯ä»¥å­˜åœ¨çš„ç‰©å“'),(1555,'ç·Šæ€¥ä»»å‹™'),(1556,'æ“ç¸±çŸ³å·¨äºº'),(1557,'ç·Šæ€¥ä»»å‹™'),(1558,'ç·Šæ€¥ä»»å‹™'),(1559,'ç·Šæ€¥ä»»å‹™'),(1560,'ç·Šæ€¥ä»»å‹™'),(1561,'ç·Šæ€¥ä»»å‹™'),(1562,'ç·Šæ€¥ä»»å‹™'),(1563,'ç·Šæ€¥ä»»å‹™'),(1564,'ç·Šæ€¥ä»»å‹™'),(1565,'ç·Šæ€¥ä»»å‹™'),(1566,'ç·Šæ€¥ä»»å‹™'),(1567,'ç·Šæ€¥ä»»å‹™'),(1568,'ç·Šæ€¥ä»»å‹™'),(1569,'ç·Šæ€¥ä»»å‹™'),(1570,'ç·Šæ€¥ä»»å‹™'),(1571,'ç·Šæ€¥ä»»å‹™'),(1572,'ç·Šæ€¥ä»»å‹™'),(1573,'ç·Šæ€¥ä»»å‹™'),(1574,'ç·Šæ€¥ä»»å‹™'),(1575,'ç·Šæ€¥ä»»å‹™'),(1576,'ç·Šæ€¥ä»»å‹™'),(1577,'ç·Šæ€¥ä»»å‹™'),(1578,'ç·Šæ€¥ä»»å‹™'),(1579,'ç·Šæ€¥ä»»å‹™'),(1580,'ç·Šæ€¥ä»»å‹™'),(1581,'ç·Šæ€¥ä»»å‹™'),(1582,'ç·Šæ€¥ä»»å‹™'),(1583,'ç·Šæ€¥ä»»å‹™'),(1584,'ç·Šæ€¥ä»»å‹™'),(1585,'ç·Šæ€¥ä»»å‹™'),(1586,'ç·Šæ€¥ä»»å‹™'),(1587,'ç·Šæ€¥ä»»å‹™'),(1588,'ç·Šæ€¥ä»»å‹™'),(1589,'ç·Šæ€¥ä»»å‹™'),(1590,'ç·Šæ€¥ä»»å‹™'),(1591,'å…‹å€«ç‰¹çš„æ·šæ°´'),(1592,'æ”¶é›†é‚ªå¿µé«”'),(1593,'ç·Šæ€¥ä»»å‹™'),(1594,'ç·Šæ€¥ä»»å‹™'),(1595,'ç·Šæ€¥ä»»å‹™'),(1596,'ç·Šæ€¥ä»»å‹™'),(1597,'ç·Šæ€¥ä»»å‹™'),(1598,'ç·Šæ€¥ä»»å‹™'),(1599,'ç·Šæ€¥ä»»å‹™'),(1600,'ç·Šæ€¥ä»»å‹™'),(1601,'ç·Šæ€¥ä»»å‹™'),(1602,'ç·Šæ€¥ä»»å‹™'),(1603,'ç·Šæ€¥ä»»å‹™'),(1604,'ç·Šæ€¥ä»»å‹™'),(1605,'ç·Šæ€¥ä»»å‹™'),(1606,'ç·Šæ€¥ä»»å‹™'),(1607,'ç·Šæ€¥ä»»å‹™'),(1608,'ç·Šæ€¥ä»»å‹™'),(1609,'ç·Šæ€¥ä»»å‹™'),(1610,'ç·Šæ€¥ä»»å‹™'),(1611,'å¥§è²èŽ‰äºžçš„å®¶å¯¶'),(1612,'ç·Šæ€¥ä»»å‹™'),(1613,'ç·Šæ€¥ä»»å‹™'),(1614,'ç·Šæ€¥ä»»å‹™'),(1615,'ç·Šæ€¥ä»»å‹™'),(1616,'ç·Šæ€¥ä»»å‹™'),(1617,'ç·Šæ€¥ä»»å‹™'),(1618,'ç·Šæ€¥ä»»å‹™'),(1619,'ç·Šæ€¥ä»»å‹™'),(1620,'ç·Šæ€¥ä»»å‹™'),(1621,'ç·Šæ€¥ä»»å‹™'),(1622,'ç·Šæ€¥ä»»å‹™'),(1623,'ç·Šæ€¥ä»»å‹™'),(1624,'ç·Šæ€¥ä»»å‹™'),(1625,'ç·Šæ€¥ä»»å‹™'),(1626,'ç·Šæ€¥ä»»å‹™'),(1627,'ç·Šæ€¥ä»»å‹™'),(1628,'ç·Šæ€¥ä»»å‹™'),(1629,'ç·Šæ€¥ä»»å‹™'),(1630,'ç·Šæ€¥ä»»å‹™'),(1631,'ç·Šæ€¥ä»»å‹™'),(1632,'ç·Šæ€¥ä»»å‹™'),(1633,'ç·Šæ€¥ä»»å‹™'),(1634,'ç·Šæ€¥ä»»å‹™'),(1635,'ç·Šæ€¥ä»»å‹™'),(1636,'ç·Šæ€¥ä»»å‹™'),(1637,'ç·Šæ€¥ä»»å‹™'),(1638,'ç·Šæ€¥ä»»å‹™'),(1639,'ç·Šæ€¥ä»»å‹™'),(1640,'ç·Šæ€¥ä»»å‹™'),(1641,'ç·Šæ€¥ä»»å‹™'),(1642,'ç·Šæ€¥ä»»å‹™'),(1643,'ç·Šæ€¥ä»»å‹™'),(1644,'ç·Šæ€¥ä»»å‹™'),(1645,'ç·Šæ€¥ä»»å‹™'),(1646,'ç·Šæ€¥ä»»å‹™'),(1647,'ç·Šæ€¥ä»»å‹™'),(1648,'ç·Šæ€¥ä»»å‹™'),(1649,'ç·Šæ€¥ä»»å‹™'),(1650,'ç·Šæ€¥ä»»å‹™'),(1651,'ç·Šæ€¥ä»»å‹™'),(1652,'ç·Šæ€¥ä»»å‹™'),(1653,'ç·Šæ€¥ä»»å‹™'),(1654,'ç·Šæ€¥ä»»å‹™'),(1655,'ç·Šæ€¥ä»»å‹™'),(1656,'ç·Šæ€¥ä»»å‹™'),(1657,'ç·Šæ€¥ä»»å‹™'),(1658,'ç·Šæ€¥ä»»å‹™'),(1659,'ç·Šæ€¥ä»»å‹™'),(1660,'ç·Šæ€¥ä»»å‹™'),(1661,'ç·Šæ€¥ä»»å‹™'),(1662,'ç·Šæ€¥ä»»å‹™'),(1663,'ç·Šæ€¥ä»»å‹™'),(1664,'ç·Šæ€¥ä»»å‹™'),(1665,'ç·Šæ€¥ä»»å‹™'),(1666,'ç·Šæ€¥ä»»å‹™'),(1667,'ç·Šæ€¥ä»»å‹™'),(1668,'ç·Šæ€¥ä»»å‹™'),(1669,'ç·Šæ€¥ä»»å‹™'),(1670,'ç·Šæ€¥ä»»å‹™'),(1671,'ç·Šæ€¥ä»»å‹™'),(1672,'ç·Šæ€¥ä»»å‹™'),(1673,'ç·Šæ€¥ä»»å‹™'),(1674,'ç·Šæ€¥ä»»å‹™'),(1675,'ç·Šæ€¥ä»»å‹™'),(1676,'ç·Šæ€¥ä»»å‹™'),(1677,'ç·Šæ€¥ä»»å‹™'),(1678,'ç·Šæ€¥ä»»å‹™'),(1679,'ç·Šæ€¥ä»»å‹™'),(1689,'ç·Šæ€¥ä»»å‹™'),(1690,'ç·Šæ€¥ä»»å‹™'),(1691,'ç·Šæ€¥ä»»å‹™'),(1692,'ç·Šæ€¥ä»»å‹™'),(1693,'ç·Šæ€¥ä»»å‹™'),(1694,'ç·Šæ€¥ä»»å‹™'),(1695,'ç·Šæ€¥ä»»å‹™'),(1696,'ç·Šæ€¥ä»»å‹™'),(1697,'ç·Šæ€¥ä»»å‹™'),(1698,'ç·Šæ€¥ä»»å‹™'),(1699,'ç·Šæ€¥ä»»å‹™'),(1700,'ç·Šæ€¥ä»»å‹™'),(1701,'ç·Šæ€¥ä»»å‹™'),(1702,'ç·Šæ€¥ä»»å‹™'),(1703,'ç·Šæ€¥ä»»å‹™'),(1704,'ç·Šæ€¥ä»»å‹™'),(1705,'ç·Šæ€¥ä»»å‹™'),(1706,'ç·Šæ€¥ä»»å‹™'),(1707,'ç·Šæ€¥ä»»å‹™'),(1708,'ç·Šæ€¥ä»»å‹™'),(1709,'ç·Šæ€¥ä»»å‹™'),(1710,'ç·Šæ€¥ä»»å‹™'),(1711,'ç·Šæ€¥ä»»å‹™'),(1712,'ç·Šæ€¥ä»»å‹™'),(1713,'ç·Šæ€¥ä»»å‹™'),(1714,'ç·Šæ€¥ä»»å‹™'),(1715,'ç·Šæ€¥ä»»å‹™'),(1716,'ç·Šæ€¥ä»»å‹™'),(1717,'ç·Šæ€¥ä»»å‹™'),(1718,'ç·Šæ€¥ä»»å‹™'),(1719,'ç·Šæ€¥ä»»å‹™'),(1720,'ç·Šæ€¥ä»»å‹™'),(1721,'ç·Šæ€¥ä»»å‹™'),(1722,'ç·Šæ€¥ä»»å‹™'),(1723,'ç·Šæ€¥ä»»å‹™'),(1724,'ç·Šæ€¥ä»»å‹™'),(1725,'ç·Šæ€¥ä»»å‹™'),(1726,'ç·Šæ€¥ä»»å‹™'),(1727,'ç·Šæ€¥ä»»å‹™'),(1728,'ç·Šæ€¥ä»»å‹™'),(1729,'ç·Šæ€¥ä»»å‹™'),(1730,'ç·Šæ€¥ä»»å‹™'),(1731,'ç·Šæ€¥ä»»å‹™'),(1732,'ç·Šæ€¥ä»»å‹™'),(1733,'ç·Šæ€¥ä»»å‹™'),(1734,'ç·Šæ€¥ä»»å‹™'),(1735,'ç·Šæ€¥ä»»å‹™'),(1736,'ç·Šæ€¥ä»»å‹™'),(1737,'ç·Šæ€¥ä»»å‹™'),(1738,'ç·Šæ€¥ä»»å‹™'),(1739,'ç·Šæ€¥ä»»å‹™'),(1740,'ç·Šæ€¥ä»»å‹™'),(1741,'ç·Šæ€¥ä»»å‹™'),(1742,'ç·Šæ€¥ä»»å‹™'),(1743,'ç·Šæ€¥ä»»å‹™'),(1744,'ç·Šæ€¥ä»»å‹™'),(1745,'ç·Šæ€¥ä»»å‹™'),(1746,'ç·Šæ€¥ä»»å‹™'),(1747,'ç·Šæ€¥ä»»å‹™'),(1748,'ç·Šæ€¥ä»»å‹™'),(1749,'ç·Šæ€¥ä»»å‹™'),(1750,'ç·Šæ€¥ä»»å‹™'),(1751,'ç·Šæ€¥ä»»å‹™'),(1752,'ç·Šæ€¥ä»»å‹™'),(1753,'ç·Šæ€¥ä»»å‹™'),(1761,'ç·Šæ€¥ä»»å‹™'),(1764,'ç·Šæ€¥ä»»å‹™'),(1765,'ç·Šæ€¥ä»»å‹™'),(1766,'ç·Šæ€¥ä»»å‹™'),(1767,'ç·Šæ€¥ä»»å‹™'),(1768,'ç·Šæ€¥ä»»å‹™'),(1769,'ç·Šæ€¥ä»»å‹™'),(1770,'ç·Šæ€¥ä»»å‹™'),(1771,'ç·Šæ€¥ä»»å‹™'),(1772,'ç·Šæ€¥ä»»å‹™'),(1773,'ç·Šæ€¥ä»»å‹™'),(1800,'é­”æ³•å¸«ä¹‹è·¯ - é–‹å§‹'),(1801,'é­”æ³•å¸«ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾'),(1802,'é­”æ³•å¸«ä¹‹è·¯ - æ‰€è¬‚çš„è½‰'),(1803,'æ›´å¼·çš„æ•µäºº'),(1804,'G.S.Dçš„è©¦é©—'),(1805,'æ–°æ­¦å™¨çš„å¨åŠ›'),(1806,'é­”æ³•å¸«ä¹‹è·¯ - è‰¾éº—çµ²'),(1807,'é­”æ³•å¸«ä¹‹è·¯ - ä»»å‹™å•†åº—'),(1901,'é¬¼åŠå£«ä¹‹è·¯ - é–‹å§‹'),(1902,'æ ¼é¬¥å®¶ä¹‹è·¯ - é–‹å§‹'),(1903,'ç¥žæ§ä¹‹è·¯ - é–‹å§‹'),(1904,'é­”æ³•å¸«ä¹‹è·¯ - é–‹å§‹'),(1905,'è–è·è€…ä¹‹è·¯ - é–‹å§‹'),(1906,'[å¤ä»£åœ°ä¸‹åŸŽ] æœ€é«˜ç´šçš„'),(1907,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(1908,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(1909,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(1910,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(1911,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(1915,'æœ€é«˜ç´šçš„ææ–™æ³°æ‹‰çŸ³'),(1916,'ç¥žæ§ä¹‹è·¯ - é–‹å§‹'),(1917,'ç›œè³Šä¹‹è·¯ - é–‹å§‹'),(1918,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2102,'é€²åŒ– - è²»å°¼å…‹æ–¯'),(2104,'é€²åŒ– - è¯åˆ©å¼—'),(2105,'é€²åŒ– - å“ˆå¸•æ–¯'),(2108,'é€²åŒ– - å†°æ‹‰æ³¢æ‹‰æ–¯'),(2109,'é€²åŒ– - è²å‚‘å¤«ç‰¹ 1'),(2110,'é€²åŒ– - è²å‚‘å¤«ç‰¹ 2'),(2111,'é€²åŒ– - è²å‚‘å¤«ç‰¹ 3'),(2112,'é€²åŒ– - é‡‘è±¬'),(2254,'ç«ç„°çš„é›ç…‰ (é‡è¤‡)'),(2322,'æœ¨ç½çš„æ‰“è³­ - é¾äººä¹‹å¡”'),(2323,'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ'),(2324,'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ'),(2325,'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ'),(2326,'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ'),(2327,'æœ¨ç½çš„æ‰“è³­ - çŸ³å·¨äººå¡”'),(2328,'æœ¨ç½çš„æ‰“è³­ - é»‘æš—çŽ„å»Š'),(2329,'æœ¨ç½çš„æ‰“è³­ - åŸŽä¸»å®®æ®¿'),(2334,'æ°´ç½çš„è³­æ³¨ - è¡€ç„'),(2336,'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ'),(2339,'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ'),(2354,'å¤§åœ°å¯¶ç '),(2355,'å¤©ç©ºå¯¶ç '),(2502,'å·´çˆ¾é›·å¨œå¤§å¬¸'),(2503,'ç²å¾—ç­åœ–çš„èªå¯ 1'),(2504,'ç²å¾—ç­åœ–çš„èªå¯ 2'),(2505,'æ‹‰æ¯”ç´å“¥å“¥'),(2506,'å…”ç¥žçš„ä¿ä½‘'),(2507,'è£é¦¬å¥¶é…’çš„çš®è¢‹å­'),(2508,'æœ‰ç”¨çš„çš®é©'),(2509,'ç­åœ–æ—å¥³æˆ°å£«'),(2511,'ç­åœ–æ—çš„ä¾µç•¥'),(2512,'ç­åœ–æ—çš„å‰¯æ—é•·'),(2514,'30å¹´å¾Œè¦ºé†’çš„å†°é¾æ–¯å¡è'),(2515,'ç­åœ–æ—çš„ç”±ä¾†'),(2518,'å°å­©çš„è²éŸ³'),(2519,'å­©å­å•Šâ€¦ æˆ‘çš„å­©å­..'),(2520,'æŸ¥ç†çš„èº«ä»½'),(2521,'å®ˆè­·æŸ¥ç†çš„å¿ƒè‡Ÿ'),(2522,'æ°¸æ†çš„æ‚²æ…˜å‘½é‹'),(2523,'æµé€çš„ç”Ÿå‘½'),(2524,'æŠŠæ‚²å‚·è—åœ¨å¿ƒè£¡'),(2528,'æ–¯å¡è¿ªå¥³çŽ‹çš„è¦ªç­†ä¿¡å‰¯'),(2529,'ç­åœ–æ—çš„ç¿’ä¿—'),(2603,'æ·±æ·µæ´¾å°Ep1 æ¼¸æ¼¸æµ®ç¾çš'),(2610,'æ·±æ·µæ´¾å°Ep2. é‚ªæƒ¡ä¾†è‡¨'),(2613,'æ·±æ·µæ´¾å°Ep3 - çƒé›²ç± ç½©'),(2622,' æ·±æ·µæ´¾å°Ep4 - å¤©ç•Œçš„è®'),(2651,'[å¤ä»£åœ°ä¸‹åŸŽ] å¾æœæ‚²é³´'),(2702,'å°ˆé–€è·æ¥­-é­”æ³•è³¦äºˆå¸«'),(2708,'å°ˆé–€è·æ¥­-éŠé‡‘è¡“å¸«'),(2710,'å°ˆé–€è·æ¥­-è§£é«”å¸«'),(2712,'å°ˆé–€è·æ¥­-äººå½¢å¸«'),(2809,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2810,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2811,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2812,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2813,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2814,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2815,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2816,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2817,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2818,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2819,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³é¦–'),(2820,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³é¦–'),(2821,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³é¦–'),(2822,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(2823,'[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦'),(3500,'è¿½æ•é€ƒäº¡è€… 1'),(3501,'è¿½æ•é€ƒäº¡è€… 2 '),(3502,'è¿½æ•é€ƒäº¡è€… 3'),(3576,'ææ‡¼ä¹‹æº (é‡è¤‡)'),(3588,'èª¿æŸ¥æ­»äº¡ä¹‹å¡”'),(3589,'é è¨€å®¶å¸ŒèŽ«å¨œ'),(3590,'æ­»ç¥žèˆ‡å¸ŒèŽ«å¨œçš„é—œä¿‚'),(3591,'å¾æœæ­»äº¡ä¹‹å¡”'),(3592,'æ­»ç¥žå¾·èŠå¼—æ–¯çš„ç›®çš„'),(3606,'æ­»ç¥žçš„æ°£æ¯ - ç¥žç§˜çš„å½±'),(3611,'æ··æ²Œé­”çŸ³ç¢Žç‰‡ (é‡è¤‡)'),(3612,'æ··æ²Œé­”çŸ³ (é‡è¤‡)'),(3700,'å†°é¾çš„å¨è„…'),(3701,'å†°å¥³çŽ‹çš„å‚³èªª'),(3702,'[å¤ä»£åœ°ä¸‹åŸŽ] çŽ‹çš„å†¤é­‚'),(3703,'æ¶ˆæ»…ç›œè³Šåœ˜'),(3704,'[é å¤ - æ‹›å‹Ÿå…¬å‘Š: æ¯”çˆ¾'),(3705,'ç¬›è²â€¦ èˆ‡å¾©ä»‡'),(3706,'æš—é»‘åŸŽçš„ç„¡é ­é–€è¡›'),(3707,'[å¤ä»£åœ°ä¸‹åŸŽ] å†æ¬¡å‚³ä¾†'),(3711,'é™¤æŽ‰é¬¼é­‚'),(3712,'ç ´å£žèœ˜è››åµ'),(3713,'[ç•°ç•Œåœ°ä¸‹åŸŽ]æ”¶é›†å“¥å¸ƒæ'),(3714,'[ç•°ç•Œåœ°ä¸‹åŸŽ]éŽåŽ»çš„å¤©ç'),(3715,'[ç•°ç•Œåœ°ä¸‹åŸŽ]å¨è„…å¸åœ‹ç'),(3716,'å¬å‹Ÿæ½›å…¥å¥§å¾·è–©è¡—é ­çš„'),(3717,'éƒ½å¸‚çš„è¶…èƒ½åŠ›è€…'),(3718,'å¡å‹’ç‰¹çš„æš—è™Ÿæ–‡é¡žåž‹'),(3719,'[å¤ä»£åœ°ä¸‹åŸŽ] çˆ†ç™¼ç˜Ÿç–«'),(3720,'å”åŒ : å¤œé–“è¥²æ“Šæˆ°'),(3721,'å”åŒ : è£œçµ¦ç·šé˜»æ–·æˆ°'),(3722,'å”åŒ : è¿½æ“Šæ®²æ»…æˆ°'),(3723,'å”åŒ : è¡€è´è¶ä¹‹èˆž'),(3724,'å”åŒ : ç–‘æƒ‘ä¹‹æ‘'),(3725,'å”åŒ : åˆ—è»Šä¸Šçš„æµ·è³Š'),(3726,'å”åŒ : å¥ªå›žè¥¿éƒ¨ç·š'),(3727,'é›¶ä»¶åç¨±ï¼š GT-203'),(3728,'æµ·è³Šå€‘çš„è²¡ç”¢'),(3801,'å¥§è²åˆ©äºžçš„ä¿¡'),(3802,'G.B.L é˜¿æ‹‰å¾·åˆ†éƒ¨'),(3803,'é­”æ‰‹æ²’æœ‰ä¼¸éŽä¾†ï¼Ÿ'),(3804,'æ‰€æœ‰çš„ä¸€åˆ‡éƒ½æ˜¯é¨™å±€'),(3805,'G.B.L é˜¿æ‹‰å¾·åˆ†éƒ¨'),(3806,'G.B.L ç ”ç©¶æ‰€'),(3808,'æ½›å…¥æ€ªç‰©ç ”ç©¶æ‰€'),(3809,'G.B.L ç ”ç©¶æ‰€çš„ç ”ç©¶è³‡æ–™'),(3810,'å¯¦é©—ç‰©32-4Î²'),(3811,'å¸Œç‰¹æ‹‰å…‹çš„ææ€–'),(3812,'ç ´å£žå¯¦é©—å·¥å…·ï¼'),(3813,'è®“å¸Œç‰¹æ‹‰å…‹å»¢æ£„å§'),(3814,'ç¾…ç‰¹æ–¯çš„åµé‚„å­˜åœ¨ï¼'),(3815,'ç ´å£žç¾…ç‰¹æ–¯çš„åµçš„æ–¹æ³•'),(3816,'è£èƒƒæ¶²çš„å®¹å™¨'),(3819,'ç ´å£žç¾…ç‰¹æ–¯çš„åµ'),(3820,'è¡€è…¥æ·¨åŒ–çªæ“ŠéšŠé•·ç­å‚‘'),(3821,'æ“Šæ•—ç­å‚‘é‡Œæ–¯'),(3823,'çè²´çš„å¤æ–‡æ›¸'),(3824,'æ”¶é›†GBLæ•™å‡é¢'),(3825,'ç ´å£žGBLå·¨åƒ'),(3826,'ç¥žç§˜çš„å¤ä»£æ›¸ç±'),(3827,'ç‰¹æ®Šçš„æ´—ç¢—å·¥å…·'),(3828,'ç ´å£žå¯¦é©—ç‰©TLF-3'),(3829,'é™¤æŽ‰è²è£¡æ–¯'),(3901,'å‰å¾€å¥§å¾·è–©çš„é“è·¯'),(3902,'éœ€è¦å“¥å¸ƒæž—çš„å”åŠ©'),(3903,'åžƒåœ¾å †ä¸­çš„éŠä¿ '),(3904,'å¥§å¾·è–©è¡—é ­'),(3905,'éµè“‹'),(3906,'ç«ç®­äºº'),(3907,'èŽ«ç´äº¨çš„ç§˜å¯†'),(3908,'å¾·é­¯ä¼Šç±³äºž'),(3909,'èŸ²ä¹‹ç‹„æ¡‘'),(3910,'å¿µå‹•åŠ›è€…éº¥ç‘ŸÂ·èŽ«ç´äº¨'),(3911,'è©­ç•°çš„ç‰©é«”'),(3914,'ç©¶ç«Ÿæ˜¯èª°æ“ä½œèƒ½åŠ›å¥½ï¼Ÿ'),(3915,'æ®Šæ­»æˆ°'),(3918,'æ­£é¢äº¤é‹’'),(3922,'è‰¾éº—çµ²å–œæ­¡æ›¸'),(4000,'ç‚ºäº†æ›´å¥½çš„æ˜Žå¤©'),(4001,'è«‹æ±‚'),(4002,'é·¹çœ¼çš„è€ƒé©—'),(4003,'ç‘ªæ‹‰æ ¼çš„è€ƒé©—'),(4004,'æ‹‰è£¡çš„è€ƒé©—'),(4005,'ç¾ŽæœèŽŽçš„è€ƒé©—'),(4006,'é›€ç‘Ÿçš„æŒ‘æˆ°'),(4007,'è¢«é˜»æ“‹çš„è·¯'),(4008,'ç°è¡£åŠå£«'),(4009,'æ•æ³°çš„æ‰“è³­'),(4010,'é›·è«¾çš„æ‰“è³­'),(4011,'å››æˆ°å£«'),(4012,'èˆ‡é›€ç‘Ÿçš„è¼ƒé‡'),(4013,'èˆ‡å¸ƒè¬åŠ å°ç·´'),(4014,'è‹±é›„çš„è©¦ç·´'),(4015,'ç¶­ç´æ–¯å¥³ç¥ž'),(4016,'å¤è€çš„ç¾Šçš®ç´™'),(4017,'å½é€ æ–‡æ›¸'),(4018,'GBLå¥³ç¥žæ®¿'),(4019,'å¥³ç¥žçš„è©›å’’'),(4020,'è§£é™¤è©›å’’'),(4021,'è©›å’’çš„çµæ™¶'),(4022,'æ·¨åŒ–å¥³ç¥žæ®¿'),(4023,'çµäººç§˜å¯†2'),(4024,'å¤©å¸·å·¨ç¸çš„ç”Ÿæ…‹ç³»çµ±èª¿'),(4025,'æœ¨æœ¬æ¤ç‰©çš„æ¨£æœ¬ 1'),(4026,'æœ¨æœ¬æ¤ç‰©çš„æ¨£æœ¬ 2'),(4027,'æŽ¡é›†å¼—è³´çˆ¾çš„è¡€æ¶²'),(4028,'ä½¿å¾’é€ æˆçš„å½±éŸ¿'),(4029,'ç¹æ®–çš„ä¸»çŠ¯'),(4030,'æ¸…æŽƒGBLä¿¡å¾’é¤˜é»¨'),(4031,'å¤©å¸·å·¨ç¸çš„ç”Ÿæ…‹ç³»çµ±èª¿'),(4032,'çš‡å¥³çš„ä¸‹è½'),(4033,'ä½ çŸ¥é“æµ·è³Šåœ˜ï¼Ÿ'),(4034,'å‘é¦¬ç³å ±å‘Š'),(4035,'ç²å¾—æµ·è³Šä¿¡è³´çš„æ–¹æ³•'),(4036,'éŒ¢è²·ä¾†çš„ä¿¡è³´'),(4037,'çš‡å¥³åœ¨è¥¿éƒ¨ç„¡æ³•åœ°å¸¶â€¦'),(4038,'é–‹å‘ç„¡æ³•åœ°å¸¶çš„æµ·ä¸Šåˆ—'),(4039,'éœ§ä¹‹éƒ½æµ·ä¼ŠèŒ²'),(4040,'é™¤æŽ‰å®ˆè¡›'),(4041,'çš‡å¥³åœ¨å“ªè£¡ï¼Ÿ'),(4042,'æ–¯æç­æ™®æ‹‰ä¸'),(4043,'æ¢…çˆ¾æ–‡Â·é‡Œå…‹ç‰¹çš„ç‰¹è£½å'),(4044,'çš‡å¥³çš„ä¸‹è½'),(4045,'ç‹™æ“Šçž„æº–é¡'),(4047,'å”åŒ : éœ§ä¹‹éƒ½æµ·ä¼ŠèŒ²'),(4048,'æ”¶é›†å‹³ç« '),(4049,'æ±ºæˆ°'),(4050,'å¿…æ­»çš„æŠ—æˆ°'),(4051,'èˆŠæ™‚ä»£çš„çµ‚çµ'),(4052,'è€ç•¶ç›Šå£¯å“ˆæ–¯'),(4053,'å‚³èªªçš„çµæŸ'),(4054,'é»Žæ˜Žä¹‹çœ¼çš„å®‰ç¥–è³½å¼—'),(4055,'å®‰ç¥–â€§è³½å¼—çš„æ®˜å½±'),(4056,'æ”¶é›†å¡å‹’ç‰¹æƒ…å ±'),(4057,'è‡ªä½œè‡ªå—'),(4058,'ä¸å…±æˆ´å¤©'),(4059,'è‡¥è–ªå˜—è†½'),(4060,'äº‹å¿…æ­¸æ­£'),(4061,'ä¹¾å¤ä¸€æ“²'),(4062,'åŽ»å¡å‹’ç‰¹å¸ä»¤éƒ¨â€¦ã€‚'),(4065,'è½‰è· - å…ƒç´ çˆ†ç ´å¸«ï¼ˆEle'),(4068,'è½‰è· - å†°çµå¸«ï¼ˆGlacial M'),(4069,'é’é¾å¤§æœƒ'),(4070,'å–å¾—é’é¾å¤§æœƒåƒåŠ è³‡æ ¼'),(4071,'é’é¾å¤§æœƒå„ªå‹'),(4072,'é’é¾è³‡æ ¼ï¼ˆé‡è¤‡ï¼‰'),(4073,'è—è‰²å¿µæ°£'),(4074,'é»‘æš—å¿µæ°£'),(4076,'ç©¿è¶Šç´…è‰²æ£®æž—'),(4077,'éµäººä¹‹åŸŽä¿®å—'),(4078,'é»ƒé¾å¤§æœƒ'),(4079,'å–å¾—é»ƒé¾å¤§æœƒåƒåŠ è³‡æ ¼'),(4080,'é»ƒé¾å¤§æœƒå„ªå‹'),(4081,'é»ƒé¾çš„è³‡æ ¼ï¼ˆé‡è¤‡ï¼‰'),(4082,'è¦ºé†’ - é­”çš‡ 1'),(4083,'è¦ºé†’ - é­”çš‡ 2'),(4084,'è¦ºé†’ - é­”çš‡ 3'),(4085,'è¦ºé†’ - é­”çš‡ 4'),(4086,'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 1'),(4087,'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 2'),(4088,'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 3'),(4089,'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 4'),(4090,'å‹‡è€… - ç•°æ¬¡å…ƒè£‚ç¸«çš„æ—…'),(4091,'å‹‡è€… - å£“åˆ¶ç•°ç•Œæ°£æ¯çš„'),(4092,'å‹‡è€… - è˜Šå«ç•°ç•Œæ°£æ¯çš„'),(4093,'å‹‡è€… - é‡é ˜è˜Šå«ç•°ç•Œæ°£'),(4094,'å‹‡è€… - è˜Šå«ç•°ç•Œæ°£æ¯çš„'),(4095,'å‹‡è€… - é‡é ˜è˜Šå«ç•°ç•Œæ°£'),(4099,'ç´«è‰²å¿µæ°£'),(4100,'é‡‘è‰²å¿µæ°£'),(4101,'ç°è¡£åŠå£«'),(4102,'æŽ¢ç´¢'),(4103,'é…’é¤¨çš„æš´å‹•'),(4104,'èµ«é “å°¼æ–¯å¹«çš„éœåˆ©å¥§'),(4105,'ç›®æ“Šè€…'),(4106,'å†æœƒçš„ç´„å®š'),(4107,'è³’å¸³'),(4108,'é™¤æŽ‰æƒ¡æ£'),(4109,'éœåˆ©å¥§çš„æŒ‘æˆ°'),(4110,'èµ«é “å°¼æ–¯å¹«çš„è¥²æ“Š'),(4111,'æ”¶é›†éš±ç´„ç™¼å…‰çš„æ›²çŽ‰'),(4112,'æ”¶é›†è¯éº—çš„æ›²çŽ‰'),(4201,'å±æ©Ÿçš„æ ¹ç‰¹'),(4202,'åµæŸ¥æ ¹ç‰¹é€±é‚Š'),(4203,'æ‹¯æ•‘è¢«ä¿˜çš„å†’éšªå®¶'),(4204,'é¦¬ç³çš„å‘¼å–š'),(4205,'ç¶­æŒæ²»å®‰'),(4206,'ç ´è§£æš—è™Ÿ - 1'),(4207,'é˜»æ­¢ç¸±ç«å…µ'),(4208,'è¢«ç¨±ç‚ºã€Œæ²™å½±ã€çš„ç”·äºº'),(4209,'æ•™è¨“ç¸±ç«çŠ¯'),(4210,'å‘æ¾¤ä¸Â·æ–½å¥ˆå¾·å ±å‘Š'),(4212,'å–§é¬§çš„åŸŽå¤–'),(4213,'é˜»æ­¢æ©Ÿå‹•éšŠå…¥ä¾µ'),(4214,'ç ´è§£æš—è™Ÿ - 2'),(4215,'æš—è™Ÿå‚³éžçš„è³‡è¨Š'),(4216,'æ“¾äº‚è½Ÿç‚¸ç›®æ¨™'),(4217,'é˜»æ­¢åŸ‹è¨­åœ°é›·'),(4218,'æ®²æ»…æ©Ÿå‹•éšŠå“¡'),(4220,'è¢«æ”¹é€ çš„å¡å‹’ç‰¹å£«å…µ'),(4221,'æŽŒæ¡å¡å‹’ç‰¹çµ„ç¹”çš„è³‡è¨Š'),(4222,'ç¶­ä¿®åŸŽç‰†'),(4224,'ç²å¾—æ€¥æ•‘ç®±'),(4225,'æš´é¢¨é›·å…„å¼Ÿï¼Ÿ'),(4226,'è§£é«”æ‘©æ‰˜è»Š'),(4227,'é©…é€ç¸±ç«å…µ'),(4228,'ç–¾é¢¨ä¹‹è˜‡é›·å¾·'),(4257,'æ¾¤ä¸Â·æ–½å¥ˆå¾·çš„è«‹æ±‚'),(4258,'éºå¤±çš„AT-5T æ­¥è¡Œè€…'),(4259,'AT-5T æ­¥è¡Œè€…çš„æ“ä½œæ–¹æ³•'),(4260,'å›žæ”¶AT-5T æ­¥è¡Œè€…'),(4261,'çš‡éƒ½è»çš„ç”Ÿæ©Ÿ'),(4262,'æ¶ˆæ»…åŒ—é–€çš„æ•µäºº'),(4263,'å¡å‹’ç‰¹çš„æŒ‡ä»¤æ›¸'),(4264,'çªæ“ŠéšŠé•·å·¦å€«'),(4265,'å¡å‹’ç‰¹è«œå ±å“¡'),(4266,'æ©Ÿæ¢°è‡‚æ²ƒå‚‘'),(4267,'ç ´å£žæŽ©è”½ç‰©'),(4268,'å¡å‹’ç‰¹çš„æˆ°ç•¥'),(4269,'è§£é«”æŠ€å¸«'),(4270,'å–œæ„›åˆ†è§£'),(4271,'å·¡æŸ¥æ ¹ç‰¹åŒ—é–€'),(4272,'åžƒåœ¾å›žæ”¶å¾žæˆ‘åšèµ·'),(4273,'AT-5T æ­¥è¡Œè€…è¨“ç·´'),(4274,'èª¿æŸ¥æ©Ÿæ¢°è‡‚'),(4275,'æ¸…æŽƒåžƒåœ¾'),(4276,'ä¸ç¢ºåˆ‡çš„æƒ…å ±'),(4277,'å·¡æŸ¥æ ¹ç‰¹æ£®æž—'),(4278,'å†æŽ¢æ ¹ç‰¹æ£®æž—'),(4279,'æ¸¸æ“ŠéšŠçš„è¹¤è·¡'),(4280,'ç¢ºèªæ¸¸æ“ŠéšŠå…µåŠ›'),(4281,'æ£˜æ‰‹çš„é†«ç™‚å…µ'),(4282,'ä¿è¡›æ ¹ç‰¹'),(4283,'æœ€å¾Œçš„æ”¯æ´å…µ'),(4284,'çˆ­å–ä½œæˆ°æ™‚é–“'),(4285,'ä¸åŒå°‹å¸¸çš„æ”»æ“Š'),(4286,'ç ”ç©¶å¤§ç ²'),(4287,'ç¼ºå°‘ç ”ç©¶è³‡æ–™'),(4288,'å‚³é”ç ”ç©¶è³‡æ–™'),(4289,'èˆ‡é æƒ³çš„ä¸€æ¨£'),(4290,'å …æŒå°±æ˜¯å‹åˆ©'),(4291,'é˜²å®ˆæ ¹ç‰¹é€±é‚Š'),(4292,'æ’¿å–ç‚®èº«'),(4293,'èª¿æŸ¥æ®˜é¤˜å…µå™¨'),(4294,'ç ´å£žéºç•™çš„æ­¦å™¨'),(4295,'æ ¹ç‰¹é˜²ç¦¦æˆ°'),(4296,'æƒ³åšç‹—è‚‰æ¹¯ï¼Ÿ'),(4297,'æ¶ˆæ»…ç‚®æ“Šéƒ¨éšŠ'),(4298,'æ ¹ç‰¹é˜²ç¦¦çš„ç¬¬ä¸€æ­¥'),(4301,'èˆ‡è³½èŽ‰äºžçš„ç·£åˆ†'),(4302,'éš•è½çš„å“¥å¸ƒæž—çš„å‚³èªª'),(4303,'æ€ªç¸çµæ®ºè€…'),(4305,'é¬¼æ‰‹çš„åæ‡‰'),(4306,'ä¸å°‹å¸¸çš„å¤©ç©ºä¹‹åŸŽæ°£æ¯'),(4307,'G.S.Dè¦ªè‡ªå‡ºé¦¬'),(4308,'åŽ»æ›´é«˜åœ°æ–¹'),(4309,'é¬¼æ‰‹å•Šï¼Œä½ åˆ°åº•æƒ³èªªä»€'),(4310,'æœå‘å¤©ç©ºä¹‹åŸŽçš„æœ€ä¸Šå±¤'),(4311,'æœå‘å¤©ç©ºä¹‹åŸŽçš„æœ€ä¸Šå±¤'),(4312,'å’Œè³½æ ¼å“ˆç‰¹å°æ±º'),(4313,'ç­”æ¡ˆåœ¨ä½¿å¾’èº«ä¸Š'),(4314,'è®ŠæˆçŸ³åƒçš„å†’éšªå®¶'),(4315,'å…‰ä¹‹è»éšŠ'),(4316,'çŸ³åˆƒæ‹‰æ¾¤çˆ¾'),(4317,'å¦ä¸€å€‹æ‡¸ç©ºåŸŽ'),(4318,'æ‡¸ç©ºåŸŽçš„ç„¡é‡åŠ›ç¢Žç‰‡ 1'),(4319,'æ‡¸ç©ºåŸŽçš„ç„¡é‡åŠ›ç¢Žç‰‡ 2'),(4321,'å åœå¸«è‰¾éº—çµ²'),(4324,'ä½¿å¾’æ˜¯ç‚ºäº†ä»€éº¼è€Œå­˜åœ¨'),(4325,'è¡°å¼±çš„ç¾…ç‰¹æ–¯'),(4326,'æ¶ˆæ»…ç¾…ç‰¹æ–¯'),(4327,'æ²‰ç¡å§ï¼Œç¾…ç‰¹æ–¯'),(4328,'ä½¿å¾’çš„æ­»äº¡ï¼Œé‡ç”Ÿçš„å¸Œ'),(4330,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(4331,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(4332,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(4333,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(4334,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(4335,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(4336,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(4337,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(4338,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(4339,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(4340,'[å¤ä»£åœ°ä¸‹åŸŽ] ç¥žè–çš„åˆ€'),(4341,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(4342,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(4343,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(4344,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(4345,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(4346,'[å¤ä»£åœ°ä¸‹åŸŽ] æ¶ˆæ»…æˆ®è ±'),(4347,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(4348,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(4349,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(4350,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(4351,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(4352,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(4353,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(4354,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(4355,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(4356,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(4357,'[å¤ä»£åœ°ä¸‹åŸŽ] éª·é«å‡±æ©'),(4358,'[å¤ä»£åœ°ä¸‹åŸŽ] èˆ‡é˜¿ç”˜å·¦'),(4359,'[å¤ä»£åœ°ä¸‹åŸŽ] é˜¿ç”˜å·¦çš„'),(4360,'çœ‹ä¸è¦‹çš„å¸Œæœ›'),(4361,'æ§‹ç¯‰é˜²ç¦¦ç·š'),(4362,'ç§˜å¯†çš„å¬å–š'),(4363,'å¥ªå–å½ˆè—¥'),(4364,'å¥‡æ€ªçš„å…µå™¨'),(4365,'æ©Ÿå‹•å…µå™¨ GT-9600'),(4366,'å¯¡ä¸æ•µçœ¾'),(4367,'æ©Ÿå‹•å…µå™¨çš„å¼±é»ž'),(4368,'æ”¶é›†è³‡æ–™'),(4369,'è£½ä½œå…µå™¨'),(4370,'ç ´å£žé€šè¨Šå™¨'),(4371,'å¡å‹’ç‰¹å¹¹éƒ¨çš„å¾½ç«  (é‡è'),(4372,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(4373,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(4374,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(4375,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(4376,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(4377,'[å¤ä»£åœ°ä¸‹åŸŽ] ç”Ÿå‘½æ˜¯ç'),(4378,'[å¤ä»£åœ°ä¸‹åŸŽ] é‡å›žæ•…åœ°'),(4379,'[å¤ä»£åœ°ä¸‹åŸŽ] ç›¸ä¼¼çš„äºº'),(4404,'æ‘©æ ¹çš„éºè¨€'),(4405,'åµå¯Ÿ'),(4406,'èœ˜è››æ´žç©´'),(4407,'è‰¾å…‹æ´›ç´¢'),(4408,'é­¯èŽ½çš„èœé³¥'),(4409,'ä¸å¿…è¦çš„æ…ˆæ‚²'),(4410,'å†’éšªçš„å¦¨ç¤™'),(4411,'ä»¤äººç…©èºçš„æ…˜å«è²'),(4414,'çµ‚æ–¼é–‹å•Ÿçš„å¤©ç•Œä¹‹é–€'),(4415,'å‰å¾€å¤©ç•Œ'),(4416,'å¤©ç•Œçš„å®ˆå‚™éšŠé•·'),(4417,'å…ˆç™¼åˆ¶äºº'),(4419,'ç«çš„é›ç…‰'),(4420,'[å¤ä»£åœ°ä¸‹åŸŽ]  å¤ä»£çŽ‹åœ'),(4421,'[å¤ä»£åœ°ä¸‹åŸŽ]  å¤ä»£çŽ‹åœ'),(4422,'åªå‰©ä¸‹æš—é»‘åŸŽå…¥å£äº†'),(4423,'åŸºç¤Žå¾ˆé‡è¦'),(4424,'å¡å‹’ç‰¹å¹¹éƒ¨çš„å¾½ç« '),(4425,'[å¤ä»£åœ°ä¸‹åŸŽ] æ­Œè˜­è’‚æ–¯'),(4426,'[å¤ä»£åœ°ä¸‹åŸŽ] æ­Œè˜­è’‚æ–¯'),(4427,'æ­å–œä½ è½‰è·äº†ï¼'),(4428,'æ­å–œä½ è½‰è·äº†ï¼'),(4429,'æ­å–œä½ è½‰è·äº†ï¼'),(4430,'æ­å–œä½ è½‰è·äº†ï¼'),(4431,'æ­å–œä½ è½‰è·äº†ï¼'),(4432,'æ­å–œä½ è½‰è·äº†ï¼'),(4433,'æ­å–œä½ è½‰è·äº†ï¼'),(4434,'æ­å–œä½ è½‰è·äº†ï¼'),(4435,'æ­å–œä½ è½‰è·äº†ï¼'),(4436,'[å¤ä»£åœ°ä¸‹åŸŽ]  çŽ‹çš„æ¦®è­'),(4437,'è€æœ‹å‹ - æˆ’æŒ‡ (1/3)'),(4438,'è€æœ‹å‹ - æ‰‹ç’° (2/3)'),(4439,'è€æœ‹å‹ - é …éŠ (3/3)'),(4440,'ç°è‰²çµæ™¶å’Œè³½èŽ‰äºž'),(4441,'ç‚ºäº†ç²å¾—çµæ™¶çš„é­”æ³•'),(4442,'æŠ½å–çµæ™¶çš„æ°£æ¯'),(4443,'[å¤ä»£åœ°ä¸‹åŸŽ] ç„¡æ³•å‰å¾€'),(4444,'[å¤ä»£åœ°ä¸‹åŸŽ] æ›¾ç¶“å¹³éœ'),(4445,'[å¤ä»£åœ°ä¸‹åŸŽ] æ‘©æ ¹çš„æ—¥'),(4446,'[å¤ä»£åœ°ä¸‹åŸŽ] è‰¾éº—çµ²çš„'),(4447,'[å¤ä»£åœ°ä¸‹åŸŽ] ä½¿å¾’çš„æ°£'),(4448,'[å¤ä»£åœ°ä¸‹åŸŽ] æ„æ–™ä¹‹å¤–'),(4449,'[å¤ä»£åœ°ä¸‹åŸŽ] ç‹„ç‘žå‰çš„'),(4450,'[å¤ä»£åœ°ä¸‹åŸŽ] è§£ä¸é–‹çš„'),(4451,'[å¤ä»£åœ°ä¸‹åŸŽ] è§£ä¸é–‹çš„'),(4452,'[å¤ä»£åœ°ä¸‹åŸŽ] å¦‚æžœæ˜¯å½'),(4453,'[å¤ä»£åœ°ä¸‹åŸŽ] å½è£è€…çš„'),(4454,'[å¤ä»£åœ°ä¸‹åŸŽ] æš´æˆ¾æœæ•'),(4455,'[å¤ä»£åœ°ä¸‹åŸŽ] æ­Œè˜­è’‚æ–¯'),(4456,'[å¤ä»£åœ°ä¸‹åŸŽ] æ ¼æ‹‰è¥¿äºž'),(4457,'[å¤ä»£åœ°ä¸‹åŸŽ] å…ç–«é­”æ³•'),(4461,'å£“æŠ‘çš„æ‚²é³´è²'),(4462,'è¨˜æ†¶ä¸­çš„å¾€äº‹'),(4465,'ç¬¬ä¸€å€‹æ™‚é–“ç¢Žç‰‡ - æ´›è—'),(4466,'é˜¿æ³•åˆ©äºžçš„å±æ©Ÿ'),(4467,'æš—ç²¾éˆçš„å±æ©Ÿ'),(4468,'åŠ çˆ¾ä¼ŠèŠçµ²'),(4469,'ç¬¬äºŒå€‹æ™‚é–“ç¢Žç‰‡'),(4470,'å°‹æ‰¾æ™‚é–“ç¢Žç‰‡1'),(4471,'å°‹æ‰¾æ™‚é–“ç¢Žç‰‡2'),(4472,'è„†å¼±çš„æ™‚é–“ç¢Žç‰‡'),(4473,'å¼·åŒ–çš„æ™‚é–“ç¢Žç‰‡ 1'),(4474,'å¼·åŒ–çš„æ™‚é–“ç¢Žç‰‡ 2'),(4475,'ä¸€å®šè¦æ›´å¼·'),(4476,'æ–°çš„åŠ›é‡ - ä»»å‹™å•†åº—'),(4477,'æ™‚é–“ç¢Žç‰‡ - æ ¼è˜­ä¹‹æ£®'),(4478,'æ™‚é–“ç¢Žç‰‡ - ç¬¬ä¸€å€‹æ™‚é–“'),(4479,'æ™‚é–“ç¢Žç‰‡ - å¤©å¸·å·¨ç¸'),(4480,'æ™‚é–“ç¢Žç‰‡ - è«¾ä¼Šä½©æ‹‰'),(4481,'æ™‚é–“ç¢Žç‰‡ - æš—é»‘åŸŽ'),(4482,'æ™‚é–“ç¢Žç‰‡ -è¬å¹´é›ªå±±'),(4483,'æ™‚é–“ç¢Žç‰‡ - å¢®è½æ®¿å ‚'),(4484,'æ™‚é–“ç¢Žç‰‡ - è«¾æ–¯ç‘ªçˆ¾'),(4485,'æ™‚é–“ç¢Žç‰‡ - é™Œç”Ÿè¦å¡ž'),(4486,'æ™‚é–“ç¢Žç‰‡ - å®‰ç‰¹è²çˆ¾å³½'),(4487,'æ™‚é–“ç¢Žç‰‡ - æµ·ä¸Šåˆ—è»Š'),(4491,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(4492,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(4493,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(4494,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(4495,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(4500,'å¸åœ‹æƒ³è¦ä½ ï¼'),(4501,'ç™½è‰²å½±å­çš„æ€ªç‰©'),(4503,'æš´é¢¨å‰å¤•'),(4504,'ä¸è©³çš„é æ„Ÿ'),(4505,'å’†å“®çš„è²éŸ³'),(4506,'æˆ‘æ—èƒŒè² çš„æ¥­å ±'),(4514,'å·´çˆ¾é›·å¨œçš„è¨˜æ†¶åŠ›'),(4515,'åˆæ¬¡çœ‹è¦‹çš„è¡£æ–™'),(4516,'ç…©äººçš„é­”æ³•å¸«'),(4520,'å»¢å¢Ÿä¸­ç§»å‹•çš„ç™½è‰²å·¨ç‰©'),(4521,'æ¯è¦ªçš„æ“”å¿ƒ'),(4522,'ç•°è®Šç¾è±¡çš„å½±å­'),(4523,'æŠ«ä¸Šæ•µäººçš„å¤–è¡£'),(4525,'æ¯è¦ªçš„å¿ƒæ€'),(4526,'é›ªå±±çš„è™Ÿè§’'),(4527,'ä»¥çœ¼é‚„çœ¼ï¼Œ ä»¥ç‰™é‚„ç‰™'),(4528,'åŒ–æˆé›ªé£„è½'),(4536,'é›€ç‘Ÿé£²é…’çš„ç†ç”±'),(4537,'é†’é…’'),(4538,'ä¸€çˆ­é«˜ä¸‹'),(4542,'ç­åœ–çš„å‚³çµ±æ°‘è¬ '),(4543,'æ´›çµ²ä¹‹æ­Œ'),(4544,'ç„¡æ³•ç½®ä¿¡'),(4545,'ä¸€ç·šå¸Œæœ›'),(4546,'å®ˆè­·å¤¢æƒ³'),(4547,'ç™¼ç¾ç·šç´¢'),(4548,'è¢«ç™¼ç¾çš„å…§å¹•ï¼Œç¾…å¸Œçš„'),(4549,'å¯¦ç¾æœ€å¾Œçš„å¤¢æƒ³'),(4557,'å†°éœœä¸­çš„å‘¼å–š'),(4558,'å°‹æ‰¾æ´›å¸Œå©­çš„è¹¤è·¡'),(4559,'æœ‰æ·’æ¶¼æ•…äº‹çš„å¹´è¼•äºº'),(4560,'èªªæœï¼Œå¯æ˜¯'),(4561,'çœŸæ­£çš„ç¦®ç‰©'),(4562,'ä¸æ²‰ç¡çš„é¾'),(4563,'å¿è€çš„æ¥µé™'),(4564,'æ±ºæ–·'),(4565,'çµ¦å¸åœ‹çš„ä¿¡'),(4566,'å¸åœ‹çš„ä¾†ä¿¡'),(4567,'ç”Ÿæ­»ä¸€å¿µé–“'),(4568,'æ±ºæˆ°ï¼Œæ–¯å¡è–©ï¼'),(4569,'æ­»é¬¥çš„è­‰æ“š'),(4571,'æœ€å¾Œä¸€æ“Š'),(4572,'é›ªä¹‹æ¦®è­½'),(4601,'è¡Œè¹¤ä¸æ˜Žçš„ç¾…èŽ‰å®‰'),(4603,'æ–¯å¡è¿ªå¥³çŽ‹çš„è¦ªç­†ä¿¡'),(4605,'æ”¶é›†é˜²å…·ææ–™'),(4606,'æ€ªç•°çš„æ”¶é›†ç™–'),(4607,'è®“å¾˜å¾Šçš„éˆé­‚å®‰æ¯'),(4608,'ç¾…ç‰¹æ–¯çš„å‚€å„¡'),(4609,'å¢æž—æ”¯é…è€…ç¾…ä¸'),(4610,'é»‘æš—ä¸­çš„ç‹©çµå¤§å¸«'),(4611,'é¾é ­ç‚®çš„æ“ç¸±è€…'),(4612,'å¤§ç¥žå®˜è«¾ç‰¹é­¯'),(4613,'æœ€å¾Œçš„æŠµæŠ—'),(5001,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(5002,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(5003,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(5004,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢å°‹å¼·åŠ›'),(5005,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(5151,'[ç•°ç•Œåœ°ä¸‹åŸŽ] å¥‡æ€ªçš„ç®¡'),(5152,'[ç•°ç•Œåœ°ä¸‹åŸŽ] å°å°ä¹‹åœ°'),(5153,'[ç•°ç•Œåœ°ä¸‹åŸŽ] ç•°æ¬¡å…ƒè£‚'),(5154,'[å¤ä»£åœ°ä¸‹åŸŽ] åŸŽâ€¦ é‚£æ˜'),(5155,'[ç•°ç•Œåœ°ä¸‹åŸŽ] ç•°æ¬¡å…ƒè£‚'),(5156,'[ç•°ç•Œåœ°ä¸‹åŸŽ] è˜­è’‚ç›§æ–¯'),(5157,'[ç•°ç•Œåœ°ä¸‹åŸŽ] å‡±èŽ‰çš„å§”'),(5270,'å…‰è¼ä¹‹é­”çŸ³ç¢Žç‰‡ (é‡è¤‡)'),(5307,'è¦ºé†’ - å¤©å•Ÿè–å¾’ 1'),(5308,'è¦ºé†’ - å¤©å•Ÿè–å¾’ 2'),(5309,'è¦ºé†’ - å¤©å•Ÿè–å¾’ 3'),(5310,'è¦ºé†’ - å¤©å•Ÿè–å¾’ 4'),(5314,'è¦ºé†’ - ç¥žä¹‹æ‰‹ 1'),(5315,'è¦ºé†’ - ç¥žä¹‹æ‰‹ 2'),(5316,'è¦ºé†’ - ç¥žä¹‹æ‰‹ 3'),(5317,'è¦ºé†’ - ç¥žä¹‹æ‰‹ 4'),(5321,'è¦ºé†’ - é¾é¬¥å£« 1'),(5322,'è¦ºé†’ - é¾é¬¥å£« 2'),(5323,'è¦ºé†’ - é¾é¬¥å£« 3'),(5324,'è¦ºé†’ - é¾é¬¥å£« 4'),(5329,'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 1'),(5330,'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 2'),(5331,'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 3'),(5332,'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 4'),(5333,'è¦ºé†’ - æ®²æ»…è€… 1'),(5334,'è¦ºé†’ - æ®²æ»…è€… 2'),(5335,'è¦ºé†’ - æ®²æ»…è€… 3'),(5336,'è¦ºé†’ - æ®²æ»…è€… 4'),(5340,'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 1'),(5341,'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 2'),(5342,'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 3'),(5343,'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 4'),(5344,'è¦ºé†’ - å¥³æ­¦ç¥ž 1'),(5345,'è¦ºé†’ - å¥³æ­¦ç¥ž 2'),(5346,'è¦ºé†’ - å¥³æ­¦ç¥ž 3'),(5347,'è¦ºé†’ - å¥³æ­¦ç¥ž 4'),(5350,'è¦ºé†’ - é­”è¡“å¸« 1'),(5351,'è¦ºé†’ - é­”è¡“å¸« 2'),(5352,'è¦ºé†’ - é­”è¡“å¸« 3'),(5353,'è¦ºé†’ - é­”è¡“å¸« 4'),(5401,'Test'),(5402,'Test'),(5403,'Test'),(5404,'Test'),(5405,'Test'),(5406,'Test'),(5407,'Test'),(5408,'Test'),(5409,'Test'),(5410,'Test'),(5411,'Test'),(5412,'Test'),(5413,'Test'),(5414,'Test'),(5415,'Test'),(5416,'Test'),(5417,'Test'),(5418,'Test'),(5419,'Test'),(5420,'Test'),(5421,'Test'),(5433,'Test'),(5442,'Test'),(5443,'Test'),(5444,'Test'),(5445,'Test'),(5446,'Test'),(5447,'Test'),(5448,'Test'),(5449,'Test'),(5450,'Test'),(5451,'Test'),(5452,'Test'),(5453,'Test'),(5454,'Test'),(5455,'Test'),(5456,'Test'),(5457,'Test'),(5458,'Test'),(5459,'Test'),(5460,'Test'),(5461,'Test'),(5462,'Test'),(5463,'Test'),(5465,'Test'),(5466,'Test'),(5467,'Test'),(5468,'Test'),(5469,'Test'),(5470,'Test'),(5471,'Test'),(5472,'Test'),(5473,'Test'),(5474,'Test'),(5475,'Test'),(5476,'Test'),(5477,'Test'),(5478,'æ™‚é–“ä¹‹é–€å€åŸŸå†’éšª'),(5479,'Test'),(5480,'Test'),(5481,'Test'),(5650,'ä¸ç¥¥çš„å»ºç¯‰ç‰©'),(5651,'å¾žåœ°ç„ä¾†çš„ç”Ÿç‰©'),(5652,'ä¾†è‡ªåœ°ç„çš„ç”Ÿç‰©'),(5653,'æ­»ç¥žé˜¿åŠ é›·æ–¯'),(5654,'æ­»ç¥žåˆ°åº•æƒ³è¦ç”šéº¼ï¼Ÿ'),(5655,'ç†±è¡€æ²¸é¨°çš„éŠé‡‘è¡“å¸«'),(5656,'çµ‚æ¥µéŠé‡‘è¡“'),(5657,'ä¸æ»…ä¹‹è—¥'),(5658,'ç„¡ç›¡çš„ç ”ç©¶'),(5659,'æŒ‘æˆ°ç„¡ç›¡çš„ç¥­å£‡'),(5660,'è¬›è¿°å†’éšªæ•…äº‹'),(5661,'é è¨€çš„é“å…·'),(5678,'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 1'),(5679,'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 2'),(5680,'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 3'),(5681,'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 4'),(5684,'è¦ºé†’ - æ­»äº¡ä½¿è€… 1'),(5685,'è¦ºé†’ - æ­»äº¡ä½¿è€… 2'),(5686,'è¦ºé†’ - æ­»äº¡ä½¿è€… 3'),(5687,'è¦ºé†’ - æ­»äº¡ä½¿è€… 4'),(5720,'åµæŸ¥é‡Žç‡Ÿåœ°'),(5721,'æ–°çš„æ•µäºº'),(5722,'ä¸€å¤œçš„ä½œæˆ°'),(5723,'å†æ¬¡çªè¥²'),(5724,'æ”¶é›†æƒ…å ±'),(5725,'æ•µäººçš„çœŸé¢ç›®1'),(5726,'æ•µäººçš„çœŸé¢ç›®2'),(5727,'ä¸å¯å‘Šäººçš„äº¤æ˜“'),(5728,'æ“Šé€€é›œæŠ€åœ˜'),(5729,'æ•µäººçš„å™©å¤¢ä¹‹å¤œ'),(5730,'éº»ç…©çš„å°çŸ®äºº'),(5731,'æŽŒæ¡é‡Žç‡Ÿåœ°æ§‹é€ '),(5732,'æ„›ç¾Žä¹‹å¿ƒ'),(5733,'ç‰¹æ®Šçš„ç«ç¨®'),(5734,'ç”œç¾Žçš„å¤¢'),(5741,'é€™å€‹å¤œæ™šä¸å†å¯’å†·'),(5742,'æ„›ç¾Žæ˜¯å¥³äººçš„å¤©æ€§'),(5743,'æŽ¢ç´¢è£œçµ¦åŸºåœ°'),(5744,'ç ´å£žæ­¦å™¨å€‰åº«'),(5745,'å°‹æ‰¾æ•µäººçš„ç³§é£Ÿ'),(5746,'ç ´å£žç³§é£Ÿå€‰åº«'),(5747,'è£œçµ¦éƒ¨éšŠçš„é¦–é•·æ˜¯ï¼Ÿ'),(5748,'å‰è³½çˆ¾åšå£«çš„é™°è¬€'),(5749,'è¢«æ”¹é€ çš„å£«å…µå€‘'),(5750,'ç”Ÿç‰©å¯¦é©—çš„çœŸç›¸'),(5751,'çµ‚æ¥µå¯¦é©—é«”'),(5752,'å½ˆè—¥æ”¹é€ '),(5753,'æ§æ¢°å¦‚åŒæ„›äºº'),(5754,'ä»Šå¤©æˆ‘ä¾†ç•¶å»šå¸« (1/2)'),(5755,'ç¼ºä¹å·¥å…·'),(5756,'é›¶ä»¶èª¿é…'),(5765,'è¿½æ“Šå‰è³½çˆ¾'),(5766,'å‡†å°‡å°¼è²çˆ¾'),(5767,'é­¯èŽ½çš„æŸ¯ç¶­'),(5768,'ç§˜å¯†æ­¦å™¨é£›ç‡•'),(5769,'ç‰¹ç¨®éƒ¨éšŠé›†çµ'),(5770,'äº¡å‘½è€…'),(5771,'èƒŒä¿¡è€…çš„åš´æ‡²'),(5772,'ç„¡åå¥³äºº'),(5773,'å¥¹çš„éŽåŽ»'),(5774,'æˆ°é¬¥æº–å‚™'),(5775,'ç ´å£žæŽ©è”½ç‰©'),(5776,'å¤©å¯’åœ°å‡'),(5777,'æ¶ˆæ»…å¹¹éƒ¨'),(5778,'æŽ§åˆ¶é»‘æš—çš„äºº'),(5779,'æœ€çµ‚ä½œæˆ°'),(5780,'æœæŸ¥æ®²æ»…'),(5781,'ç¸½æ±ºæˆ°'),(5784,'å½ˆè—¥æ”¹é€ å°ˆå®¶'),(5785,'ç±ŒæŽªå·¥å…·'),(5786,'å£«å…µçš„ç”Ÿå‘½'),(5787,'æ‚„ç„¡è²æ¯'),(5788,'æ“¾äº‚æ•µè»è¨ˆç•«'),(5789,'æ¢…çˆ¾æ–‡Â·é‡Œå…‹ç‰¹çš„æ„›å¥½'),(5790,'ç™¾å§“çš„ç—›è‹¦'),(5791,'æ”¶é›†æ¨£å“'),(5793,'æˆ°å ´ä¸Šçš„å‹æƒ…'),(5796,'å¸Œæœ›çš„ç«ç¨®'),(5797,'ä¿éšœç‰©è³‡'),(5798,'æ®²æ»…æœ€å¾Œçš„æ•µäºº'),(5799,'æº«æš–äººå¿ƒ'),(5800,'å°‹æ‰¾ç›œè³Šåœ˜çš„ç—•è·¡'),(5801,'æ²™ä¸­æŒ¯ç¿…'),(5802,'è¡€è¶ä¹‹èˆž'),(5803,'æ‘©æ–¯æ˜†çš„èœ‚é‡'),(5804,'ç ´å£žèŸ²ç¹­'),(5805,'å¤±è¹¤çš„ç‰¹å·¥'),(5806,'å¦‚æžœä¸æƒ³è¦æ¨¹ç«‹æ•µäººï¼Œ'),(5807,'é£Ÿå¤¢æ¨¹'),(5808,'ç¥žå¥‡çš„å¤¢ä¹‹ç²‰'),(5809,'å†’éšªå®¶çš„å¤¢'),(5810,'å¤±è¹¤çš„ç‰¹å·¥'),(5811,'å¦‚æžœä¸æƒ³è¦æ¨¹ç«‹æ•µäººï¼Œ'),(5812,'é£Ÿå¤¢æ¨¹'),(5813,'ç¥žå¥‡çš„å¤¢ä¹‹ç²‰'),(5814,'å†’éšªå®¶çš„å¤¢'),(5816,'å¼·èº«å¥é«”'),(5817,'æ¶²ç‹€è¡¨çš®ç´°èƒž'),(5818,'æœ€å¥½ä¸è¦åŽ»æ‰“æ“¾èœ‚å·¢'),(5819,'ç ´å£žèŸ²ç¹­'),(5820,'æœ€å¥½ä¸è¦åŽ»æ‰“æ“¾èœ‚å·¢'),(5821,'å¦‚æžœä¸æƒ³è¦æ¨¹ç«‹æ•µäººï¼Œ'),(5824,'çè²´ææ–™'),(5825,'æš—ç²¾éˆçš„æ™ºæ…§'),(5826,'è™›ç©ºé­”çŸ³'),(5827,'è™›ç©ºé­”çŸ³ (é‡è¤‡)'),(5828,'è‹±é›„ - è‹±é›„çš„å¤¢'),(5829,'[è‹±é›„] èˆ‡è¥¿åµçš„å¤¢'),(5831,'å¹»å½±æ‰‹é² 1/2'),(5832,'å¹»å½±æ‰‹é² 2/2'),(5833,'å¹»å½±æ‰‹é²åœ¨ä¸€å€‹'),(5836,'å‰å¾€æ‡¸ç©ºçš„æµ·æ¸¯ï¼'),(5837,'è¦æ­ä¹˜æµ·ä¸Šåˆ—è»Šå—Žï¼Ÿ'),(5838,'ç¬¬ä¸€æ¬¡äº¤æ˜“'),(5839,'åˆ—è»Šä¸Šçš„é»‘è‰²é±—ç‰‡'),(5840,'ç¬¬äºŒæ¬¡äº¤æ˜“'),(5841,'åœ¨å¤©ç•Œè¢«åŒåŒ–çš„ç¾Žäººé­š'),(5842,'é±·é­šçš„å·¢ç©´'),(5843,'å¤©ç•Œçç '),(5844,'åˆéš†çš„å¥½æœ‹å‹ï¼Œç©ºç©º'),(5845,'é±·é­šçš„å·¢ç©´'),(5846,'å¤©ç•Œçç  (é‡è¤‡)'),(5847,'æˆ‘ä¸è¦å«çµ¦é›„äººé­šï¼ï¼'),(5848,'æˆ‘ä¸è¦å«çµ¦é›„äººé­šï¼ï¼'),(5849,'å°‹æ‰¾ç©ºç©ºä¼Š'),(5850,'éµé±—æµ·ç›œåœ˜ï¼ˆåœ˜å“¡ï¼‰'),(5851,'éµé±—æµ·ç›œåœ˜ï¼ˆå‰¯èˆ¹é•·ï¼‰'),(5852,'éµé±—æµ·ç›œåœ˜ï¼ˆèˆ¹é•·ï¼‰'),(5853,'éµé±—æµ·ç›œåœ˜ï¼ˆè‰¦é•·ï¼‰'),(5859,'äº¤æ›èˆ¹å“¡çš„æˆ’æŒ‡ '),(5860,'æ·±æµ·é …éŠ (1/2)'),(5861,'æ·±æµ·é …éŠ (2/2)'),(5862,'é‡é ˜æ·±æµ·é …éŠ'),(5863,'å¤©ç•Œç”Ÿå‘½é«”çš„è®ŠåŒ–'),(5864,'å¡å‹’ç‰¹è£å‚™æ¬é‹åˆ—è»Šæ™‚'),(5865,'ä¸–ä¸Šæ²’æœ‰å…è²»çš„åˆé¤'),(5866,'ç¢ºèªåˆ—è»Šå…§éƒ¨'),(5867,'ç ´å£žé‹è¼¸ä¸­çš„è£å‚™'),(5868,'æœ‰ç”¨çš„é›¶ä»¶'),(5869,'çƒé¾œ'),(5870,'æœ€é«˜ç´šçš„éµé±—'),(5871,'æµ·è³Šåœ˜é ­ç›®'),(5872,'å …ç¡¬çš„é¾œæ®¼'),(5873,'å …ç¡¬çš„é¾œæ®¼ (é‡è¤‡)'),(5874,'é€™è£¡ä¹Ÿæœ‰ç©ºç©ºï¼Ÿ'),(5875,'è²´è³“ç”¨æ¡Œå­'),(5876,'æœ‰ç”¨çš„é›¶ä»¶'),(5877,'ç ´å£žé‹è¼¸ä¸­çš„è£å‚™'),(5878,'è²´è³“ç”¨æ¡Œå­'),(5889,'ç–‘æƒ‘ä¹‹æ‘'),(5890,'ç¿¡ç¿ æˆ’æŒ‡'),(5891,'ä½©æˆ´ç¿¡ç¿ æˆ’æŒ‡çš„å°‘å¥³'),(5892,'æ‚²æ…˜çš„æ‘èŽŠ'),(5893,'å…·æœ‰ç”Ÿæ°£çš„é ­é«®'),(5894,'éŸ¿å°¾è›‡çš„å°¾å·´'),(5895,'ç°è‰²çµæ™¶ (å¤§)'),(5899,'ç´…è‰²é‘½çŸ³'),(5900,'ç ´å£žæ²¹æ¡¶'),(5901,'åˆ°åº•æ˜¯ä¸æ˜¯å¯¶ç®±'),(5902,'å™å¿ƒçš„æ€ªç‰©'),(5903,'ä¿®ç·´çš„å¥½å°è±¡'),(5904,'ç´…è‰²é‘½çŸ³ (é‡è¤‡)'),(5905,'ç ´å£žæ²¹æ¡¶'),(5906,'åˆ°åº•æ˜¯ä¸æ˜¯å¯¶ç®±'),(5907,'å™å¿ƒçš„æº¶è§£æ€ª'),(5908,'ä¿®ç·´çš„å¥½å°è±¡'),(5924,'æ—¢ç„¶å¦‚æ­¤ï¼Œé€£ç“·å™¨ä¹Ÿ'),(5925,'è²´é‡çš„ç“·å™¨'),(5926,'äº¤æ›å‰¯èˆ¹é•·çš„æˆ’æŒ‡'),(5928,'æ¢…çˆ¾æ–‡Â·é‡Œå…‹ç‰¹çš„é«˜ç§‘æ'),(5929,'é‡é ˜é«˜ç§‘æŠ€æˆ’æŒ‡'),(5950,'æ”¶é›†å¾½ç« '),(5951,'æ”¶é›†éšŽç´šç« '),(6501,'Lv10åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨G.'),(6502,'Lv12åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨ç´'),(6503,'Lv14åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å'),(6504,'Lv16åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨èŽ'),(6505,'Lv18åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨èŽ'),(6506,'Lv20åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨è«'),(6507,'Lv22åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å'),(6508,'Lv25åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨è‰'),(6509,'Lv25åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨G.'),(6510,'Lv28åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨è¾'),(6511,'Lv32åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨èŽ'),(6512,'Lv34åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥'),(6513,'Lv36åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥'),(6514,'Lv39åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å…'),(6515,'Lv40åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å…'),(6516,'Lv43åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥'),(6517,'Lv44åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥'),(6518,'Lv46åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥'),(6519,'Lv48åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨ç±'),(6520,'Lv49åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨ç´'),(6521,'Lv51åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å…'),(6522,'Lv53åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å‡'),(6523,'Lv54åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥'),(6524,'Lv58åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¢'),(6525,'Lv60åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¾'),(6526,'Lv63åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¾'),(6527,'Lv64åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¾'),(6528,'Lv65ç´šå¯åœ¨è²å€«â€§åšå…§å“'),(6529,'Lv65ç´šå¯åœ¨è²å€«â€§åšå…§å“'),(6530,'Lv65ç´šå¯åœ¨è²å€«â€§åšå…§å“'),(6531,'è§’è‰²é”åˆ°Lv70ã€‚'),(6532,'ä½¿ç”¨æŠ€èƒ½æ™‚ï¼Œ æ¶ˆè€—10000'),(6533,'èƒŒæ“Šæ”»æ“Šé”åˆ°500æ¬¡ã€‚'),(6534,'åœ¨åœ°ä¸‹åŸŽä¸­ï¼Œ æ”»æ“Šæ•µäº'),(6535,'åœ¨åœ°ä¸‹åŸŽï¼Œ æœ€é«˜é€£æ“Šæ•'),(6536,'ä¸€æ¬¡æ”»æ“ŠåŒæ™‚è¢«5ååŠä»'),(6537,'è§£é«”è£å‚™æ™‚ç²å¾—50å€‹ä»¥ä'),(6538,'Lv66ç´šå¯åœ¨è²å€«â€§åšå…§å“'),(6539,'è§’è‰²é”åˆ°Lv70å¾Œï¼Œ å°‡å‰©é'),(6540,'ç‚ºéšŠå‹ä½¿ç”¨50å€‹å¾©æ´»å¹£ã'),(6541,'çµ„éšŠæ™‚ï¼Œ å‡ºç¾10æ¬¡æ“²å‡º'),(6542,'çµ„éšŠæ™‚ï¼Œ ç²å¾—100å€‹ä»¥ä¸'),(6543,'ä½¿ç”¨äººå½¢å¸«è£½ä½œçš„å¥³æ€§'),(6544,'ä½¿ç”¨äººå½¢å¸«è£½ä½œçš„ç”·æ€§'),(6545,'Lv50ç´šå¯åœ¨èŽŽè˜­è™•æŽ¥å—ä¸'),(6546,'åœ¨10åˆ†é˜å…§ï¼Œ é€šéŽæ­»ä¸­'),(6547,'åœ¨æ­»ä¸­å­œè–´ä¸‘A è¢«æ­»ä¸­å'),(6548,'é€šéŽæ­»ä¸­å­œè‡A ä¸¦ä¸”ä¸ä'),(6549,'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å'),(6550,'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å'),(6551,'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å'),(6552,'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å'),(6553,'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å'),(6554,'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å'),(6555,'åœ¨ç•°ç•Œåœ°ä¸‹åŸŽä¸­ï¼Œ ç¨è‡'),(6556,'åœ¨æ–°ç•°ç•Œåœ°ä¸‹åŸŽ(å·´å¡çˆ'),(6557,'åœ¨æ–°ç•°ç•Œåœ°ä¸‹åŸŽ(å·´å¡çˆ'),(6558,'åœ¨10åˆ†é˜å…§ï¼Œ é€šéŽè˜­è’‚'),(6559,'åœ¨è •å‹•ä¹‹åŸŽå…§çš„3å€‹é¾é¨'),(6560,'å“¥å¸ƒæž—çŽ‹åœ‹ç”¨ä¸­å¤®è£ç½®'),(6561,'å“¥å¸ƒæž—çŽ‹åœ‹å…‹åˆ©å…‹çš„æ†¤'),(6562,'[é»‘è‰²å¤§åœ°]åœ°ä¸‹åŸŽä¸­ï¼Œ '),(6563,'[ç•°ç•Œè£‚ç¸«]é ˜ä¸»æˆ¿é–“ä¸­ï'),(6564,'[å·´å¡çˆ¾ä¹‹åŸŽ]é ˜ä¸»çš„DDRæ'),(6565,'é™¤äº†è¼”åŠ©è£å‚™ã€ é­”æ³•çŸ'),(6566,'é™¤äº†ç¨±è™Ÿä¹‹å¤–ï¼Œ æ‰€æœ‰éƒ'),(6567,'è£å‚™Lv55ä»¥ä¸Šçš„ç¥žå™¨ç­‰ç´'),(6568,'ç©¿æˆ´Lv50ä»¥ä¸Šçš„ç¥žå™¨ç­‰ç´'),(6569,'é–‹å•Ÿ100å€‹åœŸç½å‡ºå”®çš„è¢–'),(6570,'é–‹å•Ÿ300å€‹ç«ç½å‡ºå”®çš„è¢–'),(6571,'é–‹å•Ÿ300å€‹æœ¨ç½å‡ºå”®çš„è¢–'),(6572,'é–‹å•Ÿ300å€‹æ°´ç½å‡ºå”®çš„è¢–'),(6573,'é–‹å•Ÿ150å€‹é‡‘ç½å‡ºå”®çš„è¢–'),(6574,'é–‹å•Ÿ100å€‹åˆéš†å‡ºå”®çš„è¢–'),(6575,'é‡Žè‰èŽ“ã€ æœ‰æ©Ÿè‰èŽ“ã€ ç'),(6576,'ç´¯è¨ˆæ¶ˆè€—1000å€‹éŠ³çœ¼è—¥åŠ'),(6577,'æŠ€èƒ½åˆå§‹åŒ–5æ¬¡'),(6578,'ç´¯è¨ˆæ¶ˆè€—500å€‹è»ç³§ (çš‡é'),(6579,'ç´¯è¨ˆæ¶ˆè€—500å€‹éŠé‡‘è¡“å¸«'),(6580,'æ“æœ‰éºµåŒ…å’Œç‰›å¥¶å„1000å€'),(6581,'æ“æœ‰30ä»¶åŠä»¥ä¸Šçš„è£æ‰®ã'),(6582,'ç©¿æˆ´å…‹éš†ç¨€æœ‰è£æ‰®çš„éƒ¨'),(6583,'æ“æœ‰å­µåŒ–çš„å¯µç‰©é”åˆ°5å€'),(6584,'å°‡è£æ‰®é‡é‘„ç‚ºå¾½ç« 10æ¬¡ã'),(6585,'æ“æœ‰ä¸åŒé¡è‰²çš„å¤§æ™¶é«”'),(6586,'æ“æœ‰200å€‹[å¼·çƒˆä¹‹ç—•è·¡]ã'),(6587,'æ“æœ‰50å€‹[æ¿ƒç¸®çš„ç´”æ½”ä¹‹'),(6588,'æ“æœ‰[ç‡¦çˆ›çš„å®‡å®™éˆé­‚]ã'),(6589,'æ‰“ç ´20å€‹ç¨€æœ‰ç´šä»¥ä¸Šç­‰ç'),(6590,'å°‡ç¨€æœ‰åŠä»¥ä¸Šç­‰ç´šçš„è£'),(6591,'å°‡æŸä¸€å€‹è£å‚™å¼·åŒ–è‡³+15'),(6592,'åœ¨å…¬å¹³çš„æ±ºé¬¥å ´ä¸­ï¼Œ å®'),(6593,'åœ¨æ±ºé¬¥å ´æ“‚è‡ºè³½ä¸­ï¼Œ ç'),(6594,'åœ¨æ±ºé¬¥å ´æ“‚è‡ºè³½ä¸­ï¼Œ 0æ'),(6595,'è®“ä¸€å€‹è§’è‰²åœ¨åŸŽéŽ®ä¸­é€£'),(6596,'åœ¨DNFå°ˆå±¬ç¶²å’–ï¼Œ ï¼Œ é€£ç'),(6597,'æ–½æ”¾ä¸»å‹•è¦ºé†’æŠ€èƒ½é”åˆ°'),(6598,'ä½¿ç”¨ä¼ºæœå™¨å–‡å­æˆ–è§£æ”¾'),(6599,'é€²è¡Œ3æ¬¡è¡—é ­çˆ­éœ¸ã€‚'),(6600,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬1å±¤ã€‚'),(6601,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬3å±¤ã€‚'),(6602,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬5å±¤ã€‚'),(6603,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬7å±¤ã€‚'),(6604,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬8å±¤ã€‚'),(6605,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬9å±¤ã€‚'),(6606,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬11å±¤ã€‚'),(6607,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬14å±¤ã€‚'),(6608,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬16å±¤ã€‚'),(6609,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬17å±¤ã€‚'),(6610,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬18å±¤ã€‚'),(6611,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬21å±¤ã€‚'),(6612,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬22å±¤ã€‚'),(6613,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬24å±¤ã€‚'),(6614,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬25å±¤ã€‚'),(6615,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬27å±¤ã€‚'),(6616,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬28å±¤ã€‚'),(6617,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬29å±¤ã€‚'),(6618,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬31å±¤ã€‚'),(6619,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬33å±¤ã€‚'),(6620,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬34å±¤ã€‚'),(6621,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬35å±¤ã€‚'),(6622,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬36å±¤ã€‚'),(6623,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬38å±¤ã€‚'),(6624,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬39å±¤ã€‚'),(6625,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬43å±¤ã€‚'),(6626,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬44å±¤ã€‚'),(6627,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬45å±¤ã€‚'),(6628,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬46å±¤ã€‚'),(6629,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬47å±¤ã€‚'),(6630,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬49å±¤ã€‚'),(6631,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬55å±¤ã€‚'),(6632,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬59å±¤ã€‚'),(6633,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬61å±¤ã€‚'),(6634,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬63å±¤ã€‚'),(6635,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬68å±¤ã€‚'),(6636,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬69å±¤ã€‚'),(6637,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬73å±¤ã€‚'),(6638,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬78å±¤ã€‚'),(6639,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬82å±¤ã€‚'),(6640,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬83å±¤ã€‚'),(6641,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬84å±¤ã€‚'),(6642,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬88å±¤ã€‚'),(6643,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬89å±¤ã€‚'),(6644,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬93å±¤ã€‚'),(6645,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬95å±¤ã€‚'),(6646,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬97å±¤ã€‚'),(6647,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬98å±¤ã€‚'),(6648,'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬100å±¤ã€‚'),(6649,'ä¸€èˆ¬é›£åº¦ä»¥ä¸Šé€šéŽ[å·´å'),(6650,'è¢«çµ•æœ›ä¹‹æ³°ç‘ªç‰¹çš„çµ•æœ›'),(6651,'åœ¨ç©ºé–“æ”¯é…è€…å¡çƒå°¼æ–¯'),(6652,'å®Œæˆå¾žLv71 å…‹å€«ç‰¹ç²å¾—ç'),(6653,'å®ŒæˆLv72è¥¿åµçµ¦äºˆçš„ã€Œçµ'),(6654,'å®Œæˆåœ¨Lv73æ­Œè˜­è’‚æ–¯ç²å¾'),(6655,'å®ŒæˆLV75è¥¿åµçµ¦äºˆçš„ã€Œå'),(6656,'å®ŒæˆLv76ä¿Šçµ¦äºˆçš„ã€Œå°‘å¹'),(6657,'å®ŒæˆLv77è‰¾éº—çµ²çµ¦äºˆçš„ã€'),(6658,'å®ŒæˆLv78 ä½©å‹’å¨å› çµ¦çš„ã'),(6659,'å®ŒæˆLv79 ä¸­å°‰å°¼è²çˆ¾çµ¦ç'),(6660,'å®ŒæˆLv80 ä¸­å°‰å°¼è²çˆ¾çµ¦ç'),(6661,'å®ŒæˆLv81 ä¸­å°‰å°¼è²çˆ¾çµ¦ç'),(6662,'å®ŒæˆLv82 ä½©å‹’å¨å› çµ¦çš„ã'),(6700,'æ´»å‹•å·²çµæŸã€‚'),(6701,'æ´»å‹•å·²çµæŸã€‚'),(6702,'æ´»å‹•å·²çµæŸã€‚'),(6703,'æ´»å‹•å·²çµæŸã€‚'),(6704,'æ´»å‹•å·²çµæŸã€‚'),(6705,'æ´»å‹•å·²çµæŸã€‚'),(6706,'åœ¨æ™®é€šæˆ–è€…å…¬æœƒèŠå¤©æ¬„'),(6707,'ä½¿ç”¨[æ´»åŠ›å°ç‹—]12å€‹ã€‚ ('),(6708,'ç ´æ‹›æ”»æ“Šæ•¸é”åˆ°777æ¬¡ã€‚'),(6709,'æˆåŠŸä½¿ç”¨[å‘½é‹ç¡¬å¹£]ã€ '),(6710,'ç´¯è¨ˆæ¶ˆæ»…2012éš»æ€ªç‰©ã€‚'),(6711,'ä½¿ç”¨15å€‹ä»¥ä¸‹çš„[ç„¡è‰²å°'),(7100,'å¤œé–“è¥²æ“Šæˆ° - æ™‚é–“'),(7101,'å¤œé–“è¥²æ“Šæˆ° - è¢«æ“Šæ•¸'),(7104,'å¤œé–“è¥²æ“Šæˆ° - å¾©æ´»æ¬¡æ•¸'),(7105,'å¤œé–“è¥²æ“Šæˆ° - é»˜å¥‘'),(7106,'å¤œé–“è¥²æ“Šæˆ° - é€£æ“ŠçŽ‡(Co'),(7107,'å¤œé–“è¥²æ“Šæˆ° - èƒŒå¾Œå·è¥²'),(7108,'å¤œé–“è¥²æ“Šæˆ° - ç ´æ•µåˆ¶å‹'),(7109,'å¤œé–“è¥²æ“Šæˆ° - æœ€å¤§é€£æ“Š'),(7110,'å¤œé–“è¥²æ“Šæˆ° - åœ°åœ–é€šéŽ'),(7113,'å¤œé–“è¥²æ“Šæˆ° - ç¾¤é«”æ”»æ“Š'),(7114,'è£œçµ¦ç·šé˜»æ–·æˆ° - æ™‚é–“'),(7115,'è£œçµ¦ç·šé˜»æ–·æˆ° - è¢«æ“Šæ•¸'),(7118,'è£œçµ¦ç·šé˜»æ–·æˆ° - å¾©æ´»æ¬¡'),(7119,'è£œçµ¦ç·šé˜»æ–·æˆ° - é»˜å¥‘'),(7120,'è£œçµ¦ç·šé˜»æ–·æˆ° - é€£æ“ŠçŽ‡'),(7121,'è£œçµ¦ç·šé˜»æ–·æˆ° - èƒŒå¾Œå·'),(7122,'è£œçµ¦ç·šé˜»æ–·æˆ° - ç ´æ•µåˆ¶'),(7123,'è£œçµ¦ç·šé˜»æ–·æˆ° - æœ€å¤§é€£'),(7124,'è£œçµ¦ç·šé˜»æ–·æˆ° - åœ°åœ–é€š'),(7127,'è£œçµ¦ç·šé˜»æ–·æˆ° - ç¾¤é«”æ”»'),(7128,'è¿½æ“Šæ®²æ»…æˆ° - æ™‚é–“'),(7129,'è¿½æ“Šæ®²æ»…æˆ° - è¢«æ“Šæ•¸'),(7132,'è¿½æ“Šæ®²æ»…æˆ° - å¾©æ´»æ¬¡æ•¸'),(7133,'è¿½æ“Šæ®²æ»…æˆ° - é»˜å¥‘'),(7134,'è¿½æ“Šæ®²æ»…æˆ° - é€£æ“ŠçŽ‡(Co'),(7135,'è¿½æ“Šæ®²æ»…æˆ° - èƒŒå¾Œå·è¥²'),(7136,'è¿½æ“Šæ®²æ»…æˆ° - ç ´æ•µåˆ¶å‹'),(7137,'è¿½æ“Šæ®²æ»…æˆ° - æœ€å¤§é€£æ“Š'),(7138,'è¿½æ“Šæ®²æ»…æˆ° - åœ°åœ–é€šéŽ'),(7141,'è¿½æ“Šæ®²æ»…æˆ° - ç¾¤é«”æ”»æ“Š'),(7142,'è¡€è´è¶ä¹‹èˆž - æ™‚é–“'),(7143,'è¡€è´è¶ä¹‹èˆž - è¢«æ“Šæ•¸'),(7146,'è¡€è´è¶ä¹‹èˆž - å¾©æ´»æ¬¡æ•¸'),(7147,'è¡€è´è¶ä¹‹èˆž - é»˜å¥‘'),(7148,'è¡€è´è¶ä¹‹èˆž - é€£æ“ŠçŽ‡(Co'),(7149,'è¡€è´è¶ä¹‹èˆž - èƒŒå¾Œå·è¥²'),(7150,'è¡€è´è¶ä¹‹èˆž - ç ´æ•µåˆ¶å‹'),(7151,'è¡€è´è¶ä¹‹èˆž - æœ€å¤§é€£æ“Š'),(7152,'è¡€è´è¶ä¹‹èˆž - åœ°åœ–é€šéŽ'),(7155,'è¡€è´è¶ä¹‹èˆž - ç¾¤é«”æ”»æ“Š'),(7156,'ç–‘æƒ‘ä¹‹æ‘ - æ™‚é–“'),(7157,'ç–‘æƒ‘ä¹‹æ‘ - è¢«æ“Šæ•¸'),(7160,'ç–‘æƒ‘ä¹‹æ‘ - å¾©æ´»æ¬¡æ•¸'),(7161,'ç–‘æƒ‘ä¹‹æ‘ - é»˜å¥‘'),(7162,'ç–‘æƒ‘ä¹‹æ‘ - é€£æ“ŠçŽ‡(Combo'),(7163,'ç–‘æƒ‘ä¹‹æ‘ - èƒŒå¾Œå·è¥²'),(7164,'ç–‘æƒ‘ä¹‹æ‘ - ç ´æ•µåˆ¶å‹(Co'),(7165,'ç–‘æƒ‘ä¹‹æ‘ - æœ€å¤§é€£æ“Šæ•¸'),(7169,'ç–‘æƒ‘ä¹‹æ‘ - ç¾¤é«”æ”»æ“Š'),(7170,'åˆ—è»Šä¸Šçš„æµ·è³Š - æ™‚é–“'),(7171,'åˆ—è»Šä¸Šçš„æµ·è³Š - è¢«æ“Šæ•¸'),(7174,'åˆ—è»Šä¸Šçš„æµ·è³Š - å¾©æ´»æ¬¡'),(7175,'åˆ—è»Šä¸Šçš„æµ·è³Š - é»˜å¥‘'),(7176,'åˆ—è»Šä¸Šçš„æµ·è³Š - é€£æ“ŠçŽ‡'),(7177,'åˆ—è»Šä¸Šçš„æµ·è³Š - èƒŒå¾Œå·'),(7178,'åˆ—è»Šä¸Šçš„æµ·è³Š - ç ´æ•µåˆ¶'),(7179,'åˆ—è»Šä¸Šçš„æµ·è³Š - æœ€å¤§é€£'),(7180,'åˆ—è»Šä¸Šçš„æµ·è³Š - åœ°åœ–é€š'),(7183,'åˆ—è»Šä¸Šçš„æµ·è³Š - ç¾¤é«”æ”»'),(7184,'å¥ªå›žè¥¿éƒ¨ç·š - æ™‚é–“'),(7185,'å¥ªå›žè¥¿éƒ¨ç·š - è¢«æ“Šæ•¸'),(7188,'å¥ªå›žè¥¿éƒ¨ç·š - å¾©æ´»æ¬¡æ•¸'),(7189,'å¥ªå›žè¥¿éƒ¨ç·š - é»˜å¥‘'),(7190,'å¥ªå›žè¥¿éƒ¨ç·š - é€£æ“ŠçŽ‡(Co'),(7191,'å¥ªå›žè¥¿éƒ¨ç·š - èƒŒå¾Œå·è¥²'),(7192,'å¥ªå›žè¥¿éƒ¨ç·š - ç ´æ•µåˆ¶å‹'),(7193,'å¥ªå›žè¥¿éƒ¨ç·š - æœ€å¤§é€£æ“Š'),(7194,'å¥ªå›žè¥¿éƒ¨ç·š - åœ°åœ–é€šéŽ'),(7197,'å¥ªå›žè¥¿éƒ¨ç·š - ç¾¤é«”æ”»æ“Š'),(7310,'è²åˆ©ç‰¹çš„è€ƒé©— - æ±ºé¬¥å‹'),(7312,'è²åˆ©ç‰¹çš„è€ƒé©— - è¿·å¦„ä¹‹'),(7313,'è²åˆ©ç‰¹çš„è€ƒé©— - æ­»äº¡ä¹‹'),(7314,'è²åˆ©ç‰¹çš„è€ƒé©— - æ­»äº¡ä¹‹'),(7315,'è²åˆ©ç‰¹çš„è€ƒé©— - æ ¹ç‰¹é€±'),(7316,'è²åˆ©ç‰¹çš„è€ƒé©— - æ ¹ç‰¹æ±'),(7317,'è²åˆ©ç‰¹çš„è€ƒé©— - æ ¹ç‰¹å—'),(7318,'è²åˆ©ç‰¹çš„è€ƒé©— - å¤ä»£åœ°'),(7319,'è²åˆ©ç‰¹çš„è€ƒé©— - æ”¶é›†å¾½'),(7320,'è²åˆ©ç‰¹çš„è€ƒé©— - å®‡å®™éˆ'),(7322,'è²åˆ©ç‰¹çš„è€ƒé©— - é€£æ“Šæ®º'),(7323,'è²åˆ©ç‰¹çš„è€ƒé©— - é€£æ“Šæ®º'),(7324,'è²åˆ©ç‰¹çš„è€ƒé©— - é€£æ“Šæ®º'),(7325,'è²åˆ©ç‰¹çš„è€ƒé©— - é€šéŽæ­»'),(7326,'è²åˆ©ç‰¹çš„è€ƒé©— - æ­»äº¡ä¹‹'),(7327,'è²åˆ©ç‰¹çš„è€ƒé©— - æ±ºé¬¥å‹'),(7328,'è²åˆ©ç‰¹çš„è€ƒé©— - å®‡å®™éˆ'),(7329,'è²åˆ©ç‰¹çš„è€ƒé©— - æ™‚é–“æ ¹'),(7330,'è²åˆ©ç‰¹çš„è€ƒé©— - æ™‚é–“æ ¹'),(7331,'è²åˆ©ç‰¹çš„è€ƒé©— - æ™‚é–“æ ¹'),(7332,'è²åˆ©ç‰¹çš„è€ƒé©— - æ”»ç•¥æ‰€'),(7333,'è²åˆ©ç‰¹çš„è€ƒé©— - æ”»ç•¥æ‰€'),(7334,'è²åˆ©ç‰¹çš„è€ƒé©— - æ”»ç•¥æ‰€'),(7336,'è²åˆ©ç‰¹çš„è€ƒé©— - æ”¶é›†æ'),(7337,'è²åˆ©ç‰¹çš„è€ƒé©— - æ”¶é›†æ'),(7338,'è²åˆ©ç‰¹çš„è€ƒé©— - å¡å‹’ç‰¹'),(7612,'è¦ºé†’ - ç‹‚è™Žå¸ 1'),(7613,'è¦ºé†’ - ç‹‚è™Žå¸ 2'),(7614,'è¦ºé†’ - ç‹‚è™Žå¸ 3'),(7615,'è¦ºé†’ - ç‹‚è™Žå¸ 4'),(7618,'è¦ºé†’ - æ­¦æ¥µ1 '),(7619,'è¦ºé†’ - æ­¦æ¥µ2 '),(7620,'è¦ºé†’ - æ­¦æ¥µ3 '),(7621,'è¦ºé†’ - æ­¦æ¥µ4 '),(7628,'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 1'),(7629,'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 2'),(7630,'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 3'),(7631,'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 4'),(7634,'è¦ºé†’ - æ³°å¦ 1'),(7635,'è¦ºé†’ - æ³°å¦ 2'),(7636,'è¦ºé†’ - æ³°å¦ 3'),(7637,'è¦ºé†’ - æ³°å¦ 4'),(7640,'æ ¼é¬¥å®¶ä¹‹è·¯ - é–‹å§‹'),(7641,'æ ¼é¬¥å®¶ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾'),(7642,'æ ¼é¬¥å®¶ä¹‹è·¯ - æ‰€è¬‚çš„è½‰'),(7643,'æ›´å¼·çš„æ•µäºº'),(7644,'G.S.Dçš„è©¦é©—'),(7645,'æ–°æ­¦å™¨çš„å¨åŠ›'),(7646,'æ ¼é¬¥å®¶ä¹‹è·¯ - é¢¨éœ‡'),(7647,'æ ¼é¬¥å®¶ä¹‹è·¯ - ä»»å‹™å•†åº—'),(7648,'[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„'),(7649,'[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„'),(7650,'[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´'),(7651,'[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯'),(7652,'[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš'),(7680,'Test'),(7681,'Test'),(7682,'Test'),(7683,'Test'),(7684,'Test'),(7685,'Test'),(7686,'Test'),(7687,'Test'),(7688,'Test'),(7689,'Test'),(7690,'Test'),(7691,'Test'),(7704,'Test'),(7705,'Test'),(7706,'Test'),(7707,'Test'),(7708,'Test'),(7709,'Test'),(7710,'Test'),(7711,'Test'),(7803,'è½‰è· - åŠé­‚ï¼ˆWeaponMaster'),(7807,'è½‰è· - å™¬é­‚è€…ï¼ˆSoulbring'),(7810,'è½‰è· - ç‹‚æˆ°å£«ï¼ˆBerserker'),(7814,'è½‰è· - é˜¿ä¿®ç¾…ï¼ˆAsuraï¼‰'),(7817,'è½‰è· -é¬¥æ°£å¸«ï¼ˆNEN Master'),(7820,'è½‰è· - æ­¦é¬¥ï¼ˆStrikerï¼‰'),(7824,'è½‰è· - è¡—éœ¸ï¼ˆStreet Fight'),(7827,'è½‰è· - æŸ”é“å®¶ï¼ˆGrapplerï'),(7831,'è½‰è· - éŠä¿ ï¼ˆRangerï¼‰'),(7834,'è½‰è· - é‡ç‚®æ‰‹ï¼ˆLauncherï'),(7837,'è½‰è· - æ©Ÿæ¢°å¸«ï¼ˆMechanicï'),(7840,'è½‰è· - é­”å½ˆå°„æ‰‹ï¼ˆSpitfi'),(7842,'è½‰è· - å…ƒç´ ä½¿ï¼ˆElemental'),(7845,'è½‰è· - å¬å–šå£«ï¼ˆSummonerï'),(7848,'è½‰è· - é­”é¬¥å£«ï¼ˆBattle Ma'),(7851,'è½‰è· - é­”é“å­¸è€…ï¼ˆWitchï'),(7855,'è½‰è· - è–é¨Žå£«ï¼ˆCrusaderï'),(7859,'è½‰è· - è—æ‹³è–ä½¿ï¼ˆInfigh'),(7862,'è½‰è· - é©…é­”å¸«ï¼ˆExorcistï'),(7866,'è½‰è· - å¾©ä»‡è€…ï¼ˆAvengerï¼'),(7870,'è½‰è· - éŠä¿ ï¼ˆRangerï¼‰'),(7873,'è½‰è· - é‡ç‚®æ‰‹ï¼ˆLauncherï'),(7876,'è½‰è· - æ©Ÿæ¢°å¸«ï¼ˆMechanicï'),(7879,'è½‰è· - é­”å½ˆå°„æ‰‹ï¼ˆSpitfi'),(7882,'è½‰è· - æš—è¡Œå¾¡å²ï¼ˆRogueï'),(7886,'è½‰è· - æ­»éˆè¡“å£«ï¼ˆNecrom'),(7889,'è½‰è· -é¬¥æ°£å¸«ï¼ˆNEN Master'),(7892,'è½‰è· - æ­¦é¬¥ï¼ˆStrikerï¼‰'),(7895,'è½‰è· - è¡—éœ¸ï¼ˆStreet Fight'),(7898,'è½‰è· - æŸ”é“å®¶ï¼ˆGrapplerï'),(9501,'æ–°ç”Ÿçš„DNF'),(9502,'ç«¯åˆå¥½ Fun ç²½ï¼'),(9503,'æ·±æ·µçš„ç¢Žç‰‡');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_state_info` (
  `category` int(11) NOT NULL DEFAULT '-1',
  `code` int(11) NOT NULL DEFAULT '-1',
  `state` binary(12) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `single_rank_avg` (
  `dungeon_index` smallint(6) NOT NULL DEFAULT '0',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `job` smallint(6) NOT NULL DEFAULT '0',
  `clear_count` bigint(20) NOT NULL DEFAULT '0',
  `average` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dungeon_index`,`level`,`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_reward` (
  `grade` int(11) NOT NULL DEFAULT '0',
  `sp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat_game_channel` (
  `gc_channel` varchar(10) NOT NULL DEFAULT '',
  `gc_up_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gc_now` smallint(6) NOT NULL DEFAULT '0',
  KEY `gc_channel` (`gc_channel`,`gc_up_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_sooya` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_game_channel`()
BEGIN

 DECLARE v_gc_channel VARCHAR(10) default '';
 DECLARE v_gc_up_time DATETIME default '0000-00-00 00:00:00';
 DECLARE v_gc_now SMALLINT default '0';

 DECLARE v_done TINYINT default '0';

 DECLARE v_Cursor CURSOR FOR SELECT gc_channel, date_format(gc_up_time,'%Y-%m-%d %H:%i:00') , sum(gc_now) AS gc_now  FROM game_channel where gc_up_time >= date_format(now(), '%Y-%m-%d %H:%i:00')
 group by gc_channel,gc_up_time;

 DECLARE CONTINUE HANDLER FOR NOT FOUND
 BEGIN 
  set v_done = 1;
 END;

 OPEN v_Cursor;
 
 REPEAT

   FETCH NEXT from v_Cursor INTO v_gc_channel,v_gc_up_time,v_gc_now;
  
   IF NOT v_done THEN
        INSERT INTO stat_game_channel values (v_gc_channel,v_gc_up_time,v_gc_now );
   END IF;

 UNTIL v_done END REPEAT;
 CLOSE v_Cursor;
 
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
