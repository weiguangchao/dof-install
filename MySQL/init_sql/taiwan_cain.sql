/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_cain

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:36:41
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_cargo
-- ----------------------------
DROP TABLE IF EXISTS `account_cargo`;
CREATE TABLE `account_cargo` (
  `m_id` bigint(20) unsigned NOT NULL default '0',
  `money` int(11) unsigned NOT NULL default '0',
  `capacity` tinyint(3) unsigned NOT NULL default '0',
  `cargo` blob NOT NULL,
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_cargo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history
-- ----------------------------
DROP TABLE IF EXISTS `auction_history`;
CREATE TABLE `auction_history` (
  `auction_id` bigint(20) unsigned NOT NULL default '0',
  `start_time` datetime default NULL,
  `occ_time` datetime default NULL,
  `event_type` tinyint(4) default NULL,
  `owner_id` int(11) default NULL,
  `buyer_id` int(11) default NULL,
  `price` int(11) default NULL,
  `seal_flag` tinyint(4) default NULL,
  `item_id` int(10) unsigned default NULL,
  `add_info` int(11) default NULL,
  `upgrade` tinyint(3) unsigned default NULL,
  `amplify_option` tinyint(3) unsigned NOT NULL default '0',
  `amplify_value` mediumint(8) unsigned NOT NULL default '0',
  `seal_cnt` tinyint(3) unsigned default NULL,
  `endurance` smallint(5) unsigned default NULL,
  `extend_info` int(10) unsigned default NULL,
  `owner_postal_id` int(10) unsigned default NULL,
  `buyer_postal_id` int(10) unsigned default NULL,
  `unit_price` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history
-- ----------------------------
BEGIN;
INSERT INTO `auction_history` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for aura_avatar_option
-- ----------------------------
DROP TABLE IF EXISTS `aura_avatar_option`;
CREATE TABLE `aura_avatar_option` (
  `charac_no` int(11) NOT NULL default '0',
  `option_type` tinyint(4) NOT NULL default '0',
  `value_1` int(11) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`option_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aura_avatar_option
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_market_condition_ctrl
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_condition_ctrl`;
CREATE TABLE `auto_market_condition_ctrl` (
  `optimum_gold_supply` bigint(20) unsigned NOT NULL default '0',
  `over_gold` bigint(20) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_market_condition_ctrl
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_market_condition_ctrl_change
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_condition_ctrl_change`;
CREATE TABLE `auto_market_condition_ctrl_change` (
  `occ_time` date NOT NULL default '2021-11-19',
  `total_gold_old` bigint(20) unsigned NOT NULL default '0',
  `over_gold_old` bigint(20) unsigned NOT NULL default '0',
  `total_gold_new` bigint(20) unsigned NOT NULL default '0',
  `over_gold_new` bigint(20) unsigned NOT NULL default '0',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_market_condition_ctrl_change
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_market_condition_ctrl_daily
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_condition_ctrl_daily`;
CREATE TABLE `auto_market_condition_ctrl_daily` (
  `occ_time` date NOT NULL default '2021-11-19',
  `total_gold` bigint(20) unsigned NOT NULL default '0',
  `auction_gold` bigint(20) unsigned NOT NULL default '0',
  `over_gold` bigint(20) unsigned NOT NULL default '0',
  `optimum_gold_supply` bigint(20) unsigned NOT NULL default '0',
  `gold_phase` int(11) NOT NULL default '0',
  `item_phase` int(11) NOT NULL default '0',
  `durability_phase` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_market_condition_ctrl_daily
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_20130408
-- ----------------------------
DROP TABLE IF EXISTS `bak_20130408`;
CREATE TABLE `bak_20130408` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_20130408
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_50_mid
-- ----------------------------
DROP TABLE IF EXISTS `bak_50_mid`;
CREATE TABLE `bak_50_mid` (
  `m_id` int(10) unsigned NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_50_mid
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_info_20130219
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_info_20130219`;
CREATE TABLE `bak_charac_info_20130219` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL auto_increment,
  `charac_name` varchar(20) NOT NULL default '',
  `village` tinyint(4) NOT NULL default '1',
  `job` tinyint(4) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `exp` int(11) NOT NULL default '0',
  `grow_type` tinyint(4) NOT NULL default '0',
  `HP` tinyint(3) unsigned NOT NULL default '0',
  `maxHP` smallint(6) unsigned NOT NULL default '0',
  `maxMP` smallint(6) unsigned NOT NULL default '0',
  `phy_attack` smallint(6) unsigned NOT NULL default '0',
  `phy_defense` smallint(6) unsigned NOT NULL default '0',
  `mag_attack` smallint(6) unsigned NOT NULL default '0',
  `mag_defense` smallint(6) unsigned NOT NULL default '0',
  `element_resist` tinyblob NOT NULL,
  `spec_property` tinyblob NOT NULL,
  `inven_weight` int(6) NOT NULL default '0',
  `hp_regen` smallint(6) NOT NULL default '0',
  `mp_regen` smallint(6) NOT NULL default '0',
  `move_speed` smallint(6) unsigned NOT NULL default '0',
  `attack_speed` smallint(6) unsigned NOT NULL default '0',
  `cast_speed` smallint(6) unsigned NOT NULL default '0',
  `hit_recovery` smallint(6) NOT NULL default '0',
  `jump` smallint(6) NOT NULL default '0',
  `charac_weight` int(11) NOT NULL default '0',
  `fatigue` smallint(6) NOT NULL default '0',
  `max_fatigue` smallint(6) NOT NULL default '70',
  `premium_fatigue` smallint(6) NOT NULL default '0',
  `max_premium_fatigue` smallint(6) NOT NULL default '0',
  `create_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `dungeon_clear_point` int(11) NOT NULL default '0',
  `delete_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(4) NOT NULL default '0',
  `guild_id` int(10) unsigned NOT NULL default '0',
  `guild_right` tinyint(4) NOT NULL default '0',
  `member_flag` tinyint(4) NOT NULL default '0',
  `sex` tinyint(4) NOT NULL default '1',
  `expert_job` tinyint(3) unsigned NOT NULL default '0',
  `skill_tree_index` tinyint(4) NOT NULL default '-1',
  `link_charac_no` int(10) unsigned NOT NULL default '0',
  `event_charac_level` tinyint(4) NOT NULL default '0',
  `guild_secede` tinyint(2) NOT NULL default '0',
  `start_time` int(11) NOT NULL default '0',
  `finish_time` int(11) NOT NULL default '0',
  `competition_area` tinyint(2) NOT NULL default '-1',
  `competition_period` tinyint(2) NOT NULL default '-1',
  `mercenary_start_time` int(11) NOT NULL default '0',
  `mercenary_finish_time` int(11) NOT NULL default '0',
  `mercenary_area` tinyint(4) NOT NULL default '-1',
  `mercenary_period` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`charac_no`),
  UNIQUE KEY `charac_name` USING BTREE (`charac_name`),
  KEY `charac_info_idx1` USING BTREE (`m_id`),
  KEY `charac_info_idx2` USING BTREE (`exp`),
  KEY `idx_guild_id` USING BTREE (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_info_20130219
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_info_20130228
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_info_20130228`;
CREATE TABLE `bak_charac_info_20130228` (
  `m_id` int(11) NOT NULL default '0',
  `CNT` bigint(21) NOT NULL default '0',
  `user_id` varchar(30) NOT NULL default '',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_info_20130228
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_info_20130228_2
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_info_20130228_2`;
CREATE TABLE `bak_charac_info_20130228_2` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `user_id` varchar(30) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_info_20130228_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_info_20130228_3
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_info_20130228_3`;
CREATE TABLE `bak_charac_info_20130228_3` (
  `m_id` int(11) NOT NULL default '0',
  `user_id` varchar(30) NOT NULL default '',
  `CNT` bigint(21) NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_info_20130228_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_info_20130326_1_1
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_info_20130326_1_1`;
CREATE TABLE `bak_charac_info_20130326_1_1` (
  `m_id` int(11) NOT NULL default '0',
  `cnt` bigint(21) NOT NULL default '0',
  `user_id` varchar(30) NOT NULL default '',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_info_20130326_1_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_info_20130326_1_2
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_info_20130326_1_2`;
CREATE TABLE `bak_charac_info_20130326_1_2` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `user_id` varchar(30) NOT NULL default '',
  `create_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_info_20130326_1_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_no_20130405
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_no_20130405`;
CREATE TABLE `bak_charac_no_20130405` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_no_20130405
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_m_id_20130405
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_20130405`;
CREATE TABLE `bak_m_id_20130405` (
  `m_id` int(10) unsigned NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_m_id_20130405
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_m_id_20130408
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_20130408`;
CREATE TABLE `bak_m_id_20130408` (
  `m_id` int(10) unsigned NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_m_id_20130408
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_m_id_20130424_ccb
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_20130424_ccb`;
CREATE TABLE `bak_m_id_20130424_ccb` (
  `m_id` int(10) unsigned NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_m_id_20130424_ccb
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_m_id_cbt
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_cbt`;
CREATE TABLE `bak_m_id_cbt` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `create_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_m_id_cbt
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_m_id_cbt_2
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_cbt_2`;
CREATE TABLE `bak_m_id_cbt_2` (
  `m_id` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_m_id_cbt_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_m_id_cbt_3
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_cbt_3`;
CREATE TABLE `bak_m_id_cbt_3` (
  `m_id` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_m_id_cbt_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_m_id_charac_no_20130408
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_charac_no_20130408`;
CREATE TABLE `bak_m_id_charac_no_20130408` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  KEY `charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_m_id_charac_no_20130408
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_member_info_20130228
-- ----------------------------
DROP TABLE IF EXISTS `bak_member_info_20130228`;
CREATE TABLE `bak_member_info_20130228` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(30) NOT NULL default '',
  `user_name` varchar(10) NOT NULL default '',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_member_info_20130228
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_member_info_20130326
-- ----------------------------
DROP TABLE IF EXISTS `bak_member_info_20130326`;
CREATE TABLE `bak_member_info_20130326` (
  `m_id` int(11) NOT NULL default '0',
  `user_id` varchar(30) default NULL,
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_member_info_20130326
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_mid_20130408
-- ----------------------------
DROP TABLE IF EXISTS `bak_mid_20130408`;
CREATE TABLE `bak_mid_20130408` (
  `m_id` int(10) unsigned NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_mid_20130408
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_pvp_20130221
-- ----------------------------
DROP TABLE IF EXISTS `bak_pvp_20130221`;
CREATE TABLE `bak_pvp_20130221` (
  `charac_no` int(11) NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_pvp_20130221
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_pvp_20130222
-- ----------------------------
DROP TABLE IF EXISTS `bak_pvp_20130222`;
CREATE TABLE `bak_pvp_20130222` (
  `charac_no` int(11) NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_pvp_20130222
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_pvp_20130223
-- ----------------------------
DROP TABLE IF EXISTS `bak_pvp_20130223`;
CREATE TABLE `bak_pvp_20130223` (
  `charac_no` int(11) NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_pvp_20130223
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_pvp_20130224
-- ----------------------------
DROP TABLE IF EXISTS `bak_pvp_20130224`;
CREATE TABLE `bak_pvp_20130224` (
  `charac_no` int(11) NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_pvp_20130224
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_result_20130408
-- ----------------------------
DROP TABLE IF EXISTS `bak_result_20130408`;
CREATE TABLE `bak_result_20130408` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `server_info` tinyint(3) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_result_20130408
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_result_50
-- ----------------------------
DROP TABLE IF EXISTS `bak_result_50`;
CREATE TABLE `bak_result_50` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `server_info` tinyint(3) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_result_50
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_sooya_result_20130405
-- ----------------------------
DROP TABLE IF EXISTS `bak_sooya_result_20130405`;
CREATE TABLE `bak_sooya_result_20130405` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_sooya_result_20130405
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_sooya_result_20130408
-- ----------------------------
DROP TABLE IF EXISTS `bak_sooya_result_20130408`;
CREATE TABLE `bak_sooya_result_20130408` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `server_info` tinyint(3) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_sooya_result_20130408
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_test_20130515
-- ----------------------------
DROP TABLE IF EXISTS `bak_test_20130515`;
CREATE TABLE `bak_test_20130515` (
  `a` int(10) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_test_20130515
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for blood_dungeon_rank_select
-- ----------------------------
DROP TABLE IF EXISTS `blood_dungeon_rank_select`;
CREATE TABLE `blood_dungeon_rank_select` (
  `min_amount` bigint(20) NOT NULL default '0',
  `max_amount` bigint(20) NOT NULL default '0',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  `reward_item_id` int(10) unsigned NOT NULL default '0',
  `reward_gold` int(10) unsigned NOT NULL default '0',
  `winner_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`min_amount`,`max_amount`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blood_dungeon_rank_select
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for channel_occ_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_occ_info`;
CREATE TABLE `channel_occ_info` (
  `gc_no` int(10) unsigned NOT NULL default '0',
  `age` tinyint(3) unsigned NOT NULL default '0',
  `occ_num` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`gc_no`,`age`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of channel_occ_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_achievement
-- ----------------------------
DROP TABLE IF EXISTS `charac_achievement`;
CREATE TABLE `charac_achievement` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `achievement` blob NOT NULL,
  `last_update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_achievement
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_action_point
-- ----------------------------
DROP TABLE IF EXISTS `charac_action_point`;
CREATE TABLE `charac_action_point` (
  `occ_date` date NOT NULL default '2021-11-19',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `ap_sum` int(10) unsigned NOT NULL default '0',
  `is_reward_medal` tinyint(3) unsigned NOT NULL default '0',
  `is_reward_item_1` tinyint(3) unsigned NOT NULL default '0',
  `is_reward_item_2` tinyint(3) unsigned NOT NULL default '0',
  `is_reward_item_3` tinyint(3) unsigned NOT NULL default '0',
  `is_reward_item_4` tinyint(3) unsigned NOT NULL default '0',
  `ap_clear_state` blob NOT NULL,
  PRIMARY KEY  (`charac_no`,`occ_date`),
  KEY `idx_occ_date` USING BTREE (`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_action_point
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_action_point_desc
-- ----------------------------
DROP TABLE IF EXISTS `charac_action_point_desc`;
CREATE TABLE `charac_action_point_desc` (
  `action_group_index` int(11) NOT NULL default '0',
  `action_index` int(11) NOT NULL default '0',
  `action_group_name` varchar(128) default NULL,
  PRIMARY KEY  (`action_group_index`,`action_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_action_point_desc
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_best_record
-- ----------------------------
DROP TABLE IF EXISTS `charac_best_record`;
CREATE TABLE `charac_best_record` (
  `charac_no` int(11) NOT NULL default '0',
  `dungeon_no` smallint(6) NOT NULL default '0',
  `difficulty` smallint(6) NOT NULL default '0',
  `style` int(11) NOT NULL default '0',
  `technic` int(11) NOT NULL default '0',
  `attacked` int(11) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`dungeon_no`,`difficulty`),
  KEY `idx_charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_best_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_blood_best_record
-- ----------------------------
DROP TABLE IF EXISTS `charac_blood_best_record`;
CREATE TABLE `charac_blood_best_record` (
  `charac_no` int(11) unsigned NOT NULL default '0',
  `dungeon_index` int(11) unsigned NOT NULL default '0',
  `best_round` tinyint(3) unsigned NOT NULL default '0',
  `best_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`dungeon_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_blood_best_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_blood_dungeon_reward
-- ----------------------------
DROP TABLE IF EXISTS `charac_blood_dungeon_reward`;
CREATE TABLE `charac_blood_dungeon_reward` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `week_occ_date` date NOT NULL default '2021-11-19',
  `week_point` int(10) unsigned NOT NULL default '0',
  `week_enter_count` int(10) unsigned NOT NULL default '0',
  `week_use_gold` int(10) unsigned NOT NULL default '0',
  `last_play_date` date NOT NULL default '2021-11-19',
  `enter_count` int(10) unsigned NOT NULL default '0',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  `reward` tinyint(3) unsigned NOT NULL default '0',
  `reward_item_id` int(10) unsigned NOT NULL default '0',
  `reward_gold` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`week_occ_date`),
  KEY `idx_week_occ_date` USING BTREE (`week_occ_date`),
  KEY `idx_last_play_date` USING BTREE (`last_play_date`),
  KEY `idx_reward` USING BTREE (`reward`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_blood_dungeon_reward
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_blood_inout
-- ----------------------------
DROP TABLE IF EXISTS `charac_blood_inout`;
CREATE TABLE `charac_blood_inout` (
  `charac_no` int(11) NOT NULL default '0',
  `dungeon1` tinyint(4) NOT NULL default '0',
  `dungeon2` tinyint(4) NOT NULL default '0',
  `dungeon3` tinyint(4) NOT NULL default '0',
  `dungeon4` tinyint(4) NOT NULL default '0',
  `dungeon5` tinyint(4) NOT NULL default '0',
  `dungeon6` tinyint(4) NOT NULL default '0',
  `dungeon7` tinyint(4) NOT NULL default '0',
  `dungeon8` tinyint(4) NOT NULL default '0',
  `dungeon9` tinyint(4) NOT NULL default '0',
  `dungeon10` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_blood_inout
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_cerashop_restrict
-- ----------------------------
DROP TABLE IF EXISTS `charac_cerashop_restrict`;
CREATE TABLE `charac_cerashop_restrict` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  `next_date` int(10) unsigned NOT NULL default '0',
  `end_date` int(10) unsigned NOT NULL default '0',
  `last_access_date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`ipg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_cerashop_restrict
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_dimension_inout
-- ----------------------------
DROP TABLE IF EXISTS `charac_dimension_inout`;
CREATE TABLE `charac_dimension_inout` (
  `charac_no` int(11) NOT NULL default '0',
  `dungeon1` tinyint(4) NOT NULL default '0',
  `dungeon2` tinyint(4) NOT NULL default '0',
  `dungeon3` tinyint(4) NOT NULL default '0',
  `dungeon4` tinyint(4) NOT NULL default '0',
  `dungeon5` tinyint(4) NOT NULL default '0',
  `dungeon6` tinyint(4) NOT NULL default '0',
  `dungeon7` tinyint(4) NOT NULL default '0',
  `dungeon8` tinyint(4) NOT NULL default '0',
  `dungeon9` tinyint(4) NOT NULL default '0',
  `dungeon10` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_dimension_inout
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_dimension_inout_20130613
-- ----------------------------
DROP TABLE IF EXISTS `charac_dimension_inout_20130613`;
CREATE TABLE `charac_dimension_inout_20130613` (
  `charac_no` int(11) NOT NULL default '0',
  `dungeon1` tinyint(4) NOT NULL default '0',
  `dungeon2` tinyint(4) NOT NULL default '0',
  `dungeon3` tinyint(4) NOT NULL default '0',
  `dungeon4` tinyint(4) NOT NULL default '0',
  `dungeon5` tinyint(4) NOT NULL default '0',
  `dungeon6` tinyint(4) NOT NULL default '0',
  `dungeon7` tinyint(4) NOT NULL default '0',
  `dungeon8` tinyint(4) NOT NULL default '0',
  `dungeon9` tinyint(4) NOT NULL default '0',
  `dungeon10` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_dimension_inout_20130613
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_dungeon
-- ----------------------------
DROP TABLE IF EXISTS `charac_dungeon`;
CREATE TABLE `charac_dungeon` (
  `charac_no` int(11) NOT NULL default '0',
  `dungeon` blob NOT NULL,
  `best_clear_time` blob NOT NULL,
  `blue_marble_enter_count` tinyint(3) unsigned NOT NULL default '0',
  `charac_inform_notice` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_dungeon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_dungeon_test
-- ----------------------------
DROP TABLE IF EXISTS `charac_dungeon_test`;
CREATE TABLE `charac_dungeon_test` (
  `charac_no` int(11) NOT NULL default '0',
  `dungeon` blob NOT NULL,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_dungeon_test
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_expert_job
-- ----------------------------
DROP TABLE IF EXISTS `charac_expert_job`;
CREATE TABLE `charac_expert_job` (
  `charac_no` int(11) NOT NULL default '0',
  `expert_job_giveup_cnt` tinyint(3) unsigned NOT NULL default '0',
  `expert_job_info` int(11) NOT NULL default '0',
  `expert_job_info_ex` int(11) NOT NULL default '0',
  `recipe` blob NOT NULL,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_expert_job
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_friends
-- ----------------------------
DROP TABLE IF EXISTS `charac_friends`;
CREATE TABLE `charac_friends` (
  `charac_no` int(11) NOT NULL default '0',
  `friend_no` int(11) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`friend_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_friends
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_housing_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_housing_info`;
CREATE TABLE `charac_housing_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `installed` smallint(5) unsigned NOT NULL default '0',
  `decoration_inven` binary(144) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `version` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_housing_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_housing_tree_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_housing_tree_info`;
CREATE TABLE `charac_housing_tree_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `tree_id` int(10) unsigned NOT NULL default '0',
  `expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `current_point` smallint(6) NOT NULL default '0',
  `leaf_point` smallint(6) NOT NULL default '0',
  `day_water_count` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_housing_tree_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_housing_water_history
-- ----------------------------
DROP TABLE IF EXISTS `charac_housing_water_history`;
CREATE TABLE `charac_housing_water_history` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `give_time` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `give_charac_name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`charac_no`,`give_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_housing_water_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_info`;
CREATE TABLE `charac_info` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL auto_increment,
  `charac_name` varchar(20) NOT NULL default '',
  `village` tinyint(4) NOT NULL default '1',
  `job` tinyint(4) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1',
  `exp` int(11) NOT NULL default '0',
  `grow_type` tinyint(4) NOT NULL default '0',
  `HP` tinyint(3) unsigned NOT NULL default '0',
  `maxHP` smallint(6) unsigned NOT NULL default '0',
  `maxMP` smallint(6) unsigned NOT NULL default '0',
  `phy_attack` smallint(6) unsigned NOT NULL default '0',
  `phy_defense` smallint(6) unsigned NOT NULL default '0',
  `mag_attack` smallint(6) unsigned NOT NULL default '0',
  `mag_defense` smallint(6) unsigned NOT NULL default '0',
  `element_resist` tinyblob NOT NULL,
  `spec_property` tinyblob NOT NULL,
  `inven_weight` int(6) NOT NULL default '0',
  `hp_regen` smallint(6) NOT NULL default '0',
  `mp_regen` smallint(6) NOT NULL default '0',
  `move_speed` smallint(6) unsigned NOT NULL default '0',
  `attack_speed` smallint(6) unsigned NOT NULL default '0',
  `cast_speed` smallint(6) unsigned NOT NULL default '0',
  `hit_recovery` smallint(6) NOT NULL default '0',
  `jump` smallint(6) NOT NULL default '0',
  `charac_weight` int(11) NOT NULL default '0',
  `fatigue` smallint(6) NOT NULL default '0',
  `max_fatigue` smallint(6) NOT NULL default '70',
  `premium_fatigue` smallint(6) NOT NULL default '0',
  `max_premium_fatigue` smallint(6) NOT NULL default '0',
  `create_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `dungeon_clear_point` int(11) NOT NULL default '0',
  `delete_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(4) NOT NULL default '0',
  `guild_id` int(10) unsigned NOT NULL default '0',
  `guild_right` tinyint(4) NOT NULL default '0',
  `member_flag` tinyint(4) NOT NULL default '0',
  `sex` tinyint(4) NOT NULL default '1',
  `expert_job` tinyint(3) unsigned NOT NULL default '0',
  `skill_tree_index` tinyint(4) NOT NULL default '-1',
  `link_charac_no` int(10) unsigned NOT NULL default '0',
  `event_charac_level` tinyint(4) NOT NULL default '0',
  `guild_secede` tinyint(2) NOT NULL default '0',
  `start_time` int(11) NOT NULL default '0',
  `finish_time` int(11) NOT NULL default '0',
  `competition_area` tinyint(2) NOT NULL default '-1',
  `competition_period` tinyint(2) NOT NULL default '-1',
  `mercenary_start_time` int(11) NOT NULL default '0',
  `mercenary_finish_time` int(11) NOT NULL default '0',
  `mercenary_area` tinyint(4) NOT NULL default '-1',
  `mercenary_period` tinyint(4) NOT NULL default '-1',
  `VIP` varchar(255) NOT NULL,
  PRIMARY KEY  (`charac_no`),
  UNIQUE KEY `charac_name` USING BTREE (`charac_name`),
  KEY `charac_info_idx1` USING BTREE (`m_id`),
  KEY `charac_info_idx2` USING BTREE (`exp`),
  KEY `idx_guild_id` USING BTREE (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_item_stat
-- ----------------------------
DROP TABLE IF EXISTS `charac_item_stat`;
CREATE TABLE `charac_item_stat` (
  `charac_no` int(11) NOT NULL default '0',
  `cooltime_item` blob NOT NULL,
  `effect_item` blob NOT NULL,
  `check_flag` blob NOT NULL,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_item_stat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_kill_monster_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_kill_monster_info`;
CREATE TABLE `charac_kill_monster_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `boss_info` blob NOT NULL,
  `named_info` blob NOT NULL,
  `apc_boss_info` blob NOT NULL,
  PRIMARY KEY  (`charac_no`),
  KEY `pk_charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_kill_monster_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_link_bonus
-- ----------------------------
DROP TABLE IF EXISTS `charac_link_bonus`;
CREATE TABLE `charac_link_bonus` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `exp` int(10) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `mercenary_start_time` int(11) NOT NULL default '0',
  `mercenary_finish_time` int(11) NOT NULL default '0',
  `mercenary_area` tinyint(4) NOT NULL default '-1',
  `mercenary_period` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_link_bonus
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_link_message
-- ----------------------------
DROP TABLE IF EXISTS `charac_link_message`;
CREATE TABLE `charac_link_message` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `message_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_link_message
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_manage_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_manage_info`;
CREATE TABLE `charac_manage_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `tag_charac_no` int(10) unsigned NOT NULL default '0',
  `striker_skill_index` tinyint(3) unsigned NOT NULL default '0',
  `max_equip_level` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_manage_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_members
-- ----------------------------
DROP TABLE IF EXISTS `charac_members`;
CREATE TABLE `charac_members` (
  `charac_no` int(11) NOT NULL default '0',
  `master_no` int(11) NOT NULL default '0',
  `exp` int(11) NOT NULL default '0',
  `create_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_members
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_npc
-- ----------------------------
DROP TABLE IF EXISTS `charac_npc`;
CREATE TABLE `charac_npc` (
  `charac_no` int(11) NOT NULL default '0',
  `npc_cnt` tinyint(3) unsigned NOT NULL default '0',
  `npc_data` blob NOT NULL,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_npc
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_option
-- ----------------------------
DROP TABLE IF EXISTS `charac_option`;
CREATE TABLE `charac_option` (
  `charac_no` int(11) NOT NULL default '0',
  `options` blob NOT NULL,
  `best_clear_time` blob NOT NULL,
  `blue_marble_enter_count` tinyint(3) unsigned NOT NULL default '0',
  `charac_inform_notice` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_option
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_quest
-- ----------------------------
DROP TABLE IF EXISTS `charac_quest`;
CREATE TABLE `charac_quest` (
  `charac_no` int(11) NOT NULL default '0',
  `quest_10` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_15` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_20` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_30` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_40` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_40_ext` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_50` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_60` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_70` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_etc` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `play_1` smallint(5) unsigned NOT NULL default '0',
  `play_1_trigger` int(11) NOT NULL default '0',
  `play_2` smallint(5) unsigned NOT NULL default '0',
  `play_2_trigger` int(11) NOT NULL default '0',
  `play_3` smallint(5) unsigned NOT NULL default '0',
  `play_3_trigger` int(11) NOT NULL default '0',
  `play_4` smallint(5) unsigned NOT NULL default '0',
  `play_4_trigger` int(11) NOT NULL default '0',
  `play_5` smallint(5) unsigned NOT NULL default '0',
  `play_5_trigger` int(11) NOT NULL default '0',
  `play_6` smallint(5) unsigned NOT NULL default '0',
  `play_6_trigger` int(11) NOT NULL default '0',
  `play_7` smallint(5) unsigned NOT NULL default '0',
  `play_7_trigger` int(11) NOT NULL default '0',
  `play_8` smallint(5) unsigned NOT NULL default '0',
  `play_8_trigger` int(11) NOT NULL default '0',
  `play_9` smallint(5) unsigned NOT NULL default '0',
  `play_9_trigger` int(11) NOT NULL default '0',
  `play_10` smallint(5) unsigned NOT NULL default '0',
  `play_10_trigger` int(11) NOT NULL default '0',
  `quest_50_ext` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_60_ext` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_etc_ext` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `quest_60_ext_2nd` binary(64) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_quest
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_quest_ref
-- ----------------------------
DROP TABLE IF EXISTS `charac_quest_ref`;
CREATE TABLE `charac_quest_ref` (
  `origin_idx` int(11) NOT NULL default '0',
  `mapped_idx` int(11) NOT NULL default '0',
  PRIMARY KEY  (`origin_idx`),
  UNIQUE KEY `mapped_idx` USING BTREE (`mapped_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_quest_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_quest_shop
-- ----------------------------
DROP TABLE IF EXISTS `charac_quest_shop`;
CREATE TABLE `charac_quest_shop` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `qp` int(10) unsigned NOT NULL default '0',
  `max_hp` smallint(5) unsigned NOT NULL default '0',
  `max_mp` smallint(5) unsigned NOT NULL default '0',
  `psy_attack` smallint(5) unsigned NOT NULL default '0',
  `psy_defense` smallint(5) unsigned NOT NULL default '0',
  `mag_attack` smallint(5) unsigned NOT NULL default '0',
  `mag_defence` smallint(5) unsigned NOT NULL default '0',
  `move_speed` smallint(5) unsigned NOT NULL default '0',
  `attack_speed` smallint(5) unsigned NOT NULL default '0',
  `hp_regen` smallint(5) unsigned NOT NULL default '0',
  `mp_regen` smallint(5) unsigned NOT NULL default '0',
  `all_element_resist` smallint(5) unsigned NOT NULL default '0',
  `fire_element_resist` smallint(5) unsigned NOT NULL default '0',
  `water_element_resist` smallint(5) unsigned NOT NULL default '0',
  `light_element_resist` smallint(5) unsigned NOT NULL default '0',
  `dark_element_resist` smallint(5) unsigned NOT NULL default '0',
  `all_element_attack` smallint(5) unsigned NOT NULL default '0',
  `fire_element_attack` smallint(5) unsigned NOT NULL default '0',
  `water_element_attack` smallint(5) unsigned NOT NULL default '0',
  `light_element_attack` smallint(5) unsigned NOT NULL default '0',
  `dark_element_attack` smallint(5) unsigned NOT NULL default '0',
  `psy_critical` smallint(5) unsigned NOT NULL default '0',
  `mag_critical` smallint(5) unsigned NOT NULL default '0',
  `good_hit` smallint(5) unsigned NOT NULL default '0',
  `evasion` smallint(5) unsigned NOT NULL default '0',
  `hit_recovery` smallint(5) unsigned NOT NULL default '0',
  `init_count` smallint(5) unsigned NOT NULL default '0',
  `separate_psy_mag_attack` smallint(5) unsigned NOT NULL default '0',
  `quest_piece` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_quest_shop
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_ridable_stat
-- ----------------------------
DROP TABLE IF EXISTS `charac_ridable_stat`;
CREATE TABLE `charac_ridable_stat` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `cooltime` blob NOT NULL,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_ridable_stat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_stat
-- ----------------------------
DROP TABLE IF EXISTS `charac_stat`;
CREATE TABLE `charac_stat` (
  `charac_no` int(11) NOT NULL default '0',
  `village` tinyint(4) NOT NULL default '1',
  `exp` int(11) NOT NULL default '0',
  `HP` tinyint(4) unsigned NOT NULL default '0',
  `fatigue` smallint(11) NOT NULL default '0',
  `used_fatigue` smallint(11) NOT NULL default '0',
  `premium_fatigue` smallint(11) NOT NULL default '0',
  `dungeon_clear_point` int(11) NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `forbidden_to_play` char(1) NOT NULL default '',
  `forbidden_due_to` datetime NOT NULL default '2021-11-19 00:00:00',
  `tutorial_flag` int(11) NOT NULL default '0',
  `trade_gold_total` int(10) unsigned NOT NULL default '0',
  `trade_gold_total_billion` smallint(5) unsigned NOT NULL default '0',
  `trade_gold_daily` int(10) unsigned NOT NULL default '0',
  `dungeon_map_pass_cnt` int(10) unsigned NOT NULL default '0',
  `dungeon_map_help_pass_cnt` int(10) unsigned NOT NULL default '0',
  `help_abuse_point` int(10) unsigned NOT NULL default '0',
  `chaos_point` int(10) unsigned NOT NULL default '0',
  `chaos_exp` int(10) unsigned NOT NULL default '0',
  `chaos_mode_count` int(10) unsigned NOT NULL default '0',
  `chaos_kill_count` int(10) unsigned NOT NULL default '0',
  `chaos_die_count` int(10) unsigned NOT NULL default '0',
  `chaos_die_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `chaos_kill_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `assault_count` int(10) unsigned NOT NULL default '0',
  `luck_point` int(11) NOT NULL default '5000',
  `dungeon_play_count` int(10) unsigned NOT NULL default '0',
  `help_abuse_ratio` int(10) NOT NULL default '0',
  `help_abuse_exp` int(10) NOT NULL default '0',
  `expert_job_exp` int(11) NOT NULL default '0',
  `fatigue_battery_charging` int(11) NOT NULL default '0',
  `escalade_tutorial_flag` varchar(32) NOT NULL default '',
  `power_war_point` smallint(5) unsigned NOT NULL default '0',
  `power_war_assault_count` int(10) unsigned NOT NULL default '0',
  `power_war_assault_victory_count` int(10) unsigned NOT NULL default '0',
  `fatigue_grownup_buff` int(10) unsigned NOT NULL default '0',
  `village_prev` tinyint(4) NOT NULL default '1',
  `last_play_time_powerwar` datetime NOT NULL default '2021-11-19 00:00:00',
  `emotion` smallint(5) unsigned NOT NULL default '0',
  `add_slot_flag` tinyint(4) unsigned NOT NULL default '0',
  `member_dungeon_flag` tinyint(4) unsigned NOT NULL default '0',
  `open_flag` tinyint(4) NOT NULL default '0',
  `member_bonus_fatigue` tinyint(3) unsigned NOT NULL default '0',
  `birthday_effect_time` datetime default '2021-11-19 00:00:00',
  `visible_flags` tinyint(4) unsigned NOT NULL default '2',
  `add_equipslot_flag` tinyint(4) NOT NULL default '0',
  `channel_equipslot_switch` tinyint(4) NOT NULL default '0',
  `expand_equipslot_switch` tinyint(4) NOT NULL default '0',
  `growth_power_reward` tinyint(4) NOT NULL default '0',
  `chaos_respon_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `last_play_dungeon_index` int(10) unsigned NOT NULL default '0',
  `total_play_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`),
  KEY `idx_exp` USING BTREE (`exp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_stat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_titlebook
-- ----------------------------
DROP TABLE IF EXISTS `charac_titlebook`;
CREATE TABLE `charac_titlebook` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `specific_section` blob NOT NULL,
  `general_section` blob NOT NULL,
  `despair` blob NOT NULL,
  `event` blob NOT NULL,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_titlebook
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_tower_despair
-- ----------------------------
DROP TABLE IF EXISTS `charac_tower_despair`;
CREATE TABLE `charac_tower_despair` (
  `charac_no` int(11) NOT NULL default '0',
  `first_layer_start_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `today_enter_count` tinyint(4) NOT NULL default '0',
  `last_clear_layer` tinyint(4) NOT NULL default '0',
  `enter_count_by_week` int(11) NOT NULL default '0',
  `m_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `last_clear_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`),
  KEY `m_date` USING BTREE (`m_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_tower_despair
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_tower_despair_apc
-- ----------------------------
DROP TABLE IF EXISTS `charac_tower_despair_apc`;
CREATE TABLE `charac_tower_despair_apc` (
  `reg_date` date NOT NULL default '2021-11-19',
  `charac_no` int(11) NOT NULL default '0',
  `seq` int(11) NOT NULL default '0',
  PRIMARY KEY  (`reg_date`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_tower_despair_apc
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_tower_rank
-- ----------------------------
DROP TABLE IF EXISTS `charac_tower_rank`;
CREATE TABLE `charac_tower_rank` (
  `tower_index` tinyint(3) unsigned NOT NULL default '0',
  `part_type` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `member_info` char(128) character set sjis collate sjis_bin NOT NULL default '',
  `rank` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tower_index`,`part_type`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_tower_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_tower_rank_top5
-- ----------------------------
DROP TABLE IF EXISTS `charac_tower_rank_top5`;
CREATE TABLE `charac_tower_rank_top5` (
  `tower_index` tinyint(3) unsigned NOT NULL default '0',
  `part_type` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `member_info` char(128) character set sjis collate sjis_bin NOT NULL default '',
  `rank` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tower_index`,`part_type`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_tower_rank_top5
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_tower_record
-- ----------------------------
DROP TABLE IF EXISTS `charac_tower_record`;
CREATE TABLE `charac_tower_record` (
  `charac_no` int(11) NOT NULL default '0',
  `tower_index` tinyint(3) unsigned NOT NULL default '0',
  `member_info_1` char(32) character set sjis collate sjis_bin NOT NULL default '',
  `stage_1` tinyint(3) unsigned NOT NULL default '0',
  `play_time_1` int(10) unsigned NOT NULL default '0',
  `occ_time_1` datetime NOT NULL default '2021-11-19 00:00:00',
  `member_info_2` char(64) character set sjis collate sjis_bin NOT NULL default '',
  `stage_2` tinyint(3) unsigned NOT NULL default '0',
  `play_time_2` int(10) unsigned NOT NULL default '0',
  `occ_time_2` datetime NOT NULL default '2021-11-19 00:00:00',
  `member_info_3` char(96) character set sjis collate sjis_bin NOT NULL default '',
  `stage_3` tinyint(3) unsigned NOT NULL default '0',
  `play_time_3` int(10) unsigned NOT NULL default '0',
  `occ_time_3` datetime NOT NULL default '2021-11-19 00:00:00',
  `member_info_4` char(128) character set sjis collate sjis_bin NOT NULL default '',
  `stage_4` tinyint(3) unsigned NOT NULL default '0',
  `play_time_4` int(10) unsigned NOT NULL default '0',
  `occ_time_4` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_tower_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_trade_limit_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_trade_limit_info`;
CREATE TABLE `charac_trade_limit_info` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `last_trade_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `total_trade_gold` int(10) unsigned NOT NULL default '0',
  `trade_count` smallint(5) unsigned NOT NULL default '0',
  `nexon_user` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`),
  KEY `idx_mid` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_trade_limit_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_view
-- ----------------------------
DROP TABLE IF EXISTS `charac_view`;
CREATE TABLE `charac_view` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `info` blob NOT NULL,
  `slot_effect_count` tinyint(3) unsigned NOT NULL default '18',
  `charac_slot_limit` tinyint(3) unsigned NOT NULL default '18',
  `hash_key` varchar(32) NOT NULL default '',
  `charac_count` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_view
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_view_act8
-- ----------------------------
DROP TABLE IF EXISTS `charac_view_act8`;
CREATE TABLE `charac_view_act8` (
  `m_id` bigint(20) unsigned NOT NULL default '0',
  `info` blob NOT NULL,
  `slot_effect_count` tinyint(3) unsigned NOT NULL default '18',
  `charac_slot_limit` tinyint(3) unsigned NOT NULL default '18',
  `hash_key` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_view_act8
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cs_table2
-- ----------------------------
DROP TABLE IF EXISTS `cs_table2`;
CREATE TABLE `cs_table2` (
  `account_id` char(30) NOT NULL,
  `charac_id` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_table2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_pcroom
-- ----------------------------
DROP TABLE IF EXISTS `dnf_pcroom`;
CREATE TABLE `dnf_pcroom` (
  `ip_no` int(11) NOT NULL auto_increment,
  `district` varchar(20) NOT NULL default '',
  `firm_name` varchar(50) NOT NULL default '',
  `telephone` varchar(20) NOT NULL default '',
  `address` varchar(150) NOT NULL default '',
  `leader` varchar(30) NOT NULL default '',
  `ip` varchar(11) NOT NULL default '',
  `start_ip` tinyint(3) unsigned NOT NULL default '0',
  `end_ip` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ip_no`),
  UNIQUE KEY `start_ip` USING BTREE (`ip`,`start_ip`),
  UNIQUE KEY `end_ip` USING BTREE (`ip`,`end_ip`),
  KEY `idx_district` USING BTREE (`district`),
  KEY `idx_leader` USING BTREE (`leader`),
  KEY `idx_firm_name` USING BTREE (`firm_name`),
  KEY `idx_ip` USING BTREE (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_pcroom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for eco_point
-- ----------------------------
DROP TABLE IF EXISTS `eco_point`;
CREATE TABLE `eco_point` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `eco_point` int(10) unsigned NOT NULL default '0',
  `point_500` tinyint(4) NOT NULL default '0',
  `point_300` tinyint(4) NOT NULL default '0',
  `point_100` tinyint(4) NOT NULL default '0',
  `point_50` tinyint(4) NOT NULL default '0',
  `point_20` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eco_point
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1106_idol_bring_up
-- ----------------------------
DROP TABLE IF EXISTS `event_1106_idol_bring_up`;
CREATE TABLE `event_1106_idol_bring_up` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `pot_type` tinyint(4) NOT NULL default '0',
  `water_cnt` tinyint(4) NOT NULL default '0',
  `give_title_flag` tinyint(4) NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `give_title_flag2` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1106_idol_bring_up
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_additional_condition_info
-- ----------------------------
DROP TABLE IF EXISTS `event_additional_condition_info`;
CREATE TABLE `event_additional_condition_info` (
  `charac_no` int(11) unsigned NOT NULL default '0',
  `current_step` tinyint(4) unsigned NOT NULL default '0',
  `reward_step` tinyint(4) unsigned NOT NULL default '0',
  `update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_additional_condition_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_condition_info
-- ----------------------------
DROP TABLE IF EXISTS `event_condition_info`;
CREATE TABLE `event_condition_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `current_step` tinyint(3) unsigned NOT NULL default '0',
  `reward_step` tinyint(3) unsigned NOT NULL default '0',
  `update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_condition_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_conditionable_info
-- ----------------------------
DROP TABLE IF EXISTS `event_conditionable_info`;
CREATE TABLE `event_conditionable_info` (
  `charac_no` int(11) unsigned NOT NULL default '0',
  `current_step` tinyint(4) unsigned NOT NULL default '0',
  `reward_step` tinyint(4) unsigned NOT NULL default '0',
  `update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_conditionable_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_detective_goblin
-- ----------------------------
DROP TABLE IF EXISTS `event_detective_goblin`;
CREATE TABLE `event_detective_goblin` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `point` int(11) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_detective_goblin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_dungeon_clear
-- ----------------------------
DROP TABLE IF EXISTS `event_dungeon_clear`;
CREATE TABLE `event_dungeon_clear` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `clear_cnt` int(10) unsigned NOT NULL default '0',
  `update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_dungeon_clear
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_levelup_support
-- ----------------------------
DROP TABLE IF EXISTS `event_levelup_support`;
CREATE TABLE `event_levelup_support` (
  `charac_no` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `state` int(11) default NULL,
  PRIMARY KEY  (`charac_no`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_levelup_support
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_used_fatigue_at_mage
-- ----------------------------
DROP TABLE IF EXISTS `event_used_fatigue_at_mage`;
CREATE TABLE `event_used_fatigue_at_mage` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `fatigue_quantity` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_used_fatigue_at_mage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_visit_room_info
-- ----------------------------
DROP TABLE IF EXISTS `event_visit_room_info`;
CREATE TABLE `event_visit_room_info` (
  `charac_no` int(11) unsigned NOT NULL default '0',
  `visit_cnt` tinyint(4) unsigned NOT NULL default '0',
  `visit_charac_no` blob,
  `update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_visit_room_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exp_level_ref
-- ----------------------------
DROP TABLE IF EXISTS `exp_level_ref`;
CREATE TABLE `exp_level_ref` (
  `exp` int(10) unsigned NOT NULL default '0',
  `lev` int(11) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exp_level_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for game_channel
-- ----------------------------
DROP TABLE IF EXISTS `game_channel`;
CREATE TABLE `game_channel` (
  `gc_no` int(11) unsigned NOT NULL auto_increment,
  `gc_now` smallint(5) unsigned NOT NULL default '0',
  `gc_ip` varchar(64) NOT NULL default '',
  `gc_port` smallint(5) unsigned NOT NULL default '0',
  `gc_max` smallint(5) unsigned NOT NULL default '0',
  `gc_game` tinyint(3) unsigned NOT NULL default '0',
  `gc_channel` varchar(32) NOT NULL default '',
  `gc_ch_group` smallint(5) NOT NULL default '0',
  `gc_channeltype` varchar(25) NOT NULL default '',
  `gc_up_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `gc_swordman_cnt` smallint(5) unsigned NOT NULL default '0',
  `gc_fighter_cnt` smallint(5) unsigned NOT NULL default '0',
  `gc_gunner_cnt` smallint(5) unsigned NOT NULL default '0',
  `gc_mage_cnt` smallint(5) unsigned NOT NULL default '0',
  `gc_priest_cnt` smallint(5) unsigned NOT NULL default '0',
  `gc_at_gunner_cnt` smallint(5) unsigned NOT NULL default '0',
  `gc_thief_cnt` smallint(5) unsigned NOT NULL default '0',
  `gc_hangame` smallint(5) unsigned NOT NULL default '0',
  `gc_nexon` smallint(5) unsigned NOT NULL default '0',
  `gc_type` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`gc_no`),
  KEY `idxGC_GAME` USING BTREE (`gc_game`),
  KEY `idxch_group` USING BTREE (`gc_ch_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3053 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_channel
-- ----------------------------
BEGIN;
INSERT INTO `game_channel` VALUES (1052, 0, '103.40.162.129', 10052, 600, 3, 'ch.52', 52, '[none]', '2015-07-19 01:55:26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13);
INSERT INTO `game_channel` VALUES (3001, 0, '192.168.200.131', 10001, 600, 1, 'ch.1', 1, '[deathtower]', '2015-08-15 01:56:05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 11);
INSERT INTO `game_channel` VALUES (3006, 0, '61.160.207.38', 10006, 600, 1, 'ch.06', 6, '[none]', '2015-07-27 18:32:58', 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
INSERT INTO `game_channel` VALUES (3011, 0, '192.168.200.131', 10011, 600, 3, 'ch.11', 11, '[granfloris]', '2018-02-18 11:30:37', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3012, 13, '61.160.207.38', 10012, 600, 1, 'ch.12', 12, '[granfloris]', '2015-07-27 18:33:09', 8, 1, 1, 0, 1, 0, 1, 0, 13, 0);
INSERT INTO `game_channel` VALUES (3013, 6, '61.160.207.38', 10013, 600, 1, 'ch.13', 13, '[granfloris]', '2015-07-27 18:32:50', 3, 0, 2, 1, 0, 0, 0, 0, 6, 0);
INSERT INTO `game_channel` VALUES (3016, 0, '103.40.162.129', 10016, 600, 1, 'ch.16', 16, '[sky_catle]', '2015-07-19 21:00:05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3020, 0, '103.40.162.129', 10020, 600, 1, 'ch.20', 20, '[behemoth]', '2015-07-19 21:00:21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3021, 1, '192.168.200.131', 10021, 600, 1, 'ch.21', 21, '[behemoth]', '2015-09-03 18:24:55', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `game_channel` VALUES (3024, 0, '103.40.162.129', 10024, 600, 1, 'ch.24', 24, '[Alfhlyra]', '2015-07-19 20:11:24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3027, 0, '103.40.162.129', 10027, 600, 1, 'ch.27', 27, '[stormpass]', '2015-07-20 14:33:40', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3031, 0, '61.160.207.38', 10031, 600, 1, 'ch.31', 31, '[Fortress]', '2015-07-23 12:34:22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3033, 0, '103.40.162.129', 10033, 600, 1, 'ch.33', 33, '[north_myre]', '2015-07-20 14:33:48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3035, 0, '103.40.162.129', 10035, 600, 1, 'ch.35', 35, '[Antwer]', '2015-07-19 21:04:36', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3037, 0, '103.40.162.129', 10111, 600, 1, 'ch.37', 37, '[seatrain]', '2015-07-20 14:33:51', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3039, 0, '103.40.162.129', 10039, 600, 1, 'ch.39', 39, '[ancient]', '2015-07-19 21:21:36', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `game_channel` VALUES (3052, 0, '192.168.200.131', 10031, 600, 3, 'ch.52', 52, '[none]', '2018-02-18 11:30:37', 0, 0, 0, 0, 0, 0, 0, 0, 0, 13);
COMMIT;

-- ----------------------------
-- Table structure for ip_info
-- ----------------------------
DROP TABLE IF EXISTS `ip_info`;
CREATE TABLE `ip_info` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `ip` varchar(11) NOT NULL default '',
  `start_ip` tinyint(3) unsigned NOT NULL default '0',
  `end_ip` tinyint(3) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `ip_check` tinyint(3) unsigned NOT NULL default '0',
  `vendor_no` int(10) unsigned NOT NULL default '0',
  `speed_no` int(10) unsigned NOT NULL default '0',
  `start_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_flag` tinyint(4) NOT NULL default '0',
  `settle_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  UNIQUE KEY `ip` USING BTREE (`ip`,`start_ip`,`end_ip`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_ip` USING BTREE (`ip`),
  KEY `idx_start_ip` USING BTREE (`start_ip`),
  KEY `idx_end_ip` USING BTREE (`end_ip`),
  KEY `idx_occ_time` USING BTREE (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ip_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for item_gen_ref
-- ----------------------------
DROP TABLE IF EXISTS `item_gen_ref`;
CREATE TABLE `item_gen_ref` (
  `item_grade` tinyint(4) NOT NULL default '0',
  `rate_type` tinyint(4) NOT NULL default '0',
  `money_rate` smallint(6) NOT NULL default '0',
  `item_rate` smallint(6) NOT NULL default '0',
  `free_rate` smallint(6) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_gen_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for item_making_skill_info
-- ----------------------------
DROP TABLE IF EXISTS `item_making_skill_info`;
CREATE TABLE `item_making_skill_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `weapon` smallint(5) unsigned NOT NULL default '0',
  `cloth` smallint(5) unsigned NOT NULL default '0',
  `leather` smallint(5) unsigned NOT NULL default '0',
  `light_armor` smallint(5) unsigned NOT NULL default '0',
  `heavy_armor` smallint(5) unsigned NOT NULL default '0',
  `plate` smallint(5) unsigned NOT NULL default '0',
  `amulet` smallint(5) unsigned NOT NULL default '0',
  `wrist` smallint(5) unsigned NOT NULL default '0',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `support` smallint(5) unsigned NOT NULL default '0',
  `magic_stone` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_making_skill_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for item_select_std
-- ----------------------------
DROP TABLE IF EXISTS `item_select_std`;
CREATE TABLE `item_select_std` (
  `item_grade` int(11) NOT NULL default '0',
  `top` int(11) NOT NULL default '0',
  `bottom` int(11) NOT NULL default '0',
  `weight` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_select_std
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for limit_npc_item
-- ----------------------------
DROP TABLE IF EXISTS `limit_npc_item`;
CREATE TABLE `limit_npc_item` (
  `item_index` int(10) unsigned NOT NULL default '0',
  `max_count` int(10) unsigned NOT NULL default '0',
  `sell_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`item_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of limit_npc_item
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_num_occupations
-- ----------------------------
DROP TABLE IF EXISTS `log_num_occupations`;
CREATE TABLE `log_num_occupations` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `num_occupations_charscreen` mediumint(8) unsigned NOT NULL default '0',
  `num_occupations_seriaroom` mediumint(8) unsigned NOT NULL default '0',
  `num_login_per_min` mediumint(8) unsigned NOT NULL default '0',
  `num_logout_per_min` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_num_occupations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_booster_gage
-- ----------------------------
DROP TABLE IF EXISTS `member_booster_gage`;
CREATE TABLE `member_booster_gage` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `gage` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_booster_gage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_dungeon
-- ----------------------------
DROP TABLE IF EXISTS `member_dungeon`;
CREATE TABLE `member_dungeon` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `dungeon` text NOT NULL,
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_dungeon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for money_gen_ref
-- ----------------------------
DROP TABLE IF EXISTS `money_gen_ref`;
CREATE TABLE `money_gen_ref` (
  `grade` int(11) NOT NULL default '0',
  `bottom_grade` int(11) NOT NULL default '0',
  `money` int(11) NOT NULL default '0',
  `random_value` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of money_gen_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for monster_reward_ref
-- ----------------------------
DROP TABLE IF EXISTS `monster_reward_ref`;
CREATE TABLE `monster_reward_ref` (
  `level` smallint(11) NOT NULL default '0',
  `exp` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monster_reward_ref
-- ----------------------------
BEGIN;
INSERT INTO `monster_reward_ref` VALUES (1, 30);
INSERT INTO `monster_reward_ref` VALUES (2, 40);
INSERT INTO `monster_reward_ref` VALUES (3, 50);
INSERT INTO `monster_reward_ref` VALUES (4, 60);
INSERT INTO `monster_reward_ref` VALUES (5, 70);
INSERT INTO `monster_reward_ref` VALUES (6, 80);
INSERT INTO `monster_reward_ref` VALUES (7, 90);
INSERT INTO `monster_reward_ref` VALUES (8, 100);
INSERT INTO `monster_reward_ref` VALUES (9, 110);
INSERT INTO `monster_reward_ref` VALUES (10, 120);
INSERT INTO `monster_reward_ref` VALUES (11, 130);
INSERT INTO `monster_reward_ref` VALUES (12, 140);
INSERT INTO `monster_reward_ref` VALUES (13, 150);
INSERT INTO `monster_reward_ref` VALUES (14, 160);
INSERT INTO `monster_reward_ref` VALUES (15, 170);
INSERT INTO `monster_reward_ref` VALUES (16, 185);
INSERT INTO `monster_reward_ref` VALUES (17, 201);
INSERT INTO `monster_reward_ref` VALUES (18, 218);
INSERT INTO `monster_reward_ref` VALUES (19, 235);
INSERT INTO `monster_reward_ref` VALUES (20, 253);
INSERT INTO `monster_reward_ref` VALUES (21, 271);
INSERT INTO `monster_reward_ref` VALUES (22, 290);
INSERT INTO `monster_reward_ref` VALUES (23, 310);
INSERT INTO `monster_reward_ref` VALUES (24, 330);
INSERT INTO `monster_reward_ref` VALUES (25, 351);
INSERT INTO `monster_reward_ref` VALUES (26, 372);
INSERT INTO `monster_reward_ref` VALUES (27, 394);
INSERT INTO `monster_reward_ref` VALUES (28, 417);
INSERT INTO `monster_reward_ref` VALUES (29, 440);
INSERT INTO `monster_reward_ref` VALUES (30, 464);
INSERT INTO `monster_reward_ref` VALUES (31, 488);
INSERT INTO `monster_reward_ref` VALUES (32, 513);
INSERT INTO `monster_reward_ref` VALUES (33, 539);
INSERT INTO `monster_reward_ref` VALUES (34, 565);
INSERT INTO `monster_reward_ref` VALUES (35, 592);
INSERT INTO `monster_reward_ref` VALUES (36, 619);
INSERT INTO `monster_reward_ref` VALUES (37, 647);
INSERT INTO `monster_reward_ref` VALUES (38, 676);
INSERT INTO `monster_reward_ref` VALUES (39, 705);
INSERT INTO `monster_reward_ref` VALUES (40, 735);
INSERT INTO `monster_reward_ref` VALUES (41, 765);
INSERT INTO `monster_reward_ref` VALUES (42, 796);
INSERT INTO `monster_reward_ref` VALUES (43, 828);
INSERT INTO `monster_reward_ref` VALUES (44, 860);
INSERT INTO `monster_reward_ref` VALUES (45, 893);
INSERT INTO `monster_reward_ref` VALUES (46, 926);
INSERT INTO `monster_reward_ref` VALUES (47, 960);
INSERT INTO `monster_reward_ref` VALUES (48, 995);
INSERT INTO `monster_reward_ref` VALUES (49, 1030);
INSERT INTO `monster_reward_ref` VALUES (50, 1066);
INSERT INTO `monster_reward_ref` VALUES (51, 1102);
INSERT INTO `monster_reward_ref` VALUES (52, 1139);
INSERT INTO `monster_reward_ref` VALUES (53, 1177);
INSERT INTO `monster_reward_ref` VALUES (54, 1215);
INSERT INTO `monster_reward_ref` VALUES (55, 1254);
INSERT INTO `monster_reward_ref` VALUES (56, 1293);
INSERT INTO `monster_reward_ref` VALUES (57, 1333);
INSERT INTO `monster_reward_ref` VALUES (58, 1374);
INSERT INTO `monster_reward_ref` VALUES (59, 1415);
INSERT INTO `monster_reward_ref` VALUES (60, 1457);
INSERT INTO `monster_reward_ref` VALUES (61, 1499);
INSERT INTO `monster_reward_ref` VALUES (62, 1542);
INSERT INTO `monster_reward_ref` VALUES (63, 1586);
INSERT INTO `monster_reward_ref` VALUES (64, 1630);
INSERT INTO `monster_reward_ref` VALUES (65, 1675);
INSERT INTO `monster_reward_ref` VALUES (66, 1720);
INSERT INTO `monster_reward_ref` VALUES (67, 1766);
INSERT INTO `monster_reward_ref` VALUES (68, 1813);
INSERT INTO `monster_reward_ref` VALUES (69, 1860);
INSERT INTO `monster_reward_ref` VALUES (70, 1908);
INSERT INTO `monster_reward_ref` VALUES (71, 1956);
INSERT INTO `monster_reward_ref` VALUES (72, 2005);
INSERT INTO `monster_reward_ref` VALUES (73, 2055);
INSERT INTO `monster_reward_ref` VALUES (74, 2105);
INSERT INTO `monster_reward_ref` VALUES (75, 2156);
INSERT INTO `monster_reward_ref` VALUES (76, 2207);
INSERT INTO `monster_reward_ref` VALUES (77, 2259);
INSERT INTO `monster_reward_ref` VALUES (78, 2312);
INSERT INTO `monster_reward_ref` VALUES (79, 2365);
INSERT INTO `monster_reward_ref` VALUES (80, 2419);
INSERT INTO `monster_reward_ref` VALUES (81, 2473);
INSERT INTO `monster_reward_ref` VALUES (82, 2528);
INSERT INTO `monster_reward_ref` VALUES (83, 2584);
INSERT INTO `monster_reward_ref` VALUES (84, 2640);
INSERT INTO `monster_reward_ref` VALUES (85, 2697);
INSERT INTO `monster_reward_ref` VALUES (86, 2754);
INSERT INTO `monster_reward_ref` VALUES (87, 2812);
INSERT INTO `monster_reward_ref` VALUES (88, 2871);
INSERT INTO `monster_reward_ref` VALUES (89, 2930);
INSERT INTO `monster_reward_ref` VALUES (90, 2990);
INSERT INTO `monster_reward_ref` VALUES (91, 3050);
INSERT INTO `monster_reward_ref` VALUES (92, 3111);
INSERT INTO `monster_reward_ref` VALUES (93, 3173);
INSERT INTO `monster_reward_ref` VALUES (94, 3235);
INSERT INTO `monster_reward_ref` VALUES (95, 3298);
INSERT INTO `monster_reward_ref` VALUES (96, 3361);
INSERT INTO `monster_reward_ref` VALUES (97, 3425);
INSERT INTO `monster_reward_ref` VALUES (98, 3490);
INSERT INTO `monster_reward_ref` VALUES (99, 3555);
INSERT INTO `monster_reward_ref` VALUES (100, 3575);
COMMIT;

-- ----------------------------
-- Table structure for new_charac_quest
-- ----------------------------
DROP TABLE IF EXISTS `new_charac_quest`;
CREATE TABLE `new_charac_quest` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `clear_quest` blob NOT NULL,
  `quest_notify` blob NOT NULL,
  `play_1` smallint(5) unsigned NOT NULL default '0',
  `play_1_trigger` int(10) unsigned NOT NULL default '0',
  `play_2` smallint(5) unsigned NOT NULL default '0',
  `play_2_trigger` int(10) unsigned NOT NULL default '0',
  `play_3` smallint(5) unsigned NOT NULL default '0',
  `play_3_trigger` int(10) unsigned NOT NULL default '0',
  `play_4` smallint(5) unsigned NOT NULL default '0',
  `play_4_trigger` int(10) unsigned NOT NULL default '0',
  `play_5` smallint(5) unsigned NOT NULL default '0',
  `play_5_trigger` int(10) unsigned NOT NULL default '0',
  `play_6` smallint(5) unsigned NOT NULL default '0',
  `play_6_trigger` int(10) unsigned NOT NULL default '0',
  `play_7` smallint(5) unsigned NOT NULL default '0',
  `play_7_trigger` int(10) unsigned NOT NULL default '0',
  `play_8` smallint(5) unsigned NOT NULL default '0',
  `play_8_trigger` int(10) unsigned NOT NULL default '0',
  `play_9` smallint(5) unsigned NOT NULL default '0',
  `play_9_trigger` int(10) unsigned NOT NULL default '0',
  `play_10` smallint(5) unsigned NOT NULL default '0',
  `play_10_trigger` int(10) unsigned NOT NULL default '0',
  `auto_clear` tinyint(3) unsigned NOT NULL default '0',
  `play_11` smallint(5) unsigned NOT NULL default '0',
  `play_11_trigger` int(10) unsigned NOT NULL default '0',
  `play_12` smallint(5) unsigned NOT NULL default '0',
  `play_12_trigger` int(10) unsigned NOT NULL default '0',
  `play_13` smallint(5) unsigned NOT NULL default '0',
  `play_13_trigger` int(10) unsigned NOT NULL default '0',
  `play_14` smallint(5) unsigned NOT NULL default '0',
  `play_14_trigger` int(10) unsigned NOT NULL default '0',
  `play_15` smallint(5) unsigned NOT NULL default '0',
  `play_15_trigger` int(10) unsigned NOT NULL default '0',
  `play_16` smallint(5) unsigned NOT NULL default '0',
  `play_16_trigger` int(10) unsigned NOT NULL default '0',
  `play_17` smallint(5) unsigned NOT NULL default '0',
  `play_17_trigger` int(10) unsigned NOT NULL default '0',
  `play_18` smallint(5) unsigned NOT NULL default '0',
  `play_18_trigger` int(10) unsigned NOT NULL default '0',
  `play_19` smallint(5) unsigned NOT NULL default '0',
  `play_19_trigger` int(10) unsigned NOT NULL default '0',
  `play_20` smallint(5) unsigned NOT NULL default '0',
  `play_20_trigger` int(10) unsigned NOT NULL default '0',
  `urgentQuestIndex` smallint(6) NOT NULL default '-1',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new_charac_quest
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for party_rank_avg
-- ----------------------------
DROP TABLE IF EXISTS `party_rank_avg`;
CREATE TABLE `party_rank_avg` (
  `dungeon_index` smallint(6) NOT NULL default '0',
  `party_level` smallint(6) NOT NULL default '0',
  `clear_count` bigint(20) NOT NULL default '0',
  `average` int(11) NOT NULL default '0',
  PRIMARY KEY  (`dungeon_index`,`party_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_rank_avg
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pvp_grade_expand
-- ----------------------------
DROP TABLE IF EXISTS `pvp_grade_expand`;
CREATE TABLE `pvp_grade_expand` (
  `charac_no` int(11) NOT NULL default '0',
  `pvp_grade` int(11) NOT NULL default '0',
  `pvp_point` int(11) NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`),
  KEY `idx_pvp_grade` USING BTREE (`pvp_grade`),
  KEY `idx_pvp_point` USING BTREE (`pvp_point`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pvp_grade_expand
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pvp_grade_ref
-- ----------------------------
DROP TABLE IF EXISTS `pvp_grade_ref`;
CREATE TABLE `pvp_grade_ref` (
  `grade` int(11) NOT NULL default '0',
  `limit_pts` int(11) NOT NULL default '0',
  PRIMARY KEY  (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pvp_grade_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pvp_result
-- ----------------------------
DROP TABLE IF EXISTS `pvp_result`;
CREATE TABLE `pvp_result` (
  `charac_no` int(11) NOT NULL default '0',
  `win` int(11) NOT NULL default '0',
  `lose` int(11) NOT NULL default '0',
  `pvp_point` int(11) NOT NULL default '0',
  `pvp_grade` int(11) NOT NULL default '0',
  `pvp_grade_ext` tinyint(3) unsigned NOT NULL default '0',
  `avg_kill_count` int(11) NOT NULL default '0',
  `avg_buf_count` int(11) NOT NULL default '0',
  `avg_debuf_count` int(11) NOT NULL default '0',
  `avg_heal_count` int(11) NOT NULL default '0',
  `avg_counter_count` int(11) NOT NULL default '0',
  `avg_back_atk_count` int(11) NOT NULL default '0',
  `avg_union_hit_count` int(11) NOT NULL default '0',
  `avg_overkill_count` int(11) NOT NULL default '0',
  `avg_aerial_count` int(11) NOT NULL default '0',
  `avg_combo_count` int(11) NOT NULL default '0',
  `avg_attacked_count` int(11) NOT NULL default '0',
  `avg_deal_damage` int(11) NOT NULL default '0',
  `avg_technic` int(11) NOT NULL default '0',
  `avg_style` int(11) NOT NULL default '0',
  `avg_hit_penalty` int(11) NOT NULL default '0',
  `pvp_count` int(11) NOT NULL default '0',
  `win_point` int(11) NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `play_count` int(10) unsigned NOT NULL default '0',
  `play_time` int(10) unsigned NOT NULL default '0',
  `pvp_grade_ext_update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pvp_result
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for quest_category
-- ----------------------------
DROP TABLE IF EXISTS `quest_category`;
CREATE TABLE `quest_category` (
  `quest_idx` int(11) NOT NULL default '0',
  `quest_name` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`quest_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quest_category
-- ----------------------------
BEGIN;
INSERT INTO `quest_category` VALUES (1, 'ç¥žè–çš„å®ˆè­·è€…');
INSERT INTO `quest_category` VALUES (2, 'å¤©ç©ºä¹‹åŸŽé–‹æ‹“è€…');
INSERT INTO `quest_category` VALUES (3, 'çƒˆç„°å¾æœè€…');
INSERT INTO `quest_category` VALUES (4, 'ç²¾éˆçš„é­”æ³•é™£');
INSERT INTO `quest_category` VALUES (5, 'äººå¶çš„èª˜æƒ‘');
INSERT INTO `quest_category` VALUES (6, 'çŸ³å·¨äººçµ‚çµè€…');
INSERT INTO `quest_category` VALUES (7, 'å‰å¾€å¤©ç©ºä¹‹åŸŽ');
INSERT INTO `quest_category` VALUES (8, 'ç²¾éˆçš„é­”æ³•é™£');
INSERT INTO `quest_category` VALUES (9, 'å± é¾å‹‡å£«');
INSERT INTO `quest_category` VALUES (10, 'å·¨äººçµæ®ºè€…');
INSERT INTO `quest_category` VALUES (11, 'å†°å¿ƒä¹‹é­‚');
INSERT INTO `quest_category` VALUES (12, 'æ¯›çš®æœé›†å°ˆå®¶');
INSERT INTO `quest_category` VALUES (13, 'èžåŒ–çš„å†°é›ª');
INSERT INTO `quest_category` VALUES (14, 'æ­£ç¾©çš„ä½¿è€…');
INSERT INTO `quest_category` VALUES (15, 'ç´¢è¥¿é›…çš„ç½æ˜Ÿ');
INSERT INTO `quest_category` VALUES (16, 'å…‰ä¹‹åŸŽä¸» - è³½æ ¼å“ˆç‰¹');
INSERT INTO `quest_category` VALUES (17, 'ä¸æ»…çš„è³½æ ¼å“ˆç‰¹');
INSERT INTO `quest_category` VALUES (18, 'å…‰ä¹‹åŸŽä¸»çš„èª•ç”Ÿ');
INSERT INTO `quest_category` VALUES (19, 'å·´å¡çˆ¾çš„éºè¨€');
INSERT INTO `quest_category` VALUES (20, 'ç››è¼‰è¨˜æ†¶çš„æ°´æ™¶çƒ');
INSERT INTO `quest_category` VALUES (21, 'å‘æš—é»‘åŸŽé€²è»');
INSERT INTO `quest_category` VALUES (22, 'èª¿æŸ¥GBLç¥žæ®¿');
INSERT INTO `quest_category` VALUES (23, 'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€');
INSERT INTO `quest_category` VALUES (24, 'ç•°èƒ½ä¹‹å¥§ç§˜');
INSERT INTO `quest_category` VALUES (25, 'AT-5T é§•é§›é”äºº');
INSERT INTO `quest_category` VALUES (26, 'é›œæŠ€æ„›å¥½è€…');
INSERT INTO `quest_category` VALUES (27, 'èµ«äºžè¥¿æ–¯çš„é è¨€');
INSERT INTO `quest_category` VALUES (28, 'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 1');
INSERT INTO `quest_category` VALUES (29, 'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 2');
INSERT INTO `quest_category` VALUES (30, 'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 3');
INSERT INTO `quest_category` VALUES (31, 'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 4');
INSERT INTO `quest_category` VALUES (32, 'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 5');
INSERT INTO `quest_category` VALUES (33, 'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ 6');
INSERT INTO `quest_category` VALUES (34, 'è£½ä½œå¹²æ“¾ç™¼å°„å™¨ å®Œ');
INSERT INTO `quest_category` VALUES (35, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (36, 'ä»¥å¾©ä»‡çš„åç¾©');
INSERT INTO `quest_category` VALUES (37, 'ç¾…ç‰¹æ–¯çš„è¨˜æ†¶');
INSERT INTO `quest_category` VALUES (38, 'å­˜åœ¨çš„ä½¿å¾’');
INSERT INTO `quest_category` VALUES (39, 'å‰å¾€é˜¿æ³•åˆ©äºžè‡¨æ™‚ç‡Ÿåœ°');
INSERT INTO `quest_category` VALUES (40, 'æˆ°çˆ­çš„å±æ©Ÿ');
INSERT INTO `quest_category` VALUES (41, 'åŠ çˆ¾çš„æ¸¬è©¦');
INSERT INTO `quest_category` VALUES (42, 'å¸ƒèŠæ–¯çš„è¨—ä»˜');
INSERT INTO `quest_category` VALUES (43, 'æ‹¿åŽ»çµ¦è«¾é “');
INSERT INTO `quest_category` VALUES (44, 'å‚³æŸ“ç—…ç ”ç©¶');
INSERT INTO `quest_category` VALUES (45, 'å‚³é”è§£æ¯’è—¥');
INSERT INTO `quest_category` VALUES (46, 'é‚„æ²’å¤ªæ™š');
INSERT INTO `quest_category` VALUES (47, 'é˜»æ­¢æˆ°çˆ­ï¼');
INSERT INTO `quest_category` VALUES (48, 'é€šå‘æš—é»‘åŸŽä¹‹è·¯');
INSERT INTO `quest_category` VALUES (49, 'å¼·æ‚çš„è­‰æ˜Ž');
INSERT INTO `quest_category` VALUES (50, 'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€');
INSERT INTO `quest_category` VALUES (51, 'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€');
INSERT INTO `quest_category` VALUES (52, 'é è¨€å®¶èµ«äºžè¥¿æ–¯çš„é è¨€');
INSERT INTO `quest_category` VALUES (53, 'æ•£æ’­å‚³æŸ“ç—…çš„æ‘è£');
INSERT INTO `quest_category` VALUES (54, 'æ­£å¼çš„èª¿æŸ¥');
INSERT INTO `quest_category` VALUES (55, 'çŠ¬äººå“ˆå¤š');
INSERT INTO `quest_category` VALUES (56, 'ç›œè³Šåœ˜çš„é ­ç›®');
INSERT INTO `quest_category` VALUES (57, 'èˆ‡æš—ç²¾éˆç›¸åŒçš„è™•å¢ƒ');
INSERT INTO `quest_category` VALUES (58, 'å¾Œå‹¤è£œçµ¦éšŠé•·');
INSERT INTO `quest_category` VALUES (59, 'å…‰æ˜Žå®ˆè­·è€…');
INSERT INTO `quest_category` VALUES (60, 'ç„¡æƒ…çš„ä¼æœ¨å·¥');
INSERT INTO `quest_category` VALUES (61, 'ç« é­šæ•æ‰‹');
INSERT INTO `quest_category` VALUES (62, 'äº¡è€…å³½è°·');
INSERT INTO `quest_category` VALUES (63, 'é è¨€å®¶å¸ŒèŽ«å¨œ');
INSERT INTO `quest_category` VALUES (64, 'è¿·å¦„ä¹‹å¡”');
INSERT INTO `quest_category` VALUES (65, 'è¢«éºå¿˜è€…ä¹‹å¡”');
INSERT INTO `quest_category` VALUES (66, 'è¿·äº‚ä¹‹æ‘å“ˆç©†æž—');
INSERT INTO `quest_category` VALUES (67, 'è¿½æŸ¥ç¬›å­è²');
INSERT INTO `quest_category` VALUES (68, 'é¼ é ­äºº');
INSERT INTO `quest_category` VALUES (69, 'é­”ç¬›ä½¿è€…çš®ç‰¹');
INSERT INTO `quest_category` VALUES (70, 'èª¿æŸ¥æš—é»‘åŸŽ');
INSERT INTO `quest_category` VALUES (71, 'è¬¹æ…Žçš„æ±€é«˜');
INSERT INTO `quest_category` VALUES (72, 'æ²‰é»˜çš„äº¨æ™®åˆ©');
INSERT INTO `quest_category` VALUES (73, 'ç„¡é ­é¨Žå£«');
INSERT INTO `quest_category` VALUES (74, 'è©²å‰å¾€æš—é»‘åŸŽâ€¦');
INSERT INTO `quest_category` VALUES (75, 'æ•µå‹é›£åˆ†');
INSERT INTO `quest_category` VALUES (76, 'ç–‘æƒ‘');
INSERT INTO `quest_category` VALUES (77, 'ç‚ºäº†æš—ç²¾éˆçš„æœªä¾†');
INSERT INTO `quest_category` VALUES (78, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (79, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (80, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (81, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (82, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (83, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (84, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (85, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (86, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (87, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (88, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (89, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (90, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (92, 'å¤šå€‹çš„å¡”');
INSERT INTO `quest_category` VALUES (93, 'å¡å‹’ç‰¹è¿½æ“Šè€…');
INSERT INTO `quest_category` VALUES (94, 'æ‡¸è³žä»¤ - æ³¢ç¾…ä¸');
INSERT INTO `quest_category` VALUES (95, 'äº¡è€…å€‘');
INSERT INTO `quest_category` VALUES (96, 'é»‘æš—çš„è¨˜æ†¶');
INSERT INTO `quest_category` VALUES (97, 'æ¯€æ»…çš„ç—•è·¡');
INSERT INTO `quest_category` VALUES (98, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (99, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (100, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (101, 'æž—ç´æ–¯å¤§å”');
INSERT INTO `quest_category` VALUES (102, 'å†’éšªé–‹å§‹');
INSERT INTO `quest_category` VALUES (103, 'å™ªéŸ³å…¬å®³');
INSERT INTO `quest_category` VALUES (104, 'æµå‹•çš„å¢æž— æ ¼è˜­ä¹‹æ£®');
INSERT INTO `quest_category` VALUES (105, 'ç‰›é ­ç¸çš„ç‹‚æš´');
INSERT INTO `quest_category` VALUES (106, 'è®“äººæ„Ÿåˆ°é ­ç—›çš„è²“å¦–ç¾¤');
INSERT INTO `quest_category` VALUES (107, 'å‘¼å–šé–ƒé›»çš„å“¥å¸ƒæž—');
INSERT INTO `quest_category` VALUES (108, 'å‡±è«¾å“¥å¸ƒæž—çš„å‚³èªª');
INSERT INTO `quest_category` VALUES (109, 'åŽ»éŽå¢æž—æ·±è™•çš„äºº');
INSERT INTO `quest_category` VALUES (110, 'æ¯’çš„é¦™æ°£');
INSERT INTO `quest_category` VALUES (111, 'ç‰›é ­çŽ‹è–©çƒå¡”');
INSERT INTO `quest_category` VALUES (112, 'é‚ªæƒ¡æ°£æ¯çš„å‰å…†');
INSERT INTO `quest_category` VALUES (113, 'ç°è‰²çµæ™¶ç¢Žç‰‡');
INSERT INTO `quest_category` VALUES (114, 'é‚ªæƒ¡æ°£æ¯çš„ä¾†æ­·');
INSERT INTO `quest_category` VALUES (115, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (116, 'ç˜‹æŽ‰çš„é­”æ³•å¸«å…‹æ‹‰èµ«');
INSERT INTO `quest_category` VALUES (117, 'èª¿æŸ¥åŠ›é‡æ¸›å¼±çš„é­”æ³•é™£');
INSERT INTO `quest_category` VALUES (118, 'é€šç·ä»¤ - æ³¢ç¾…ä¸ (2/2)');
INSERT INTO `quest_category` VALUES (119, 'æ°´è½çŸ³å‡º');
INSERT INTO `quest_category` VALUES (120, 'äººå¶ä¹‹çŽ‹é“æ ¼è£¡');
INSERT INTO `quest_category` VALUES (121, 'çŸ³å·¨äººå¡”');
INSERT INTO `quest_category` VALUES (122, 'é»ƒé‡‘çŸ³å·¨äºº');
INSERT INTO `quest_category` VALUES (123, 'ç ”ç©¶çŸ³å·¨äºº');
INSERT INTO `quest_category` VALUES (124, 'é™¤æŽ‰æ™®æ‹‰å¡”å°¼çš„æ–¹æ³•');
INSERT INTO `quest_category` VALUES (125, 'åŸŽçš„å­˜åœ¨');
INSERT INTO `quest_category` VALUES (126, 'å…‰ä¹‹åŸŽä¸»çš„å®®æ®¿');
INSERT INTO `quest_category` VALUES (127, 'ç§»å‹•çš„è¿·å®®');
INSERT INTO `quest_category` VALUES (128, 'å°å°çŸ³');
INSERT INTO `quest_category` VALUES (129, 'æ­é–‹ç¥žç§˜é¢ç´—');
INSERT INTO `quest_category` VALUES (130, 'æ‡¸è³žä»¤ - ç‰›é ­æ¢°çŽ‹');
INSERT INTO `quest_category` VALUES (131, 'æš—ç²¾éˆçš„åˆ€æ³•');
INSERT INTO `quest_category` VALUES (132, 'è¿·å®®ä¸­çš„åŠå£«');
INSERT INTO `quest_category` VALUES (133, 'æ‰€æœ‰çš„è·¯èšç‚ºä¸€â€¦');
INSERT INTO `quest_category` VALUES (134, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (135, 'é€šç·ä»¤ - ç‰›é ­æ¢°çŽ‹ (2/2)');
INSERT INTO `quest_category` VALUES (136, 'æ‡¸è³žä»¤ - èŸ²çŽ‹æˆ®è ±');
INSERT INTO `quest_category` VALUES (137, 'é€šç·ä»¤ - èŸ²çŽ‹æˆ®è ± (2/2)');
INSERT INTO `quest_category` VALUES (138, 'æ‡¸è³žä»¤ - ç‹„ç‘žå‰çš„å¹»å½±');
INSERT INTO `quest_category` VALUES (139, 'é€šç·ä»¤ - ç‹„ç‘žå‰çš„å¹»å½±');
INSERT INTO `quest_category` VALUES (144, 'æ™ºæ…§èˆ‡é‡‘éŒ¢');
INSERT INTO `quest_category` VALUES (145, 'æ³¢è¿ªçˆ¾çš„æŒ‡ä»¤æ›¸');
INSERT INTO `quest_category` VALUES (146, 'æŽƒææ©Ÿå™¨äºº');
INSERT INTO `quest_category` VALUES (147, 'ç›®æ¨™è—å½±é¦¬è–©å–¬');
INSERT INTO `quest_category` VALUES (148, 'å°‹æ‰¾å›å¾’');
INSERT INTO `quest_category` VALUES (149, 'å®Œç¾Žçš„æ¼”æŠ€');
INSERT INTO `quest_category` VALUES (150, 'è±åŽšçš„çŽå‹µ');
INSERT INTO `quest_category` VALUES (151, 'åˆç†åˆ†é…');
INSERT INTO `quest_category` VALUES (152, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (153, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (154, 'å…‰ä¹‹èˆžæ‰‹é²');
INSERT INTO `quest_category` VALUES (155, 'ç²å¾—å¹²æ“¾ç™¼å°„å™¨');
INSERT INTO `quest_category` VALUES (156, 'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 1');
INSERT INTO `quest_category` VALUES (157, 'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 2');
INSERT INTO `quest_category` VALUES (158, 'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 3');
INSERT INTO `quest_category` VALUES (159, 'è¦ºé†’ - æœ«æ—¥å®ˆè­·è€… 4');
INSERT INTO `quest_category` VALUES (160, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (161, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (162, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (163, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (164, '');
INSERT INTO `quest_category` VALUES (165, 'é›ªå±±çš„å ±ç­” (2/2)');
INSERT INTO `quest_category` VALUES (166, 'ç•°æ¬¡å…ƒç¢Žç‰‡(é‡è¤‡)');
INSERT INTO `quest_category` VALUES (172, 'å¼·åŒ–æ­¦å™¨');
INSERT INTO `quest_category` VALUES (173, 'å°ˆé–€è·æ¥­ - æ”¶é›†ç„¡è‰²å°');
INSERT INTO `quest_category` VALUES (174, 'å°ˆé–€è·æ¥­ - æ”¶é›†è—è‰²å°');
INSERT INTO `quest_category` VALUES (175, 'å°ˆé–€è·æ¥­ - æ”¶é›†é»‘è‰²å°');
INSERT INTO `quest_category` VALUES (176, 'å°ˆé–€è·æ¥­ - æ”¶é›†ç´…è‰²å°');
INSERT INTO `quest_category` VALUES (177, 'å°ˆé–€è·æ¥­ - æ”¶é›†ç™½è‰²å°');
INSERT INTO `quest_category` VALUES (178, 'å°ˆé–€è·æ¥­ - å…Œæ›ä¸‹ç´šå…ƒ');
INSERT INTO `quest_category` VALUES (179, 'å°ˆé–€è·æ¥­ - å…Œæ›ä¸Šç´šå…ƒ');
INSERT INTO `quest_category` VALUES (180, 'å°ˆé–€è·æ¥­ - å…Œæ›å¹³å‡¡çš„');
INSERT INTO `quest_category` VALUES (181, 'å°ˆé–€è·æ¥­ - å…Œæ›æ·¬ç…‰çš„');
INSERT INTO `quest_category` VALUES (182, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (183, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (184, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (185, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (186, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (187, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (188, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (189, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (190, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (191, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (192, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (193, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (194, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (195, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (196, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (197, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (198, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (199, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (200, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (201, 'è¾›é”éºå¤±çš„æ§Œå­');
INSERT INTO `quest_category` VALUES (202, 'å¥‡æ€ªçŸ³é ­');
INSERT INTO `quest_category` VALUES (203, 'æš—é»‘é›·é³´å»¢å¢Ÿ');
INSERT INTO `quest_category` VALUES (204, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (205, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (206, 'å°ˆé–€è·æ¥­ - å…Œæ›å¼·éŸŒçš„');
INSERT INTO `quest_category` VALUES (207, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (208, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (209, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (210, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (211, 'å­¸ç¿’æŠ€èƒ½ 2');
INSERT INTO `quest_category` VALUES (212, 'æ‘æ°‘çš„å§”è¨— - ä¸€èˆ¬ä»»å‹™');
INSERT INTO `quest_category` VALUES (213, 'ç¨±è™Ÿç°¿ 1');
INSERT INTO `quest_category` VALUES (214, 'ç¨±è™Ÿç°¿ 2');
INSERT INTO `quest_category` VALUES (215, 'é­”æ³•å°å°é“å…·');
INSERT INTO `quest_category` VALUES (216, 'è§£é™¤é­”æ³•å°å°');
INSERT INTO `quest_category` VALUES (217, 'ç²å¾—ç„¡è‰²å°æ™¶å¡Šç¢Žç‰‡');
INSERT INTO `quest_category` VALUES (218, 'å†ç”Ÿé­”æ³•å°å°');
INSERT INTO `quest_category` VALUES (219, 'é­”æ³•å°å°è®Šæ›');
INSERT INTO `quest_category` VALUES (220, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (221, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (222, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (223, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (224, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (225, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (226, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (227, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (228, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (229, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (230, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (231, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (232, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (233, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (234, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (235, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (236, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (237, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (238, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (239, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (240, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (241, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (242, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (243, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (244, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (245, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (246, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (247, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (248, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (249, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (250, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (251, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (252, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (253, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (254, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (255, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (256, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (257, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (258, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (259, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (260, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (261, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (262, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (263, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (264, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (265, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (266, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (267, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (268, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (269, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (270, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (271, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (272, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (273, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (274, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (275, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (276, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (277, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (278, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (279, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (280, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (281, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (282, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (283, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (284, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (285, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (286, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (287, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (288, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (289, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (290, 'ç²¾ç…‰ç‚­');
INSERT INTO `quest_category` VALUES (291, 'å¤©ç©ºä¹‹æµ·çš„ç´”æ·¨æ°´');
INSERT INTO `quest_category` VALUES (292, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (293, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (294, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (295, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (296, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (297, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (298, 'å¤±çœ ç—‡');
INSERT INTO `quest_category` VALUES (299, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (300, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (301, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (302, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (303, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (304, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (305, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (306, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (307, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (308, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (309, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (310, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (311, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (312, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (313, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (314, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (315, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (316, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (317, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (318, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (319, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (320, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (321, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (322, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (323, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (324, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (325, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (326, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (327, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (328, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (329, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (330, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (331, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (332, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (333, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (334, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (335, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (336, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (337, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (338, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (339, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (340, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (341, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (342, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (343, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (344, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (345, 'éˆé­‚çš„æ‚²å‚·å¶å–Š');
INSERT INTO `quest_category` VALUES (346, 'è£½ä½œéŽ®é­‚é¦™');
INSERT INTO `quest_category` VALUES (347, 'å‚³éžéŽ®é­‚é¦™');
INSERT INTO `quest_category` VALUES (348, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (349, 'å‘é˜¿è²çˆ¾ç‰¹å­¸ç¿’æŠ€èƒ½ 1');
INSERT INTO `quest_category` VALUES (350, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (351, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (352, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (353, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (354, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (355, 'å‘é˜¿è²çˆ¾ç‰¹å­¸ç¿’æŠ€èƒ½ 2');
INSERT INTO `quest_category` VALUES (356, 'æ²’æœ‰é€å‡ºçš„ä¿¡');
INSERT INTO `quest_category` VALUES (357, 'å§”è¨—è§£è®€ä¿¡ä»¶');
INSERT INTO `quest_category` VALUES (358, 'å¤æ´›å…‹çš„æ¢ä»¶');
INSERT INTO `quest_category` VALUES (359, 'å‚³é”è¢«è§£è®€çš„ä¿¡ä»¶');
INSERT INTO `quest_category` VALUES (360, 'æœªè¢«ä¿®å¾©çš„é­”æ³•é™£');
INSERT INTO `quest_category` VALUES (361, 'è®Šå¼·çš„å¤©ç©ºä¹‹åŸŽæ°£æ¯');
INSERT INTO `quest_category` VALUES (362, 'æ‡¸ç©ºåŸŽçš„å­˜åœ¨');
INSERT INTO `quest_category` VALUES (363, 'æ‡¸ç©ºåŸŽçš„ç¬¬ä¸€å€‹é—œå£');
INSERT INTO `quest_category` VALUES (364, 'æ‡¸ç©ºåŸŽçš„ç¬¬äºŒå€‹é—œå£');
INSERT INTO `quest_category` VALUES (365, 'æ‡¸ç©ºåŸŽçš„ç¬¬ä¸‰å€‹é—œå£');
INSERT INTO `quest_category` VALUES (366, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (367, 'æ‡¸ç©ºåŸŽçš„æœ€å¾Œé—œå£');
INSERT INTO `quest_category` VALUES (368, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (369, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (370, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (371, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (372, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (373, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (374, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (375, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (376, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (377, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (378, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (379, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (380, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (381, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (382, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (383, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (384, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (385, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (386, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (387, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (388, '[å¤ä»£åœ°ä¸‹åŸŽ] èª°çš„æˆ°çˆ­');
INSERT INTO `quest_category` VALUES (389, '[å¤ä»£åœ°ä¸‹åŸŽ] åŠ çˆ¾çš„æƒ±');
INSERT INTO `quest_category` VALUES (390, '[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„');
INSERT INTO `quest_category` VALUES (391, '[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„');
INSERT INTO `quest_category` VALUES (392, '[å¤ä»£åœ°ä¸‹åŸŽ] è©¢å•è³½èŽ‰');
INSERT INTO `quest_category` VALUES (393, '[å¤ä»£åœ°ä¸‹åŸŽ] æ›¾ç¶“è¼ç…Œ');
INSERT INTO `quest_category` VALUES (394, '[å¤ä»£åœ°ä¸‹åŸŽ] ç‚ºäº†å—è‹¦');
INSERT INTO `quest_category` VALUES (395, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (396, '[å¤ä»£åœ°ä¸‹åŸŽ] å†æ‰¾è³½èŽ‰');
INSERT INTO `quest_category` VALUES (397, '[å¤ä»£åœ°ä¸‹åŸŽ] çŽ‹çš„äº”é¨Ž');
INSERT INTO `quest_category` VALUES (398, '[å¤ä»£åœ°ä¸‹åŸŽ] å‰å¤§çš„æ³¢');
INSERT INTO `quest_category` VALUES (399, '[å¤ä»£åœ°ä¸‹åŸŽ] é¢¨ä¹‹æ¸¦è˜‡');
INSERT INTO `quest_category` VALUES (400, '[å¤ä»£åœ°ä¸‹åŸŽ] å®ˆè­·ä¹‹é‚');
INSERT INTO `quest_category` VALUES (401, '[å¤ä»£åœ°ä¸‹åŸŽ] å†°ä¹‹åŸƒæ–¯');
INSERT INTO `quest_category` VALUES (402, '[å¤ä»£åœ°ä¸‹åŸŽ] ç‚Žä¹‹å¤æ‹‰');
INSERT INTO `quest_category` VALUES (403, '[å¤ä»£åœ°ä¸‹åŸŽ] å…‰ä¹‹æ²ƒå¾·');
INSERT INTO `quest_category` VALUES (404, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (408, '[å¤ä»£åœ°ä¸‹åŸŽ] å†æŽ¢çŽ‹çš„');
INSERT INTO `quest_category` VALUES (409, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (410, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (411, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (412, 'æˆ°çˆ­çš„ä¿®ç·´');
INSERT INTO `quest_category` VALUES (413, 'ç†”å²©ç©´çš„ä¿®ç·´');
INSERT INTO `quest_category` VALUES (414, 'å¸ƒèŠæ–¯ä¹Ÿç„¡æ³•é”åˆ°çš„éšŽ');
INSERT INTO `quest_category` VALUES (415, 'æž—ç´æ–¯çš„å¹«åŠ©');
INSERT INTO `quest_category` VALUES (416, 'å¤æ´›å…‹çš„è¨—ä»˜');
INSERT INTO `quest_category` VALUES (417, 'åŽŸè«’ï¼Ÿ å ±ä»‡ï¼Ÿ');
INSERT INTO `quest_category` VALUES (418, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (419, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸åœ‹é–“è«œ');
INSERT INTO `quest_category` VALUES (420, '[å¤ä»£åœ°ä¸‹åŸŽ] è©¢å•å¡å¦®');
INSERT INTO `quest_category` VALUES (421, '[å¤ä»£åœ°ä¸‹åŸŽ] å‘åœŸç½è«®');
INSERT INTO `quest_category` VALUES (422, '[å¤ä»£åœ°ä¸‹åŸŽ] é‹æ°£è©¦é©—');
INSERT INTO `quest_category` VALUES (423, '[å¤ä»£åœ°ä¸‹åŸŽ] åœŸç½äººå¶');
INSERT INTO `quest_category` VALUES (424, '[å¤ä»£åœ°ä¸‹åŸŽ] åšè‚¯äººå¶');
INSERT INTO `quest_category` VALUES (425, '[å¤è€]å—¯ï¼Ÿ åœŸç½ï¼Ÿ');
INSERT INTO `quest_category` VALUES (426, '[å¤ä»£åœ°ä¸‹åŸŽ] åšè‚¯çš„åŠ');
INSERT INTO `quest_category` VALUES (427, '[å¤ä»£åœ°ä¸‹åŸŽ] å†æ¬¡æŠ½é¸');
INSERT INTO `quest_category` VALUES (428, '[å¤ä»£åœ°ä¸‹åŸŽ] èª¿æŸ¥æ¯”çˆ¾');
INSERT INTO `quest_category` VALUES (429, '[å¤è€]å¸åœ‹çš„å¯¦é©—â€¦ é‚„');
INSERT INTO `quest_category` VALUES (430, '[å¤ä»£åœ°ä¸‹åŸŽ] å…ç–«è† å›Š');
INSERT INTO `quest_category` VALUES (431, '[å¤ä»£åœ°ä¸‹åŸŽ] æ”¶è³¼æ³°æ‹‰');
INSERT INTO `quest_category` VALUES (432, '[å¤ä»£åœ°ä¸‹åŸŽ] ä¸èƒ½å€’æµ');
INSERT INTO `quest_category` VALUES (433, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (434, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (435, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (436, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (437, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (438, 'å¤§ä½¿çš„ä¸‹è½');
INSERT INTO `quest_category` VALUES (439, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (440, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (441, 'è¢«æ¶èµ°çš„é‘°åŒ™');
INSERT INTO `quest_category` VALUES (442, 'èˆ‡é‚ªé¾å°æ±º');
INSERT INTO `quest_category` VALUES (443, 'é‚ªå¿µé«”');
INSERT INTO `quest_category` VALUES (444, 'è‚¢è§£çš„é‚ªé¾èº«é«”');
INSERT INTO `quest_category` VALUES (445, 'é‚ªé¾çš„å°å°');
INSERT INTO `quest_category` VALUES (446, 'è§£æ•‘æ‚²å‚·çš„éˆé­‚');
INSERT INTO `quest_category` VALUES (447, 'å¯©åˆ¤è€…é¦¬å¡žçˆ¾çš„æ—¥è¨˜ - ');
INSERT INTO `quest_category` VALUES (448, 'é¦¬å¡žçˆ¾ç•™ä¸‹çš„ç·šç´¢');
INSERT INTO `quest_category` VALUES (449, 'è¡€è…¥æ·¨åŒ–çš„ç´‹ç« ');
INSERT INTO `quest_category` VALUES (450, 'è¡€è…¥ä¼Šæ©');
INSERT INTO `quest_category` VALUES (451, 'å¯ç–‘çš„ä¿¡æ¯');
INSERT INTO `quest_category` VALUES (452, 'æˆ‘åœ¨å¤§é™¸çš„è‚šå­è£¡');
INSERT INTO `quest_category` VALUES (453, 'å¯©åˆ¤è€…é¦¬å¡žçˆ¾çš„æ—¥è¨˜ - ');
INSERT INTO `quest_category` VALUES (454, 'ç¾åœ¨ä½ å¯ä»¥å®‰å¿ƒçš„èµ°äº†');
INSERT INTO `quest_category` VALUES (455, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (456, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (457, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (458, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (459, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (460, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (461, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (462, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (487, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (488, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (489, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (490, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (491, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (492, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (493, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (494, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (495, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (496, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (497, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (498, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (499, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (500, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (501, 'é¬¼åŠå£«ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾');
INSERT INTO `quest_category` VALUES (502, 'é¬¼åŠå£«ä¹‹è·¯ - æ‰€è¬‚çš„è½‰');
INSERT INTO `quest_category` VALUES (503, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (504, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (505, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (506, 'é¬¼åŠå£«ä¹‹è·¯ - G.S.D');
INSERT INTO `quest_category` VALUES (507, 'é¬¼åŠå£«ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (508, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (509, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (510, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (511, 'æ ¼é¬¥å®¶ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾');
INSERT INTO `quest_category` VALUES (512, 'æ ¼é¬¥å®¶ä¹‹è·¯ - æ‰€è¬‚çš„è½‰');
INSERT INTO `quest_category` VALUES (513, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (514, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (515, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (516, 'æ ¼é¬¥å®¶ä¹‹è·¯ - é¢¨éœ‡');
INSERT INTO `quest_category` VALUES (517, 'æ ¼é¬¥å®¶ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (518, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (519, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (520, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (521, 'ç¥žæ§ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾çš„');
INSERT INTO `quest_category` VALUES (522, 'ç¥žæ§ä¹‹è·¯ - æ‰€è¬‚çš„è½‰è·');
INSERT INTO `quest_category` VALUES (523, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (524, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (525, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (526, 'ç¥žæ§ä¹‹è·¯ - å‡±èŽ‰');
INSERT INTO `quest_category` VALUES (527, 'ç¥žæ§æ‰‹ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (528, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (529, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (530, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (531, 'é­”æ³•å¸«ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾');
INSERT INTO `quest_category` VALUES (532, 'é­”æ³•å¸«ä¹‹è·¯ - æ‰€è¬‚çš„è½‰');
INSERT INTO `quest_category` VALUES (533, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (534, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (535, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (536, 'é­”æ³•å¸«ä¹‹è·¯ - èŽŽè˜­');
INSERT INTO `quest_category` VALUES (537, 'é­”æ³•å¸«ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (538, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (539, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (540, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (541, 'è–è·è€…ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾');
INSERT INTO `quest_category` VALUES (542, 'è–è·è€…ä¹‹è·¯ - æ‰€è¬‚çš„è½‰');
INSERT INTO `quest_category` VALUES (543, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (544, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (545, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (546, 'è–è·è€…ä¹‹è·¯ - æ­Œè˜­è’‚æ–¯');
INSERT INTO `quest_category` VALUES (547, 'è–è·è€…ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (548, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (549, 'æ¸›è¼•ä¿¡å¾’çš„ç—›è‹¦');
INSERT INTO `quest_category` VALUES (550, 'è«‹å¯¬æ•æˆ‘');
INSERT INTO `quest_category` VALUES (551, 'å¢æž—æŽ¢éšª');
INSERT INTO `quest_category` VALUES (552, 'è®Šç•°çš„æ¨¹ç²¾');
INSERT INTO `quest_category` VALUES (553, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (554, 'é»‘æš—çš„ç…‰ç„');
INSERT INTO `quest_category` VALUES (555, 'å‘ç„¡ç›¡çš„é»‘æš—å‰é€²');
INSERT INTO `quest_category` VALUES (556, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (557, 'å®¿æ•µ');
INSERT INTO `quest_category` VALUES (558, 'å¤©å¸·å·¨ç¸ä¸Šçš„æœ€é«˜é»ž');
INSERT INTO `quest_category` VALUES (559, 'ç ´å£žä¿¡å¾’çš„æ­¦å™¨');
INSERT INTO `quest_category` VALUES (560, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (561, 'æ‡¸è³žä»¤: å¯¶è—çµäººç´®å¡é');
INSERT INTO `quest_category` VALUES (562, 'å‰å¾€ç¬¬ä¸€è„Šæ¤Ž');
INSERT INTO `quest_category` VALUES (563, 'è§£æ”¾éˆé­‚');
INSERT INTO `quest_category` VALUES (564, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (565, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (566, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (567, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (568, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (569, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (570, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (571, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (572, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (573, 'åˆè¦‹ä½¿å¾’');
INSERT INTO `quest_category` VALUES (574, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (575, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (576, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (577, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (578, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (579, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (580, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (581, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (582, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (583, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (584, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (585, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (586, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (587, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (588, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (589, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (590, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (591, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (592, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (593, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (594, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (595, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (596, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (597, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (598, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (599, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (600, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (601, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (602, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (603, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (604, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (605, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (606, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (607, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (608, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (609, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (610, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (611, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (612, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (613, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (614, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (615, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (616, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (617, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (618, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (619, 'ç¥žæ§ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾çš„');
INSERT INTO `quest_category` VALUES (620, 'ç¥žæ§ä¹‹è·¯ - æ‰€è¬‚çš„è½‰è·');
INSERT INTO `quest_category` VALUES (621, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (622, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (623, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (624, 'ç¥žæ§ä¹‹è·¯ - å‡±èŽ‰');
INSERT INTO `quest_category` VALUES (625, 'ç¥žæ§æ‰‹ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (626, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (627, 'è®“æµæµªçš„çš„éˆé­‚å¾—åˆ°å®‰');
INSERT INTO `quest_category` VALUES (628, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (629, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (630, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³¢ç¾…ä¸çš„');
INSERT INTO `quest_category` VALUES (631, 'ç›œè³Šä¹‹è·¯ - èµ«é “ç‘ªçˆ¾çš„');
INSERT INTO `quest_category` VALUES (632, 'ç›œè³Šä¹‹è·¯ - æ‰€è¬‚çš„è½‰è·');
INSERT INTO `quest_category` VALUES (633, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (634, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (635, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (636, 'ç›œè³Šä¹‹è·¯ - ç±³å¥ˆç‰¹');
INSERT INTO `quest_category` VALUES (637, 'ç›œè³Šä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (638, '[å¤ä»£åœ°ä¸‹åŸŽ] çªç„¶ä¾†è¥²');
INSERT INTO `quest_category` VALUES (639, '[å¤ä»£åœ°ä¸‹åŸŽ] åŠ çˆ¾çš„æƒ±');
INSERT INTO `quest_category` VALUES (640, '[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„');
INSERT INTO `quest_category` VALUES (641, '[å¤ä»£åœ°ä¸‹åŸŽ] è¢«è©›å’’çš„');
INSERT INTO `quest_category` VALUES (642, '[å¤ä»£åœ°ä¸‹åŸŽ] è©¢å•è³½èŽ‰');
INSERT INTO `quest_category` VALUES (643, '[å¤ä»£åœ°ä¸‹åŸŽ] æ›¾ç¶“è¼ç…Œ');
INSERT INTO `quest_category` VALUES (644, '[å¤ä»£åœ°ä¸‹åŸŽ] ç‚ºäº†å—è‹¦');
INSERT INTO `quest_category` VALUES (645, '[å¤ä»£åœ°ä¸‹åŸŽ] å†æ‰¾è³½èŽ‰');
INSERT INTO `quest_category` VALUES (646, '[å¤ä»£åœ°ä¸‹åŸŽ] çŽ‹çš„äº”é¨Ž');
INSERT INTO `quest_category` VALUES (647, '[å¤ä»£åœ°ä¸‹åŸŽ] å‰å¤§çš„æ³¢');
INSERT INTO `quest_category` VALUES (648, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (649, 'ç©¿æˆ´è¼”åŠ©è£å‚™ (2/2)');
INSERT INTO `quest_category` VALUES (650, 'ä½©æˆ´é­”æ³•çŸ³ (2/2)');
INSERT INTO `quest_category` VALUES (651, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (652, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (653, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (654, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (655, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (656, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (657, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (658, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (659, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (660, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (661, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (662, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (663, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (664, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (665, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (666, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (667, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (668, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (669, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (670, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (671, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (672, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (673, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (674, 'ç©¿æˆ´è¼”åŠ©è£å‚™ (1/2)');
INSERT INTO `quest_category` VALUES (675, 'ä½©æˆ´é­”æ³•çŸ³ (1/2)');
INSERT INTO `quest_category` VALUES (676, 'ç©¿æˆ´è¼”åŠ©è£å‚™');
INSERT INTO `quest_category` VALUES (677, 'ä½©æˆ´é­”æ³•çŸ³');
INSERT INTO `quest_category` VALUES (678, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (679, 'æ™¶å¡Šçš„ç§˜å¯†');
INSERT INTO `quest_category` VALUES (680, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (681, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (682, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (683, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (684, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (685, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (686, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (687, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (688, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (689, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (690, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (691, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (692, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (693, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (694, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (695, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (696, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (697, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (698, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (699, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (700, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (701, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (702, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (703, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (704, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (705, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (706, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (707, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (708, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (709, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (710, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (711, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (712, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (713, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (714, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (715, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (716, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (717, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (718, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (719, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (720, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (721, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (722, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (723, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (724, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (725, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (726, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (727, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (728, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (729, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (730, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (731, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (732, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (733, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (734, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (735, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (736, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (737, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (738, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (739, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (740, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (741, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (742, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (743, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (744, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (745, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (746, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (747, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (748, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (749, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (750, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (751, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (752, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (753, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (754, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (755, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (756, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (757, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (758, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (759, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (760, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (761, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (762, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (763, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (764, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (765, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (766, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (767, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (768, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (769, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (770, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (771, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (772, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (773, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (774, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (775, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (776, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (777, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (778, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (779, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (780, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (781, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (782, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (783, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (784, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (785, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (786, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (787, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (788, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (789, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (790, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (791, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (792, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (793, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (794, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (795, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (796, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (797, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (798, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (799, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (800, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (801, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (802, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (803, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (804, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (805, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (806, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (807, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (808, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (809, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (810, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (811, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (812, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (813, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (814, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (815, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (816, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (817, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (818, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (819, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (820, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (821, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (822, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (823, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (824, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (825, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (826, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (827, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (828, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (829, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (830, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (831, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (832, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (833, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (834, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (835, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (836, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (837, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (838, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (839, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (840, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (841, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (842, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (843, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (844, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (845, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (846, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (847, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (848, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (849, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (850, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (851, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (852, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (853, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (854, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (855, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (856, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (857, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (858, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (859, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (860, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (861, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (862, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (863, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (864, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (865, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (866, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (867, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (868, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (869, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (870, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (871, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (872, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (873, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (874, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (875, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (876, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (877, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (878, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (879, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (880, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (881, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (882, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (883, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (884, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (885, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (886, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (887, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (888, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (889, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (890, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (891, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (892, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (893, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (894, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (895, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (896, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (897, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (898, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (899, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (900, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (901, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (902, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (903, 'è¦ºé†’ - é¾æ²é¢¨ 1');
INSERT INTO `quest_category` VALUES (904, 'è¦ºé†’ - é¾æ²é¢¨ 2');
INSERT INTO `quest_category` VALUES (905, 'è¦ºé†’ - é¾æ²é¢¨ 3');
INSERT INTO `quest_category` VALUES (906, 'è¦ºé†’ - é¾æ²é¢¨ 4');
INSERT INTO `quest_category` VALUES (907, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (908, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (909, 'è¦ºé†’ - æ¯’å§¬ 1');
INSERT INTO `quest_category` VALUES (910, 'è¦ºé†’ - æ¯’å§¬ 2');
INSERT INTO `quest_category` VALUES (911, 'è¦ºé†’ - æ¯’å§¬ 3');
INSERT INTO `quest_category` VALUES (912, 'è¦ºé†’ - æ¯’å§¬ 4');
INSERT INTO `quest_category` VALUES (913, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (914, 'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (1/4)');
INSERT INTO `quest_category` VALUES (915, 'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (2/4)');
INSERT INTO `quest_category` VALUES (916, 'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (3/4)');
INSERT INTO `quest_category` VALUES (917, 'è¦ºé†’ - ç™¾èŠ±ç¹šäº‚ (4/4)');
INSERT INTO `quest_category` VALUES (918, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (919, 'è¦ºé†’ - é¬¥é­‚ 1');
INSERT INTO `quest_category` VALUES (920, 'è¦ºé†’ - é¬¥é­‚ 2');
INSERT INTO `quest_category` VALUES (921, 'è¦ºé†’ - é¬¥é­‚ 3');
INSERT INTO `quest_category` VALUES (922, 'è¦ºé†’ - é¬¥é­‚ 4');
INSERT INTO `quest_category` VALUES (923, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (924, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (925, 'è¦ºé†’ - æ¯€æ»…è€… 1');
INSERT INTO `quest_category` VALUES (926, 'è¦ºé†’ - æ¯€æ»…è€… 2');
INSERT INTO `quest_category` VALUES (927, 'è¦ºé†’ - æ¯€æ»…è€… 3');
INSERT INTO `quest_category` VALUES (928, 'è¦ºé†’ - æ¯€æ»…è€… 4');
INSERT INTO `quest_category` VALUES (929, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (930, 'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 1');
INSERT INTO `quest_category` VALUES (931, 'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 2');
INSERT INTO `quest_category` VALUES (932, 'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 3');
INSERT INTO `quest_category` VALUES (933, 'è¦ºé†’ - äº¡å‘½ä¹‹å¾’ 4');
INSERT INTO `quest_category` VALUES (934, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (935, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (936, 'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 1');
INSERT INTO `quest_category` VALUES (937, 'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 2');
INSERT INTO `quest_category` VALUES (938, 'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 3');
INSERT INTO `quest_category` VALUES (939, 'è¦ºé†’ - æ©Ÿæ¢°æˆ°ç¥ž 4');
INSERT INTO `quest_category` VALUES (940, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (941, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (942, 'è¦ºé†’ - å°‡è» 1');
INSERT INTO `quest_category` VALUES (943, 'è¦ºé†’ - å°‡è» 2');
INSERT INTO `quest_category` VALUES (944, 'è¦ºé†’ - å°‡è» 3');
INSERT INTO `quest_category` VALUES (945, 'è¦ºé†’ - å°‡è» 4');
INSERT INTO `quest_category` VALUES (946, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (947, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (948, 'è¦ºé†’ - å¤§é­”å°Žå£« 1');
INSERT INTO `quest_category` VALUES (949, 'è¦ºé†’ - å¤§é­”å°Žå£« 2');
INSERT INTO `quest_category` VALUES (950, 'è¦ºé†’ - å¤§é­”å°Žå£« 3');
INSERT INTO `quest_category` VALUES (951, 'è¦ºé†’ - å¤§é­”å°Žå£« 4');
INSERT INTO `quest_category` VALUES (952, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (953, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (954, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (955, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (956, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (957, 'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 1');
INSERT INTO `quest_category` VALUES (958, 'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 2');
INSERT INTO `quest_category` VALUES (959, 'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 3');
INSERT INTO `quest_category` VALUES (960, 'è¦ºé†’ - æœˆä¹‹å¥³çš‡ 4');
INSERT INTO `quest_category` VALUES (961, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (962, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (963, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (964, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (965, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (966, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (967, 'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 1');
INSERT INTO `quest_category` VALUES (968, 'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 2');
INSERT INTO `quest_category` VALUES (969, 'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 3');
INSERT INTO `quest_category` VALUES (970, 'è¦ºé†’ - è²äºžå¨œé¬¥ç¥ž 4');
INSERT INTO `quest_category` VALUES (971, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (972, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (973, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (974, 'è¦ºé†’ - åŠè– 1');
INSERT INTO `quest_category` VALUES (975, 'è¦ºé†’ - åŠè– 2');
INSERT INTO `quest_category` VALUES (976, 'è¦ºé†’ - åŠè– 3');
INSERT INTO `quest_category` VALUES (977, 'è¦ºé†’ - åŠè– 4');
INSERT INTO `quest_category` VALUES (978, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (979, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (980, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (981, 'è¦ºé†’ - é­‚ç‹© 1');
INSERT INTO `quest_category` VALUES (982, 'è¦ºé†’ - é­‚ç‹© 2');
INSERT INTO `quest_category` VALUES (983, 'è¦ºé†’ - é­‚ç‹© 3');
INSERT INTO `quest_category` VALUES (984, 'è¦ºé†’ - é­‚ç‹© 4');
INSERT INTO `quest_category` VALUES (985, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (986, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (987, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (988, 'è¦ºé†’ - ç„è¡€é­”ç¥ž 1');
INSERT INTO `quest_category` VALUES (989, 'è¦ºé†’ - ç„è¡€é­”ç¥ž 2');
INSERT INTO `quest_category` VALUES (990, 'è¦ºé†’ - ç„è¡€é­”ç¥ž 3');
INSERT INTO `quest_category` VALUES (991, 'è¦ºé†’ - ç„è¡€é­”ç¥ž 4');
INSERT INTO `quest_category` VALUES (992, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (993, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (994, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (995, 'è¦ºé†’ - å¤§æš—é»‘å¤© 1');
INSERT INTO `quest_category` VALUES (996, 'è¦ºé†’ - å¤§æš—é»‘å¤© 2');
INSERT INTO `quest_category` VALUES (997, 'è¦ºé†’ - å¤§æš—é»‘å¤© 3');
INSERT INTO `quest_category` VALUES (998, 'è¦ºé†’ - å¤§æš—é»‘å¤© 4');
INSERT INTO `quest_category` VALUES (999, 'è½‰è· - (Class Change)');
INSERT INTO `quest_category` VALUES (1000, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1001, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1002, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1004, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1005, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1006, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1007, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1008, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1009, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1010, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1011, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1012, 'å­¸ç¿’æŠ€èƒ½ 1');
INSERT INTO `quest_category` VALUES (1013, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1015, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1016, 'è³½èŽ‰äºž');
INSERT INTO `quest_category` VALUES (1017, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1018, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1019, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1020, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1021, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1022, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1023, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1024, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1025, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1026, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1027, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1028, 'æ”¶é›†ç¾Žéº—çš„å°æ™¶å¡Š');
INSERT INTO `quest_category` VALUES (1029, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1030, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1031, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1032, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1033, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1034, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1035, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1036, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1037, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1038, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1039, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1040, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1041, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1042, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1043, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1044, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1045, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1046, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1047, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1048, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1049, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1052, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1053, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1054, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1055, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1056, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1057, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1058, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1059, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1060, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1061, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1062, 'æ–°èœå–® - å¾·é›·å…‹é¦™æª³');
INSERT INTO `quest_category` VALUES (1063, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1064, 'æ–°èœå–® - ç‰¹çƒ¤ç« é­šç‡’');
INSERT INTO `quest_category` VALUES (1065, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1066, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1067, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1068, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1069, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1070, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1071, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1072, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1073, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1074, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1075, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1076, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1077, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1078, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1079, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1080, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1081, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1082, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1083, 'ç¨®æ—çš„æ¦®è€€');
INSERT INTO `quest_category` VALUES (1084, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1085, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1086, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1087, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1088, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1089, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1090, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1091, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1092, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1093, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1094, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1095, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1096, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1097, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1098, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1099, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1100, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1101, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1102, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1103, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1104, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1105, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1106, 'G.S.Dçš„ä¿®ç·´ - å¿ƒçœ¼');
INSERT INTO `quest_category` VALUES (1107, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1108, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1109, 'é­”åŠ›æå– - èž¢çŸ³');
INSERT INTO `quest_category` VALUES (1110, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1111, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1112, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1113, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1114, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1115, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1116, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1117, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1118, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1119, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1120, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1121, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1122, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1123, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1124, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1125, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1126, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1127, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1128, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1129, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1130, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1131, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1132, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1133, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1134, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1135, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1136, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1137, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1138, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1139, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1140, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1141, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1142, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1143, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1144, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1145, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1148, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1149, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1151, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1153, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1154, 'é©…å‹•è¿·ä½ é‘½é ­');
INSERT INTO `quest_category` VALUES (1155, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1156, 'æ”¶é›†å»¢æ£„ç‰©å“');
INSERT INTO `quest_category` VALUES (1157, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1158, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1159, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1160, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1161, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1163, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1164, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1165, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1166, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1167, 'é­”åŠ›æå– - å°–æ™¶çŸ³');
INSERT INTO `quest_category` VALUES (1168, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1169, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1170, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1171, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1172, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1173, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1174, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1175, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1176, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1177, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1178, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1179, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1180, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1181, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1182, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1183, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1184, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1185, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1186, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1187, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1188, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1189, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1190, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1191, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1192, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1193, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1194, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1195, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1196, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1197, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1198, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1199, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1200, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1201, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1202, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1203, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1204, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1205, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1206, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1207, 'é­”åŠ›æå– - é¾äººä¹‹çœ¼');
INSERT INTO `quest_category` VALUES (1208, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1209, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1210, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1211, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1212, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1213, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1214, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1215, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1216, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1217, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1218, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1219, 'ç‰›é ­çš„éŠé‡‘è¡“è€ƒå¯Ÿ');
INSERT INTO `quest_category` VALUES (1220, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1221, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1222, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1223, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1224, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1225, 'é­”åŠ›æå– - é‹¯çŸ³');
INSERT INTO `quest_category` VALUES (1226, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1227, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1230, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1231, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1232, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1233, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1234, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1235, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1236, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1237, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1238, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1239, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1240, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1241, 'å‡±èŽ‰çš„è€ƒé©—');
INSERT INTO `quest_category` VALUES (1242, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1243, 'è£½ä½œæŸ¯å¡ç©†çš„å¹²æ“¾æ™¶ç‰‡');
INSERT INTO `quest_category` VALUES (1244, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1245, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1246, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1247, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1248, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1249, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1250, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1251, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1252, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1253, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1254, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1255, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1256, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1257, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1258, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1259, 'æ“Šé€€ç›œè³Šåœ˜');
INSERT INTO `quest_category` VALUES (1260, 'æ¶ˆæ»…ç›œè³Šåœ˜');
INSERT INTO `quest_category` VALUES (1261, 'ç›œè³Šåœ˜çš„ç‹—');
INSERT INTO `quest_category` VALUES (1262, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1263, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1264, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1265, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1266, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1267, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1268, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1269, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1270, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1271, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1272, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1273, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1274, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1275, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1276, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1277, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1278, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1279, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1280, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1281, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1282, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1283, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1284, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1285, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1286, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1287, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1288, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1289, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1290, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1291, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1292, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1293, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1294, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1295, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1296, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1297, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1298, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1299, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1300, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1301, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1302, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1303, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1304, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1305, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1306, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1307, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1308, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1309, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1310, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1311, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1312, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1313, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1314, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1315, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1316, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1317, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1318, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1319, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1320, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1321, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1322, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1323, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1324, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1325, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1326, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1327, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1328, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1329, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1330, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1331, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1332, '[å¤ä»£åœ°ä¸‹åŸŽ] ä¸æ»…ä¹‹çŽ‹');
INSERT INTO `quest_category` VALUES (1333, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1334, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1335, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1336, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1337, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1338, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1339, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1340, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1341, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1342, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1343, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1344, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1345, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1346, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1347, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1348, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1349, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1350, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1351, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1352, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1353, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1354, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1355, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1356, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1357, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1358, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1359, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1360, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1361, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1362, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1363, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1364, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1365, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1366, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1367, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1368, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1369, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1370, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1371, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1372, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1373, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1374, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1375, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1376, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1377, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1378, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1379, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1380, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1381, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1382, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1383, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1384, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1385, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1386, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1387, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1388, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1389, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1390, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1391, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1392, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1393, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1431, 'çµäººç§˜å¯†');
INSERT INTO `quest_category` VALUES (1432, 'è‰¾åŠ›æ–¯çš„æ±‚æ´');
INSERT INTO `quest_category` VALUES (1471, 'ç¾Žé£Ÿå®¶ - å¤æ´›å…‹');
INSERT INTO `quest_category` VALUES (1473, 'ç¾Žå‘³çš„ç« é­šè§¸é¬š');
INSERT INTO `quest_category` VALUES (1474, 'æ¬¡å“æ™¶ç‰‡çš„ç”¨é€”');
INSERT INTO `quest_category` VALUES (1475, 'å¤±è¹¤çš„å¤æ´›å…‹');
INSERT INTO `quest_category` VALUES (1476, 'çš‡å¸çš„å¤§ç†çŸ³åƒ');
INSERT INTO `quest_category` VALUES (1477, 'æ”¶é›†çŸ³åƒç¢Žå¡Š');
INSERT INTO `quest_category` VALUES (1478, 'å¤æ´›å…‹çš„æ”¯æ´');
INSERT INTO `quest_category` VALUES (1492, 'æ‚²é³´è‰ç¨®å­');
INSERT INTO `quest_category` VALUES (1493, 'æœ€å¥½çš„çµ²ç¶¢');
INSERT INTO `quest_category` VALUES (1531, 'é­”æ³•ç ”ç©¶ - å…‰å±¬æ€§ç¯‡');
INSERT INTO `quest_category` VALUES (1535, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1536, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1537, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1538, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1539, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1540, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1541, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1542, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1543, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1544, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1545, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1546, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1547, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1548, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1549, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1550, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1551, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1552, 'ç¦æ­¢çš„GBL æ•™çš„å¤æ–‡æ›¸');
INSERT INTO `quest_category` VALUES (1553, 'ä¸å¯ä»¥å­˜åœ¨çš„ç‰©å“');
INSERT INTO `quest_category` VALUES (1555, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1556, 'æ“ç¸±çŸ³å·¨äºº');
INSERT INTO `quest_category` VALUES (1557, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1558, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1559, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1560, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1561, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1562, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1563, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1564, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1565, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1566, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1567, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1568, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1569, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1570, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1571, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1572, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1573, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1574, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1575, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1576, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1577, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1578, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1579, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1580, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1581, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1582, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1583, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1584, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1585, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1586, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1587, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1588, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1589, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1590, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1591, 'å…‹å€«ç‰¹çš„æ·šæ°´');
INSERT INTO `quest_category` VALUES (1592, 'æ”¶é›†é‚ªå¿µé«”');
INSERT INTO `quest_category` VALUES (1593, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1594, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1595, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1596, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1597, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1598, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1599, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1600, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1601, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1602, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1603, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1604, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1605, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1606, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1607, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1608, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1609, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1610, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1611, 'å¥§è²èŽ‰äºžçš„å®¶å¯¶');
INSERT INTO `quest_category` VALUES (1612, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1613, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1614, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1615, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1616, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1617, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1618, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1619, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1620, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1621, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1622, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1623, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1624, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1625, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1626, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1627, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1628, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1629, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1630, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1631, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1632, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1633, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1634, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1635, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1636, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1637, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1638, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1639, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1640, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1641, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1642, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1643, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1644, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1645, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1646, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1647, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1648, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1649, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1650, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1651, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1652, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1653, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1654, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1655, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1656, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1657, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1658, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1659, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1660, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1661, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1662, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1663, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1664, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1665, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1666, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1667, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1668, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1669, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1670, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1671, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1672, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1673, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1674, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1675, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1676, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1677, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1678, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1679, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1689, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1690, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1691, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1692, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1693, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1694, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1695, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1696, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1697, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1698, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1699, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1700, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1701, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1702, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1703, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1704, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1705, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1706, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1707, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1708, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1709, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1710, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1711, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1712, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1713, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1714, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1715, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1716, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1717, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1718, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1719, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1720, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1721, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1722, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1723, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1724, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1725, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1726, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1727, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1728, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1729, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1730, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1731, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1732, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1733, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1734, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1735, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1736, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1737, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1738, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1739, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1740, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1741, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1742, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1743, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1744, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1745, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1746, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1747, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1748, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1749, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1750, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1751, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1752, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1753, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1761, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1764, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1765, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1766, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1767, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1768, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1769, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1770, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1771, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1772, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1773, 'ç·Šæ€¥ä»»å‹™');
INSERT INTO `quest_category` VALUES (1800, 'é­”æ³•å¸«ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1801, 'é­”æ³•å¸«ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾');
INSERT INTO `quest_category` VALUES (1802, 'é­”æ³•å¸«ä¹‹è·¯ - æ‰€è¬‚çš„è½‰');
INSERT INTO `quest_category` VALUES (1803, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (1804, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (1805, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (1806, 'é­”æ³•å¸«ä¹‹è·¯ - è‰¾éº—çµ²');
INSERT INTO `quest_category` VALUES (1807, 'é­”æ³•å¸«ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (1901, 'é¬¼åŠå£«ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1902, 'æ ¼é¬¥å®¶ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1903, 'ç¥žæ§ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1904, 'é­”æ³•å¸«ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1905, 'è–è·è€…ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1906, '[å¤ä»£åœ°ä¸‹åŸŽ] æœ€é«˜ç´šçš„');
INSERT INTO `quest_category` VALUES (1907, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (1908, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (1909, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (1910, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (1911, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (1915, 'æœ€é«˜ç´šçš„ææ–™æ³°æ‹‰çŸ³');
INSERT INTO `quest_category` VALUES (1916, 'ç¥žæ§ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1917, 'ç›œè³Šä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (1918, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2102, 'é€²åŒ– - è²»å°¼å…‹æ–¯');
INSERT INTO `quest_category` VALUES (2104, 'é€²åŒ– - è¯åˆ©å¼—');
INSERT INTO `quest_category` VALUES (2105, 'é€²åŒ– - å“ˆå¸•æ–¯');
INSERT INTO `quest_category` VALUES (2108, 'é€²åŒ– - å†°æ‹‰æ³¢æ‹‰æ–¯');
INSERT INTO `quest_category` VALUES (2109, 'é€²åŒ– - è²å‚‘å¤«ç‰¹ 1');
INSERT INTO `quest_category` VALUES (2110, 'é€²åŒ– - è²å‚‘å¤«ç‰¹ 2');
INSERT INTO `quest_category` VALUES (2111, 'é€²åŒ– - è²å‚‘å¤«ç‰¹ 3');
INSERT INTO `quest_category` VALUES (2112, 'é€²åŒ– - é‡‘è±¬');
INSERT INTO `quest_category` VALUES (2254, 'ç«ç„°çš„é›ç…‰ (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (2322, 'æœ¨ç½çš„æ‰“è³­ - é¾äººä¹‹å¡”');
INSERT INTO `quest_category` VALUES (2323, 'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ');
INSERT INTO `quest_category` VALUES (2324, 'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ');
INSERT INTO `quest_category` VALUES (2325, 'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ');
INSERT INTO `quest_category` VALUES (2326, 'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ');
INSERT INTO `quest_category` VALUES (2327, 'æœ¨ç½çš„æ‰“è³­ - çŸ³å·¨äººå¡”');
INSERT INTO `quest_category` VALUES (2328, 'æœ¨ç½çš„æ‰“è³­ - é»‘æš—çŽ„å»Š');
INSERT INTO `quest_category` VALUES (2329, 'æœ¨ç½çš„æ‰“è³­ - åŸŽä¸»å®®æ®¿');
INSERT INTO `quest_category` VALUES (2334, 'æ°´ç½çš„è³­æ³¨ - è¡€ç„');
INSERT INTO `quest_category` VALUES (2336, 'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ');
INSERT INTO `quest_category` VALUES (2339, 'æœ¨ç½çš„æ‰“è³­ - äººå¶çŽ„é—œ');
INSERT INTO `quest_category` VALUES (2354, 'å¤§åœ°å¯¶ç ');
INSERT INTO `quest_category` VALUES (2355, 'å¤©ç©ºå¯¶ç ');
INSERT INTO `quest_category` VALUES (2502, 'å·´çˆ¾é›·å¨œå¤§å¬¸');
INSERT INTO `quest_category` VALUES (2503, 'ç²å¾—ç­åœ–çš„èªå¯ 1');
INSERT INTO `quest_category` VALUES (2504, 'ç²å¾—ç­åœ–çš„èªå¯ 2');
INSERT INTO `quest_category` VALUES (2505, 'æ‹‰æ¯”ç´å“¥å“¥');
INSERT INTO `quest_category` VALUES (2506, 'å…”ç¥žçš„ä¿ä½‘');
INSERT INTO `quest_category` VALUES (2507, 'è£é¦¬å¥¶é…’çš„çš®è¢‹å­');
INSERT INTO `quest_category` VALUES (2508, 'æœ‰ç”¨çš„çš®é©');
INSERT INTO `quest_category` VALUES (2509, 'ç­åœ–æ—å¥³æˆ°å£«');
INSERT INTO `quest_category` VALUES (2511, 'ç­åœ–æ—çš„ä¾µç•¥');
INSERT INTO `quest_category` VALUES (2512, 'ç­åœ–æ—çš„å‰¯æ—é•·');
INSERT INTO `quest_category` VALUES (2514, '30å¹´å¾Œè¦ºé†’çš„å†°é¾æ–¯å¡è');
INSERT INTO `quest_category` VALUES (2515, 'ç­åœ–æ—çš„ç”±ä¾†');
INSERT INTO `quest_category` VALUES (2518, 'å°å­©çš„è²éŸ³');
INSERT INTO `quest_category` VALUES (2519, 'å­©å­å•Šâ€¦ æˆ‘çš„å­©å­..');
INSERT INTO `quest_category` VALUES (2520, 'æŸ¥ç†çš„èº«ä»½');
INSERT INTO `quest_category` VALUES (2521, 'å®ˆè­·æŸ¥ç†çš„å¿ƒè‡Ÿ');
INSERT INTO `quest_category` VALUES (2522, 'æ°¸æ†çš„æ‚²æ…˜å‘½é‹');
INSERT INTO `quest_category` VALUES (2523, 'æµé€çš„ç”Ÿå‘½');
INSERT INTO `quest_category` VALUES (2524, 'æŠŠæ‚²å‚·è—åœ¨å¿ƒè£¡');
INSERT INTO `quest_category` VALUES (2528, 'æ–¯å¡è¿ªå¥³çŽ‹çš„è¦ªç­†ä¿¡å‰¯');
INSERT INTO `quest_category` VALUES (2529, 'ç­åœ–æ—çš„ç¿’ä¿—');
INSERT INTO `quest_category` VALUES (2603, 'æ·±æ·µæ´¾å°Ep1 æ¼¸æ¼¸æµ®ç¾çš');
INSERT INTO `quest_category` VALUES (2610, 'æ·±æ·µæ´¾å°Ep2. é‚ªæƒ¡ä¾†è‡¨');
INSERT INTO `quest_category` VALUES (2613, 'æ·±æ·µæ´¾å°Ep3 - çƒé›²ç± ç½©');
INSERT INTO `quest_category` VALUES (2622, ' æ·±æ·µæ´¾å°Ep4 - å¤©ç•Œçš„è®');
INSERT INTO `quest_category` VALUES (2651, '[å¤ä»£åœ°ä¸‹åŸŽ] å¾æœæ‚²é³´');
INSERT INTO `quest_category` VALUES (2702, 'å°ˆé–€è·æ¥­-é­”æ³•è³¦äºˆå¸«');
INSERT INTO `quest_category` VALUES (2708, 'å°ˆé–€è·æ¥­-éŠé‡‘è¡“å¸«');
INSERT INTO `quest_category` VALUES (2710, 'å°ˆé–€è·æ¥­-è§£é«”å¸«');
INSERT INTO `quest_category` VALUES (2712, 'å°ˆé–€è·æ¥­-äººå½¢å¸«');
INSERT INTO `quest_category` VALUES (2809, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2810, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2811, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2812, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2813, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2814, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2815, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2816, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2817, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2818, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2819, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³é¦–');
INSERT INTO `quest_category` VALUES (2820, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³é¦–');
INSERT INTO `quest_category` VALUES (2821, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³é¦–');
INSERT INTO `quest_category` VALUES (2822, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (2823, '[å¤ä»£åœ°ä¸‹åŸŽ] æ³°æ‹‰çŸ³æ­¦');
INSERT INTO `quest_category` VALUES (3500, 'è¿½æ•é€ƒäº¡è€… 1');
INSERT INTO `quest_category` VALUES (3501, 'è¿½æ•é€ƒäº¡è€… 2 ');
INSERT INTO `quest_category` VALUES (3502, 'è¿½æ•é€ƒäº¡è€… 3');
INSERT INTO `quest_category` VALUES (3576, 'ææ‡¼ä¹‹æº (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (3588, 'èª¿æŸ¥æ­»äº¡ä¹‹å¡”');
INSERT INTO `quest_category` VALUES (3589, 'é è¨€å®¶å¸ŒèŽ«å¨œ');
INSERT INTO `quest_category` VALUES (3590, 'æ­»ç¥žèˆ‡å¸ŒèŽ«å¨œçš„é—œä¿‚');
INSERT INTO `quest_category` VALUES (3591, 'å¾æœæ­»äº¡ä¹‹å¡”');
INSERT INTO `quest_category` VALUES (3592, 'æ­»ç¥žå¾·èŠå¼—æ–¯çš„ç›®çš„');
INSERT INTO `quest_category` VALUES (3606, 'æ­»ç¥žçš„æ°£æ¯ - ç¥žç§˜çš„å½±');
INSERT INTO `quest_category` VALUES (3611, 'æ··æ²Œé­”çŸ³ç¢Žç‰‡ (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (3612, 'æ··æ²Œé­”çŸ³ (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (3700, 'å†°é¾çš„å¨è„…');
INSERT INTO `quest_category` VALUES (3701, 'å†°å¥³çŽ‹çš„å‚³èªª');
INSERT INTO `quest_category` VALUES (3702, '[å¤ä»£åœ°ä¸‹åŸŽ] çŽ‹çš„å†¤é­‚');
INSERT INTO `quest_category` VALUES (3703, 'æ¶ˆæ»…ç›œè³Šåœ˜');
INSERT INTO `quest_category` VALUES (3704, '[é å¤ - æ‹›å‹Ÿå…¬å‘Š: æ¯”çˆ¾');
INSERT INTO `quest_category` VALUES (3705, 'ç¬›è²â€¦ èˆ‡å¾©ä»‡');
INSERT INTO `quest_category` VALUES (3706, 'æš—é»‘åŸŽçš„ç„¡é ­é–€è¡›');
INSERT INTO `quest_category` VALUES (3707, '[å¤ä»£åœ°ä¸‹åŸŽ] å†æ¬¡å‚³ä¾†');
INSERT INTO `quest_category` VALUES (3711, 'é™¤æŽ‰é¬¼é­‚');
INSERT INTO `quest_category` VALUES (3712, 'ç ´å£žèœ˜è››åµ');
INSERT INTO `quest_category` VALUES (3713, '[ç•°ç•Œåœ°ä¸‹åŸŽ]æ”¶é›†å“¥å¸ƒæ');
INSERT INTO `quest_category` VALUES (3714, '[ç•°ç•Œåœ°ä¸‹åŸŽ]éŽåŽ»çš„å¤©ç');
INSERT INTO `quest_category` VALUES (3715, '[ç•°ç•Œåœ°ä¸‹åŸŽ]å¨è„…å¸åœ‹ç');
INSERT INTO `quest_category` VALUES (3716, 'å¬å‹Ÿæ½›å…¥å¥§å¾·è–©è¡—é ­çš„');
INSERT INTO `quest_category` VALUES (3717, 'éƒ½å¸‚çš„è¶…èƒ½åŠ›è€…');
INSERT INTO `quest_category` VALUES (3718, 'å¡å‹’ç‰¹çš„æš—è™Ÿæ–‡é¡žåž‹');
INSERT INTO `quest_category` VALUES (3719, '[å¤ä»£åœ°ä¸‹åŸŽ] çˆ†ç™¼ç˜Ÿç–«');
INSERT INTO `quest_category` VALUES (3720, 'å”åŒ : å¤œé–“è¥²æ“Šæˆ°');
INSERT INTO `quest_category` VALUES (3721, 'å”åŒ : è£œçµ¦ç·šé˜»æ–·æˆ°');
INSERT INTO `quest_category` VALUES (3722, 'å”åŒ : è¿½æ“Šæ®²æ»…æˆ°');
INSERT INTO `quest_category` VALUES (3723, 'å”åŒ : è¡€è´è¶ä¹‹èˆž');
INSERT INTO `quest_category` VALUES (3724, 'å”åŒ : ç–‘æƒ‘ä¹‹æ‘');
INSERT INTO `quest_category` VALUES (3725, 'å”åŒ : åˆ—è»Šä¸Šçš„æµ·è³Š');
INSERT INTO `quest_category` VALUES (3726, 'å”åŒ : å¥ªå›žè¥¿éƒ¨ç·š');
INSERT INTO `quest_category` VALUES (3727, 'é›¶ä»¶åç¨±ï¼š GT-203');
INSERT INTO `quest_category` VALUES (3728, 'æµ·è³Šå€‘çš„è²¡ç”¢');
INSERT INTO `quest_category` VALUES (3801, 'å¥§è²åˆ©äºžçš„ä¿¡');
INSERT INTO `quest_category` VALUES (3802, 'G.B.L é˜¿æ‹‰å¾·åˆ†éƒ¨');
INSERT INTO `quest_category` VALUES (3803, 'é­”æ‰‹æ²’æœ‰ä¼¸éŽä¾†ï¼Ÿ');
INSERT INTO `quest_category` VALUES (3804, 'æ‰€æœ‰çš„ä¸€åˆ‡éƒ½æ˜¯é¨™å±€');
INSERT INTO `quest_category` VALUES (3805, 'G.B.L é˜¿æ‹‰å¾·åˆ†éƒ¨');
INSERT INTO `quest_category` VALUES (3806, 'G.B.L ç ”ç©¶æ‰€');
INSERT INTO `quest_category` VALUES (3808, 'æ½›å…¥æ€ªç‰©ç ”ç©¶æ‰€');
INSERT INTO `quest_category` VALUES (3809, 'G.B.L ç ”ç©¶æ‰€çš„ç ”ç©¶è³‡æ–™');
INSERT INTO `quest_category` VALUES (3810, 'å¯¦é©—ç‰©32-4Î²');
INSERT INTO `quest_category` VALUES (3811, 'å¸Œç‰¹æ‹‰å…‹çš„ææ€–');
INSERT INTO `quest_category` VALUES (3812, 'ç ´å£žå¯¦é©—å·¥å…·ï¼');
INSERT INTO `quest_category` VALUES (3813, 'è®“å¸Œç‰¹æ‹‰å…‹å»¢æ£„å§');
INSERT INTO `quest_category` VALUES (3814, 'ç¾…ç‰¹æ–¯çš„åµé‚„å­˜åœ¨ï¼');
INSERT INTO `quest_category` VALUES (3815, 'ç ´å£žç¾…ç‰¹æ–¯çš„åµçš„æ–¹æ³•');
INSERT INTO `quest_category` VALUES (3816, 'è£èƒƒæ¶²çš„å®¹å™¨');
INSERT INTO `quest_category` VALUES (3819, 'ç ´å£žç¾…ç‰¹æ–¯çš„åµ');
INSERT INTO `quest_category` VALUES (3820, 'è¡€è…¥æ·¨åŒ–çªæ“ŠéšŠé•·ç­å‚‘');
INSERT INTO `quest_category` VALUES (3821, 'æ“Šæ•—ç­å‚‘é‡Œæ–¯');
INSERT INTO `quest_category` VALUES (3823, 'çè²´çš„å¤æ–‡æ›¸');
INSERT INTO `quest_category` VALUES (3824, 'æ”¶é›†GBLæ•™å‡é¢');
INSERT INTO `quest_category` VALUES (3825, 'ç ´å£žGBLå·¨åƒ');
INSERT INTO `quest_category` VALUES (3826, 'ç¥žç§˜çš„å¤ä»£æ›¸ç±');
INSERT INTO `quest_category` VALUES (3827, 'ç‰¹æ®Šçš„æ´—ç¢—å·¥å…·');
INSERT INTO `quest_category` VALUES (3828, 'ç ´å£žå¯¦é©—ç‰©TLF-3');
INSERT INTO `quest_category` VALUES (3829, 'é™¤æŽ‰è²è£¡æ–¯');
INSERT INTO `quest_category` VALUES (3901, 'å‰å¾€å¥§å¾·è–©çš„é“è·¯');
INSERT INTO `quest_category` VALUES (3902, 'éœ€è¦å“¥å¸ƒæž—çš„å”åŠ©');
INSERT INTO `quest_category` VALUES (3903, 'åžƒåœ¾å †ä¸­çš„éŠä¿ ');
INSERT INTO `quest_category` VALUES (3904, 'å¥§å¾·è–©è¡—é ­');
INSERT INTO `quest_category` VALUES (3905, 'éµè“‹');
INSERT INTO `quest_category` VALUES (3906, 'ç«ç®­äºº');
INSERT INTO `quest_category` VALUES (3907, 'èŽ«ç´äº¨çš„ç§˜å¯†');
INSERT INTO `quest_category` VALUES (3908, 'å¾·é­¯ä¼Šç±³äºž');
INSERT INTO `quest_category` VALUES (3909, 'èŸ²ä¹‹ç‹„æ¡‘');
INSERT INTO `quest_category` VALUES (3910, 'å¿µå‹•åŠ›è€…éº¥ç‘ŸÂ·èŽ«ç´äº¨');
INSERT INTO `quest_category` VALUES (3911, 'è©­ç•°çš„ç‰©é«”');
INSERT INTO `quest_category` VALUES (3914, 'ç©¶ç«Ÿæ˜¯èª°æ“ä½œèƒ½åŠ›å¥½ï¼Ÿ');
INSERT INTO `quest_category` VALUES (3915, 'æ®Šæ­»æˆ°');
INSERT INTO `quest_category` VALUES (3918, 'æ­£é¢äº¤é‹’');
INSERT INTO `quest_category` VALUES (3922, 'è‰¾éº—çµ²å–œæ­¡æ›¸');
INSERT INTO `quest_category` VALUES (4000, 'ç‚ºäº†æ›´å¥½çš„æ˜Žå¤©');
INSERT INTO `quest_category` VALUES (4001, 'è«‹æ±‚');
INSERT INTO `quest_category` VALUES (4002, 'é·¹çœ¼çš„è€ƒé©—');
INSERT INTO `quest_category` VALUES (4003, 'ç‘ªæ‹‰æ ¼çš„è€ƒé©—');
INSERT INTO `quest_category` VALUES (4004, 'æ‹‰è£¡çš„è€ƒé©—');
INSERT INTO `quest_category` VALUES (4005, 'ç¾ŽæœèŽŽçš„è€ƒé©—');
INSERT INTO `quest_category` VALUES (4006, 'é›€ç‘Ÿçš„æŒ‘æˆ°');
INSERT INTO `quest_category` VALUES (4007, 'è¢«é˜»æ“‹çš„è·¯');
INSERT INTO `quest_category` VALUES (4008, 'ç°è¡£åŠå£«');
INSERT INTO `quest_category` VALUES (4009, 'æ•æ³°çš„æ‰“è³­');
INSERT INTO `quest_category` VALUES (4010, 'é›·è«¾çš„æ‰“è³­');
INSERT INTO `quest_category` VALUES (4011, 'å››æˆ°å£«');
INSERT INTO `quest_category` VALUES (4012, 'èˆ‡é›€ç‘Ÿçš„è¼ƒé‡');
INSERT INTO `quest_category` VALUES (4013, 'èˆ‡å¸ƒè¬åŠ å°ç·´');
INSERT INTO `quest_category` VALUES (4014, 'è‹±é›„çš„è©¦ç·´');
INSERT INTO `quest_category` VALUES (4015, 'ç¶­ç´æ–¯å¥³ç¥ž');
INSERT INTO `quest_category` VALUES (4016, 'å¤è€çš„ç¾Šçš®ç´™');
INSERT INTO `quest_category` VALUES (4017, 'å½é€ æ–‡æ›¸');
INSERT INTO `quest_category` VALUES (4018, 'GBLå¥³ç¥žæ®¿');
INSERT INTO `quest_category` VALUES (4019, 'å¥³ç¥žçš„è©›å’’');
INSERT INTO `quest_category` VALUES (4020, 'è§£é™¤è©›å’’');
INSERT INTO `quest_category` VALUES (4021, 'è©›å’’çš„çµæ™¶');
INSERT INTO `quest_category` VALUES (4022, 'æ·¨åŒ–å¥³ç¥žæ®¿');
INSERT INTO `quest_category` VALUES (4023, 'çµäººç§˜å¯†2');
INSERT INTO `quest_category` VALUES (4024, 'å¤©å¸·å·¨ç¸çš„ç”Ÿæ…‹ç³»çµ±èª¿');
INSERT INTO `quest_category` VALUES (4025, 'æœ¨æœ¬æ¤ç‰©çš„æ¨£æœ¬ 1');
INSERT INTO `quest_category` VALUES (4026, 'æœ¨æœ¬æ¤ç‰©çš„æ¨£æœ¬ 2');
INSERT INTO `quest_category` VALUES (4027, 'æŽ¡é›†å¼—è³´çˆ¾çš„è¡€æ¶²');
INSERT INTO `quest_category` VALUES (4028, 'ä½¿å¾’é€ æˆçš„å½±éŸ¿');
INSERT INTO `quest_category` VALUES (4029, 'ç¹æ®–çš„ä¸»çŠ¯');
INSERT INTO `quest_category` VALUES (4030, 'æ¸…æŽƒGBLä¿¡å¾’é¤˜é»¨');
INSERT INTO `quest_category` VALUES (4031, 'å¤©å¸·å·¨ç¸çš„ç”Ÿæ…‹ç³»çµ±èª¿');
INSERT INTO `quest_category` VALUES (4032, 'çš‡å¥³çš„ä¸‹è½');
INSERT INTO `quest_category` VALUES (4033, 'ä½ çŸ¥é“æµ·è³Šåœ˜ï¼Ÿ');
INSERT INTO `quest_category` VALUES (4034, 'å‘é¦¬ç³å ±å‘Š');
INSERT INTO `quest_category` VALUES (4035, 'ç²å¾—æµ·è³Šä¿¡è³´çš„æ–¹æ³•');
INSERT INTO `quest_category` VALUES (4036, 'éŒ¢è²·ä¾†çš„ä¿¡è³´');
INSERT INTO `quest_category` VALUES (4037, 'çš‡å¥³åœ¨è¥¿éƒ¨ç„¡æ³•åœ°å¸¶â€¦');
INSERT INTO `quest_category` VALUES (4038, 'é–‹å‘ç„¡æ³•åœ°å¸¶çš„æµ·ä¸Šåˆ—');
INSERT INTO `quest_category` VALUES (4039, 'éœ§ä¹‹éƒ½æµ·ä¼ŠèŒ²');
INSERT INTO `quest_category` VALUES (4040, 'é™¤æŽ‰å®ˆè¡›');
INSERT INTO `quest_category` VALUES (4041, 'çš‡å¥³åœ¨å“ªè£¡ï¼Ÿ');
INSERT INTO `quest_category` VALUES (4042, 'æ–¯æç­æ™®æ‹‰ä¸');
INSERT INTO `quest_category` VALUES (4043, 'æ¢…çˆ¾æ–‡Â·é‡Œå…‹ç‰¹çš„ç‰¹è£½å');
INSERT INTO `quest_category` VALUES (4044, 'çš‡å¥³çš„ä¸‹è½');
INSERT INTO `quest_category` VALUES (4045, 'ç‹™æ“Šçž„æº–é¡');
INSERT INTO `quest_category` VALUES (4047, 'å”åŒ : éœ§ä¹‹éƒ½æµ·ä¼ŠèŒ²');
INSERT INTO `quest_category` VALUES (4048, 'æ”¶é›†å‹³ç« ');
INSERT INTO `quest_category` VALUES (4049, 'æ±ºæˆ°');
INSERT INTO `quest_category` VALUES (4050, 'å¿…æ­»çš„æŠ—æˆ°');
INSERT INTO `quest_category` VALUES (4051, 'èˆŠæ™‚ä»£çš„çµ‚çµ');
INSERT INTO `quest_category` VALUES (4052, 'è€ç•¶ç›Šå£¯å“ˆæ–¯');
INSERT INTO `quest_category` VALUES (4053, 'å‚³èªªçš„çµæŸ');
INSERT INTO `quest_category` VALUES (4054, 'é»Žæ˜Žä¹‹çœ¼çš„å®‰ç¥–è³½å¼—');
INSERT INTO `quest_category` VALUES (4055, 'å®‰ç¥–â€§è³½å¼—çš„æ®˜å½±');
INSERT INTO `quest_category` VALUES (4056, 'æ”¶é›†å¡å‹’ç‰¹æƒ…å ±');
INSERT INTO `quest_category` VALUES (4057, 'è‡ªä½œè‡ªå—');
INSERT INTO `quest_category` VALUES (4058, 'ä¸å…±æˆ´å¤©');
INSERT INTO `quest_category` VALUES (4059, 'è‡¥è–ªå˜—è†½');
INSERT INTO `quest_category` VALUES (4060, 'äº‹å¿…æ­¸æ­£');
INSERT INTO `quest_category` VALUES (4061, 'ä¹¾å¤ä¸€æ“²');
INSERT INTO `quest_category` VALUES (4062, 'åŽ»å¡å‹’ç‰¹å¸ä»¤éƒ¨â€¦ã€‚');
INSERT INTO `quest_category` VALUES (4065, 'è½‰è· - å…ƒç´ çˆ†ç ´å¸«ï¼ˆEle');
INSERT INTO `quest_category` VALUES (4068, 'è½‰è· - å†°çµå¸«ï¼ˆGlacial M');
INSERT INTO `quest_category` VALUES (4069, 'é’é¾å¤§æœƒ');
INSERT INTO `quest_category` VALUES (4070, 'å–å¾—é’é¾å¤§æœƒåƒåŠ è³‡æ ¼');
INSERT INTO `quest_category` VALUES (4071, 'é’é¾å¤§æœƒå„ªå‹');
INSERT INTO `quest_category` VALUES (4072, 'é’é¾è³‡æ ¼ï¼ˆé‡è¤‡ï¼‰');
INSERT INTO `quest_category` VALUES (4073, 'è—è‰²å¿µæ°£');
INSERT INTO `quest_category` VALUES (4074, 'é»‘æš—å¿µæ°£');
INSERT INTO `quest_category` VALUES (4076, 'ç©¿è¶Šç´…è‰²æ£®æž—');
INSERT INTO `quest_category` VALUES (4077, 'éµäººä¹‹åŸŽä¿®å—');
INSERT INTO `quest_category` VALUES (4078, 'é»ƒé¾å¤§æœƒ');
INSERT INTO `quest_category` VALUES (4079, 'å–å¾—é»ƒé¾å¤§æœƒåƒåŠ è³‡æ ¼');
INSERT INTO `quest_category` VALUES (4080, 'é»ƒé¾å¤§æœƒå„ªå‹');
INSERT INTO `quest_category` VALUES (4081, 'é»ƒé¾çš„è³‡æ ¼ï¼ˆé‡è¤‡ï¼‰');
INSERT INTO `quest_category` VALUES (4082, 'è¦ºé†’ - é­”çš‡ 1');
INSERT INTO `quest_category` VALUES (4083, 'è¦ºé†’ - é­”çš‡ 2');
INSERT INTO `quest_category` VALUES (4084, 'è¦ºé†’ - é­”çš‡ 3');
INSERT INTO `quest_category` VALUES (4085, 'è¦ºé†’ - é­”çš‡ 4');
INSERT INTO `quest_category` VALUES (4086, 'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 1');
INSERT INTO `quest_category` VALUES (4087, 'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 2');
INSERT INTO `quest_category` VALUES (4088, 'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 3');
INSERT INTO `quest_category` VALUES (4089, 'è¦ºé†’ - å†°éœœä¹‹å¿ƒ 4');
INSERT INTO `quest_category` VALUES (4090, 'å‹‡è€… - ç•°æ¬¡å…ƒè£‚ç¸«çš„æ—…');
INSERT INTO `quest_category` VALUES (4091, 'å‹‡è€… - å£“åˆ¶ç•°ç•Œæ°£æ¯çš„');
INSERT INTO `quest_category` VALUES (4092, 'å‹‡è€… - è˜Šå«ç•°ç•Œæ°£æ¯çš„');
INSERT INTO `quest_category` VALUES (4093, 'å‹‡è€… - é‡é ˜è˜Šå«ç•°ç•Œæ°£');
INSERT INTO `quest_category` VALUES (4094, 'å‹‡è€… - è˜Šå«ç•°ç•Œæ°£æ¯çš„');
INSERT INTO `quest_category` VALUES (4095, 'å‹‡è€… - é‡é ˜è˜Šå«ç•°ç•Œæ°£');
INSERT INTO `quest_category` VALUES (4099, 'ç´«è‰²å¿µæ°£');
INSERT INTO `quest_category` VALUES (4100, 'é‡‘è‰²å¿µæ°£');
INSERT INTO `quest_category` VALUES (4101, 'ç°è¡£åŠå£«');
INSERT INTO `quest_category` VALUES (4102, 'æŽ¢ç´¢');
INSERT INTO `quest_category` VALUES (4103, 'é…’é¤¨çš„æš´å‹•');
INSERT INTO `quest_category` VALUES (4104, 'èµ«é “å°¼æ–¯å¹«çš„éœåˆ©å¥§');
INSERT INTO `quest_category` VALUES (4105, 'ç›®æ“Šè€…');
INSERT INTO `quest_category` VALUES (4106, 'å†æœƒçš„ç´„å®š');
INSERT INTO `quest_category` VALUES (4107, 'è³’å¸³');
INSERT INTO `quest_category` VALUES (4108, 'é™¤æŽ‰æƒ¡æ£');
INSERT INTO `quest_category` VALUES (4109, 'éœåˆ©å¥§çš„æŒ‘æˆ°');
INSERT INTO `quest_category` VALUES (4110, 'èµ«é “å°¼æ–¯å¹«çš„è¥²æ“Š');
INSERT INTO `quest_category` VALUES (4111, 'æ”¶é›†éš±ç´„ç™¼å…‰çš„æ›²çŽ‰');
INSERT INTO `quest_category` VALUES (4112, 'æ”¶é›†è¯éº—çš„æ›²çŽ‰');
INSERT INTO `quest_category` VALUES (4201, 'å±æ©Ÿçš„æ ¹ç‰¹');
INSERT INTO `quest_category` VALUES (4202, 'åµæŸ¥æ ¹ç‰¹é€±é‚Š');
INSERT INTO `quest_category` VALUES (4203, 'æ‹¯æ•‘è¢«ä¿˜çš„å†’éšªå®¶');
INSERT INTO `quest_category` VALUES (4204, 'é¦¬ç³çš„å‘¼å–š');
INSERT INTO `quest_category` VALUES (4205, 'ç¶­æŒæ²»å®‰');
INSERT INTO `quest_category` VALUES (4206, 'ç ´è§£æš—è™Ÿ - 1');
INSERT INTO `quest_category` VALUES (4207, 'é˜»æ­¢ç¸±ç«å…µ');
INSERT INTO `quest_category` VALUES (4208, 'è¢«ç¨±ç‚ºã€Œæ²™å½±ã€çš„ç”·äºº');
INSERT INTO `quest_category` VALUES (4209, 'æ•™è¨“ç¸±ç«çŠ¯');
INSERT INTO `quest_category` VALUES (4210, 'å‘æ¾¤ä¸Â·æ–½å¥ˆå¾·å ±å‘Š');
INSERT INTO `quest_category` VALUES (4212, 'å–§é¬§çš„åŸŽå¤–');
INSERT INTO `quest_category` VALUES (4213, 'é˜»æ­¢æ©Ÿå‹•éšŠå…¥ä¾µ');
INSERT INTO `quest_category` VALUES (4214, 'ç ´è§£æš—è™Ÿ - 2');
INSERT INTO `quest_category` VALUES (4215, 'æš—è™Ÿå‚³éžçš„è³‡è¨Š');
INSERT INTO `quest_category` VALUES (4216, 'æ“¾äº‚è½Ÿç‚¸ç›®æ¨™');
INSERT INTO `quest_category` VALUES (4217, 'é˜»æ­¢åŸ‹è¨­åœ°é›·');
INSERT INTO `quest_category` VALUES (4218, 'æ®²æ»…æ©Ÿå‹•éšŠå“¡');
INSERT INTO `quest_category` VALUES (4220, 'è¢«æ”¹é€ çš„å¡å‹’ç‰¹å£«å…µ');
INSERT INTO `quest_category` VALUES (4221, 'æŽŒæ¡å¡å‹’ç‰¹çµ„ç¹”çš„è³‡è¨Š');
INSERT INTO `quest_category` VALUES (4222, 'ç¶­ä¿®åŸŽç‰†');
INSERT INTO `quest_category` VALUES (4224, 'ç²å¾—æ€¥æ•‘ç®±');
INSERT INTO `quest_category` VALUES (4225, 'æš´é¢¨é›·å…„å¼Ÿï¼Ÿ');
INSERT INTO `quest_category` VALUES (4226, 'è§£é«”æ‘©æ‰˜è»Š');
INSERT INTO `quest_category` VALUES (4227, 'é©…é€ç¸±ç«å…µ');
INSERT INTO `quest_category` VALUES (4228, 'ç–¾é¢¨ä¹‹è˜‡é›·å¾·');
INSERT INTO `quest_category` VALUES (4257, 'æ¾¤ä¸Â·æ–½å¥ˆå¾·çš„è«‹æ±‚');
INSERT INTO `quest_category` VALUES (4258, 'éºå¤±çš„AT-5T æ­¥è¡Œè€…');
INSERT INTO `quest_category` VALUES (4259, 'AT-5T æ­¥è¡Œè€…çš„æ“ä½œæ–¹æ³•');
INSERT INTO `quest_category` VALUES (4260, 'å›žæ”¶AT-5T æ­¥è¡Œè€…');
INSERT INTO `quest_category` VALUES (4261, 'çš‡éƒ½è»çš„ç”Ÿæ©Ÿ');
INSERT INTO `quest_category` VALUES (4262, 'æ¶ˆæ»…åŒ—é–€çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (4263, 'å¡å‹’ç‰¹çš„æŒ‡ä»¤æ›¸');
INSERT INTO `quest_category` VALUES (4264, 'çªæ“ŠéšŠé•·å·¦å€«');
INSERT INTO `quest_category` VALUES (4265, 'å¡å‹’ç‰¹è«œå ±å“¡');
INSERT INTO `quest_category` VALUES (4266, 'æ©Ÿæ¢°è‡‚æ²ƒå‚‘');
INSERT INTO `quest_category` VALUES (4267, 'ç ´å£žæŽ©è”½ç‰©');
INSERT INTO `quest_category` VALUES (4268, 'å¡å‹’ç‰¹çš„æˆ°ç•¥');
INSERT INTO `quest_category` VALUES (4269, 'è§£é«”æŠ€å¸«');
INSERT INTO `quest_category` VALUES (4270, 'å–œæ„›åˆ†è§£');
INSERT INTO `quest_category` VALUES (4271, 'å·¡æŸ¥æ ¹ç‰¹åŒ—é–€');
INSERT INTO `quest_category` VALUES (4272, 'åžƒåœ¾å›žæ”¶å¾žæˆ‘åšèµ·');
INSERT INTO `quest_category` VALUES (4273, 'AT-5T æ­¥è¡Œè€…è¨“ç·´');
INSERT INTO `quest_category` VALUES (4274, 'èª¿æŸ¥æ©Ÿæ¢°è‡‚');
INSERT INTO `quest_category` VALUES (4275, 'æ¸…æŽƒåžƒåœ¾');
INSERT INTO `quest_category` VALUES (4276, 'ä¸ç¢ºåˆ‡çš„æƒ…å ±');
INSERT INTO `quest_category` VALUES (4277, 'å·¡æŸ¥æ ¹ç‰¹æ£®æž—');
INSERT INTO `quest_category` VALUES (4278, 'å†æŽ¢æ ¹ç‰¹æ£®æž—');
INSERT INTO `quest_category` VALUES (4279, 'æ¸¸æ“ŠéšŠçš„è¹¤è·¡');
INSERT INTO `quest_category` VALUES (4280, 'ç¢ºèªæ¸¸æ“ŠéšŠå…µåŠ›');
INSERT INTO `quest_category` VALUES (4281, 'æ£˜æ‰‹çš„é†«ç™‚å…µ');
INSERT INTO `quest_category` VALUES (4282, 'ä¿è¡›æ ¹ç‰¹');
INSERT INTO `quest_category` VALUES (4283, 'æœ€å¾Œçš„æ”¯æ´å…µ');
INSERT INTO `quest_category` VALUES (4284, 'çˆ­å–ä½œæˆ°æ™‚é–“');
INSERT INTO `quest_category` VALUES (4285, 'ä¸åŒå°‹å¸¸çš„æ”»æ“Š');
INSERT INTO `quest_category` VALUES (4286, 'ç ”ç©¶å¤§ç ²');
INSERT INTO `quest_category` VALUES (4287, 'ç¼ºå°‘ç ”ç©¶è³‡æ–™');
INSERT INTO `quest_category` VALUES (4288, 'å‚³é”ç ”ç©¶è³‡æ–™');
INSERT INTO `quest_category` VALUES (4289, 'èˆ‡é æƒ³çš„ä¸€æ¨£');
INSERT INTO `quest_category` VALUES (4290, 'å …æŒå°±æ˜¯å‹åˆ©');
INSERT INTO `quest_category` VALUES (4291, 'é˜²å®ˆæ ¹ç‰¹é€±é‚Š');
INSERT INTO `quest_category` VALUES (4292, 'æ’¿å–ç‚®èº«');
INSERT INTO `quest_category` VALUES (4293, 'èª¿æŸ¥æ®˜é¤˜å…µå™¨');
INSERT INTO `quest_category` VALUES (4294, 'ç ´å£žéºç•™çš„æ­¦å™¨');
INSERT INTO `quest_category` VALUES (4295, 'æ ¹ç‰¹é˜²ç¦¦æˆ°');
INSERT INTO `quest_category` VALUES (4296, 'æƒ³åšç‹—è‚‰æ¹¯ï¼Ÿ');
INSERT INTO `quest_category` VALUES (4297, 'æ¶ˆæ»…ç‚®æ“Šéƒ¨éšŠ');
INSERT INTO `quest_category` VALUES (4298, 'æ ¹ç‰¹é˜²ç¦¦çš„ç¬¬ä¸€æ­¥');
INSERT INTO `quest_category` VALUES (4301, 'èˆ‡è³½èŽ‰äºžçš„ç·£åˆ†');
INSERT INTO `quest_category` VALUES (4302, 'éš•è½çš„å“¥å¸ƒæž—çš„å‚³èªª');
INSERT INTO `quest_category` VALUES (4303, 'æ€ªç¸çµæ®ºè€…');
INSERT INTO `quest_category` VALUES (4305, 'é¬¼æ‰‹çš„åæ‡‰');
INSERT INTO `quest_category` VALUES (4306, 'ä¸å°‹å¸¸çš„å¤©ç©ºä¹‹åŸŽæ°£æ¯');
INSERT INTO `quest_category` VALUES (4307, 'G.S.Dè¦ªè‡ªå‡ºé¦¬');
INSERT INTO `quest_category` VALUES (4308, 'åŽ»æ›´é«˜åœ°æ–¹');
INSERT INTO `quest_category` VALUES (4309, 'é¬¼æ‰‹å•Šï¼Œä½ åˆ°åº•æƒ³èªªä»€');
INSERT INTO `quest_category` VALUES (4310, 'æœå‘å¤©ç©ºä¹‹åŸŽçš„æœ€ä¸Šå±¤');
INSERT INTO `quest_category` VALUES (4311, 'æœå‘å¤©ç©ºä¹‹åŸŽçš„æœ€ä¸Šå±¤');
INSERT INTO `quest_category` VALUES (4312, 'å’Œè³½æ ¼å“ˆç‰¹å°æ±º');
INSERT INTO `quest_category` VALUES (4313, 'ç­”æ¡ˆåœ¨ä½¿å¾’èº«ä¸Š');
INSERT INTO `quest_category` VALUES (4314, 'è®ŠæˆçŸ³åƒçš„å†’éšªå®¶');
INSERT INTO `quest_category` VALUES (4315, 'å…‰ä¹‹è»éšŠ');
INSERT INTO `quest_category` VALUES (4316, 'çŸ³åˆƒæ‹‰æ¾¤çˆ¾');
INSERT INTO `quest_category` VALUES (4317, 'å¦ä¸€å€‹æ‡¸ç©ºåŸŽ');
INSERT INTO `quest_category` VALUES (4318, 'æ‡¸ç©ºåŸŽçš„ç„¡é‡åŠ›ç¢Žç‰‡ 1');
INSERT INTO `quest_category` VALUES (4319, 'æ‡¸ç©ºåŸŽçš„ç„¡é‡åŠ›ç¢Žç‰‡ 2');
INSERT INTO `quest_category` VALUES (4321, 'å åœå¸«è‰¾éº—çµ²');
INSERT INTO `quest_category` VALUES (4324, 'ä½¿å¾’æ˜¯ç‚ºäº†ä»€éº¼è€Œå­˜åœ¨');
INSERT INTO `quest_category` VALUES (4325, 'è¡°å¼±çš„ç¾…ç‰¹æ–¯');
INSERT INTO `quest_category` VALUES (4326, 'æ¶ˆæ»…ç¾…ç‰¹æ–¯');
INSERT INTO `quest_category` VALUES (4327, 'æ²‰ç¡å§ï¼Œç¾…ç‰¹æ–¯');
INSERT INTO `quest_category` VALUES (4328, 'ä½¿å¾’çš„æ­»äº¡ï¼Œé‡ç”Ÿçš„å¸Œ');
INSERT INTO `quest_category` VALUES (4330, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (4331, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (4332, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (4333, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (4334, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (4335, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (4336, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (4337, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (4338, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (4339, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (4340, '[å¤ä»£åœ°ä¸‹åŸŽ] ç¥žè–çš„åˆ€');
INSERT INTO `quest_category` VALUES (4341, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (4342, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (4343, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (4344, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (4345, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (4346, '[å¤ä»£åœ°ä¸‹åŸŽ] æ¶ˆæ»…æˆ®è ±');
INSERT INTO `quest_category` VALUES (4347, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (4348, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (4349, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (4350, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (4351, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (4352, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (4353, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (4354, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (4355, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (4356, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (4357, '[å¤ä»£åœ°ä¸‹åŸŽ] éª·é«å‡±æ©');
INSERT INTO `quest_category` VALUES (4358, '[å¤ä»£åœ°ä¸‹åŸŽ] èˆ‡é˜¿ç”˜å·¦');
INSERT INTO `quest_category` VALUES (4359, '[å¤ä»£åœ°ä¸‹åŸŽ] é˜¿ç”˜å·¦çš„');
INSERT INTO `quest_category` VALUES (4360, 'çœ‹ä¸è¦‹çš„å¸Œæœ›');
INSERT INTO `quest_category` VALUES (4361, 'æ§‹ç¯‰é˜²ç¦¦ç·š');
INSERT INTO `quest_category` VALUES (4362, 'ç§˜å¯†çš„å¬å–š');
INSERT INTO `quest_category` VALUES (4363, 'å¥ªå–å½ˆè—¥');
INSERT INTO `quest_category` VALUES (4364, 'å¥‡æ€ªçš„å…µå™¨');
INSERT INTO `quest_category` VALUES (4365, 'æ©Ÿå‹•å…µå™¨ GT-9600');
INSERT INTO `quest_category` VALUES (4366, 'å¯¡ä¸æ•µçœ¾');
INSERT INTO `quest_category` VALUES (4367, 'æ©Ÿå‹•å…µå™¨çš„å¼±é»ž');
INSERT INTO `quest_category` VALUES (4368, 'æ”¶é›†è³‡æ–™');
INSERT INTO `quest_category` VALUES (4369, 'è£½ä½œå…µå™¨');
INSERT INTO `quest_category` VALUES (4370, 'ç ´å£žé€šè¨Šå™¨');
INSERT INTO `quest_category` VALUES (4371, 'å¡å‹’ç‰¹å¹¹éƒ¨çš„å¾½ç«  (é‡è');
INSERT INTO `quest_category` VALUES (4372, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (4373, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (4374, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (4375, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (4376, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (4377, '[å¤ä»£åœ°ä¸‹åŸŽ] ç”Ÿå‘½æ˜¯ç');
INSERT INTO `quest_category` VALUES (4378, '[å¤ä»£åœ°ä¸‹åŸŽ] é‡å›žæ•…åœ°');
INSERT INTO `quest_category` VALUES (4379, '[å¤ä»£åœ°ä¸‹åŸŽ] ç›¸ä¼¼çš„äºº');
INSERT INTO `quest_category` VALUES (4404, 'æ‘©æ ¹çš„éºè¨€');
INSERT INTO `quest_category` VALUES (4405, 'åµå¯Ÿ');
INSERT INTO `quest_category` VALUES (4406, 'èœ˜è››æ´žç©´');
INSERT INTO `quest_category` VALUES (4407, 'è‰¾å…‹æ´›ç´¢');
INSERT INTO `quest_category` VALUES (4408, 'é­¯èŽ½çš„èœé³¥');
INSERT INTO `quest_category` VALUES (4409, 'ä¸å¿…è¦çš„æ…ˆæ‚²');
INSERT INTO `quest_category` VALUES (4410, 'å†’éšªçš„å¦¨ç¤™');
INSERT INTO `quest_category` VALUES (4411, 'ä»¤äººç…©èºçš„æ…˜å«è²');
INSERT INTO `quest_category` VALUES (4414, 'çµ‚æ–¼é–‹å•Ÿçš„å¤©ç•Œä¹‹é–€');
INSERT INTO `quest_category` VALUES (4415, 'å‰å¾€å¤©ç•Œ');
INSERT INTO `quest_category` VALUES (4416, 'å¤©ç•Œçš„å®ˆå‚™éšŠé•·');
INSERT INTO `quest_category` VALUES (4417, 'å…ˆç™¼åˆ¶äºº');
INSERT INTO `quest_category` VALUES (4419, 'ç«çš„é›ç…‰');
INSERT INTO `quest_category` VALUES (4420, '[å¤ä»£åœ°ä¸‹åŸŽ]  å¤ä»£çŽ‹åœ');
INSERT INTO `quest_category` VALUES (4421, '[å¤ä»£åœ°ä¸‹åŸŽ]  å¤ä»£çŽ‹åœ');
INSERT INTO `quest_category` VALUES (4422, 'åªå‰©ä¸‹æš—é»‘åŸŽå…¥å£äº†');
INSERT INTO `quest_category` VALUES (4423, 'åŸºç¤Žå¾ˆé‡è¦');
INSERT INTO `quest_category` VALUES (4424, 'å¡å‹’ç‰¹å¹¹éƒ¨çš„å¾½ç« ');
INSERT INTO `quest_category` VALUES (4425, '[å¤ä»£åœ°ä¸‹åŸŽ] æ­Œè˜­è’‚æ–¯');
INSERT INTO `quest_category` VALUES (4426, '[å¤ä»£åœ°ä¸‹åŸŽ] æ­Œè˜­è’‚æ–¯');
INSERT INTO `quest_category` VALUES (4427, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4428, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4429, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4430, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4431, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4432, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4433, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4434, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4435, 'æ­å–œä½ è½‰è·äº†ï¼');
INSERT INTO `quest_category` VALUES (4436, '[å¤ä»£åœ°ä¸‹åŸŽ]  çŽ‹çš„æ¦®è­');
INSERT INTO `quest_category` VALUES (4437, 'è€æœ‹å‹ - æˆ’æŒ‡ (1/3)');
INSERT INTO `quest_category` VALUES (4438, 'è€æœ‹å‹ - æ‰‹ç’° (2/3)');
INSERT INTO `quest_category` VALUES (4439, 'è€æœ‹å‹ - é …éŠ (3/3)');
INSERT INTO `quest_category` VALUES (4440, 'ç°è‰²çµæ™¶å’Œè³½èŽ‰äºž');
INSERT INTO `quest_category` VALUES (4441, 'ç‚ºäº†ç²å¾—çµæ™¶çš„é­”æ³•');
INSERT INTO `quest_category` VALUES (4442, 'æŠ½å–çµæ™¶çš„æ°£æ¯');
INSERT INTO `quest_category` VALUES (4443, '[å¤ä»£åœ°ä¸‹åŸŽ] ç„¡æ³•å‰å¾€');
INSERT INTO `quest_category` VALUES (4444, '[å¤ä»£åœ°ä¸‹åŸŽ] æ›¾ç¶“å¹³éœ');
INSERT INTO `quest_category` VALUES (4445, '[å¤ä»£åœ°ä¸‹åŸŽ] æ‘©æ ¹çš„æ—¥');
INSERT INTO `quest_category` VALUES (4446, '[å¤ä»£åœ°ä¸‹åŸŽ] è‰¾éº—çµ²çš„');
INSERT INTO `quest_category` VALUES (4447, '[å¤ä»£åœ°ä¸‹åŸŽ] ä½¿å¾’çš„æ°£');
INSERT INTO `quest_category` VALUES (4448, '[å¤ä»£åœ°ä¸‹åŸŽ] æ„æ–™ä¹‹å¤–');
INSERT INTO `quest_category` VALUES (4449, '[å¤ä»£åœ°ä¸‹åŸŽ] ç‹„ç‘žå‰çš„');
INSERT INTO `quest_category` VALUES (4450, '[å¤ä»£åœ°ä¸‹åŸŽ] è§£ä¸é–‹çš„');
INSERT INTO `quest_category` VALUES (4451, '[å¤ä»£åœ°ä¸‹åŸŽ] è§£ä¸é–‹çš„');
INSERT INTO `quest_category` VALUES (4452, '[å¤ä»£åœ°ä¸‹åŸŽ] å¦‚æžœæ˜¯å½');
INSERT INTO `quest_category` VALUES (4453, '[å¤ä»£åœ°ä¸‹åŸŽ] å½è£è€…çš„');
INSERT INTO `quest_category` VALUES (4454, '[å¤ä»£åœ°ä¸‹åŸŽ] æš´æˆ¾æœæ•');
INSERT INTO `quest_category` VALUES (4455, '[å¤ä»£åœ°ä¸‹åŸŽ] æ­Œè˜­è’‚æ–¯');
INSERT INTO `quest_category` VALUES (4456, '[å¤ä»£åœ°ä¸‹åŸŽ] æ ¼æ‹‰è¥¿äºž');
INSERT INTO `quest_category` VALUES (4457, '[å¤ä»£åœ°ä¸‹åŸŽ] å…ç–«é­”æ³•');
INSERT INTO `quest_category` VALUES (4461, 'å£“æŠ‘çš„æ‚²é³´è²');
INSERT INTO `quest_category` VALUES (4462, 'è¨˜æ†¶ä¸­çš„å¾€äº‹');
INSERT INTO `quest_category` VALUES (4465, 'ç¬¬ä¸€å€‹æ™‚é–“ç¢Žç‰‡ - æ´›è—');
INSERT INTO `quest_category` VALUES (4466, 'é˜¿æ³•åˆ©äºžçš„å±æ©Ÿ');
INSERT INTO `quest_category` VALUES (4467, 'æš—ç²¾éˆçš„å±æ©Ÿ');
INSERT INTO `quest_category` VALUES (4468, 'åŠ çˆ¾ä¼ŠèŠçµ²');
INSERT INTO `quest_category` VALUES (4469, 'ç¬¬äºŒå€‹æ™‚é–“ç¢Žç‰‡');
INSERT INTO `quest_category` VALUES (4470, 'å°‹æ‰¾æ™‚é–“ç¢Žç‰‡1');
INSERT INTO `quest_category` VALUES (4471, 'å°‹æ‰¾æ™‚é–“ç¢Žç‰‡2');
INSERT INTO `quest_category` VALUES (4472, 'è„†å¼±çš„æ™‚é–“ç¢Žç‰‡');
INSERT INTO `quest_category` VALUES (4473, 'å¼·åŒ–çš„æ™‚é–“ç¢Žç‰‡ 1');
INSERT INTO `quest_category` VALUES (4474, 'å¼·åŒ–çš„æ™‚é–“ç¢Žç‰‡ 2');
INSERT INTO `quest_category` VALUES (4475, 'ä¸€å®šè¦æ›´å¼·');
INSERT INTO `quest_category` VALUES (4476, 'æ–°çš„åŠ›é‡ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (4477, 'æ™‚é–“ç¢Žç‰‡ - æ ¼è˜­ä¹‹æ£®');
INSERT INTO `quest_category` VALUES (4478, 'æ™‚é–“ç¢Žç‰‡ - ç¬¬ä¸€å€‹æ™‚é–“');
INSERT INTO `quest_category` VALUES (4479, 'æ™‚é–“ç¢Žç‰‡ - å¤©å¸·å·¨ç¸');
INSERT INTO `quest_category` VALUES (4480, 'æ™‚é–“ç¢Žç‰‡ - è«¾ä¼Šä½©æ‹‰');
INSERT INTO `quest_category` VALUES (4481, 'æ™‚é–“ç¢Žç‰‡ - æš—é»‘åŸŽ');
INSERT INTO `quest_category` VALUES (4482, 'æ™‚é–“ç¢Žç‰‡ -è¬å¹´é›ªå±±');
INSERT INTO `quest_category` VALUES (4483, 'æ™‚é–“ç¢Žç‰‡ - å¢®è½æ®¿å ‚');
INSERT INTO `quest_category` VALUES (4484, 'æ™‚é–“ç¢Žç‰‡ - è«¾æ–¯ç‘ªçˆ¾');
INSERT INTO `quest_category` VALUES (4485, 'æ™‚é–“ç¢Žç‰‡ - é™Œç”Ÿè¦å¡ž');
INSERT INTO `quest_category` VALUES (4486, 'æ™‚é–“ç¢Žç‰‡ - å®‰ç‰¹è²çˆ¾å³½');
INSERT INTO `quest_category` VALUES (4487, 'æ™‚é–“ç¢Žç‰‡ - æµ·ä¸Šåˆ—è»Š');
INSERT INTO `quest_category` VALUES (4491, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (4492, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (4493, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (4494, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (4495, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (4500, 'å¸åœ‹æƒ³è¦ä½ ï¼');
INSERT INTO `quest_category` VALUES (4501, 'ç™½è‰²å½±å­çš„æ€ªç‰©');
INSERT INTO `quest_category` VALUES (4503, 'æš´é¢¨å‰å¤•');
INSERT INTO `quest_category` VALUES (4504, 'ä¸è©³çš„é æ„Ÿ');
INSERT INTO `quest_category` VALUES (4505, 'å’†å“®çš„è²éŸ³');
INSERT INTO `quest_category` VALUES (4506, 'æˆ‘æ—èƒŒè² çš„æ¥­å ±');
INSERT INTO `quest_category` VALUES (4514, 'å·´çˆ¾é›·å¨œçš„è¨˜æ†¶åŠ›');
INSERT INTO `quest_category` VALUES (4515, 'åˆæ¬¡çœ‹è¦‹çš„è¡£æ–™');
INSERT INTO `quest_category` VALUES (4516, 'ç…©äººçš„é­”æ³•å¸«');
INSERT INTO `quest_category` VALUES (4520, 'å»¢å¢Ÿä¸­ç§»å‹•çš„ç™½è‰²å·¨ç‰©');
INSERT INTO `quest_category` VALUES (4521, 'æ¯è¦ªçš„æ“”å¿ƒ');
INSERT INTO `quest_category` VALUES (4522, 'ç•°è®Šç¾è±¡çš„å½±å­');
INSERT INTO `quest_category` VALUES (4523, 'æŠ«ä¸Šæ•µäººçš„å¤–è¡£');
INSERT INTO `quest_category` VALUES (4525, 'æ¯è¦ªçš„å¿ƒæ€');
INSERT INTO `quest_category` VALUES (4526, 'é›ªå±±çš„è™Ÿè§’');
INSERT INTO `quest_category` VALUES (4527, 'ä»¥çœ¼é‚„çœ¼ï¼Œ ä»¥ç‰™é‚„ç‰™');
INSERT INTO `quest_category` VALUES (4528, 'åŒ–æˆé›ªé£„è½');
INSERT INTO `quest_category` VALUES (4536, 'é›€ç‘Ÿé£²é…’çš„ç†ç”±');
INSERT INTO `quest_category` VALUES (4537, 'é†’é…’');
INSERT INTO `quest_category` VALUES (4538, 'ä¸€çˆ­é«˜ä¸‹');
INSERT INTO `quest_category` VALUES (4542, 'ç­åœ–çš„å‚³çµ±æ°‘è¬ ');
INSERT INTO `quest_category` VALUES (4543, 'æ´›çµ²ä¹‹æ­Œ');
INSERT INTO `quest_category` VALUES (4544, 'ç„¡æ³•ç½®ä¿¡');
INSERT INTO `quest_category` VALUES (4545, 'ä¸€ç·šå¸Œæœ›');
INSERT INTO `quest_category` VALUES (4546, 'å®ˆè­·å¤¢æƒ³');
INSERT INTO `quest_category` VALUES (4547, 'ç™¼ç¾ç·šç´¢');
INSERT INTO `quest_category` VALUES (4548, 'è¢«ç™¼ç¾çš„å…§å¹•ï¼Œç¾…å¸Œçš„');
INSERT INTO `quest_category` VALUES (4549, 'å¯¦ç¾æœ€å¾Œçš„å¤¢æƒ³');
INSERT INTO `quest_category` VALUES (4557, 'å†°éœœä¸­çš„å‘¼å–š');
INSERT INTO `quest_category` VALUES (4558, 'å°‹æ‰¾æ´›å¸Œå©­çš„è¹¤è·¡');
INSERT INTO `quest_category` VALUES (4559, 'æœ‰æ·’æ¶¼æ•…äº‹çš„å¹´è¼•äºº');
INSERT INTO `quest_category` VALUES (4560, 'èªªæœï¼Œå¯æ˜¯');
INSERT INTO `quest_category` VALUES (4561, 'çœŸæ­£çš„ç¦®ç‰©');
INSERT INTO `quest_category` VALUES (4562, 'ä¸æ²‰ç¡çš„é¾');
INSERT INTO `quest_category` VALUES (4563, 'å¿è€çš„æ¥µé™');
INSERT INTO `quest_category` VALUES (4564, 'æ±ºæ–·');
INSERT INTO `quest_category` VALUES (4565, 'çµ¦å¸åœ‹çš„ä¿¡');
INSERT INTO `quest_category` VALUES (4566, 'å¸åœ‹çš„ä¾†ä¿¡');
INSERT INTO `quest_category` VALUES (4567, 'ç”Ÿæ­»ä¸€å¿µé–“');
INSERT INTO `quest_category` VALUES (4568, 'æ±ºæˆ°ï¼Œæ–¯å¡è–©ï¼');
INSERT INTO `quest_category` VALUES (4569, 'æ­»é¬¥çš„è­‰æ“š');
INSERT INTO `quest_category` VALUES (4571, 'æœ€å¾Œä¸€æ“Š');
INSERT INTO `quest_category` VALUES (4572, 'é›ªä¹‹æ¦®è­½');
INSERT INTO `quest_category` VALUES (4601, 'è¡Œè¹¤ä¸æ˜Žçš„ç¾…èŽ‰å®‰');
INSERT INTO `quest_category` VALUES (4603, 'æ–¯å¡è¿ªå¥³çŽ‹çš„è¦ªç­†ä¿¡');
INSERT INTO `quest_category` VALUES (4605, 'æ”¶é›†é˜²å…·ææ–™');
INSERT INTO `quest_category` VALUES (4606, 'æ€ªç•°çš„æ”¶é›†ç™–');
INSERT INTO `quest_category` VALUES (4607, 'è®“å¾˜å¾Šçš„éˆé­‚å®‰æ¯');
INSERT INTO `quest_category` VALUES (4608, 'ç¾…ç‰¹æ–¯çš„å‚€å„¡');
INSERT INTO `quest_category` VALUES (4609, 'å¢æž—æ”¯é…è€…ç¾…ä¸');
INSERT INTO `quest_category` VALUES (4610, 'é»‘æš—ä¸­çš„ç‹©çµå¤§å¸«');
INSERT INTO `quest_category` VALUES (4611, 'é¾é ­ç‚®çš„æ“ç¸±è€…');
INSERT INTO `quest_category` VALUES (4612, 'å¤§ç¥žå®˜è«¾ç‰¹é­¯');
INSERT INTO `quest_category` VALUES (4613, 'æœ€å¾Œçš„æŠµæŠ—');
INSERT INTO `quest_category` VALUES (5001, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (5002, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (5003, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (5004, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢å°‹å¼·åŠ›');
INSERT INTO `quest_category` VALUES (5005, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (5151, '[ç•°ç•Œåœ°ä¸‹åŸŽ] å¥‡æ€ªçš„ç®¡');
INSERT INTO `quest_category` VALUES (5152, '[ç•°ç•Œåœ°ä¸‹åŸŽ] å°å°ä¹‹åœ°');
INSERT INTO `quest_category` VALUES (5153, '[ç•°ç•Œåœ°ä¸‹åŸŽ] ç•°æ¬¡å…ƒè£‚');
INSERT INTO `quest_category` VALUES (5154, '[å¤ä»£åœ°ä¸‹åŸŽ] åŸŽâ€¦ é‚£æ˜');
INSERT INTO `quest_category` VALUES (5155, '[ç•°ç•Œåœ°ä¸‹åŸŽ] ç•°æ¬¡å…ƒè£‚');
INSERT INTO `quest_category` VALUES (5156, '[ç•°ç•Œåœ°ä¸‹åŸŽ] è˜­è’‚ç›§æ–¯');
INSERT INTO `quest_category` VALUES (5157, '[ç•°ç•Œåœ°ä¸‹åŸŽ] å‡±èŽ‰çš„å§”');
INSERT INTO `quest_category` VALUES (5270, 'å…‰è¼ä¹‹é­”çŸ³ç¢Žç‰‡ (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (5307, 'è¦ºé†’ - å¤©å•Ÿè–å¾’ 1');
INSERT INTO `quest_category` VALUES (5308, 'è¦ºé†’ - å¤©å•Ÿè–å¾’ 2');
INSERT INTO `quest_category` VALUES (5309, 'è¦ºé†’ - å¤©å•Ÿè–å¾’ 3');
INSERT INTO `quest_category` VALUES (5310, 'è¦ºé†’ - å¤©å•Ÿè–å¾’ 4');
INSERT INTO `quest_category` VALUES (5314, 'è¦ºé†’ - ç¥žä¹‹æ‰‹ 1');
INSERT INTO `quest_category` VALUES (5315, 'è¦ºé†’ - ç¥žä¹‹æ‰‹ 2');
INSERT INTO `quest_category` VALUES (5316, 'è¦ºé†’ - ç¥žä¹‹æ‰‹ 3');
INSERT INTO `quest_category` VALUES (5317, 'è¦ºé†’ - ç¥žä¹‹æ‰‹ 4');
INSERT INTO `quest_category` VALUES (5321, 'è¦ºé†’ - é¾é¬¥å£« 1');
INSERT INTO `quest_category` VALUES (5322, 'è¦ºé†’ - é¾é¬¥å£« 2');
INSERT INTO `quest_category` VALUES (5323, 'è¦ºé†’ - é¾é¬¥å£« 3');
INSERT INTO `quest_category` VALUES (5324, 'è¦ºé†’ - é¾é¬¥å£« 4');
INSERT INTO `quest_category` VALUES (5329, 'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 1');
INSERT INTO `quest_category` VALUES (5330, 'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 2');
INSERT INTO `quest_category` VALUES (5331, 'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 3');
INSERT INTO `quest_category` VALUES (5332, 'è¦ºé†’ - è¡€è‰²çŽ«ç‘° 4');
INSERT INTO `quest_category` VALUES (5333, 'è¦ºé†’ - æ®²æ»…è€… 1');
INSERT INTO `quest_category` VALUES (5334, 'è¦ºé†’ - æ®²æ»…è€… 2');
INSERT INTO `quest_category` VALUES (5335, 'è¦ºé†’ - æ®²æ»…è€… 3');
INSERT INTO `quest_category` VALUES (5336, 'è¦ºé†’ - æ®²æ»…è€… 4');
INSERT INTO `quest_category` VALUES (5340, 'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 1');
INSERT INTO `quest_category` VALUES (5341, 'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 2');
INSERT INTO `quest_category` VALUES (5342, 'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 3');
INSERT INTO `quest_category` VALUES (5343, 'è¦ºé†’ - é‹¼éµä¹‹å¿ƒ 4');
INSERT INTO `quest_category` VALUES (5344, 'è¦ºé†’ - å¥³æ­¦ç¥ž 1');
INSERT INTO `quest_category` VALUES (5345, 'è¦ºé†’ - å¥³æ­¦ç¥ž 2');
INSERT INTO `quest_category` VALUES (5346, 'è¦ºé†’ - å¥³æ­¦ç¥ž 3');
INSERT INTO `quest_category` VALUES (5347, 'è¦ºé†’ - å¥³æ­¦ç¥ž 4');
INSERT INTO `quest_category` VALUES (5350, 'è¦ºé†’ - é­”è¡“å¸« 1');
INSERT INTO `quest_category` VALUES (5351, 'è¦ºé†’ - é­”è¡“å¸« 2');
INSERT INTO `quest_category` VALUES (5352, 'è¦ºé†’ - é­”è¡“å¸« 3');
INSERT INTO `quest_category` VALUES (5353, 'è¦ºé†’ - é­”è¡“å¸« 4');
INSERT INTO `quest_category` VALUES (5401, 'Test');
INSERT INTO `quest_category` VALUES (5402, 'Test');
INSERT INTO `quest_category` VALUES (5403, 'Test');
INSERT INTO `quest_category` VALUES (5404, 'Test');
INSERT INTO `quest_category` VALUES (5405, 'Test');
INSERT INTO `quest_category` VALUES (5406, 'Test');
INSERT INTO `quest_category` VALUES (5407, 'Test');
INSERT INTO `quest_category` VALUES (5408, 'Test');
INSERT INTO `quest_category` VALUES (5409, 'Test');
INSERT INTO `quest_category` VALUES (5410, 'Test');
INSERT INTO `quest_category` VALUES (5411, 'Test');
INSERT INTO `quest_category` VALUES (5412, 'Test');
INSERT INTO `quest_category` VALUES (5413, 'Test');
INSERT INTO `quest_category` VALUES (5414, 'Test');
INSERT INTO `quest_category` VALUES (5415, 'Test');
INSERT INTO `quest_category` VALUES (5416, 'Test');
INSERT INTO `quest_category` VALUES (5417, 'Test');
INSERT INTO `quest_category` VALUES (5418, 'Test');
INSERT INTO `quest_category` VALUES (5419, 'Test');
INSERT INTO `quest_category` VALUES (5420, 'Test');
INSERT INTO `quest_category` VALUES (5421, 'Test');
INSERT INTO `quest_category` VALUES (5433, 'Test');
INSERT INTO `quest_category` VALUES (5442, 'Test');
INSERT INTO `quest_category` VALUES (5443, 'Test');
INSERT INTO `quest_category` VALUES (5444, 'Test');
INSERT INTO `quest_category` VALUES (5445, 'Test');
INSERT INTO `quest_category` VALUES (5446, 'Test');
INSERT INTO `quest_category` VALUES (5447, 'Test');
INSERT INTO `quest_category` VALUES (5448, 'Test');
INSERT INTO `quest_category` VALUES (5449, 'Test');
INSERT INTO `quest_category` VALUES (5450, 'Test');
INSERT INTO `quest_category` VALUES (5451, 'Test');
INSERT INTO `quest_category` VALUES (5452, 'Test');
INSERT INTO `quest_category` VALUES (5453, 'Test');
INSERT INTO `quest_category` VALUES (5454, 'Test');
INSERT INTO `quest_category` VALUES (5455, 'Test');
INSERT INTO `quest_category` VALUES (5456, 'Test');
INSERT INTO `quest_category` VALUES (5457, 'Test');
INSERT INTO `quest_category` VALUES (5458, 'Test');
INSERT INTO `quest_category` VALUES (5459, 'Test');
INSERT INTO `quest_category` VALUES (5460, 'Test');
INSERT INTO `quest_category` VALUES (5461, 'Test');
INSERT INTO `quest_category` VALUES (5462, 'Test');
INSERT INTO `quest_category` VALUES (5463, 'Test');
INSERT INTO `quest_category` VALUES (5465, 'Test');
INSERT INTO `quest_category` VALUES (5466, 'Test');
INSERT INTO `quest_category` VALUES (5467, 'Test');
INSERT INTO `quest_category` VALUES (5468, 'Test');
INSERT INTO `quest_category` VALUES (5469, 'Test');
INSERT INTO `quest_category` VALUES (5470, 'Test');
INSERT INTO `quest_category` VALUES (5471, 'Test');
INSERT INTO `quest_category` VALUES (5472, 'Test');
INSERT INTO `quest_category` VALUES (5473, 'Test');
INSERT INTO `quest_category` VALUES (5474, 'Test');
INSERT INTO `quest_category` VALUES (5475, 'Test');
INSERT INTO `quest_category` VALUES (5476, 'Test');
INSERT INTO `quest_category` VALUES (5477, 'Test');
INSERT INTO `quest_category` VALUES (5478, 'æ™‚é–“ä¹‹é–€å€åŸŸå†’éšª');
INSERT INTO `quest_category` VALUES (5479, 'Test');
INSERT INTO `quest_category` VALUES (5480, 'Test');
INSERT INTO `quest_category` VALUES (5481, 'Test');
INSERT INTO `quest_category` VALUES (5650, 'ä¸ç¥¥çš„å»ºç¯‰ç‰©');
INSERT INTO `quest_category` VALUES (5651, 'å¾žåœ°ç„ä¾†çš„ç”Ÿç‰©');
INSERT INTO `quest_category` VALUES (5652, 'ä¾†è‡ªåœ°ç„çš„ç”Ÿç‰©');
INSERT INTO `quest_category` VALUES (5653, 'æ­»ç¥žé˜¿åŠ é›·æ–¯');
INSERT INTO `quest_category` VALUES (5654, 'æ­»ç¥žåˆ°åº•æƒ³è¦ç”šéº¼ï¼Ÿ');
INSERT INTO `quest_category` VALUES (5655, 'ç†±è¡€æ²¸é¨°çš„éŠé‡‘è¡“å¸«');
INSERT INTO `quest_category` VALUES (5656, 'çµ‚æ¥µéŠé‡‘è¡“');
INSERT INTO `quest_category` VALUES (5657, 'ä¸æ»…ä¹‹è—¥');
INSERT INTO `quest_category` VALUES (5658, 'ç„¡ç›¡çš„ç ”ç©¶');
INSERT INTO `quest_category` VALUES (5659, 'æŒ‘æˆ°ç„¡ç›¡çš„ç¥­å£‡');
INSERT INTO `quest_category` VALUES (5660, 'è¬›è¿°å†’éšªæ•…äº‹');
INSERT INTO `quest_category` VALUES (5661, 'é è¨€çš„é“å…·');
INSERT INTO `quest_category` VALUES (5678, 'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 1');
INSERT INTO `quest_category` VALUES (5679, 'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 2');
INSERT INTO `quest_category` VALUES (5680, 'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 3');
INSERT INTO `quest_category` VALUES (5681, 'è¦ºé†’ - éŠ€æœˆä¹‹åˆƒ 4');
INSERT INTO `quest_category` VALUES (5684, 'è¦ºé†’ - æ­»äº¡ä½¿è€… 1');
INSERT INTO `quest_category` VALUES (5685, 'è¦ºé†’ - æ­»äº¡ä½¿è€… 2');
INSERT INTO `quest_category` VALUES (5686, 'è¦ºé†’ - æ­»äº¡ä½¿è€… 3');
INSERT INTO `quest_category` VALUES (5687, 'è¦ºé†’ - æ­»äº¡ä½¿è€… 4');
INSERT INTO `quest_category` VALUES (5720, 'åµæŸ¥é‡Žç‡Ÿåœ°');
INSERT INTO `quest_category` VALUES (5721, 'æ–°çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (5722, 'ä¸€å¤œçš„ä½œæˆ°');
INSERT INTO `quest_category` VALUES (5723, 'å†æ¬¡çªè¥²');
INSERT INTO `quest_category` VALUES (5724, 'æ”¶é›†æƒ…å ±');
INSERT INTO `quest_category` VALUES (5725, 'æ•µäººçš„çœŸé¢ç›®1');
INSERT INTO `quest_category` VALUES (5726, 'æ•µäººçš„çœŸé¢ç›®2');
INSERT INTO `quest_category` VALUES (5727, 'ä¸å¯å‘Šäººçš„äº¤æ˜“');
INSERT INTO `quest_category` VALUES (5728, 'æ“Šé€€é›œæŠ€åœ˜');
INSERT INTO `quest_category` VALUES (5729, 'æ•µäººçš„å™©å¤¢ä¹‹å¤œ');
INSERT INTO `quest_category` VALUES (5730, 'éº»ç…©çš„å°çŸ®äºº');
INSERT INTO `quest_category` VALUES (5731, 'æŽŒæ¡é‡Žç‡Ÿåœ°æ§‹é€ ');
INSERT INTO `quest_category` VALUES (5732, 'æ„›ç¾Žä¹‹å¿ƒ');
INSERT INTO `quest_category` VALUES (5733, 'ç‰¹æ®Šçš„ç«ç¨®');
INSERT INTO `quest_category` VALUES (5734, 'ç”œç¾Žçš„å¤¢');
INSERT INTO `quest_category` VALUES (5741, 'é€™å€‹å¤œæ™šä¸å†å¯’å†·');
INSERT INTO `quest_category` VALUES (5742, 'æ„›ç¾Žæ˜¯å¥³äººçš„å¤©æ€§');
INSERT INTO `quest_category` VALUES (5743, 'æŽ¢ç´¢è£œçµ¦åŸºåœ°');
INSERT INTO `quest_category` VALUES (5744, 'ç ´å£žæ­¦å™¨å€‰åº«');
INSERT INTO `quest_category` VALUES (5745, 'å°‹æ‰¾æ•µäººçš„ç³§é£Ÿ');
INSERT INTO `quest_category` VALUES (5746, 'ç ´å£žç³§é£Ÿå€‰åº«');
INSERT INTO `quest_category` VALUES (5747, 'è£œçµ¦éƒ¨éšŠçš„é¦–é•·æ˜¯ï¼Ÿ');
INSERT INTO `quest_category` VALUES (5748, 'å‰è³½çˆ¾åšå£«çš„é™°è¬€');
INSERT INTO `quest_category` VALUES (5749, 'è¢«æ”¹é€ çš„å£«å…µå€‘');
INSERT INTO `quest_category` VALUES (5750, 'ç”Ÿç‰©å¯¦é©—çš„çœŸç›¸');
INSERT INTO `quest_category` VALUES (5751, 'çµ‚æ¥µå¯¦é©—é«”');
INSERT INTO `quest_category` VALUES (5752, 'å½ˆè—¥æ”¹é€ ');
INSERT INTO `quest_category` VALUES (5753, 'æ§æ¢°å¦‚åŒæ„›äºº');
INSERT INTO `quest_category` VALUES (5754, 'ä»Šå¤©æˆ‘ä¾†ç•¶å»šå¸« (1/2)');
INSERT INTO `quest_category` VALUES (5755, 'ç¼ºä¹å·¥å…·');
INSERT INTO `quest_category` VALUES (5756, 'é›¶ä»¶èª¿é…');
INSERT INTO `quest_category` VALUES (5765, 'è¿½æ“Šå‰è³½çˆ¾');
INSERT INTO `quest_category` VALUES (5766, 'å‡†å°‡å°¼è²çˆ¾');
INSERT INTO `quest_category` VALUES (5767, 'é­¯èŽ½çš„æŸ¯ç¶­');
INSERT INTO `quest_category` VALUES (5768, 'ç§˜å¯†æ­¦å™¨é£›ç‡•');
INSERT INTO `quest_category` VALUES (5769, 'ç‰¹ç¨®éƒ¨éšŠé›†çµ');
INSERT INTO `quest_category` VALUES (5770, 'äº¡å‘½è€…');
INSERT INTO `quest_category` VALUES (5771, 'èƒŒä¿¡è€…çš„åš´æ‡²');
INSERT INTO `quest_category` VALUES (5772, 'ç„¡åå¥³äºº');
INSERT INTO `quest_category` VALUES (5773, 'å¥¹çš„éŽåŽ»');
INSERT INTO `quest_category` VALUES (5774, 'æˆ°é¬¥æº–å‚™');
INSERT INTO `quest_category` VALUES (5775, 'ç ´å£žæŽ©è”½ç‰©');
INSERT INTO `quest_category` VALUES (5776, 'å¤©å¯’åœ°å‡');
INSERT INTO `quest_category` VALUES (5777, 'æ¶ˆæ»…å¹¹éƒ¨');
INSERT INTO `quest_category` VALUES (5778, 'æŽ§åˆ¶é»‘æš—çš„äºº');
INSERT INTO `quest_category` VALUES (5779, 'æœ€çµ‚ä½œæˆ°');
INSERT INTO `quest_category` VALUES (5780, 'æœæŸ¥æ®²æ»…');
INSERT INTO `quest_category` VALUES (5781, 'ç¸½æ±ºæˆ°');
INSERT INTO `quest_category` VALUES (5784, 'å½ˆè—¥æ”¹é€ å°ˆå®¶');
INSERT INTO `quest_category` VALUES (5785, 'ç±ŒæŽªå·¥å…·');
INSERT INTO `quest_category` VALUES (5786, 'å£«å…µçš„ç”Ÿå‘½');
INSERT INTO `quest_category` VALUES (5787, 'æ‚„ç„¡è²æ¯');
INSERT INTO `quest_category` VALUES (5788, 'æ“¾äº‚æ•µè»è¨ˆç•«');
INSERT INTO `quest_category` VALUES (5789, 'æ¢…çˆ¾æ–‡Â·é‡Œå…‹ç‰¹çš„æ„›å¥½');
INSERT INTO `quest_category` VALUES (5790, 'ç™¾å§“çš„ç—›è‹¦');
INSERT INTO `quest_category` VALUES (5791, 'æ”¶é›†æ¨£å“');
INSERT INTO `quest_category` VALUES (5793, 'æˆ°å ´ä¸Šçš„å‹æƒ…');
INSERT INTO `quest_category` VALUES (5796, 'å¸Œæœ›çš„ç«ç¨®');
INSERT INTO `quest_category` VALUES (5797, 'ä¿éšœç‰©è³‡');
INSERT INTO `quest_category` VALUES (5798, 'æ®²æ»…æœ€å¾Œçš„æ•µäºº');
INSERT INTO `quest_category` VALUES (5799, 'æº«æš–äººå¿ƒ');
INSERT INTO `quest_category` VALUES (5800, 'å°‹æ‰¾ç›œè³Šåœ˜çš„ç—•è·¡');
INSERT INTO `quest_category` VALUES (5801, 'æ²™ä¸­æŒ¯ç¿…');
INSERT INTO `quest_category` VALUES (5802, 'è¡€è¶ä¹‹èˆž');
INSERT INTO `quest_category` VALUES (5803, 'æ‘©æ–¯æ˜†çš„èœ‚é‡');
INSERT INTO `quest_category` VALUES (5804, 'ç ´å£žèŸ²ç¹­');
INSERT INTO `quest_category` VALUES (5805, 'å¤±è¹¤çš„ç‰¹å·¥');
INSERT INTO `quest_category` VALUES (5806, 'å¦‚æžœä¸æƒ³è¦æ¨¹ç«‹æ•µäººï¼Œ');
INSERT INTO `quest_category` VALUES (5807, 'é£Ÿå¤¢æ¨¹');
INSERT INTO `quest_category` VALUES (5808, 'ç¥žå¥‡çš„å¤¢ä¹‹ç²‰');
INSERT INTO `quest_category` VALUES (5809, 'å†’éšªå®¶çš„å¤¢');
INSERT INTO `quest_category` VALUES (5810, 'å¤±è¹¤çš„ç‰¹å·¥');
INSERT INTO `quest_category` VALUES (5811, 'å¦‚æžœä¸æƒ³è¦æ¨¹ç«‹æ•µäººï¼Œ');
INSERT INTO `quest_category` VALUES (5812, 'é£Ÿå¤¢æ¨¹');
INSERT INTO `quest_category` VALUES (5813, 'ç¥žå¥‡çš„å¤¢ä¹‹ç²‰');
INSERT INTO `quest_category` VALUES (5814, 'å†’éšªå®¶çš„å¤¢');
INSERT INTO `quest_category` VALUES (5816, 'å¼·èº«å¥é«”');
INSERT INTO `quest_category` VALUES (5817, 'æ¶²ç‹€è¡¨çš®ç´°èƒž');
INSERT INTO `quest_category` VALUES (5818, 'æœ€å¥½ä¸è¦åŽ»æ‰“æ“¾èœ‚å·¢');
INSERT INTO `quest_category` VALUES (5819, 'ç ´å£žèŸ²ç¹­');
INSERT INTO `quest_category` VALUES (5820, 'æœ€å¥½ä¸è¦åŽ»æ‰“æ“¾èœ‚å·¢');
INSERT INTO `quest_category` VALUES (5821, 'å¦‚æžœä¸æƒ³è¦æ¨¹ç«‹æ•µäººï¼Œ');
INSERT INTO `quest_category` VALUES (5824, 'çè²´ææ–™');
INSERT INTO `quest_category` VALUES (5825, 'æš—ç²¾éˆçš„æ™ºæ…§');
INSERT INTO `quest_category` VALUES (5826, 'è™›ç©ºé­”çŸ³');
INSERT INTO `quest_category` VALUES (5827, 'è™›ç©ºé­”çŸ³ (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (5828, 'è‹±é›„ - è‹±é›„çš„å¤¢');
INSERT INTO `quest_category` VALUES (5829, '[è‹±é›„] èˆ‡è¥¿åµçš„å¤¢');
INSERT INTO `quest_category` VALUES (5831, 'å¹»å½±æ‰‹é² 1/2');
INSERT INTO `quest_category` VALUES (5832, 'å¹»å½±æ‰‹é² 2/2');
INSERT INTO `quest_category` VALUES (5833, 'å¹»å½±æ‰‹é²åœ¨ä¸€å€‹');
INSERT INTO `quest_category` VALUES (5836, 'å‰å¾€æ‡¸ç©ºçš„æµ·æ¸¯ï¼');
INSERT INTO `quest_category` VALUES (5837, 'è¦æ­ä¹˜æµ·ä¸Šåˆ—è»Šå—Žï¼Ÿ');
INSERT INTO `quest_category` VALUES (5838, 'ç¬¬ä¸€æ¬¡äº¤æ˜“');
INSERT INTO `quest_category` VALUES (5839, 'åˆ—è»Šä¸Šçš„é»‘è‰²é±—ç‰‡');
INSERT INTO `quest_category` VALUES (5840, 'ç¬¬äºŒæ¬¡äº¤æ˜“');
INSERT INTO `quest_category` VALUES (5841, 'åœ¨å¤©ç•Œè¢«åŒåŒ–çš„ç¾Žäººé­š');
INSERT INTO `quest_category` VALUES (5842, 'é±·é­šçš„å·¢ç©´');
INSERT INTO `quest_category` VALUES (5843, 'å¤©ç•Œçç ');
INSERT INTO `quest_category` VALUES (5844, 'åˆéš†çš„å¥½æœ‹å‹ï¼Œç©ºç©º');
INSERT INTO `quest_category` VALUES (5845, 'é±·é­šçš„å·¢ç©´');
INSERT INTO `quest_category` VALUES (5846, 'å¤©ç•Œçç  (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (5847, 'æˆ‘ä¸è¦å«çµ¦é›„äººé­šï¼ï¼');
INSERT INTO `quest_category` VALUES (5848, 'æˆ‘ä¸è¦å«çµ¦é›„äººé­šï¼ï¼');
INSERT INTO `quest_category` VALUES (5849, 'å°‹æ‰¾ç©ºç©ºä¼Š');
INSERT INTO `quest_category` VALUES (5850, 'éµé±—æµ·ç›œåœ˜ï¼ˆåœ˜å“¡ï¼‰');
INSERT INTO `quest_category` VALUES (5851, 'éµé±—æµ·ç›œåœ˜ï¼ˆå‰¯èˆ¹é•·ï¼‰');
INSERT INTO `quest_category` VALUES (5852, 'éµé±—æµ·ç›œåœ˜ï¼ˆèˆ¹é•·ï¼‰');
INSERT INTO `quest_category` VALUES (5853, 'éµé±—æµ·ç›œåœ˜ï¼ˆè‰¦é•·ï¼‰');
INSERT INTO `quest_category` VALUES (5859, 'äº¤æ›èˆ¹å“¡çš„æˆ’æŒ‡ ');
INSERT INTO `quest_category` VALUES (5860, 'æ·±æµ·é …éŠ (1/2)');
INSERT INTO `quest_category` VALUES (5861, 'æ·±æµ·é …éŠ (2/2)');
INSERT INTO `quest_category` VALUES (5862, 'é‡é ˜æ·±æµ·é …éŠ');
INSERT INTO `quest_category` VALUES (5863, 'å¤©ç•Œç”Ÿå‘½é«”çš„è®ŠåŒ–');
INSERT INTO `quest_category` VALUES (5864, 'å¡å‹’ç‰¹è£å‚™æ¬é‹åˆ—è»Šæ™‚');
INSERT INTO `quest_category` VALUES (5865, 'ä¸–ä¸Šæ²’æœ‰å…è²»çš„åˆé¤');
INSERT INTO `quest_category` VALUES (5866, 'ç¢ºèªåˆ—è»Šå…§éƒ¨');
INSERT INTO `quest_category` VALUES (5867, 'ç ´å£žé‹è¼¸ä¸­çš„è£å‚™');
INSERT INTO `quest_category` VALUES (5868, 'æœ‰ç”¨çš„é›¶ä»¶');
INSERT INTO `quest_category` VALUES (5869, 'çƒé¾œ');
INSERT INTO `quest_category` VALUES (5870, 'æœ€é«˜ç´šçš„éµé±—');
INSERT INTO `quest_category` VALUES (5871, 'æµ·è³Šåœ˜é ­ç›®');
INSERT INTO `quest_category` VALUES (5872, 'å …ç¡¬çš„é¾œæ®¼');
INSERT INTO `quest_category` VALUES (5873, 'å …ç¡¬çš„é¾œæ®¼ (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (5874, 'é€™è£¡ä¹Ÿæœ‰ç©ºç©ºï¼Ÿ');
INSERT INTO `quest_category` VALUES (5875, 'è²´è³“ç”¨æ¡Œå­');
INSERT INTO `quest_category` VALUES (5876, 'æœ‰ç”¨çš„é›¶ä»¶');
INSERT INTO `quest_category` VALUES (5877, 'ç ´å£žé‹è¼¸ä¸­çš„è£å‚™');
INSERT INTO `quest_category` VALUES (5878, 'è²´è³“ç”¨æ¡Œå­');
INSERT INTO `quest_category` VALUES (5889, 'ç–‘æƒ‘ä¹‹æ‘');
INSERT INTO `quest_category` VALUES (5890, 'ç¿¡ç¿ æˆ’æŒ‡');
INSERT INTO `quest_category` VALUES (5891, 'ä½©æˆ´ç¿¡ç¿ æˆ’æŒ‡çš„å°‘å¥³');
INSERT INTO `quest_category` VALUES (5892, 'æ‚²æ…˜çš„æ‘èŽŠ');
INSERT INTO `quest_category` VALUES (5893, 'å…·æœ‰ç”Ÿæ°£çš„é ­é«®');
INSERT INTO `quest_category` VALUES (5894, 'éŸ¿å°¾è›‡çš„å°¾å·´');
INSERT INTO `quest_category` VALUES (5895, 'ç°è‰²çµæ™¶ (å¤§)');
INSERT INTO `quest_category` VALUES (5899, 'ç´…è‰²é‘½çŸ³');
INSERT INTO `quest_category` VALUES (5900, 'ç ´å£žæ²¹æ¡¶');
INSERT INTO `quest_category` VALUES (5901, 'åˆ°åº•æ˜¯ä¸æ˜¯å¯¶ç®±');
INSERT INTO `quest_category` VALUES (5902, 'å™å¿ƒçš„æ€ªç‰©');
INSERT INTO `quest_category` VALUES (5903, 'ä¿®ç·´çš„å¥½å°è±¡');
INSERT INTO `quest_category` VALUES (5904, 'ç´…è‰²é‘½çŸ³ (é‡è¤‡)');
INSERT INTO `quest_category` VALUES (5905, 'ç ´å£žæ²¹æ¡¶');
INSERT INTO `quest_category` VALUES (5906, 'åˆ°åº•æ˜¯ä¸æ˜¯å¯¶ç®±');
INSERT INTO `quest_category` VALUES (5907, 'å™å¿ƒçš„æº¶è§£æ€ª');
INSERT INTO `quest_category` VALUES (5908, 'ä¿®ç·´çš„å¥½å°è±¡');
INSERT INTO `quest_category` VALUES (5924, 'æ—¢ç„¶å¦‚æ­¤ï¼Œé€£ç“·å™¨ä¹Ÿ');
INSERT INTO `quest_category` VALUES (5925, 'è²´é‡çš„ç“·å™¨');
INSERT INTO `quest_category` VALUES (5926, 'äº¤æ›å‰¯èˆ¹é•·çš„æˆ’æŒ‡');
INSERT INTO `quest_category` VALUES (5928, 'æ¢…çˆ¾æ–‡Â·é‡Œå…‹ç‰¹çš„é«˜ç§‘æ');
INSERT INTO `quest_category` VALUES (5929, 'é‡é ˜é«˜ç§‘æŠ€æˆ’æŒ‡');
INSERT INTO `quest_category` VALUES (5950, 'æ”¶é›†å¾½ç« ');
INSERT INTO `quest_category` VALUES (5951, 'æ”¶é›†éšŽç´šç« ');
INSERT INTO `quest_category` VALUES (6501, 'Lv10åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨G.');
INSERT INTO `quest_category` VALUES (6502, 'Lv12åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨ç´');
INSERT INTO `quest_category` VALUES (6503, 'Lv14åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å');
INSERT INTO `quest_category` VALUES (6504, 'Lv16åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨èŽ');
INSERT INTO `quest_category` VALUES (6505, 'Lv18åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨èŽ');
INSERT INTO `quest_category` VALUES (6506, 'Lv20åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨è«');
INSERT INTO `quest_category` VALUES (6507, 'Lv22åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å');
INSERT INTO `quest_category` VALUES (6508, 'Lv25åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨è‰');
INSERT INTO `quest_category` VALUES (6509, 'Lv25åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨G.');
INSERT INTO `quest_category` VALUES (6510, 'Lv28åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨è¾');
INSERT INTO `quest_category` VALUES (6511, 'Lv32åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨èŽ');
INSERT INTO `quest_category` VALUES (6512, 'Lv34åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥');
INSERT INTO `quest_category` VALUES (6513, 'Lv36åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥');
INSERT INTO `quest_category` VALUES (6514, 'Lv39åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å…');
INSERT INTO `quest_category` VALUES (6515, 'Lv40åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å…');
INSERT INTO `quest_category` VALUES (6516, 'Lv43åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥');
INSERT INTO `quest_category` VALUES (6517, 'Lv44åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥');
INSERT INTO `quest_category` VALUES (6518, 'Lv46åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥');
INSERT INTO `quest_category` VALUES (6519, 'Lv48åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨ç±');
INSERT INTO `quest_category` VALUES (6520, 'Lv49åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨ç´');
INSERT INTO `quest_category` VALUES (6521, 'Lv51åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å…');
INSERT INTO `quest_category` VALUES (6522, 'Lv53åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å‡');
INSERT INTO `quest_category` VALUES (6523, 'Lv54åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨å¥');
INSERT INTO `quest_category` VALUES (6524, 'Lv58åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¢');
INSERT INTO `quest_category` VALUES (6525, 'Lv60åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¾');
INSERT INTO `quest_category` VALUES (6526, 'Lv63åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¾');
INSERT INTO `quest_category` VALUES (6527, 'Lv64åŠä»¥ä¸Šçš„è§’è‰²å¯åœ¨æ¾');
INSERT INTO `quest_category` VALUES (6528, 'Lv65ç´šå¯åœ¨è²å€«â€§åšå…§å“');
INSERT INTO `quest_category` VALUES (6529, 'Lv65ç´šå¯åœ¨è²å€«â€§åšå…§å“');
INSERT INTO `quest_category` VALUES (6530, 'Lv65ç´šå¯åœ¨è²å€«â€§åšå…§å“');
INSERT INTO `quest_category` VALUES (6531, 'è§’è‰²é”åˆ°Lv70ã€‚');
INSERT INTO `quest_category` VALUES (6532, 'ä½¿ç”¨æŠ€èƒ½æ™‚ï¼Œ æ¶ˆè€—10000');
INSERT INTO `quest_category` VALUES (6533, 'èƒŒæ“Šæ”»æ“Šé”åˆ°500æ¬¡ã€‚');
INSERT INTO `quest_category` VALUES (6534, 'åœ¨åœ°ä¸‹åŸŽä¸­ï¼Œ æ”»æ“Šæ•µäº');
INSERT INTO `quest_category` VALUES (6535, 'åœ¨åœ°ä¸‹åŸŽï¼Œ æœ€é«˜é€£æ“Šæ•');
INSERT INTO `quest_category` VALUES (6536, 'ä¸€æ¬¡æ”»æ“ŠåŒæ™‚è¢«5ååŠä»');
INSERT INTO `quest_category` VALUES (6537, 'è§£é«”è£å‚™æ™‚ç²å¾—50å€‹ä»¥ä');
INSERT INTO `quest_category` VALUES (6538, 'Lv66ç´šå¯åœ¨è²å€«â€§åšå…§å“');
INSERT INTO `quest_category` VALUES (6539, 'è§’è‰²é”åˆ°Lv70å¾Œï¼Œ å°‡å‰©é');
INSERT INTO `quest_category` VALUES (6540, 'ç‚ºéšŠå‹ä½¿ç”¨50å€‹å¾©æ´»å¹£ã');
INSERT INTO `quest_category` VALUES (6541, 'çµ„éšŠæ™‚ï¼Œ å‡ºç¾10æ¬¡æ“²å‡º');
INSERT INTO `quest_category` VALUES (6542, 'çµ„éšŠæ™‚ï¼Œ ç²å¾—100å€‹ä»¥ä¸');
INSERT INTO `quest_category` VALUES (6543, 'ä½¿ç”¨äººå½¢å¸«è£½ä½œçš„å¥³æ€§');
INSERT INTO `quest_category` VALUES (6544, 'ä½¿ç”¨äººå½¢å¸«è£½ä½œçš„ç”·æ€§');
INSERT INTO `quest_category` VALUES (6545, 'Lv50ç´šå¯åœ¨èŽŽè˜­è™•æŽ¥å—ä¸');
INSERT INTO `quest_category` VALUES (6546, 'åœ¨10åˆ†é˜å…§ï¼Œ é€šéŽæ­»ä¸­');
INSERT INTO `quest_category` VALUES (6547, 'åœ¨æ­»ä¸­å­œè–´ä¸‘A è¢«æ­»ä¸­å');
INSERT INTO `quest_category` VALUES (6548, 'é€šéŽæ­»ä¸­å­œè‡A ä¸¦ä¸”ä¸ä');
INSERT INTO `quest_category` VALUES (6549, 'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å');
INSERT INTO `quest_category` VALUES (6550, 'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å');
INSERT INTO `quest_category` VALUES (6551, 'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å');
INSERT INTO `quest_category` VALUES (6552, 'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å');
INSERT INTO `quest_category` VALUES (6553, 'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å');
INSERT INTO `quest_category` VALUES (6554, 'Lv52ç´šå¯åœ¨è³½èŽ‰äºžè™•æŽ¥å');
INSERT INTO `quest_category` VALUES (6555, 'åœ¨ç•°ç•Œåœ°ä¸‹åŸŽä¸­ï¼Œ ç¨è‡');
INSERT INTO `quest_category` VALUES (6556, 'åœ¨æ–°ç•°ç•Œåœ°ä¸‹åŸŽ(å·´å¡çˆ');
INSERT INTO `quest_category` VALUES (6557, 'åœ¨æ–°ç•°ç•Œåœ°ä¸‹åŸŽ(å·´å¡çˆ');
INSERT INTO `quest_category` VALUES (6558, 'åœ¨10åˆ†é˜å…§ï¼Œ é€šéŽè˜­è’‚');
INSERT INTO `quest_category` VALUES (6559, 'åœ¨è •å‹•ä¹‹åŸŽå…§çš„3å€‹é¾é¨');
INSERT INTO `quest_category` VALUES (6560, 'å“¥å¸ƒæž—çŽ‹åœ‹ç”¨ä¸­å¤®è£ç½®');
INSERT INTO `quest_category` VALUES (6561, 'å“¥å¸ƒæž—çŽ‹åœ‹å…‹åˆ©å…‹çš„æ†¤');
INSERT INTO `quest_category` VALUES (6562, '[é»‘è‰²å¤§åœ°]åœ°ä¸‹åŸŽä¸­ï¼Œ ');
INSERT INTO `quest_category` VALUES (6563, '[ç•°ç•Œè£‚ç¸«]é ˜ä¸»æˆ¿é–“ä¸­ï');
INSERT INTO `quest_category` VALUES (6564, '[å·´å¡çˆ¾ä¹‹åŸŽ]é ˜ä¸»çš„DDRæ');
INSERT INTO `quest_category` VALUES (6565, 'é™¤äº†è¼”åŠ©è£å‚™ã€ é­”æ³•çŸ');
INSERT INTO `quest_category` VALUES (6566, 'é™¤äº†ç¨±è™Ÿä¹‹å¤–ï¼Œ æ‰€æœ‰éƒ');
INSERT INTO `quest_category` VALUES (6567, 'è£å‚™Lv55ä»¥ä¸Šçš„ç¥žå™¨ç­‰ç´');
INSERT INTO `quest_category` VALUES (6568, 'ç©¿æˆ´Lv50ä»¥ä¸Šçš„ç¥žå™¨ç­‰ç´');
INSERT INTO `quest_category` VALUES (6569, 'é–‹å•Ÿ100å€‹åœŸç½å‡ºå”®çš„è¢–');
INSERT INTO `quest_category` VALUES (6570, 'é–‹å•Ÿ300å€‹ç«ç½å‡ºå”®çš„è¢–');
INSERT INTO `quest_category` VALUES (6571, 'é–‹å•Ÿ300å€‹æœ¨ç½å‡ºå”®çš„è¢–');
INSERT INTO `quest_category` VALUES (6572, 'é–‹å•Ÿ300å€‹æ°´ç½å‡ºå”®çš„è¢–');
INSERT INTO `quest_category` VALUES (6573, 'é–‹å•Ÿ150å€‹é‡‘ç½å‡ºå”®çš„è¢–');
INSERT INTO `quest_category` VALUES (6574, 'é–‹å•Ÿ100å€‹åˆéš†å‡ºå”®çš„è¢–');
INSERT INTO `quest_category` VALUES (6575, 'é‡Žè‰èŽ“ã€ æœ‰æ©Ÿè‰èŽ“ã€ ç');
INSERT INTO `quest_category` VALUES (6576, 'ç´¯è¨ˆæ¶ˆè€—1000å€‹éŠ³çœ¼è—¥åŠ');
INSERT INTO `quest_category` VALUES (6577, 'æŠ€èƒ½åˆå§‹åŒ–5æ¬¡');
INSERT INTO `quest_category` VALUES (6578, 'ç´¯è¨ˆæ¶ˆè€—500å€‹è»ç³§ (çš‡é');
INSERT INTO `quest_category` VALUES (6579, 'ç´¯è¨ˆæ¶ˆè€—500å€‹éŠé‡‘è¡“å¸«');
INSERT INTO `quest_category` VALUES (6580, 'æ“æœ‰éºµåŒ…å’Œç‰›å¥¶å„1000å€');
INSERT INTO `quest_category` VALUES (6581, 'æ“æœ‰30ä»¶åŠä»¥ä¸Šçš„è£æ‰®ã');
INSERT INTO `quest_category` VALUES (6582, 'ç©¿æˆ´å…‹éš†ç¨€æœ‰è£æ‰®çš„éƒ¨');
INSERT INTO `quest_category` VALUES (6583, 'æ“æœ‰å­µåŒ–çš„å¯µç‰©é”åˆ°5å€');
INSERT INTO `quest_category` VALUES (6584, 'å°‡è£æ‰®é‡é‘„ç‚ºå¾½ç« 10æ¬¡ã');
INSERT INTO `quest_category` VALUES (6585, 'æ“æœ‰ä¸åŒé¡è‰²çš„å¤§æ™¶é«”');
INSERT INTO `quest_category` VALUES (6586, 'æ“æœ‰200å€‹[å¼·çƒˆä¹‹ç—•è·¡]ã');
INSERT INTO `quest_category` VALUES (6587, 'æ“æœ‰50å€‹[æ¿ƒç¸®çš„ç´”æ½”ä¹‹');
INSERT INTO `quest_category` VALUES (6588, 'æ“æœ‰[ç‡¦çˆ›çš„å®‡å®™éˆé­‚]ã');
INSERT INTO `quest_category` VALUES (6589, 'æ‰“ç ´20å€‹ç¨€æœ‰ç´šä»¥ä¸Šç­‰ç');
INSERT INTO `quest_category` VALUES (6590, 'å°‡ç¨€æœ‰åŠä»¥ä¸Šç­‰ç´šçš„è£');
INSERT INTO `quest_category` VALUES (6591, 'å°‡æŸä¸€å€‹è£å‚™å¼·åŒ–è‡³+15');
INSERT INTO `quest_category` VALUES (6592, 'åœ¨å…¬å¹³çš„æ±ºé¬¥å ´ä¸­ï¼Œ å®');
INSERT INTO `quest_category` VALUES (6593, 'åœ¨æ±ºé¬¥å ´æ“‚è‡ºè³½ä¸­ï¼Œ ç');
INSERT INTO `quest_category` VALUES (6594, 'åœ¨æ±ºé¬¥å ´æ“‚è‡ºè³½ä¸­ï¼Œ 0æ');
INSERT INTO `quest_category` VALUES (6595, 'è®“ä¸€å€‹è§’è‰²åœ¨åŸŽéŽ®ä¸­é€£');
INSERT INTO `quest_category` VALUES (6596, 'åœ¨DNFå°ˆå±¬ç¶²å’–ï¼Œ ï¼Œ é€£ç');
INSERT INTO `quest_category` VALUES (6597, 'æ–½æ”¾ä¸»å‹•è¦ºé†’æŠ€èƒ½é”åˆ°');
INSERT INTO `quest_category` VALUES (6598, 'ä½¿ç”¨ä¼ºæœå™¨å–‡å­æˆ–è§£æ”¾');
INSERT INTO `quest_category` VALUES (6599, 'é€²è¡Œ3æ¬¡è¡—é ­çˆ­éœ¸ã€‚');
INSERT INTO `quest_category` VALUES (6600, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬1å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6601, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬3å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6602, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬5å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6603, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬7å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6604, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬8å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6605, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬9å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6606, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬11å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6607, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬14å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6608, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬16å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6609, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬17å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6610, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬18å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6611, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬21å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6612, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬22å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6613, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬24å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6614, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬25å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6615, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬27å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6616, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬28å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6617, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬29å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6618, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬31å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6619, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬33å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6620, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬34å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6621, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬35å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6622, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬36å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6623, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬38å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6624, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬39å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6625, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬43å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6626, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬44å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6627, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬45å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6628, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬46å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6629, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬47å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6630, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬49å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6631, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬55å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6632, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬59å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6633, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬61å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6634, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬63å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6635, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬68å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6636, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬69å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6637, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬73å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6638, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬78å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6639, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬82å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6640, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬83å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6641, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬84å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6642, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬88å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6643, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬89å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6644, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬93å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6645, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬95å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6646, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬97å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6647, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬98å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6648, 'é€šéŽçµ•æœ›ä¹‹å¡”ç¬¬100å±¤ã€‚');
INSERT INTO `quest_category` VALUES (6649, 'ä¸€èˆ¬é›£åº¦ä»¥ä¸Šé€šéŽ[å·´å');
INSERT INTO `quest_category` VALUES (6650, 'è¢«çµ•æœ›ä¹‹æ³°ç‘ªç‰¹çš„çµ•æœ›');
INSERT INTO `quest_category` VALUES (6651, 'åœ¨ç©ºé–“æ”¯é…è€…å¡çƒå°¼æ–¯');
INSERT INTO `quest_category` VALUES (6652, 'å®Œæˆå¾žLv71 å…‹å€«ç‰¹ç²å¾—ç');
INSERT INTO `quest_category` VALUES (6653, 'å®ŒæˆLv72è¥¿åµçµ¦äºˆçš„ã€Œçµ');
INSERT INTO `quest_category` VALUES (6654, 'å®Œæˆåœ¨Lv73æ­Œè˜­è’‚æ–¯ç²å¾');
INSERT INTO `quest_category` VALUES (6655, 'å®ŒæˆLV75è¥¿åµçµ¦äºˆçš„ã€Œå');
INSERT INTO `quest_category` VALUES (6656, 'å®ŒæˆLv76ä¿Šçµ¦äºˆçš„ã€Œå°‘å¹');
INSERT INTO `quest_category` VALUES (6657, 'å®ŒæˆLv77è‰¾éº—çµ²çµ¦äºˆçš„ã€');
INSERT INTO `quest_category` VALUES (6658, 'å®ŒæˆLv78 ä½©å‹’å¨å› çµ¦çš„ã');
INSERT INTO `quest_category` VALUES (6659, 'å®ŒæˆLv79 ä¸­å°‰å°¼è²çˆ¾çµ¦ç');
INSERT INTO `quest_category` VALUES (6660, 'å®ŒæˆLv80 ä¸­å°‰å°¼è²çˆ¾çµ¦ç');
INSERT INTO `quest_category` VALUES (6661, 'å®ŒæˆLv81 ä¸­å°‰å°¼è²çˆ¾çµ¦ç');
INSERT INTO `quest_category` VALUES (6662, 'å®ŒæˆLv82 ä½©å‹’å¨å› çµ¦çš„ã');
INSERT INTO `quest_category` VALUES (6700, 'æ´»å‹•å·²çµæŸã€‚');
INSERT INTO `quest_category` VALUES (6701, 'æ´»å‹•å·²çµæŸã€‚');
INSERT INTO `quest_category` VALUES (6702, 'æ´»å‹•å·²çµæŸã€‚');
INSERT INTO `quest_category` VALUES (6703, 'æ´»å‹•å·²çµæŸã€‚');
INSERT INTO `quest_category` VALUES (6704, 'æ´»å‹•å·²çµæŸã€‚');
INSERT INTO `quest_category` VALUES (6705, 'æ´»å‹•å·²çµæŸã€‚');
INSERT INTO `quest_category` VALUES (6706, 'åœ¨æ™®é€šæˆ–è€…å…¬æœƒèŠå¤©æ¬„');
INSERT INTO `quest_category` VALUES (6707, 'ä½¿ç”¨[æ´»åŠ›å°ç‹—]12å€‹ã€‚ (');
INSERT INTO `quest_category` VALUES (6708, 'ç ´æ‹›æ”»æ“Šæ•¸é”åˆ°777æ¬¡ã€‚');
INSERT INTO `quest_category` VALUES (6709, 'æˆåŠŸä½¿ç”¨[å‘½é‹ç¡¬å¹£]ã€ ');
INSERT INTO `quest_category` VALUES (6710, 'ç´¯è¨ˆæ¶ˆæ»…2012éš»æ€ªç‰©ã€‚');
INSERT INTO `quest_category` VALUES (6711, 'ä½¿ç”¨15å€‹ä»¥ä¸‹çš„[ç„¡è‰²å°');
INSERT INTO `quest_category` VALUES (7100, 'å¤œé–“è¥²æ“Šæˆ° - æ™‚é–“');
INSERT INTO `quest_category` VALUES (7101, 'å¤œé–“è¥²æ“Šæˆ° - è¢«æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7104, 'å¤œé–“è¥²æ“Šæˆ° - å¾©æ´»æ¬¡æ•¸');
INSERT INTO `quest_category` VALUES (7105, 'å¤œé–“è¥²æ“Šæˆ° - é»˜å¥‘');
INSERT INTO `quest_category` VALUES (7106, 'å¤œé–“è¥²æ“Šæˆ° - é€£æ“ŠçŽ‡(Co');
INSERT INTO `quest_category` VALUES (7107, 'å¤œé–“è¥²æ“Šæˆ° - èƒŒå¾Œå·è¥²');
INSERT INTO `quest_category` VALUES (7108, 'å¤œé–“è¥²æ“Šæˆ° - ç ´æ•µåˆ¶å‹');
INSERT INTO `quest_category` VALUES (7109, 'å¤œé–“è¥²æ“Šæˆ° - æœ€å¤§é€£æ“Š');
INSERT INTO `quest_category` VALUES (7110, 'å¤œé–“è¥²æ“Šæˆ° - åœ°åœ–é€šéŽ');
INSERT INTO `quest_category` VALUES (7113, 'å¤œé–“è¥²æ“Šæˆ° - ç¾¤é«”æ”»æ“Š');
INSERT INTO `quest_category` VALUES (7114, 'è£œçµ¦ç·šé˜»æ–·æˆ° - æ™‚é–“');
INSERT INTO `quest_category` VALUES (7115, 'è£œçµ¦ç·šé˜»æ–·æˆ° - è¢«æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7118, 'è£œçµ¦ç·šé˜»æ–·æˆ° - å¾©æ´»æ¬¡');
INSERT INTO `quest_category` VALUES (7119, 'è£œçµ¦ç·šé˜»æ–·æˆ° - é»˜å¥‘');
INSERT INTO `quest_category` VALUES (7120, 'è£œçµ¦ç·šé˜»æ–·æˆ° - é€£æ“ŠçŽ‡');
INSERT INTO `quest_category` VALUES (7121, 'è£œçµ¦ç·šé˜»æ–·æˆ° - èƒŒå¾Œå·');
INSERT INTO `quest_category` VALUES (7122, 'è£œçµ¦ç·šé˜»æ–·æˆ° - ç ´æ•µåˆ¶');
INSERT INTO `quest_category` VALUES (7123, 'è£œçµ¦ç·šé˜»æ–·æˆ° - æœ€å¤§é€£');
INSERT INTO `quest_category` VALUES (7124, 'è£œçµ¦ç·šé˜»æ–·æˆ° - åœ°åœ–é€š');
INSERT INTO `quest_category` VALUES (7127, 'è£œçµ¦ç·šé˜»æ–·æˆ° - ç¾¤é«”æ”»');
INSERT INTO `quest_category` VALUES (7128, 'è¿½æ“Šæ®²æ»…æˆ° - æ™‚é–“');
INSERT INTO `quest_category` VALUES (7129, 'è¿½æ“Šæ®²æ»…æˆ° - è¢«æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7132, 'è¿½æ“Šæ®²æ»…æˆ° - å¾©æ´»æ¬¡æ•¸');
INSERT INTO `quest_category` VALUES (7133, 'è¿½æ“Šæ®²æ»…æˆ° - é»˜å¥‘');
INSERT INTO `quest_category` VALUES (7134, 'è¿½æ“Šæ®²æ»…æˆ° - é€£æ“ŠçŽ‡(Co');
INSERT INTO `quest_category` VALUES (7135, 'è¿½æ“Šæ®²æ»…æˆ° - èƒŒå¾Œå·è¥²');
INSERT INTO `quest_category` VALUES (7136, 'è¿½æ“Šæ®²æ»…æˆ° - ç ´æ•µåˆ¶å‹');
INSERT INTO `quest_category` VALUES (7137, 'è¿½æ“Šæ®²æ»…æˆ° - æœ€å¤§é€£æ“Š');
INSERT INTO `quest_category` VALUES (7138, 'è¿½æ“Šæ®²æ»…æˆ° - åœ°åœ–é€šéŽ');
INSERT INTO `quest_category` VALUES (7141, 'è¿½æ“Šæ®²æ»…æˆ° - ç¾¤é«”æ”»æ“Š');
INSERT INTO `quest_category` VALUES (7142, 'è¡€è´è¶ä¹‹èˆž - æ™‚é–“');
INSERT INTO `quest_category` VALUES (7143, 'è¡€è´è¶ä¹‹èˆž - è¢«æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7146, 'è¡€è´è¶ä¹‹èˆž - å¾©æ´»æ¬¡æ•¸');
INSERT INTO `quest_category` VALUES (7147, 'è¡€è´è¶ä¹‹èˆž - é»˜å¥‘');
INSERT INTO `quest_category` VALUES (7148, 'è¡€è´è¶ä¹‹èˆž - é€£æ“ŠçŽ‡(Co');
INSERT INTO `quest_category` VALUES (7149, 'è¡€è´è¶ä¹‹èˆž - èƒŒå¾Œå·è¥²');
INSERT INTO `quest_category` VALUES (7150, 'è¡€è´è¶ä¹‹èˆž - ç ´æ•µåˆ¶å‹');
INSERT INTO `quest_category` VALUES (7151, 'è¡€è´è¶ä¹‹èˆž - æœ€å¤§é€£æ“Š');
INSERT INTO `quest_category` VALUES (7152, 'è¡€è´è¶ä¹‹èˆž - åœ°åœ–é€šéŽ');
INSERT INTO `quest_category` VALUES (7155, 'è¡€è´è¶ä¹‹èˆž - ç¾¤é«”æ”»æ“Š');
INSERT INTO `quest_category` VALUES (7156, 'ç–‘æƒ‘ä¹‹æ‘ - æ™‚é–“');
INSERT INTO `quest_category` VALUES (7157, 'ç–‘æƒ‘ä¹‹æ‘ - è¢«æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7160, 'ç–‘æƒ‘ä¹‹æ‘ - å¾©æ´»æ¬¡æ•¸');
INSERT INTO `quest_category` VALUES (7161, 'ç–‘æƒ‘ä¹‹æ‘ - é»˜å¥‘');
INSERT INTO `quest_category` VALUES (7162, 'ç–‘æƒ‘ä¹‹æ‘ - é€£æ“ŠçŽ‡(Combo');
INSERT INTO `quest_category` VALUES (7163, 'ç–‘æƒ‘ä¹‹æ‘ - èƒŒå¾Œå·è¥²');
INSERT INTO `quest_category` VALUES (7164, 'ç–‘æƒ‘ä¹‹æ‘ - ç ´æ•µåˆ¶å‹(Co');
INSERT INTO `quest_category` VALUES (7165, 'ç–‘æƒ‘ä¹‹æ‘ - æœ€å¤§é€£æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7169, 'ç–‘æƒ‘ä¹‹æ‘ - ç¾¤é«”æ”»æ“Š');
INSERT INTO `quest_category` VALUES (7170, 'åˆ—è»Šä¸Šçš„æµ·è³Š - æ™‚é–“');
INSERT INTO `quest_category` VALUES (7171, 'åˆ—è»Šä¸Šçš„æµ·è³Š - è¢«æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7174, 'åˆ—è»Šä¸Šçš„æµ·è³Š - å¾©æ´»æ¬¡');
INSERT INTO `quest_category` VALUES (7175, 'åˆ—è»Šä¸Šçš„æµ·è³Š - é»˜å¥‘');
INSERT INTO `quest_category` VALUES (7176, 'åˆ—è»Šä¸Šçš„æµ·è³Š - é€£æ“ŠçŽ‡');
INSERT INTO `quest_category` VALUES (7177, 'åˆ—è»Šä¸Šçš„æµ·è³Š - èƒŒå¾Œå·');
INSERT INTO `quest_category` VALUES (7178, 'åˆ—è»Šä¸Šçš„æµ·è³Š - ç ´æ•µåˆ¶');
INSERT INTO `quest_category` VALUES (7179, 'åˆ—è»Šä¸Šçš„æµ·è³Š - æœ€å¤§é€£');
INSERT INTO `quest_category` VALUES (7180, 'åˆ—è»Šä¸Šçš„æµ·è³Š - åœ°åœ–é€š');
INSERT INTO `quest_category` VALUES (7183, 'åˆ—è»Šä¸Šçš„æµ·è³Š - ç¾¤é«”æ”»');
INSERT INTO `quest_category` VALUES (7184, 'å¥ªå›žè¥¿éƒ¨ç·š - æ™‚é–“');
INSERT INTO `quest_category` VALUES (7185, 'å¥ªå›žè¥¿éƒ¨ç·š - è¢«æ“Šæ•¸');
INSERT INTO `quest_category` VALUES (7188, 'å¥ªå›žè¥¿éƒ¨ç·š - å¾©æ´»æ¬¡æ•¸');
INSERT INTO `quest_category` VALUES (7189, 'å¥ªå›žè¥¿éƒ¨ç·š - é»˜å¥‘');
INSERT INTO `quest_category` VALUES (7190, 'å¥ªå›žè¥¿éƒ¨ç·š - é€£æ“ŠçŽ‡(Co');
INSERT INTO `quest_category` VALUES (7191, 'å¥ªå›žè¥¿éƒ¨ç·š - èƒŒå¾Œå·è¥²');
INSERT INTO `quest_category` VALUES (7192, 'å¥ªå›žè¥¿éƒ¨ç·š - ç ´æ•µåˆ¶å‹');
INSERT INTO `quest_category` VALUES (7193, 'å¥ªå›žè¥¿éƒ¨ç·š - æœ€å¤§é€£æ“Š');
INSERT INTO `quest_category` VALUES (7194, 'å¥ªå›žè¥¿éƒ¨ç·š - åœ°åœ–é€šéŽ');
INSERT INTO `quest_category` VALUES (7197, 'å¥ªå›žè¥¿éƒ¨ç·š - ç¾¤é«”æ”»æ“Š');
INSERT INTO `quest_category` VALUES (7310, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ±ºé¬¥å‹');
INSERT INTO `quest_category` VALUES (7312, 'è²åˆ©ç‰¹çš„è€ƒé©— - è¿·å¦„ä¹‹');
INSERT INTO `quest_category` VALUES (7313, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ­»äº¡ä¹‹');
INSERT INTO `quest_category` VALUES (7314, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ­»äº¡ä¹‹');
INSERT INTO `quest_category` VALUES (7315, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ ¹ç‰¹é€±');
INSERT INTO `quest_category` VALUES (7316, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ ¹ç‰¹æ±');
INSERT INTO `quest_category` VALUES (7317, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ ¹ç‰¹å—');
INSERT INTO `quest_category` VALUES (7318, 'è²åˆ©ç‰¹çš„è€ƒé©— - å¤ä»£åœ°');
INSERT INTO `quest_category` VALUES (7319, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ”¶é›†å¾½');
INSERT INTO `quest_category` VALUES (7320, 'è²åˆ©ç‰¹çš„è€ƒé©— - å®‡å®™éˆ');
INSERT INTO `quest_category` VALUES (7322, 'è²åˆ©ç‰¹çš„è€ƒé©— - é€£æ“Šæ®º');
INSERT INTO `quest_category` VALUES (7323, 'è²åˆ©ç‰¹çš„è€ƒé©— - é€£æ“Šæ®º');
INSERT INTO `quest_category` VALUES (7324, 'è²åˆ©ç‰¹çš„è€ƒé©— - é€£æ“Šæ®º');
INSERT INTO `quest_category` VALUES (7325, 'è²åˆ©ç‰¹çš„è€ƒé©— - é€šéŽæ­»');
INSERT INTO `quest_category` VALUES (7326, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ­»äº¡ä¹‹');
INSERT INTO `quest_category` VALUES (7327, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ±ºé¬¥å‹');
INSERT INTO `quest_category` VALUES (7328, 'è²åˆ©ç‰¹çš„è€ƒé©— - å®‡å®™éˆ');
INSERT INTO `quest_category` VALUES (7329, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ™‚é–“æ ¹');
INSERT INTO `quest_category` VALUES (7330, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ™‚é–“æ ¹');
INSERT INTO `quest_category` VALUES (7331, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ™‚é–“æ ¹');
INSERT INTO `quest_category` VALUES (7332, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ”»ç•¥æ‰€');
INSERT INTO `quest_category` VALUES (7333, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ”»ç•¥æ‰€');
INSERT INTO `quest_category` VALUES (7334, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ”»ç•¥æ‰€');
INSERT INTO `quest_category` VALUES (7336, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ”¶é›†æ');
INSERT INTO `quest_category` VALUES (7337, 'è²åˆ©ç‰¹çš„è€ƒé©— - æ”¶é›†æ');
INSERT INTO `quest_category` VALUES (7338, 'è²åˆ©ç‰¹çš„è€ƒé©— - å¡å‹’ç‰¹');
INSERT INTO `quest_category` VALUES (7612, 'è¦ºé†’ - ç‹‚è™Žå¸ 1');
INSERT INTO `quest_category` VALUES (7613, 'è¦ºé†’ - ç‹‚è™Žå¸ 2');
INSERT INTO `quest_category` VALUES (7614, 'è¦ºé†’ - ç‹‚è™Žå¸ 3');
INSERT INTO `quest_category` VALUES (7615, 'è¦ºé†’ - ç‹‚è™Žå¸ 4');
INSERT INTO `quest_category` VALUES (7618, 'è¦ºé†’ - æ­¦æ¥µ1 ');
INSERT INTO `quest_category` VALUES (7619, 'è¦ºé†’ - æ­¦æ¥µ2 ');
INSERT INTO `quest_category` VALUES (7620, 'è¦ºé†’ - æ­¦æ¥µ3 ');
INSERT INTO `quest_category` VALUES (7621, 'è¦ºé†’ - æ­¦æ¥µ4 ');
INSERT INTO `quest_category` VALUES (7628, 'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 1');
INSERT INTO `quest_category` VALUES (7629, 'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 2');
INSERT INTO `quest_category` VALUES (7630, 'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 3');
INSERT INTO `quest_category` VALUES (7631, 'è¦ºé†’ - åƒæ‰‹ç¾…æ¼¢ 4');
INSERT INTO `quest_category` VALUES (7634, 'è¦ºé†’ - æ³°å¦ 1');
INSERT INTO `quest_category` VALUES (7635, 'è¦ºé†’ - æ³°å¦ 2');
INSERT INTO `quest_category` VALUES (7636, 'è¦ºé†’ - æ³°å¦ 3');
INSERT INTO `quest_category` VALUES (7637, 'è¦ºé†’ - æ³°å¦ 4');
INSERT INTO `quest_category` VALUES (7640, 'æ ¼é¬¥å®¶ä¹‹è·¯ - é–‹å§‹');
INSERT INTO `quest_category` VALUES (7641, 'æ ¼é¬¥å®¶ä¹‹è·¯ - èµ«é “ç‘ªçˆ¾');
INSERT INTO `quest_category` VALUES (7642, 'æ ¼é¬¥å®¶ä¹‹è·¯ - æ‰€è¬‚çš„è½‰');
INSERT INTO `quest_category` VALUES (7643, 'æ›´å¼·çš„æ•µäºº');
INSERT INTO `quest_category` VALUES (7644, 'G.S.Dçš„è©¦é©—');
INSERT INTO `quest_category` VALUES (7645, 'æ–°æ­¦å™¨çš„å¨åŠ›');
INSERT INTO `quest_category` VALUES (7646, 'æ ¼é¬¥å®¶ä¹‹è·¯ - é¢¨éœ‡');
INSERT INTO `quest_category` VALUES (7647, 'æ ¼é¬¥å®¶ä¹‹è·¯ - ä»»å‹™å•†åº—');
INSERT INTO `quest_category` VALUES (7648, '[å¤ä»£åœ°ä¸‹åŸŽ] æž—ç´æ–¯çš„');
INSERT INTO `quest_category` VALUES (7649, '[å¤ä»£åœ°ä¸‹åŸŽ] å¸ƒè¬åŠ çš„');
INSERT INTO `quest_category` VALUES (7650, '[å¤ä»£åœ°ä¸‹åŸŽ] æŽ¢ç´¢æ‚²é³´');
INSERT INTO `quest_category` VALUES (7651, '[å¤ä»£åœ°ä¸‹åŸŽ] å¼·å¤§çš„æ”¯');
INSERT INTO `quest_category` VALUES (7652, '[å¤ä»£åœ°ä¸‹åŸŽ]  æ”¯æ´è€…çš');
INSERT INTO `quest_category` VALUES (7680, 'Test');
INSERT INTO `quest_category` VALUES (7681, 'Test');
INSERT INTO `quest_category` VALUES (7682, 'Test');
INSERT INTO `quest_category` VALUES (7683, 'Test');
INSERT INTO `quest_category` VALUES (7684, 'Test');
INSERT INTO `quest_category` VALUES (7685, 'Test');
INSERT INTO `quest_category` VALUES (7686, 'Test');
INSERT INTO `quest_category` VALUES (7687, 'Test');
INSERT INTO `quest_category` VALUES (7688, 'Test');
INSERT INTO `quest_category` VALUES (7689, 'Test');
INSERT INTO `quest_category` VALUES (7690, 'Test');
INSERT INTO `quest_category` VALUES (7691, 'Test');
INSERT INTO `quest_category` VALUES (7704, 'Test');
INSERT INTO `quest_category` VALUES (7705, 'Test');
INSERT INTO `quest_category` VALUES (7706, 'Test');
INSERT INTO `quest_category` VALUES (7707, 'Test');
INSERT INTO `quest_category` VALUES (7708, 'Test');
INSERT INTO `quest_category` VALUES (7709, 'Test');
INSERT INTO `quest_category` VALUES (7710, 'Test');
INSERT INTO `quest_category` VALUES (7711, 'Test');
INSERT INTO `quest_category` VALUES (7803, 'è½‰è· - åŠé­‚ï¼ˆWeaponMaster');
INSERT INTO `quest_category` VALUES (7807, 'è½‰è· - å™¬é­‚è€…ï¼ˆSoulbring');
INSERT INTO `quest_category` VALUES (7810, 'è½‰è· - ç‹‚æˆ°å£«ï¼ˆBerserker');
INSERT INTO `quest_category` VALUES (7814, 'è½‰è· - é˜¿ä¿®ç¾…ï¼ˆAsuraï¼‰');
INSERT INTO `quest_category` VALUES (7817, 'è½‰è· -é¬¥æ°£å¸«ï¼ˆNEN Master');
INSERT INTO `quest_category` VALUES (7820, 'è½‰è· - æ­¦é¬¥ï¼ˆStrikerï¼‰');
INSERT INTO `quest_category` VALUES (7824, 'è½‰è· - è¡—éœ¸ï¼ˆStreet Fight');
INSERT INTO `quest_category` VALUES (7827, 'è½‰è· - æŸ”é“å®¶ï¼ˆGrapplerï');
INSERT INTO `quest_category` VALUES (7831, 'è½‰è· - éŠä¿ ï¼ˆRangerï¼‰');
INSERT INTO `quest_category` VALUES (7834, 'è½‰è· - é‡ç‚®æ‰‹ï¼ˆLauncherï');
INSERT INTO `quest_category` VALUES (7837, 'è½‰è· - æ©Ÿæ¢°å¸«ï¼ˆMechanicï');
INSERT INTO `quest_category` VALUES (7840, 'è½‰è· - é­”å½ˆå°„æ‰‹ï¼ˆSpitfi');
INSERT INTO `quest_category` VALUES (7842, 'è½‰è· - å…ƒç´ ä½¿ï¼ˆElemental');
INSERT INTO `quest_category` VALUES (7845, 'è½‰è· - å¬å–šå£«ï¼ˆSummonerï');
INSERT INTO `quest_category` VALUES (7848, 'è½‰è· - é­”é¬¥å£«ï¼ˆBattle Ma');
INSERT INTO `quest_category` VALUES (7851, 'è½‰è· - é­”é“å­¸è€…ï¼ˆWitchï');
INSERT INTO `quest_category` VALUES (7855, 'è½‰è· - è–é¨Žå£«ï¼ˆCrusaderï');
INSERT INTO `quest_category` VALUES (7859, 'è½‰è· - è—æ‹³è–ä½¿ï¼ˆInfigh');
INSERT INTO `quest_category` VALUES (7862, 'è½‰è· - é©…é­”å¸«ï¼ˆExorcistï');
INSERT INTO `quest_category` VALUES (7866, 'è½‰è· - å¾©ä»‡è€…ï¼ˆAvengerï¼');
INSERT INTO `quest_category` VALUES (7870, 'è½‰è· - éŠä¿ ï¼ˆRangerï¼‰');
INSERT INTO `quest_category` VALUES (7873, 'è½‰è· - é‡ç‚®æ‰‹ï¼ˆLauncherï');
INSERT INTO `quest_category` VALUES (7876, 'è½‰è· - æ©Ÿæ¢°å¸«ï¼ˆMechanicï');
INSERT INTO `quest_category` VALUES (7879, 'è½‰è· - é­”å½ˆå°„æ‰‹ï¼ˆSpitfi');
INSERT INTO `quest_category` VALUES (7882, 'è½‰è· - æš—è¡Œå¾¡å²ï¼ˆRogueï');
INSERT INTO `quest_category` VALUES (7886, 'è½‰è· - æ­»éˆè¡“å£«ï¼ˆNecrom');
INSERT INTO `quest_category` VALUES (7889, 'è½‰è· -é¬¥æ°£å¸«ï¼ˆNEN Master');
INSERT INTO `quest_category` VALUES (7892, 'è½‰è· - æ­¦é¬¥ï¼ˆStrikerï¼‰');
INSERT INTO `quest_category` VALUES (7895, 'è½‰è· - è¡—éœ¸ï¼ˆStreet Fight');
INSERT INTO `quest_category` VALUES (7898, 'è½‰è· - æŸ”é“å®¶ï¼ˆGrapplerï');
INSERT INTO `quest_category` VALUES (9501, 'æ–°ç”Ÿçš„DNF');
INSERT INTO `quest_category` VALUES (9502, 'ç«¯åˆå¥½ Fun ç²½ï¼');
INSERT INTO `quest_category` VALUES (9503, 'æ·±æ·µçš„ç¢Žç‰‡');
COMMIT;

-- ----------------------------
-- Table structure for server_state_info
-- ----------------------------
DROP TABLE IF EXISTS `server_state_info`;
CREATE TABLE `server_state_info` (
  `category` int(11) NOT NULL default '-1',
  `code` int(11) NOT NULL default '-1',
  `state` binary(12) NOT NULL default '\0\0\0\0\0\0\0\0\0\0\0\0',
  `start_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`category`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_state_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for single_rank_avg
-- ----------------------------
DROP TABLE IF EXISTS `single_rank_avg`;
CREATE TABLE `single_rank_avg` (
  `dungeon_index` smallint(6) NOT NULL default '0',
  `level` smallint(6) NOT NULL default '0',
  `job` smallint(6) NOT NULL default '0',
  `clear_count` bigint(20) NOT NULL default '0',
  `average` int(11) NOT NULL default '0',
  PRIMARY KEY  (`dungeon_index`,`level`,`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of single_rank_avg
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sp_reward
-- ----------------------------
DROP TABLE IF EXISTS `sp_reward`;
CREATE TABLE `sp_reward` (
  `grade` int(11) NOT NULL default '0',
  `sp` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_reward
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for stat_game_channel
-- ----------------------------
DROP TABLE IF EXISTS `stat_game_channel`;
CREATE TABLE `stat_game_channel` (
  `gc_channel` varchar(10) NOT NULL default '',
  `gc_up_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `gc_now` smallint(6) NOT NULL default '0',
  KEY `gc_channel` USING BTREE (`gc_channel`,`gc_up_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stat_game_channel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for test_sooya
-- ----------------------------
DROP TABLE IF EXISTS `test_sooya`;
CREATE TABLE `test_sooya` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_sooya
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Procedure structure for sp_game_channel
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_game_channel`;
delimiter ;;
CREATE PROCEDURE `sp_game_channel`()
BEGIN

 DECLARE v_gc_channel VARCHAR(10) default '';
 DECLARE v_gc_up_time DATETIME default '2021-11-19 00:00:00';
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
 
 
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
