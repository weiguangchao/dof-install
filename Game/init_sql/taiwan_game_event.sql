
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_game_event` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_game_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleanup_constant` (
  `limit_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `base1_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `base2_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `base3_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `base4_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `person_trade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `person_shop_trade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `auction_trade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mail_trade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mail_min_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `abnormal_npc_trade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `abnormal_user_trade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dungeon_clear` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `removal_dungeon_clear` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `penalty_user_trade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `penalty_ghost_clear_n` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `penalty_ghost_clear_m` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `penalty_ghost_clear_l` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pc_room_weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hps_ip_weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `otm_weight_n` smallint(5) unsigned NOT NULL DEFAULT '0',
  `otm_weight_m` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hack_weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pvp_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dungeon_clear_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `quest_clear_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reduce_time_date` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reduce_time_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleanup_dungeon_list` (
  `dungeon_idx` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleanup_penalty_log` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `penalty_point` tinyint(3) NOT NULL DEFAULT '0',
  `current_point` int(11) NOT NULL DEFAULT '0',
  `reset_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cause` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pattern` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `m_id` (`m_id`,`occ_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleanup_user_data` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `restriction_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cur_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_trade_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `npc_trade_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dungeon_clear_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_clear_map_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `ghost_clear_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_penalty_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `other_penalty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `other_penalty_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_items` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `total_count` int(10) unsigned NOT NULL DEFAULT '0',
  `cur_count` int(10) unsigned NOT NULL DEFAULT '0',
  `change_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `full_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`server_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_event_entry_notuse` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `obtain_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1106_idol_bring_count` (
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `pot_type` tinyint(4) NOT NULL DEFAULT '0',
  `r_count` int(11) NOT NULL DEFAULT '0',
  `adjust_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_id`,`pot_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1107_avenger_plan` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_at_mage_12up` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1202_fatigue_attendance` (
  `occ_day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fatigue` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_day`,`m_id`),
  KEY `m_id` (`m_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1207_growthweapon` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `growthweapon_id` int(10) unsigned NOT NULL DEFAULT '0',
  `timepiece` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `infinityweapon_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reward_occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1208_bingo` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `board` int(10) unsigned DEFAULT '0',
  `reward` tinyint(4) unsigned DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `id_date` (`m_id`,`occ_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1306_account_reward` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `event_1306_account_reward` VALUES (1,1,'2020-09-03 23:09:44');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1306_account_reward_2nd` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `event_1306_account_reward_2nd` VALUES (1,1,'2020-09-03 23:10:38');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_account_fatigue` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fatigue` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_account_fatigue_reward` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_at_fighter_doll` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_attendance_check_info` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `base_check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `base_check_cnt` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bonus_check_cnt` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_clear_quest` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `clear_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[2010-08] ｽﾅﾀﾎｾｾ ﾀﾌｺ･ﾆｮ';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_create_charac` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[2010-08] ｽﾅﾀﾎｾｾ ﾀﾌｺ･ﾆｮ';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_create_dnf_info` (
  `event_day` int(5) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL,
  `rate` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_create_dnf_user` (
  `occ_date` date NOT NULL,
  `m_id` int(11) NOT NULL,
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `occ_time` time NOT NULL,
  PRIMARY KEY (`occ_date`,`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_give_title_twn` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_hero_mission_data` (
  `server_group` tinyint(3) unsigned NOT NULL,
  `charac_no` int(10) unsigned NOT NULL,
  `mission` varchar(256) NOT NULL,
  `mod_date` datetime NOT NULL,
  PRIMARY KEY (`server_group`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_ingame_history` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `history_1` int(10) unsigned NOT NULL DEFAULT '0',
  `history_2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_login_reward_in_list` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reward_flag` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_minority_point` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_ontime_info` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_index` int(10) unsigned NOT NULL DEFAULT '0',
  `item_count` int(10) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_ontime_item` (
  `idx` int(10) unsigned NOT NULL DEFAULT '0',
  `cnt` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_ontime_user` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_purchase_cnt` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `purchase_cnt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_reserving_charac_name` (
  `user_id` varchar(30) DEFAULT NULL,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`server_info`,`charac_name`),
  KEY `event_reserving_charac_name_idx001` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_reserving_charac_name_20130328` (
  `user_id` varchar(30) DEFAULT NULL,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_reserving_charac_name_20130329` (
  `user_id` varchar(30) DEFAULT NULL,
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`server_info`,`charac_name`),
  KEY `event_reserving_charac_name_idx001` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_return_user` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_reward_item_arad` (
  `event_id` int(10) NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`,`m_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_stamp_checkinfo` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `current` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stamp_checkinfo` binary(96) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_stamp_daily` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `condition1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `condition2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `condition3` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_stamp_reward` (
  `check_step` smallint(5) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`check_step`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_stay_time_charac` (
  `m_id` int(10) unsigned NOT NULL,
  `reward_count` int(11) NOT NULL DEFAULT '0',
  `reward_flag` int(11) NOT NULL DEFAULT '0',
  `mod_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='대만 이벤트 [Go Go Fighter] 9:00~9:30 30분 사이 10분간 접속한 케릭터에게 보상 지급';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_valentine_vote_base` (
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stage1` int(11) NOT NULL DEFAULT '0',
  `stage2` int(11) NOT NULL DEFAULT '0',
  `stage3` int(11) NOT NULL DEFAULT '0',
  `stage4` int(11) NOT NULL DEFAULT '0',
  `stage5` int(11) NOT NULL DEFAULT '0',
  `cur_event` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_valentine_vote_history` (
  `check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vote_A` int(11) NOT NULL DEFAULT '0',
  `vote_B` int(11) NOT NULL DEFAULT '0',
  `vote_C` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`check_date`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_valentine_vote_history_old` (
  `check_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vote_A` tinyint(4) NOT NULL DEFAULT '0',
  `vote_B` tinyint(4) NOT NULL DEFAULT '0',
  `vote_C` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`check_date`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_valentine_vote_info` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vote_A` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `vote_B` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `vote_C` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_valentine_vote_info_old` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vote_A` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `vote_B` tinyint(4) NOT NULL DEFAULT '0',
  `vote_C` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_message` (
  `event_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `msg_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_type` tinyint(4) NOT NULL DEFAULT '0',
  `msg` varchar(255) NOT NULL DEFAULT '0',
  `send_charac_name` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`,`server_id`,`msg_order`,`send_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_game_ad` (
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT '-1',
  `age` tinyint(4) NOT NULL DEFAULT '-1',
  `job` tinyint(4) NOT NULL DEFAULT '-1',
  `level` varchar(255) NOT NULL DEFAULT '',
  `banner_url` varchar(255) NOT NULL DEFAULT '',
  `item_no` int(10) unsigned NOT NULL DEFAULT '0',
  `event_url` varchar(255) NOT NULL DEFAULT '',
  `ctrl_banner_url` varchar(255) NOT NULL DEFAULT '',
  `ctrl_event_url` varchar(255) NOT NULL DEFAULT '',
  `ctrl_item_no` int(11) NOT NULL DEFAULT '0',
  `ctrl_description` varchar(255) NOT NULL DEFAULT '',
  `min_sera` int(10) unsigned NOT NULL DEFAULT '0',
  `max_sera` int(10) unsigned NOT NULL DEFAULT '0',
  `type_code` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `limit_m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_code` int(10) unsigned NOT NULL DEFAULT '0',
  `image_url` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `log_flag` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ex_property` varchar(255) DEFAULT '',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_common` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `member_bonus_fatigue` int(10) unsigned NOT NULL DEFAULT '0',
  `radio_flag` tinyint(4) NOT NULL DEFAULT '0',
  `daily_point` int(11) NOT NULL DEFAULT '0',
  `acc_point` int(11) NOT NULL DEFAULT '0',
  `random_option_guide` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_charac_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `inform_notice` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `login_common` VALUES (1,1599145300,0,0,0,0,0,0,'192.168.50.2','');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_auth_reward_tw` (
  `m_id` int(10) unsigned NOT NULL,
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `mobile_auth_reward_tw` VALUES (1,'2020-09-03 23:09:44');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcroom_daily_reward_tw` (
  `m_id` int(10) unsigned NOT NULL,
  `occ_date` datetime NOT NULL,
  `remain_reward_count` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_user` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `first_login` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
