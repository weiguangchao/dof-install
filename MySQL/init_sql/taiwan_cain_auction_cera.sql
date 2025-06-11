
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_cain_auction_cera` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_cain_auction_cera`;
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
INSERT INTO `auction_average_price` VALUES (2675336,0,200,0);
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
  `commission` int(11) unsigned NOT NULL DEFAULT '0',
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
  `commission` int(11) unsigned NOT NULL DEFAULT '0',
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
  `commission` int(11) unsigned NOT NULL DEFAULT '0',
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
  `random_option` varchar(14) NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
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
