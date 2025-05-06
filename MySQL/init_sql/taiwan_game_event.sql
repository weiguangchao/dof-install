/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_game_event

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:40:17
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cleanup_constant
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_constant`;
CREATE TABLE `cleanup_constant` (
  `limit_penalty` tinyint(3) unsigned NOT NULL default '0',
  `base1_penalty` tinyint(3) unsigned NOT NULL default '0',
  `base2_penalty` tinyint(3) unsigned NOT NULL default '0',
  `base3_penalty` tinyint(3) unsigned NOT NULL default '0',
  `base4_penalty` tinyint(3) unsigned NOT NULL default '0',
  `person_trade` tinyint(3) unsigned NOT NULL default '0',
  `person_shop_trade` tinyint(3) unsigned NOT NULL default '0',
  `auction_trade` tinyint(3) unsigned NOT NULL default '0',
  `mail_trade` tinyint(3) unsigned NOT NULL default '0',
  `mail_min_gold` int(10) unsigned NOT NULL default '0',
  `abnormal_npc_trade` tinyint(3) unsigned NOT NULL default '0',
  `abnormal_user_trade` tinyint(3) unsigned NOT NULL default '0',
  `dungeon_clear` tinyint(3) unsigned NOT NULL default '0',
  `removal_dungeon_clear` tinyint(3) unsigned NOT NULL default '0',
  `penalty_user_trade` tinyint(3) unsigned NOT NULL default '0',
  `penalty_ghost_clear_n` tinyint(3) unsigned NOT NULL default '0',
  `penalty_ghost_clear_m` tinyint(3) unsigned NOT NULL default '0',
  `penalty_ghost_clear_l` tinyint(3) unsigned NOT NULL default '0',
  `pc_room_weight` smallint(5) unsigned NOT NULL default '0',
  `hps_ip_weight` smallint(5) unsigned NOT NULL default '0',
  `otm_weight_n` smallint(5) unsigned NOT NULL default '0',
  `otm_weight_m` smallint(5) unsigned NOT NULL default '0',
  `hack_weight` smallint(5) unsigned NOT NULL default '0',
  `pvp_penalty` tinyint(3) unsigned NOT NULL default '0',
  `dungeon_clear_penalty` tinyint(3) unsigned NOT NULL default '0',
  `quest_clear_penalty` tinyint(3) unsigned NOT NULL default '0',
  `reduce_time_date` tinyint(3) unsigned NOT NULL default '0',
  `reduce_time_penalty` tinyint(3) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cleanup_constant
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cleanup_dungeon_list
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_dungeon_list`;
CREATE TABLE `cleanup_dungeon_list` (
  `dungeon_idx` int(10) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cleanup_dungeon_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cleanup_penalty_log
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_penalty_log`;
CREATE TABLE `cleanup_penalty_log` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `penalty_point` tinyint(3) NOT NULL default '0',
  `current_point` int(11) NOT NULL default '0',
  `reset_cnt` tinyint(3) unsigned NOT NULL default '0',
  `cause` tinyint(3) unsigned NOT NULL default '0',
  `pattern` tinyint(3) unsigned NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cleanup_penalty_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cleanup_user_data
-- ----------------------------
DROP TABLE IF EXISTS `cleanup_user_data`;
CREATE TABLE `cleanup_user_data` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `penalty` tinyint(3) unsigned NOT NULL default '0',
  `restriction_cnt` tinyint(3) unsigned NOT NULL default '0',
  `cur_state` tinyint(3) unsigned NOT NULL default '0',
  `user_trade_cnt` tinyint(3) unsigned NOT NULL default '0',
  `npc_trade_cnt` tinyint(3) unsigned NOT NULL default '0',
  `dungeon_clear_cnt` tinyint(3) unsigned NOT NULL default '0',
  `last_clear_map_idx` int(10) unsigned NOT NULL default '0',
  `ghost_clear_cnt` tinyint(3) unsigned NOT NULL default '0',
  `last_penalty_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `other_penalty` tinyint(3) unsigned NOT NULL default '0',
  `other_penalty_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cleanup_user_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for collect_items
-- ----------------------------
DROP TABLE IF EXISTS `collect_items`;
CREATE TABLE `collect_items` (
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `total_count` int(10) unsigned NOT NULL default '0',
  `cur_count` int(10) unsigned NOT NULL default '0',
  `change_flag` tinyint(3) unsigned NOT NULL default '0',
  `full_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`server_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect_items
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_event_entry_notuse
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_entry_notuse`;
CREATE TABLE `dnf_event_entry_notuse` (
  `event_id` int(11) NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `obtain_date` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_event_entry_notuse
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1106_idol_bring_count
-- ----------------------------
DROP TABLE IF EXISTS `event_1106_idol_bring_count`;
CREATE TABLE `event_1106_idol_bring_count` (
  `server_id` tinyint(4) NOT NULL default '0',
  `pot_type` tinyint(4) NOT NULL default '0',
  `r_count` int(11) NOT NULL default '0',
  `adjust_value` int(11) NOT NULL default '0',
  PRIMARY KEY  (`server_id`,`pot_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1106_idol_bring_count
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1107_avenger_plan
-- ----------------------------
DROP TABLE IF EXISTS `event_1107_avenger_plan`;
CREATE TABLE `event_1107_avenger_plan` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1107_avenger_plan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_at_mage_12up
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_at_mage_12up`;
CREATE TABLE `event_1112_at_mage_12up` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_at_mage_12up
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1202_fatigue_attendance
-- ----------------------------
DROP TABLE IF EXISTS `event_1202_fatigue_attendance`;
CREATE TABLE `event_1202_fatigue_attendance` (
  `occ_day` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `fatigue` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`occ_day`,`m_id`),
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1202_fatigue_attendance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1207_growthweapon
-- ----------------------------
DROP TABLE IF EXISTS `event_1207_growthweapon`;
CREATE TABLE `event_1207_growthweapon` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `growthweapon_id` int(10) unsigned NOT NULL default '0',
  `timepiece` tinyint(3) unsigned NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `infinityweapon_id` int(10) unsigned NOT NULL default '0',
  `reward_occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1207_growthweapon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1208_bingo
-- ----------------------------
DROP TABLE IF EXISTS `event_1208_bingo`;
CREATE TABLE `event_1208_bingo` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `board` int(10) unsigned default '0',
  `reward` tinyint(4) unsigned default '0',
  PRIMARY KEY  (`no`),
  KEY `id_date` USING BTREE (`m_id`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1208_bingo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1306_account_reward
-- ----------------------------
DROP TABLE IF EXISTS `event_1306_account_reward`;
CREATE TABLE `event_1306_account_reward` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1306_account_reward
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1306_account_reward_2nd
-- ----------------------------
DROP TABLE IF EXISTS `event_1306_account_reward_2nd`;
CREATE TABLE `event_1306_account_reward_2nd` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1306_account_reward_2nd
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_account_fatigue
-- ----------------------------
DROP TABLE IF EXISTS `event_account_fatigue`;
CREATE TABLE `event_account_fatigue` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `fatigue` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_account_fatigue
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_account_fatigue_reward
-- ----------------------------
DROP TABLE IF EXISTS `event_account_fatigue_reward`;
CREATE TABLE `event_account_fatigue_reward` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_account_fatigue_reward
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_at_fighter_doll
-- ----------------------------
DROP TABLE IF EXISTS `event_at_fighter_doll`;
CREATE TABLE `event_at_fighter_doll` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_at_fighter_doll
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_attendance_check_info
-- ----------------------------
DROP TABLE IF EXISTS `event_attendance_check_info`;
CREATE TABLE `event_attendance_check_info` (
  `m_id` int(11) NOT NULL default '0',
  `base_check_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `base_check_cnt` tinyint(4) unsigned NOT NULL default '0',
  `bonus_check_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `bonus_check_cnt` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_attendance_check_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_clear_quest
-- ----------------------------
DROP TABLE IF EXISTS `event_clear_quest`;
CREATE TABLE `event_clear_quest` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `clear_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[2010-08] ｽﾅﾀﾎｾｾ ﾀﾌｺ･ﾆｮ';

-- ----------------------------
-- Records of event_clear_quest
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_create_charac
-- ----------------------------
DROP TABLE IF EXISTS `event_create_charac`;
CREATE TABLE `event_create_charac` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[2010-08] ｽﾅﾀﾎｾｾ ﾀﾌｺ･ﾆｮ';

-- ----------------------------
-- Records of event_create_charac
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_create_dnf_info
-- ----------------------------
DROP TABLE IF EXISTS `event_create_dnf_info`;
CREATE TABLE `event_create_dnf_info` (
  `event_day` int(5) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL,
  `rate` int(10) unsigned default '0',
  PRIMARY KEY  (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_create_dnf_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_create_dnf_user
-- ----------------------------
DROP TABLE IF EXISTS `event_create_dnf_user`;
CREATE TABLE `event_create_dnf_user` (
  `occ_date` date NOT NULL,
  `m_id` int(11) NOT NULL,
  `server_id` tinyint(4) NOT NULL default '0',
  `occ_time` time NOT NULL,
  PRIMARY KEY  (`occ_date`,`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_create_dnf_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_give_title_twn
-- ----------------------------
DROP TABLE IF EXISTS `event_give_title_twn`;
CREATE TABLE `event_give_title_twn` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_give_title_twn
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_hero_mission_data
-- ----------------------------
DROP TABLE IF EXISTS `event_hero_mission_data`;
CREATE TABLE `event_hero_mission_data` (
  `server_group` tinyint(3) unsigned NOT NULL,
  `charac_no` int(10) unsigned NOT NULL,
  `mission` varchar(256) NOT NULL,
  `mod_date` datetime NOT NULL,
  PRIMARY KEY  (`server_group`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_hero_mission_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_ingame_history
-- ----------------------------
DROP TABLE IF EXISTS `event_ingame_history`;
CREATE TABLE `event_ingame_history` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `type` int(10) unsigned NOT NULL default '0',
  `history_1` int(10) unsigned NOT NULL default '0',
  `history_2` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_ingame_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_login_reward_in_list
-- ----------------------------
DROP TABLE IF EXISTS `event_login_reward_in_list`;
CREATE TABLE `event_login_reward_in_list` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `reward_flag` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_login_reward_in_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_minority_point
-- ----------------------------
DROP TABLE IF EXISTS `event_minority_point`;
CREATE TABLE `event_minority_point` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `point` int(11) NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_minority_point
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_ontime_info
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_info`;
CREATE TABLE `event_ontime_info` (
  `no` int(10) unsigned NOT NULL default '0',
  `item_index` int(10) unsigned NOT NULL default '0',
  `item_count` int(10) unsigned NOT NULL default '0',
  `time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_ontime_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_ontime_item
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_item`;
CREATE TABLE `event_ontime_item` (
  `idx` int(10) unsigned NOT NULL default '0',
  `cnt` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_ontime_item
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_ontime_user
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_user`;
CREATE TABLE `event_ontime_user` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_ontime_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_purchase_cnt
-- ----------------------------
DROP TABLE IF EXISTS `event_purchase_cnt`;
CREATE TABLE `event_purchase_cnt` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `purchase_cnt` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_purchase_cnt
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_reserving_charac_name
-- ----------------------------
DROP TABLE IF EXISTS `event_reserving_charac_name`;
CREATE TABLE `event_reserving_charac_name` (
  `user_id` varchar(30) default NULL,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`server_info`,`charac_name`),
  KEY `event_reserving_charac_name_idx001` USING BTREE (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_reserving_charac_name
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_reserving_charac_name_20130328
-- ----------------------------
DROP TABLE IF EXISTS `event_reserving_charac_name_20130328`;
CREATE TABLE `event_reserving_charac_name_20130328` (
  `user_id` varchar(30) default NULL,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_reserving_charac_name_20130328
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_reserving_charac_name_20130329
-- ----------------------------
DROP TABLE IF EXISTS `event_reserving_charac_name_20130329`;
CREATE TABLE `event_reserving_charac_name_20130329` (
  `user_id` varchar(30) default NULL,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`server_info`,`charac_name`),
  KEY `event_reserving_charac_name_idx001` USING BTREE (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_reserving_charac_name_20130329
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_return_user
-- ----------------------------
DROP TABLE IF EXISTS `event_return_user`;
CREATE TABLE `event_return_user` (
  `m_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_return_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_reward_item_arad
-- ----------------------------
DROP TABLE IF EXISTS `event_reward_item_arad`;
CREATE TABLE `event_reward_item_arad` (
  `event_id` int(10) NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `end_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`event_id`,`m_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_reward_item_arad
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_stamp_checkinfo
-- ----------------------------
DROP TABLE IF EXISTS `event_stamp_checkinfo`;
CREATE TABLE `event_stamp_checkinfo` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `current` smallint(5) unsigned NOT NULL default '0',
  `stamp_checkinfo` binary(96) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_stamp_checkinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_stamp_daily
-- ----------------------------
DROP TABLE IF EXISTS `event_stamp_daily`;
CREATE TABLE `event_stamp_daily` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `condition1` smallint(5) unsigned NOT NULL default '0',
  `condition2` smallint(5) unsigned NOT NULL default '0',
  `condition3` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_stamp_daily
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_stamp_reward
-- ----------------------------
DROP TABLE IF EXISTS `event_stamp_reward`;
CREATE TABLE `event_stamp_reward` (
  `check_step` smallint(5) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `item_cnt` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`check_step`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_stamp_reward
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_stay_time_charac
-- ----------------------------
DROP TABLE IF EXISTS `event_stay_time_charac`;
CREATE TABLE `event_stay_time_charac` (
  `m_id` int(10) unsigned NOT NULL,
  `reward_count` int(11) NOT NULL default '0',
  `reward_flag` int(11) NOT NULL default '0',
  `mod_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='대만 이벤트 [Go Go Fighter] 9:00~9:30 30분 사이 10분간 접속한 케릭터에게 보상 지급';

-- ----------------------------
-- Records of event_stay_time_charac
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_valentine_vote_base
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_base`;
CREATE TABLE `event_valentine_vote_base` (
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `stage1` int(11) NOT NULL default '0',
  `stage2` int(11) NOT NULL default '0',
  `stage3` int(11) NOT NULL default '0',
  `stage4` int(11) NOT NULL default '0',
  `stage5` int(11) NOT NULL default '0',
  `cur_event` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_valentine_vote_base
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_valentine_vote_history
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_history`;
CREATE TABLE `event_valentine_vote_history` (
  `check_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `vote_A` int(11) NOT NULL default '0',
  `vote_B` int(11) NOT NULL default '0',
  `vote_C` int(11) NOT NULL default '0',
  PRIMARY KEY  (`check_date`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_valentine_vote_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_valentine_vote_history_old
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_history_old`;
CREATE TABLE `event_valentine_vote_history_old` (
  `check_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `vote_A` tinyint(4) NOT NULL default '0',
  `vote_B` tinyint(4) NOT NULL default '0',
  `vote_C` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`check_date`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_valentine_vote_history_old
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_valentine_vote_info
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_info`;
CREATE TABLE `event_valentine_vote_info` (
  `m_id` int(11) NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `vote_A` tinyint(4) unsigned NOT NULL default '0',
  `vote_B` tinyint(4) unsigned NOT NULL default '0',
  `vote_C` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_valentine_vote_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_valentine_vote_info_old
-- ----------------------------
DROP TABLE IF EXISTS `event_valentine_vote_info_old`;
CREATE TABLE `event_valentine_vote_info_old` (
  `m_id` int(11) NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `vote_A` tinyint(4) unsigned NOT NULL default '0',
  `vote_B` tinyint(4) NOT NULL default '0',
  `vote_C` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_valentine_vote_info_old
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gm_message
-- ----------------------------
DROP TABLE IF EXISTS `gm_message`;
CREATE TABLE `gm_message` (
  `event_id` tinyint(3) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `msg_order` tinyint(3) unsigned NOT NULL default '0',
  `send_time` int(10) unsigned NOT NULL default '0',
  `msg_type` tinyint(4) NOT NULL default '0',
  `msg` varchar(255) NOT NULL default '0',
  `send_charac_name` varchar(30) NOT NULL default '0',
  PRIMARY KEY  (`event_id`,`server_id`,`msg_order`,`send_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_message
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for in_game_ad
-- ----------------------------
DROP TABLE IF EXISTS `in_game_ad`;
CREATE TABLE `in_game_ad` (
  `banner_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `gender` tinyint(4) NOT NULL default '-1',
  `age` tinyint(4) NOT NULL default '-1',
  `job` tinyint(4) NOT NULL default '-1',
  `level` varchar(255) NOT NULL default '',
  `banner_url` varchar(255) NOT NULL default '',
  `item_no` int(10) unsigned NOT NULL default '0',
  `event_url` varchar(255) NOT NULL default '',
  `ctrl_banner_url` varchar(255) NOT NULL default '',
  `ctrl_event_url` varchar(255) NOT NULL default '',
  `ctrl_item_no` int(11) NOT NULL default '0',
  `ctrl_description` varchar(255) NOT NULL default '',
  `min_sera` int(10) unsigned NOT NULL default '0',
  `max_sera` int(10) unsigned NOT NULL default '0',
  `type_code` tinyint(3) unsigned NOT NULL default '0',
  `visible` tinyint(3) unsigned NOT NULL default '0',
  `limit_m_id` int(10) unsigned NOT NULL default '0',
  `view_code` int(10) unsigned NOT NULL default '0',
  `image_url` varchar(255) default '',
  `description` varchar(255) default '',
  `log_flag` tinyint(3) unsigned NOT NULL default '1',
  `ex_property` varchar(255) default '',
  PRIMARY KEY  (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of in_game_ad
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for login_common
-- ----------------------------
DROP TABLE IF EXISTS `login_common`;
CREATE TABLE `login_common` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `update_time` int(10) unsigned NOT NULL default '0',
  `member_bonus_fatigue` int(10) unsigned NOT NULL default '0',
  `radio_flag` tinyint(4) NOT NULL default '0',
  `daily_point` int(11) NOT NULL default '0',
  `acc_point` int(11) NOT NULL default '0',
  `random_option_guide` tinyint(3) unsigned NOT NULL default '0',
  `event_charac_cnt` tinyint(3) unsigned NOT NULL default '0',
  `login_ip` varchar(15) NOT NULL default '',
  `inform_notice` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_common
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mobile_auth_reward_tw
-- ----------------------------
DROP TABLE IF EXISTS `mobile_auth_reward_tw`;
CREATE TABLE `mobile_auth_reward_tw` (
  `m_id` int(10) unsigned NOT NULL,
  `occ_date` datetime NOT NULL,
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobile_auth_reward_tw
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pcroom_daily_reward_tw
-- ----------------------------
DROP TABLE IF EXISTS `pcroom_daily_reward_tw`;
CREATE TABLE `pcroom_daily_reward_tw` (
  `m_id` int(10) unsigned NOT NULL,
  `occ_date` datetime NOT NULL,
  `remain_reward_count` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcroom_daily_reward_tw
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for return_user
-- ----------------------------
DROP TABLE IF EXISTS `return_user`;
CREATE TABLE `return_user` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `expire_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `first_login` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_user
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
