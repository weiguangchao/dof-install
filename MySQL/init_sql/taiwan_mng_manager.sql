
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_mng_manager` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_mng_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_cargo_mod` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `money_old` int(10) unsigned NOT NULL DEFAULT '0',
  `cargo_old` blob NOT NULL,
  `cargo_capa_old` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `money_new` int(10) unsigned NOT NULL DEFAULT '0',
  `cargo_new` blob NOT NULL,
  `cargo_capa_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mng_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','de') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_mid_server` (`m_id`,`server_info`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `avatar_id` int(11) NOT NULL DEFAULT '0',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del','mov') NOT NULL DEFAULT '-',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ability_no` tinyint(4) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_charac` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_avatar_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `ui_id_old` int(11) NOT NULL DEFAULT '0',
  `slot_old` int(11) NOT NULL DEFAULT '0',
  `reg_date_old` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_date_old` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ability_no_old` tinyint(4) NOT NULL DEFAULT '0',
  `jewel_socket_old` varchar(30) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `ui_id_new` int(11) NOT NULL DEFAULT '0',
  `slot_new` int(11) NOT NULL DEFAULT '0',
  `reg_date_new` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_date_new` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ability_no_new` tinyint(4) NOT NULL DEFAULT '0',
  `jewel_socket_new` varchar(30) CHARACTER SET sjis COLLATE sjis_bin NOT NULL DEFAULT '',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `hidden_option_old` smallint(5) unsigned NOT NULL DEFAULT '0',
  `emblem_endurance_old` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden_option_new` smallint(5) unsigned NOT NULL DEFAULT '0',
  `emblem_endurance_new` smallint(5) unsigned NOT NULL DEFAULT '0',
  `color1_old` smallint(5) unsigned DEFAULT '0',
  `color2_old` smallint(5) unsigned DEFAULT '0',
  `color1_new` smallint(5) unsigned DEFAULT '0',
  `color2_new` smallint(5) unsigned DEFAULT '0',
  `trade_restrict_old` int(11) DEFAULT NULL,
  `trade_restrict_new` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_cargo_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `cargo_old` blob NOT NULL,
  `cargo_capa_old` int(11) NOT NULL DEFAULT '0',
  `cargo_new` blob NOT NULL,
  `cargo_capa_new` int(11) NOT NULL DEFAULT '0',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_creature_inven_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) DEFAULT '0',
  `charac_no` int(11) DEFAULT '0',
  `creature_old` blob,
  `creature_new` blob,
  `MNG_user_id` varchar(30) DEFAULT NULL,
  `work_time` datetime DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') DEFAULT '-',
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_housing_mod` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) unsigned NOT NULL DEFAULT '0',
  `installed_old` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `installed_new` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `decoration_inven_old` blob NOT NULL,
  `decoration_inven_new` blob NOT NULL,
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_housing_tree_mod` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_id_old` int(10) unsigned NOT NULL DEFAULT '0',
  `tree_id_new` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_date_old` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_date_new` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `current_point_old` smallint(6) NOT NULL DEFAULT '0',
  `current_point_new` smallint(6) NOT NULL DEFAULT '0',
  `leaf_point_old` smallint(6) NOT NULL DEFAULT '0',
  `leaf_point_new` smallint(6) NOT NULL DEFAULT '0',
  `day_water_count_old` smallint(6) NOT NULL DEFAULT '0',
  `day_water_count_new` smallint(6) NOT NULL DEFAULT '0',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_info_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `lev_old` tinyint(4) NOT NULL DEFAULT '0',
  `exp_old` int(11) NOT NULL DEFAULT '0',
  `fatigue_old` smallint(11) NOT NULL DEFAULT '0',
  `max_fatigue_old` smallint(6) NOT NULL DEFAULT '0',
  `premium_fatigue_old` smallint(11) NOT NULL DEFAULT '0',
  `max_premium_fatigue_old` smallint(6) NOT NULL DEFAULT '0',
  `money_old` int(11) NOT NULL DEFAULT '0',
  `coin_old` int(11) NOT NULL DEFAULT '0',
  `event_coin_old` int(11) NOT NULL DEFAULT '0',
  `pay_coin_old` int(11) NOT NULL DEFAULT '0',
  `lev_new` tinyint(4) NOT NULL DEFAULT '0',
  `exp_new` int(11) NOT NULL DEFAULT '0',
  `fatigue_new` smallint(11) NOT NULL DEFAULT '0',
  `max_fatigue_new` smallint(6) NOT NULL DEFAULT '0',
  `premium_fatigue_new` smallint(11) NOT NULL DEFAULT '0',
  `max_premium_fatigue_new` smallint(6) NOT NULL DEFAULT '0',
  `money_new` int(11) NOT NULL DEFAULT '0',
  `coin_new` int(11) NOT NULL DEFAULT '0',
  `event_coin_new` int(11) NOT NULL DEFAULT '0',
  `pay_coin_new` int(11) NOT NULL DEFAULT '0',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `win_point_old` int(11) DEFAULT '0',
  `pvp_point_old` int(11) DEFAULT '0',
  `pvp_grade_old` int(11) DEFAULT '0',
  `win_old` int(11) DEFAULT '0',
  `lose_old` int(11) DEFAULT '0',
  `help_abuse_ratio_old` int(11) DEFAULT '0',
  `help_abuse_exp_old` int(11) DEFAULT '0',
  `power_war_point_old` smallint(5) DEFAULT '0',
  `win_point_new` int(11) DEFAULT '0',
  `pvp_point_new` int(11) DEFAULT '0',
  `pvp_grade_new` int(11) DEFAULT '0',
  `win_new` int(11) DEFAULT '0',
  `lose_new` int(11) DEFAULT '0',
  `help_abuse_ratio_new` int(11) DEFAULT '0',
  `help_abuse_exp_new` int(11) DEFAULT '0',
  `power_war_point_new` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `charac_no` (`charac_no`) USING BTREE,
  KEY `MNG_user_id` (`MNG_user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_inven_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `inven_old` blob NOT NULL,
  `equip_old` blob NOT NULL,
  `inven_new` blob NOT NULL,
  `equip_new` blob NOT NULL,
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `jewel_old` blob,
  `jewel_new` blob,
  `expand_equipslot_old` blob,
  `expand_equipslot_new` blob,
  `switch_old` blob,
  `switch_new` blob,
  `katagaki_old` blob,
  `katagaki_new` blob,
  `inventory_capacity_old` int(10) DEFAULT NULL,
  `inventory_capacity_new` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx1` (`server_info`,`charac_no`) USING BTREE,
  KEY `idx2` (`work_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_postal_add` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `postal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `send_charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_name` varchar(20) NOT NULL DEFAULT '',
  `receive_charac_no` int(11) NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_info` int(11) NOT NULL DEFAULT '0',
  `endurance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extend_info` int(11) unsigned NOT NULL DEFAULT '0',
  `extend_info_expand` int(11) unsigned NOT NULL DEFAULT '0',
  `random_option` varchar(14) NOT NULL DEFAULT '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `avata_flag` tinyint(4) NOT NULL DEFAULT '0',
  `unlimit_flag` tinyint(4) NOT NULL DEFAULT '0',
  `seal_flag` tinyint(4) NOT NULL DEFAULT '0',
  `creature_flag` tinyint(4) NOT NULL DEFAULT '0',
  `letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `send_flag` tinyint(4) NOT NULL DEFAULT '0',
  `creature_stomach` int(10) unsigned NOT NULL DEFAULT '0',
  `creature_exp` int(10) unsigned NOT NULL DEFAULT '0',
  `creature_no_charge` tinyint(4) NOT NULL DEFAULT '0',
  `avatar_expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar_ability_no` tinyint(4) NOT NULL DEFAULT '0',
  `avatar_jewel_socket` varbinary(30) NOT NULL DEFAULT '',
  `proc_flag` enum('SEND','DEL') NOT NULL DEFAULT 'SEND',
  PRIMARY KEY (`id`),
  KEY `idx_receive_charac_no` (`receive_charac_no`) USING BTREE,
  KEY `idx_send_charac_name` (`send_charac_name`) USING BTREE,
  KEY `idx_MNG_user_id` (`MNG_user_id`,`work_time`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=466998 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_postal_add_20160429` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `postal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `send_charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_name` varchar(20) NOT NULL DEFAULT '',
  `receive_charac_no` int(11) NOT NULL DEFAULT '0',
  `item_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_info` int(11) NOT NULL DEFAULT '0',
  `endurance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `extend_info` int(11) unsigned DEFAULT NULL,
  `random_option` varchar(14) DEFAULT NULL,
  `seperate_upgrade` tinyint(3) unsigned DEFAULT NULL,
  `upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `avata_flag` tinyint(4) NOT NULL DEFAULT '0',
  `unlimit_flag` tinyint(4) NOT NULL DEFAULT '0',
  `seal_flag` tinyint(4) NOT NULL DEFAULT '0',
  `creature_flag` tinyint(4) NOT NULL DEFAULT '0',
  `creature_stomach` int(10) unsigned NOT NULL DEFAULT '0',
  `creature_exp` int(10) unsigned NOT NULL DEFAULT '0',
  `creature_no_charge` tinyint(4) NOT NULL DEFAULT '0',
  `avatar_expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar_ability_no` tinyint(4) NOT NULL DEFAULT '0',
  `avatar_jewel_socket` varbinary(30) NOT NULL DEFAULT '',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT '0',
  `send_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receive_charac_no` (`receive_charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_postal_add_large` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `end_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_titlebook_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `general_old` blob NOT NULL,
  `specific_old` blob NOT NULL,
  `despair_old` blob NOT NULL,
  `event_old` blob NOT NULL,
  `general_new` blob NOT NULL,
  `specific_new` blob NOT NULL,
  `despair_new` blob NOT NULL,
  `event_new` blob NOT NULL,
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_schl` (
  `server_group` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `end_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  `st_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `schl_cd` varchar(4) NOT NULL DEFAULT '',
  `period_month` varchar(2) NOT NULL DEFAULT '',
  `period_week` varchar(2) NOT NULL DEFAULT '',
  `period_day` varchar(2) NOT NULL DEFAULT '',
  `period_hour` varchar(2) NOT NULL DEFAULT '',
  `period_minute` varchar(2) NOT NULL DEFAULT '',
  `type` varchar(4) NOT NULL DEFAULT '0000',
  `wave_hour` varchar(2) DEFAULT '',
  `wave_minute` varchar(2) DEFAULT '',
  `level` varchar(4) NOT NULL,
  `stat` varchar(4) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`server_group`,`end_date`,`st_date`,`schl_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_schl_cd` (
  `schl_cd` varchar(4) NOT NULL DEFAULT '',
  `schl_name` varchar(30) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `param` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schl_cd`),
  KEY ` dnf_schl_cd _idx01` (`schl_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_schl_log` (
  `schl_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_group` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `schl_cd` varchar(4) NOT NULL DEFAULT '',
  `end_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  `st_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat` varchar(4) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schl_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_mousepass_modify` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modify_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_premium_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `event_id_old` int(11) NOT NULL DEFAULT '0',
  `server_id_old` tinyint(4) NOT NULL DEFAULT '0',
  `service_start_old` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_end_old` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_end_new` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pre_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_reference` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_unpunish_log` (
  `idx` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_no` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_id` varchar(20) DEFAULT NULL,
  `total_m_id` text NOT NULL,
  `success_m_id` text NOT NULL,
  `fail_m_id` text NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` text NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oneclick_charac_avatar_mod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `ui_id_old` int(11) NOT NULL DEFAULT '0',
  `slot_old` int(11) NOT NULL DEFAULT '0',
  `reg_date_old` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_date_old` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ability_no_old` tinyint(4) NOT NULL DEFAULT '0',
  `color1_old` smallint(5) unsigned NOT NULL DEFAULT '0',
  `color2_old` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trade_restrict_old` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ui_id_new` int(11) NOT NULL DEFAULT '0',
  `slot_new` int(11) NOT NULL DEFAULT '0',
  `reg_date_new` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire_date_new` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ability_no_new` tinyint(4) NOT NULL DEFAULT '0',
  `color1_new` smallint(5) unsigned NOT NULL DEFAULT '0',
  `color2_new` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trade_restrict_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `work_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL DEFAULT '-',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE,
  KEY `MNG_user_id` (`MNG_user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
