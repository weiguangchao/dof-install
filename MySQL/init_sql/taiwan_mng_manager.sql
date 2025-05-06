/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_mng_manager

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:40:53
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_cargo_mod
-- ----------------------------
DROP TABLE IF EXISTS `account_cargo_mod`;
CREATE TABLE `account_cargo_mod` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `money_old` int(10) unsigned NOT NULL default '0',
  `cargo_old` blob NOT NULL,
  `cargo_capa_old` tinyint(3) unsigned NOT NULL default '0',
  `money_new` int(10) unsigned NOT NULL default '0',
  `cargo_new` blob NOT NULL,
  `cargo_capa_new` tinyint(3) unsigned NOT NULL default '0',
  `mng_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','de') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_mid_server` USING BTREE (`m_id`,`server_info`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_cargo_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for avatar_mod
-- ----------------------------
DROP TABLE IF EXISTS `avatar_mod`;
CREATE TABLE `avatar_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `avatar_id` int(11) NOT NULL default '0',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del','mov') NOT NULL default '-',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `ability_no` tinyint(4) NOT NULL default '0',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_charac` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of avatar_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_avatar_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_avatar_mod`;
CREATE TABLE `charac_avatar_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `ui_id_old` int(11) NOT NULL default '0',
  `slot_old` int(11) NOT NULL default '0',
  `reg_date_old` datetime NOT NULL default '2021-11-19 00:00:00',
  `expire_date_old` datetime NOT NULL default '2021-11-19 00:00:00',
  `ability_no_old` tinyint(4) NOT NULL default '0',
  `jewel_socket_old` varchar(30) character set sjis collate sjis_bin NOT NULL default '',
  `ui_id_new` int(11) NOT NULL default '0',
  `slot_new` int(11) NOT NULL default '0',
  `reg_date_new` datetime NOT NULL default '2021-11-19 00:00:00',
  `expire_date_new` datetime NOT NULL default '2021-11-19 00:00:00',
  `ability_no_new` tinyint(4) NOT NULL default '0',
  `jewel_socket_new` varchar(30) character set sjis collate sjis_bin NOT NULL default '',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  `hidden_option_old` smallint(5) unsigned NOT NULL default '0',
  `emblem_endurance_old` smallint(5) unsigned NOT NULL default '0',
  `hidden_option_new` smallint(5) unsigned NOT NULL default '0',
  `emblem_endurance_new` smallint(5) unsigned NOT NULL default '0',
  `color1_old` smallint(5) unsigned default '0',
  `color2_old` smallint(5) unsigned default '0',
  `color1_new` smallint(5) unsigned default '0',
  `color2_new` smallint(5) unsigned default '0',
  `trade_restrict_old` int(11) default NULL,
  `trade_restrict_new` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_avatar_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_cargo_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_cargo_mod`;
CREATE TABLE `charac_cargo_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `cargo_old` blob NOT NULL,
  `cargo_capa_old` int(11) NOT NULL default '0',
  `cargo_new` blob NOT NULL,
  `cargo_capa_new` int(11) NOT NULL default '0',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_cargo_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_creature_inven_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_creature_inven_mod`;
CREATE TABLE `charac_creature_inven_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) default '0',
  `charac_no` int(11) default '0',
  `creature_old` blob,
  `creature_new` blob,
  `MNG_user_id` varchar(30) default NULL,
  `work_time` datetime default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') default '-',
  `memo` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_creature_inven_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_housing_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_housing_mod`;
CREATE TABLE `charac_housing_mod` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `server_info` tinyint(4) unsigned NOT NULL default '0',
  `charac_no` int(11) unsigned NOT NULL default '0',
  `installed_old` tinyint(4) unsigned NOT NULL default '0',
  `installed_new` tinyint(4) unsigned NOT NULL default '0',
  `decoration_inven_old` blob NOT NULL,
  `decoration_inven_new` blob NOT NULL,
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_housing_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_housing_tree_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_housing_tree_mod`;
CREATE TABLE `charac_housing_tree_mod` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `server_info` tinyint(4) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `tree_id_old` int(10) unsigned NOT NULL default '0',
  `tree_id_new` int(10) unsigned NOT NULL default '0',
  `expire_date_old` datetime NOT NULL default '2021-11-19 00:00:00',
  `expire_date_new` datetime NOT NULL default '2021-11-19 00:00:00',
  `current_point_old` smallint(6) NOT NULL default '0',
  `current_point_new` smallint(6) NOT NULL default '0',
  `leaf_point_old` smallint(6) NOT NULL default '0',
  `leaf_point_new` smallint(6) NOT NULL default '0',
  `day_water_count_old` smallint(6) NOT NULL default '0',
  `day_water_count_new` smallint(6) NOT NULL default '0',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_housing_tree_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_info_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_info_mod`;
CREATE TABLE `charac_info_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `lev_old` tinyint(4) NOT NULL default '0',
  `exp_old` int(11) NOT NULL default '0',
  `fatigue_old` smallint(11) NOT NULL default '0',
  `max_fatigue_old` smallint(6) NOT NULL default '0',
  `premium_fatigue_old` smallint(11) NOT NULL default '0',
  `max_premium_fatigue_old` smallint(6) NOT NULL default '0',
  `money_old` int(11) NOT NULL default '0',
  `coin_old` int(11) NOT NULL default '0',
  `event_coin_old` int(11) NOT NULL default '0',
  `pay_coin_old` int(11) NOT NULL default '0',
  `lev_new` tinyint(4) NOT NULL default '0',
  `exp_new` int(11) NOT NULL default '0',
  `fatigue_new` smallint(11) NOT NULL default '0',
  `max_fatigue_new` smallint(6) NOT NULL default '0',
  `premium_fatigue_new` smallint(11) NOT NULL default '0',
  `max_premium_fatigue_new` smallint(6) NOT NULL default '0',
  `money_new` int(11) NOT NULL default '0',
  `coin_new` int(11) NOT NULL default '0',
  `event_coin_new` int(11) NOT NULL default '0',
  `pay_coin_new` int(11) NOT NULL default '0',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  `win_point_old` int(11) default '0',
  `pvp_point_old` int(11) default '0',
  `pvp_grade_old` int(11) default '0',
  `win_old` int(11) default '0',
  `lose_old` int(11) default '0',
  `help_abuse_ratio_old` int(11) default '0',
  `help_abuse_exp_old` int(11) default '0',
  `power_war_point_old` smallint(5) default '0',
  `win_point_new` int(11) default '0',
  `pvp_point_new` int(11) default '0',
  `pvp_grade_new` int(11) default '0',
  `win_new` int(11) default '0',
  `lose_new` int(11) default '0',
  `help_abuse_ratio_new` int(11) default '0',
  `help_abuse_exp_new` int(11) default '0',
  `power_war_point_new` smallint(5) default '0',
  PRIMARY KEY  (`id`),
  KEY `charac_no` USING BTREE (`charac_no`),
  KEY `MNG_user_id` USING BTREE (`MNG_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_info_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_inven_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_inven_mod`;
CREATE TABLE `charac_inven_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `inven_old` blob NOT NULL,
  `equip_old` blob NOT NULL,
  `inven_new` blob NOT NULL,
  `equip_new` blob NOT NULL,
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  `jewel_old` blob,
  `jewel_new` blob,
  `expand_equipslot_old` blob,
  `expand_equipslot_new` blob,
  `switch_old` blob,
  `switch_new` blob,
  `katagaki_old` blob,
  `katagaki_new` blob,
  `inventory_capacity_old` int(10) default NULL,
  `inventory_capacity_new` int(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx1` USING BTREE (`server_info`,`charac_no`),
  KEY `idx2` USING BTREE (`work_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_inven_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_postal_add
-- ----------------------------
DROP TABLE IF EXISTS `charac_postal_add`;
CREATE TABLE `charac_postal_add` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `postal_id` int(10) unsigned NOT NULL default '0',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `receive_charac_no` int(11) NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(11) NOT NULL default '0',
  `endurance` smallint(5) unsigned NOT NULL default '0',
  `extend_info` int(11) unsigned NOT NULL default '0',
  `extend_info_expand` int(11) unsigned NOT NULL default '0',
  `random_option` varchar(14) NOT NULL default '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `amplify_option` tinyint(3) unsigned NOT NULL default '0',
  `amplify_value` mediumint(8) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `avata_flag` tinyint(4) NOT NULL default '0',
  `unlimit_flag` tinyint(4) NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `creature_flag` tinyint(4) NOT NULL default '0',
  `letter_id` int(11) unsigned NOT NULL default '0',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL default '0',
  `memo` varchar(255) NOT NULL default '',
  `group_id` int(11) NOT NULL default '0',
  `send_flag` tinyint(4) NOT NULL default '0',
  `creature_stomach` int(10) unsigned NOT NULL default '0',
  `creature_exp` int(10) unsigned NOT NULL default '0',
  `creature_no_charge` tinyint(4) NOT NULL default '0',
  `avatar_expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `avatar_ability_no` tinyint(4) NOT NULL default '0',
  `avatar_jewel_socket` varbinary(30) NOT NULL default '',
  `proc_flag` enum('SEND','DEL') NOT NULL default 'SEND',
  PRIMARY KEY  (`id`),
  KEY `idx_receive_charac_no` USING BTREE (`receive_charac_no`),
  KEY `idx_send_charac_name` USING BTREE (`send_charac_name`),
  KEY `idx_MNG_user_id` USING BTREE (`MNG_user_id`,`work_time`)
) ENGINE=MyISAM AUTO_INCREMENT=466998 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_postal_add
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_postal_add_20160429
-- ----------------------------
DROP TABLE IF EXISTS `charac_postal_add_20160429`;
CREATE TABLE `charac_postal_add_20160429` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `postal_id` int(10) unsigned NOT NULL default '0',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `receive_charac_no` int(11) NOT NULL default '0',
  `item_id` smallint(5) unsigned NOT NULL default '0',
  `add_info` int(11) NOT NULL default '0',
  `endurance` smallint(5) unsigned NOT NULL default '0',
  `extend_info` int(11) unsigned default NULL,
  `random_option` varchar(14) default NULL,
  `seperate_upgrade` tinyint(3) unsigned default NULL,
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `avata_flag` tinyint(4) NOT NULL default '0',
  `unlimit_flag` tinyint(4) NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `creature_flag` tinyint(4) NOT NULL default '0',
  `creature_stomach` int(10) unsigned NOT NULL default '0',
  `creature_exp` int(10) unsigned NOT NULL default '0',
  `creature_no_charge` tinyint(4) NOT NULL default '0',
  `avatar_expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `avatar_ability_no` tinyint(4) NOT NULL default '0',
  `avatar_jewel_socket` varbinary(30) NOT NULL default '',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `memo` varchar(255) NOT NULL default '',
  `group_id` int(11) default '0',
  `send_flag` tinyint(4) default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_receive_charac_no` USING BTREE (`receive_charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_postal_add_20160429
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_postal_add_large
-- ----------------------------
DROP TABLE IF EXISTS `charac_postal_add_large`;
CREATE TABLE `charac_postal_add_large` (
  `group_id` int(11) unsigned NOT NULL auto_increment,
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `memo` varchar(255) NOT NULL default '',
  `end_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_postal_add_large
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_titlebook_mod
-- ----------------------------
DROP TABLE IF EXISTS `charac_titlebook_mod`;
CREATE TABLE `charac_titlebook_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `general_old` blob NOT NULL,
  `specific_old` blob NOT NULL,
  `despair_old` blob NOT NULL,
  `event_old` blob NOT NULL,
  `general_new` blob NOT NULL,
  `specific_new` blob NOT NULL,
  `despair_new` blob NOT NULL,
  `event_new` blob NOT NULL,
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_titlebook_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_schl
-- ----------------------------
DROP TABLE IF EXISTS `dnf_schl`;
CREATE TABLE `dnf_schl` (
  `server_group` tinyint(3) unsigned NOT NULL default '0',
  `end_date` datetime NOT NULL default '9999-12-31 23:59:59',
  `st_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `schl_cd` varchar(4) NOT NULL default '',
  `period_month` varchar(2) NOT NULL default '',
  `period_week` varchar(2) NOT NULL default '',
  `period_day` varchar(2) NOT NULL default '',
  `period_hour` varchar(2) NOT NULL default '',
  `period_minute` varchar(2) NOT NULL default '',
  `type` varchar(4) NOT NULL default '0000',
  `wave_hour` varchar(2) default '',
  `wave_minute` varchar(2) default '',
  `level` varchar(4) NOT NULL,
  `stat` varchar(4) NOT NULL default '',
  `description` varchar(255) default NULL,
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`server_group`,`end_date`,`st_date`,`schl_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_schl
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_schl_cd
-- ----------------------------
DROP TABLE IF EXISTS `dnf_schl_cd`;
CREATE TABLE `dnf_schl_cd` (
  `schl_cd` varchar(4) NOT NULL default '',
  `schl_name` varchar(30) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  `param` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`schl_cd`),
  KEY ` dnf_schl_cd _idx01` USING BTREE (`schl_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_schl_cd
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_schl_log
-- ----------------------------
DROP TABLE IF EXISTS `dnf_schl_log`;
CREATE TABLE `dnf_schl_log` (
  `schl_log_id` int(11) NOT NULL auto_increment,
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_group` tinyint(3) unsigned NOT NULL default '0',
  `schl_cd` varchar(4) NOT NULL default '',
  `end_date` datetime NOT NULL default '9999-12-31 23:59:59',
  `st_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `stat` varchar(4) NOT NULL default '',
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`schl_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_schl_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_mousepass_modify
-- ----------------------------
DROP TABLE IF EXISTS `member_mousepass_modify`;
CREATE TABLE `member_mousepass_modify` (
  `m_id` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `modify_type` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_mousepass_modify
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_premium_mod
-- ----------------------------
DROP TABLE IF EXISTS `member_premium_mod`;
CREATE TABLE `member_premium_mod` (
  `id` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `event_id_old` int(11) NOT NULL default '0',
  `server_id_old` tinyint(4) NOT NULL default '0',
  `service_start_old` datetime NOT NULL default '2021-11-19 00:00:00',
  `service_end_old` datetime NOT NULL default '2021-11-19 00:00:00',
  `service_end_new` datetime NOT NULL default '2021-11-19 00:00:00',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `pre_type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_premium_mod
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_reference
-- ----------------------------
DROP TABLE IF EXISTS `member_reference`;
CREATE TABLE `member_reference` (
  `m_id` int(11) NOT NULL default '0',
  `reference` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_reference
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_unpunish_log
-- ----------------------------
DROP TABLE IF EXISTS `member_unpunish_log`;
CREATE TABLE `member_unpunish_log` (
  `idx` int(11) unsigned NOT NULL auto_increment,
  `admin_no` int(11) unsigned NOT NULL default '0',
  `admin_id` varchar(20) default NULL,
  `total_m_id` text NOT NULL,
  `success_m_id` text NOT NULL,
  `fail_m_id` text NOT NULL,
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `reason` text NOT NULL,
  PRIMARY KEY  (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_unpunish_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oneclick_charac_avatar_mod
-- ----------------------------
DROP TABLE IF EXISTS `oneclick_charac_avatar_mod`;
CREATE TABLE `oneclick_charac_avatar_mod` (
  `id` int(11) NOT NULL auto_increment,
  `server_info` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `ui_id_old` int(11) NOT NULL default '0',
  `slot_old` int(11) NOT NULL default '0',
  `reg_date_old` datetime NOT NULL default '2021-11-19 00:00:00',
  `expire_date_old` datetime NOT NULL default '2021-11-19 00:00:00',
  `ability_no_old` tinyint(4) NOT NULL default '0',
  `color1_old` smallint(5) unsigned NOT NULL default '0',
  `color2_old` smallint(5) unsigned NOT NULL default '0',
  `trade_restrict_old` tinyint(3) unsigned NOT NULL default '0',
  `ui_id_new` int(11) NOT NULL default '0',
  `slot_new` int(11) NOT NULL default '0',
  `reg_date_new` datetime NOT NULL default '2021-11-19 00:00:00',
  `expire_date_new` datetime NOT NULL default '2021-11-19 00:00:00',
  `ability_no_new` tinyint(4) NOT NULL default '0',
  `color1_new` smallint(5) unsigned NOT NULL default '0',
  `color2_new` smallint(5) unsigned NOT NULL default '0',
  `trade_restrict_new` tinyint(3) unsigned NOT NULL default '0',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `work_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `work_type` enum('-','add','mod','del') NOT NULL default '-',
  `memo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`),
  KEY `MNG_user_id` USING BTREE (`MNG_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oneclick_charac_avatar_mod
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
