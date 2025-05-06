/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_prod

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:40:59
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dnf_item_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info`;
CREATE TABLE `dnf_item_info` (
  `it_no` mediumint(8) unsigned NOT NULL default '0',
  `it_name` varchar(50) NOT NULL default '',
  `it_eng_name` varchar(50) NOT NULL default '',
  `it_explain` varchar(60) NOT NULL default '',
  `master_type` tinyint(3) unsigned NOT NULL default '0',
  `sub_type` smallint(5) unsigned NOT NULL default '0',
  `job` varchar(12) NOT NULL default '',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `revert` varchar(5) NOT NULL default '',
  `level` tinyint(3) unsigned NOT NULL default '0',
  `skill` smallint(5) unsigned NOT NULL default '0',
  `create_ratio` float NOT NULL default '0',
  `rarity` tinyint(3) unsigned NOT NULL default '0',
  `weight` smallint(6) NOT NULL default '0',
  `price` smallint(5) unsigned NOT NULL default '0',
  `cash` smallint(5) unsigned NOT NULL default '0',
  `medal` smallint(5) unsigned NOT NULL default '0',
  `durability` smallint(6) NOT NULL default '0',
  `cooltime` smallint(6) NOT NULL default '0',
  `hp_max` smallint(6) NOT NULL default '0',
  `mp_max` smallint(6) NOT NULL default '0',
  `phy_att` smallint(6) NOT NULL default '0',
  `phy_def` smallint(6) NOT NULL default '0',
  `mag_att` smallint(6) NOT NULL default '0',
  `mag_def` smallint(6) NOT NULL default '0',
  `equip_phy_att` smallint(6) NOT NULL default '0',
  `equip_phy_def` smallint(6) NOT NULL default '0',
  `equip_mag_att` smallint(6) NOT NULL default '0',
  `equip_mag_def` smallint(6) NOT NULL default '0',
  `ref_fire` tinyint(4) NOT NULL default '0',
  `ref_water` tinyint(4) NOT NULL default '0',
  `ref_dark` tinyint(4) NOT NULL default '0',
  `ref_light` tinyint(4) NOT NULL default '0',
  `ref_all` tinyint(4) NOT NULL default '0',
  `ref_slow` tinyint(4) NOT NULL default '0',
  `ref_freeze` tinyint(4) NOT NULL default '0',
  `ref_poison` tinyint(4) NOT NULL default '0',
  `ref_stun` tinyint(4) NOT NULL default '0',
  `ref_cus` tinyint(4) NOT NULL default '0',
  `ref_blind` tinyint(4) NOT NULL default '0',
  `ref_lite` tinyint(4) NOT NULL default '0',
  `ref_ston` tinyint(4) NOT NULL default '0',
  `ref_sleep` tinyint(4) NOT NULL default '0',
  `ref_deekement` tinyint(4) NOT NULL default '0',
  `ref_deadlystrike` tinyint(4) NOT NULL default '0',
  `ref_bleeding` tinyint(4) NOT NULL default '0',
  `ref_confuse` tinyint(4) NOT NULL default '0',
  `ref_hold` tinyint(4) NOT NULL default '0',
  `ref_all_stat` tinyint(4) NOT NULL default '0',
  `ref_pierce` smallint(6) NOT NULL default '0',
  `ref_stuck` smallint(6) NOT NULL default '0',
  `inven_max` smallint(6) NOT NULL default '0',
  `hp_regenrate` smallint(6) NOT NULL default '0',
  `mp_regenrate` smallint(6) NOT NULL default '0',
  `mov_speed` smallint(6) NOT NULL default '0',
  `att_speed` smallint(6) NOT NULL default '0',
  `quest` smallint(6) NOT NULL default '0',
  `hit_recovery` smallint(6) NOT NULL default '0',
  `jump` smallint(6) NOT NULL default '0',
  `att_element` enum('Void','Fire','Water','Dark','Light') NOT NULL default 'Void',
  `att_active_status` smallint(6) NOT NULL default '0',
  `att_active_status_ratio` float NOT NULL default '0',
  `att_active_status_pow` smallint(6) NOT NULL default '0',
  `att_backforce` smallint(6) NOT NULL default '0',
  `att_upforce` smallint(6) NOT NULL default '0',
  `att_hp_drain` tinyint(4) NOT NULL default '0',
  `att_mp_drain` tinyint(4) NOT NULL default '0',
  `criticalhit_rate` float NOT NULL default '0',
  `stuck_rate` float NOT NULL default '0',
  `att_defenseIgnore` tinyint(4) NOT NULL default '0',
  `skill_levelup` varchar(25) NOT NULL default '',
  `set_type` enum('n','y') NOT NULL default 'n',
  `url` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`it_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_item_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_item_info_ability
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info_ability`;
CREATE TABLE `dnf_item_info_ability` (
  `it_no` mediumint(8) unsigned NOT NULL default '0',
  `ability_no` mediumint(8) unsigned NOT NULL default '0',
  `ability_name` varchar(100) NOT NULL default '0',
  `job` tinyint(4) NOT NULL default '0',
  `skill_index` mediumint(8) unsigned NOT NULL default '0',
  `ability_sign` varchar(2) NOT NULL default '',
  `ability_add` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`it_no`,`ability_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_item_info_ability
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_item_info_master
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info_master`;
CREATE TABLE `dnf_item_info_master` (
  `master_no` tinyint(3) unsigned NOT NULL default '0',
  `sub_no` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(12) NOT NULL default '',
  `master_explain` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`master_no`,`sub_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_item_info_master
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_ability_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_ability_info`;
CREATE TABLE `prod_ability_info` (
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `it_no` mediumint(8) unsigned NOT NULL default '0',
  `job` tinyint(4) NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `ability_no` mediumint(8) unsigned NOT NULL default '0',
  `rate` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ipg_no`,`job`,`grow_type`,`ability_no`),
  KEY `id_it_no` USING BTREE (`it_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_ability_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_bonus_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_bonus_info`;
CREATE TABLE `prod_bonus_info` (
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `bonus_rate` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ipg_no`,`bonus_ipg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_bonus_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_buy_user
-- ----------------------------
DROP TABLE IF EXISTS `prod_buy_user`;
CREATE TABLE `prod_buy_user` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `sex` enum('m','f') NOT NULL default 'm',
  `birthday` date NOT NULL default '2021-11-19',
  `first_buy_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `last_buy_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`),
  KEY `idx_sex` USING BTREE (`birthday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_buy_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_info`;
CREATE TABLE `prod_info` (
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `prod_step` smallint(5) unsigned NOT NULL default '0',
  `it_no` mediumint(8) unsigned NOT NULL default '0',
  `prod_name` varchar(35) NOT NULL default '',
  `master_type` tinyint(3) unsigned NOT NULL default '0',
  `sub_type` smallint(5) unsigned NOT NULL default '0',
  `job` varchar(25) NOT NULL default '',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `set_flag` tinyint(3) unsigned NOT NULL default '0',
  `sell_type` tinyint(3) unsigned NOT NULL default '0',
  `prod_stat` tinyint(4) NOT NULL default '0',
  `prod_gold` smallint(5) unsigned NOT NULL default '0',
  `prod_winpoint` smallint(5) unsigned NOT NULL default '0',
  `prod_price` smallint(5) unsigned NOT NULL default '0',
  `prod_cnt` smallint(5) unsigned NOT NULL default '0',
  `prod_supply` mediumint(8) unsigned NOT NULL default '0',
  `public_flag` tinyint(4) NOT NULL default '0',
  `prod_limit_flag` tinyint(4) NOT NULL default '0',
  `prod_period` smallint(5) unsigned NOT NULL default '0',
  `prod_icon` varchar(50) NOT NULL default '',
  `bonus_weight` smallint(5) unsigned NOT NULL default '0',
  `bonus_rate` smallint(5) unsigned NOT NULL default '0',
  `bonus_flag` tinyint(4) NOT NULL default '0',
  `prod_explain` varchar(250) NOT NULL default '',
  `regist_user_id` varchar(25) NOT NULL default '',
  `regist_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `mod_user_id` varchar(25) NOT NULL default '',
  `mod_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`ipg_no`),
  KEY `idx_prod_step` USING BTREE (`prod_step`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_it_no` USING BTREE (`it_no`),
  KEY `idx_master_type` USING BTREE (`master_type`),
  KEY `idx_sub_type` USING BTREE (`sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_job_ability_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_job_ability_info`;
CREATE TABLE `prod_job_ability_info` (
  `job` tinyint(4) NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `skill_index` mediumint(8) unsigned NOT NULL default '0',
  `skill_name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`job`,`grow_type`,`skill_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_job_ability_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_master
-- ----------------------------
DROP TABLE IF EXISTS `prod_master`;
CREATE TABLE `prod_master` (
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `prod_part_script` varchar(50) NOT NULL default '',
  `prod_part_name` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`prod_part_id`),
  UNIQUE KEY `prod_part_name` USING BTREE (`prod_part_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_master
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_mod_history
-- ----------------------------
DROP TABLE IF EXISTS `prod_mod_history`;
CREATE TABLE `prod_mod_history` (
  `mod_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `prod_step` smallint(5) unsigned NOT NULL default '0',
  `it_no` mediumint(8) unsigned NOT NULL default '0',
  `prod_name` varchar(35) NOT NULL default '',
  `master_type` tinyint(3) unsigned NOT NULL default '0',
  `sub_type` smallint(5) unsigned NOT NULL default '0',
  `job` varchar(25) NOT NULL default '',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `set_flag` tinyint(3) unsigned NOT NULL default '0',
  `sell_type` tinyint(3) unsigned NOT NULL default '0',
  `prod_stat` tinyint(4) NOT NULL default '0',
  `prod_gold` smallint(5) unsigned NOT NULL default '0',
  `prod_winpoint` smallint(5) unsigned NOT NULL default '0',
  `prod_price` smallint(5) unsigned NOT NULL default '0',
  `prod_cnt` smallint(5) unsigned NOT NULL default '0',
  `prod_supply` mediumint(8) unsigned NOT NULL default '0',
  `public_flag` tinyint(4) NOT NULL default '0',
  `prod_limit_flag` tinyint(4) NOT NULL default '0',
  `prod_period` smallint(5) unsigned NOT NULL default '0',
  `prod_icon` varchar(50) NOT NULL default '',
  `bonus_weight` smallint(5) unsigned NOT NULL default '0',
  `bonus_rate` smallint(5) unsigned NOT NULL default '0',
  `bonus_flag` tinyint(4) NOT NULL default '0',
  `prod_explain` varchar(250) NOT NULL default '',
  `mod_type` tinyint(3) unsigned NOT NULL default '0',
  `mod_user_id` varchar(25) NOT NULL default '',
  `mod_explain` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`mod_time`,`prod_part_id`,`ipg_no`),
  KEY `idx_prod_step` USING BTREE (`prod_step`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_it_no` USING BTREE (`it_no`),
  KEY `idx_master_type` USING BTREE (`master_type`),
  KEY `idx_sub_type` USING BTREE (`sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_mod_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_daily
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_daily`;
CREATE TABLE `prod_sale_daily` (
  `sale_date` date NOT NULL default '2021-11-19',
  `slot_part_code` smallint(5) unsigned NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `volume` int(10) unsigned NOT NULL default '0',
  `amount` bigint(20) unsigned NOT NULL default '0',
  `un_m_id` int(10) unsigned NOT NULL default '0',
  `un_charac` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`sale_date`,`ipg_no`),
  KEY `idx_slot_part_code` USING BTREE (`slot_part_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_daily
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_daily_detail
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_daily_detail`;
CREATE TABLE `prod_sale_daily_detail` (
  `sale_date` date NOT NULL default '2021-11-19',
  `slot_part_code` smallint(5) unsigned NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `sex` enum('m','f') NOT NULL default 'm',
  `age` tinyint(4) NOT NULL default '0',
  `job` tinyint(4) NOT NULL default '0',
  `volume` int(10) unsigned NOT NULL default '0',
  `amount` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`sale_date`,`ipg_no`,`sex`,`age`,`job`),
  KEY `idx_slot_part_code` USING BTREE (`slot_part_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_daily_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_073
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_073`;
CREATE TABLE `prod_sale_entry_073` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_073
-- ----------------------------
BEGIN;
INSERT INTO `prod_sale_entry_073` VALUES ('0311147811274200001', 1, 1, 2, 0, 0, 100203, 11760, 0, 0, 0, '2016-11-02 14:52:23', 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, '1', 3, 1, 1, '0', '', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_124
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_124`;
CREATE TABLE `prod_sale_entry_124` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_124
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_125
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_125`;
CREATE TABLE `prod_sale_entry_125` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_125
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_126
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_126`;
CREATE TABLE `prod_sale_entry_126` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_126
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_127
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_127`;
CREATE TABLE `prod_sale_entry_127` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_127
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_128
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_128`;
CREATE TABLE `prod_sale_entry_128` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_128
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_129
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_129`;
CREATE TABLE `prod_sale_entry_129` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_129
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_131
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_131`;
CREATE TABLE `prod_sale_entry_131` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_131
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_132
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_132`;
CREATE TABLE `prod_sale_entry_132` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_132
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_133
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_133`;
CREATE TABLE `prod_sale_entry_133` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_133
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_134
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_134`;
CREATE TABLE `prod_sale_entry_134` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_134
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_135
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_135`;
CREATE TABLE `prod_sale_entry_135` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_135
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_136
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_136`;
CREATE TABLE `prod_sale_entry_136` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_136
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_137
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_137`;
CREATE TABLE `prod_sale_entry_137` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_137
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_138
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_138`;
CREATE TABLE `prod_sale_entry_138` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_138
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prod_sale_entry_162
-- ----------------------------
DROP TABLE IF EXISTS `prod_sale_entry_162`;
CREATE TABLE `prod_sale_entry_162` (
  `agency_no` varchar(20) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(4) NOT NULL default '0',
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `price` int(10) unsigned NOT NULL default '0',
  `buy_type` tinyint(4) NOT NULL default '0',
  `gift_server_info` tinyint(3) unsigned NOT NULL default '0',
  `gift_get_charac_no` int(10) unsigned NOT NULL default '0',
  `sale_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `charge_price` int(11) NOT NULL default '0',
  `free_price` int(11) NOT NULL default '0',
  `count_no` smallint(6) NOT NULL default '0',
  `each_price` mediumint(9) NOT NULL default '0',
  `price_type` tinyint(3) unsigned NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `slot_part_type` tinyint(4) NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned default NULL,
  `buy_method_type` tinyint(4) NOT NULL default '0',
  `prod_part_id` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `user_id` varchar(25) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `prize_flag` tinyint(4) NOT NULL default '0',
  `new_flag` tinyint(4) NOT NULL default '0',
  `result_code` varchar(4) NOT NULL default '',
  `result_message` varchar(100) NOT NULL default '',
  `user_ip` varchar(16) default '',
  `tran_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`agency_no`),
  KEY `idx_ipg_no` USING BTREE (`ipg_no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_user_id` USING BTREE (`user_id`),
  KEY `idx_agency_no` USING BTREE (`agency_no`),
  KEY `idx_prod_part_id` USING BTREE (`prod_part_id`),
  KEY `idx_tran_id` USING BTREE (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_sale_entry_162
-- ----------------------------
BEGIN;
INSERT INTO `prod_sale_entry_162` VALUES ('0311146101290400001', 6200001, 6, 0, 1, 31, 10110, 150, 0, 3, 0, '2016-04-19 04:55:04', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.53.188', 499);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146101624500002', 6200038, 54, 6, 0, 5, 100376, 960, 0, 3, 0, '2016-04-19 05:50:45', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 1, '0', '', '218.77.75.24', 504);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146101630800003', 6200038, 35, 5, 0, 3, 100360, 960, 0, 3, 0, '2016-04-19 05:51:48', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 505);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146101742400004', 6200038, 54, 6, 0, 7, 10602, 100, 0, 3, 0, '2016-04-19 06:10:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 506);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102007200005', 6200038, 54, 6, 0, 12, 10080, 100, 0, 3, 0, '2016-04-19 06:54:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 507);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102365200006', 6200054, 52, 7, 0, 14, 10080, 100, 0, 3, 0, '2016-04-19 07:54:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', '', '123.163.64.151', 508);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102545900007', 6200057, 55, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-19 08:24:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 1, '0', '', '36.63.50.223', 509);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102553100008', 6200057, 55, 0, 0, 2, 100351, 960, 0, 3, 0, '2016-04-19 08:25:31', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.223', 510);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102625500009', 6200057, 55, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-19 08:37:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.223', 511);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102629300010', 6200057, 55, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-19 08:38:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.223', 512);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102632300011', 6200057, 55, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-19 08:38:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.223', 513);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102637400012', 6200057, 55, 0, 0, 3, 10060, 100, 0, 3, 0, '2016-04-19 08:39:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.223', 514);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102638100013', 6200057, 55, 0, 0, 3, 10061, 100, 0, 3, 0, '2016-04-19 08:39:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.223', 515);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102793200014', 6200012, 7, 3, 1, 26, 10000, 20, 0, 3, 0, '2016-04-19 09:05:32', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', 'cera point', '123.11.221.175', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102796200015', 6200012, 7, 3, 1, 26, 10080, 100, 0, 3, 0, '2016-04-19 09:06:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 516);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102796600016', 6200054, 52, 7, 3, 22, 20000, 100, 0, 3, 0, '2016-04-19 09:06:06', 100, 0, 100, 100, 1, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', '', '123.163.64.151', 517);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102798500017', 6200012, 7, 3, 1, 26, 10001, 60, 0, 3, 0, '2016-04-19 09:06:25', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 518);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102799300018', 6200012, 7, 3, 1, 26, 10002, 100, 0, 3, 0, '2016-04-19 09:06:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 519);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102799700019', 6200012, 7, 3, 1, 26, 10003, 140, 0, 3, 0, '2016-04-19 09:06:37', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 520);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102800300020', 6200012, 7, 3, 1, 26, 10004, 180, 0, 3, 0, '2016-04-19 09:06:43', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 521);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146102800700021', 6200012, 7, 3, 1, 26, 10005, 220, 0, 3, 0, '2016-04-19 09:06:47', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 522);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103087900022', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:54:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 523);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103087900023', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:54:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 524);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103087900024', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:54:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 525);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103087900025', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:54:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 526);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103106500026', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:57:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 527);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103106500027', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:57:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 528);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103106500028', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:57:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 529);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103106500029', 6200042, 41, 0, 1, 28, 10073, 100, 0, 3, 0, '2016-04-19 09:57:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 530);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103239000030', 6200058, 56, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-19 10:19:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 1, '0', '', '182.151.159.235', 531);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103249400031', 6200058, 56, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-19 10:21:34', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 532);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103250000032', 6200058, 56, 0, 0, 2, 10001, 60, 0, 3, 0, '2016-04-19 10:21:40', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 533);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103260400033', 6200058, 56, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-19 10:23:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 534);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103262500034', 6200058, 56, 0, 0, 2, 10002, 100, 0, 3, 0, '2016-04-19 10:23:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 535);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103263000035', 6200058, 56, 0, 0, 2, 10003, 140, 0, 3, 0, '2016-04-19 10:23:50', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 536);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103263900036', 6200058, 56, 0, 0, 2, 10004, 180, 0, 3, 0, '2016-04-19 10:23:59', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 537);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103277100037', 6200058, 56, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-19 10:26:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 538);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103279200038', 6200058, 56, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-19 10:26:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 539);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103475400039', 6200029, 27, 4, 1, 30, 10152, 40, 0, 3, 0, '2016-04-19 10:59:14', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103501000040', 6200012, 7, 3, 1, 30, 10153, 200, 0, 3, 0, '2016-04-19 11:03:30', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', 'cera point', '123.11.221.175', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103612000041', 6200058, 56, 0, 0, 7, 30015, 200, 0, 3, 0, '2016-04-19 11:22:00', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 540);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103770800042', 6200054, 52, 7, 3, 24, 9500, 50, 0, 3, 0, '2016-04-19 11:48:28', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', '', '123.163.64.151', 541);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103902400043', 6200025, 46, 3, 0, 13, 10073, 100, 0, 3, 0, '2016-04-19 12:10:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200025', 3, 1, 2, '0', '', '220.191.222.6', 542);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103917300044', 6200058, 56, 0, 0, 10, 20003, 500, 0, 3, 0, '2016-04-19 12:12:53', 500, 0, 1000, 500, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 543);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103996300045', 6200047, 57, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-19 12:26:03', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 1, '0', '', '122.239.19.237', 544);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103996300046', 6200047, 57, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-19 12:26:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 545);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103996300047', 6200047, 57, 0, 0, 2, 10062, 380, 0, 3, 0, '2016-04-19 12:26:03', 380, 0, 1, 380, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 546);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146103996300048', 6200047, 57, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-19 12:26:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 547);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104003700049', 6200047, 57, 0, 0, 2, 10002, 100, 0, 3, 0, '2016-04-19 12:27:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 548);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104008100050', 6200047, 57, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-19 12:28:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 549);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104009500051', 6200047, 57, 0, 0, 2, 10003, 140, 0, 3, 0, '2016-04-19 12:28:15', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 550);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104009900052', 6200047, 57, 0, 0, 2, 10004, 180, 0, 3, 0, '2016-04-19 12:28:19', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 551);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104063700053', 6200047, 57, 0, 0, 4, 10073, 100, 0, 3, 0, '2016-04-19 12:37:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 552);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104063700054', 6200047, 57, 0, 0, 4, 10073, 100, 0, 3, 0, '2016-04-19 12:37:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 553);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104116200055', 6200047, 57, 0, 0, 5, 10005, 220, 0, 3, 0, '2016-04-19 12:46:02', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 554);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104116600056', 6200047, 57, 0, 0, 5, 10006, 260, 0, 3, 0, '2016-04-19 12:46:06', 260, 0, 1, 260, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.19.237', 555);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104143000057', 6200039, 37, 0, 1, 27, 10073, 100, 0, 3, 0, '2016-04-19 12:50:30', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104165000058', 6200010, 5, 1, 1, 42, 10152, 40, 0, 3, 0, '2016-04-19 12:54:10', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 556);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104165000059', 6200010, 5, 1, 1, 42, 10152, 40, 0, 3, 0, '2016-04-19 12:54:10', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 557);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104373600060', 6200022, 24, 1, 3, 38, 10111, 30, 0, 3, 0, '2016-04-19 13:28:56', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 558);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104376300061', 6200024, 23, 5, 4, 31, 10060, 100, 0, 3, 0, '2016-04-19 13:29:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.182.218', 559);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104377400062', 6200024, 23, 5, 4, 31, 10061, 100, 0, 3, 0, '2016-04-19 13:29:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.182.218', 560);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104424100063', 6200022, 24, 1, 3, 38, 10111, 30, 0, 3, 0, '2016-04-19 13:37:21', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 561);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104630600064', 6200009, 16, 0, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 14:11:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104630600065', 6200009, 16, 0, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 14:11:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104658600066', 6200029, 27, 4, 1, 32, 10152, 40, 0, 3, 0, '2016-04-19 14:16:26', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104661500067', 6200029, 27, 4, 1, 32, 10152, 40, 0, 3, 0, '2016-04-19 14:16:55', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104661500068', 6200029, 27, 4, 1, 32, 10152, 40, 0, 3, 0, '2016-04-19 14:16:55', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104680100069', 6200029, 27, 4, 1, 32, 10152, 40, 0, 3, 0, '2016-04-19 14:20:01', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104680100070', 6200029, 27, 4, 1, 32, 10152, 40, 0, 3, 0, '2016-04-19 14:20:01', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104713400071', 6200042, 41, 0, 1, 32, 10110, 150, 0, 3, 0, '2016-04-19 14:25:34', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 562);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104715100072', 6200042, 41, 0, 1, 32, 10110, 150, 0, 3, 0, '2016-04-19 14:25:51', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 563);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104748100073', 6200029, 27, 4, 1, 32, 9501, 200, 0, 3, 0, '2016-04-19 14:31:22', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104791300074', 6200061, 58, 6, 0, 4, 10060, 100, 0, 3, 0, '2016-04-19 14:38:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 1, '0', '', '122.226.152.3', 564);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104791300075', 6200061, 58, 6, 0, 4, 10080, 100, 0, 3, 0, '2016-04-19 14:38:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 565);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104800000076', 6200061, 58, 6, 0, 4, 10000, 20, 0, 3, 0, '2016-04-19 14:40:00', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 566);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104800500077', 6200061, 58, 6, 0, 4, 10001, 60, 0, 3, 0, '2016-04-19 14:40:05', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 567);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104800900078', 6200061, 58, 6, 0, 4, 10002, 100, 0, 3, 0, '2016-04-19 14:40:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 568);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104801400079', 6200061, 58, 6, 0, 4, 10003, 140, 0, 3, 0, '2016-04-19 14:40:14', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 569);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104801800080', 6200061, 58, 6, 0, 4, 10004, 180, 0, 3, 0, '2016-04-19 14:40:18', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 570);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104804100081', 6200061, 58, 6, 0, 4, 10061, 100, 0, 3, 0, '2016-04-19 14:40:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 571);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104808700082', 6200061, 58, 6, 0, 4, 30005, 200, 0, 3, 0, '2016-04-19 14:41:27', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 572);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104808700083', 6200061, 58, 6, 0, 4, 30015, 200, 0, 3, 0, '2016-04-19 14:41:27', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 573);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104809500084', 6200061, 58, 6, 0, 4, 10005, 220, 0, 3, 0, '2016-04-19 14:41:35', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 574);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104810300085', 6200061, 58, 6, 0, 4, 10006, 260, 0, 3, 0, '2016-04-19 14:41:43', 260, 0, 1, 260, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 575);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104811500086', 6200060, 59, 7, 0, 2, 10060, 100, 0, 3, 0, '2016-04-19 14:41:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 1, '0', '', '139.214.36.54', 576);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104812200087', 6200060, 59, 7, 0, 2, 10061, 100, 0, 3, 0, '2016-04-19 14:42:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 577);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104819000088', 6200061, 58, 6, 0, 4, 10073, 100, 0, 3, 0, '2016-04-19 14:43:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 578);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104851100089', 6200061, 58, 6, 0, 4, 20001, 200, 0, 3, 0, '2016-04-19 14:48:31', 200, 0, 300, 200, 1, 1, 0, 1, 0, 0, 0, '6200061', 3, 1, 2, '0', '', '122.226.152.3', 579);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104861500090', 6200060, 59, 7, 0, 4, 100358, 960, 0, 3, 0, '2016-04-19 14:50:15', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 580);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104862300091', 6200060, 59, 7, 0, 4, 10073, 100, 0, 3, 0, '2016-04-19 14:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 581);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104863600092', 6200060, 59, 7, 0, 4, 30015, 200, 0, 3, 0, '2016-04-19 14:50:36', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 582);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104864000093', 6200060, 59, 7, 0, 4, 30005, 200, 0, 3, 0, '2016-04-19 14:50:40', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 583);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104890300094', 6200009, 16, 0, 3, 40, 10111, 30, 0, 3, 0, '2016-04-19 14:55:03', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', '', '182.118.68.37', 584);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146104912600095', 6200060, 59, 7, 0, 5, 20000, 100, 0, 3, 0, '2016-04-19 14:58:46', 100, 0, 100, 100, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 585);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105051300096', 6200012, 7, 3, 1, 31, 10073, 100, 0, 3, 0, '2016-04-19 15:21:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 586);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105107600097', 6200047, 57, 0, 2, 20, 10073, 100, 0, 3, 0, '2016-04-19 15:31:16', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.19.237', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105117300098', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:32:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 587);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105117300099', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:32:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 588);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105117300100', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:32:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 589);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105117300101', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:32:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 590);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105117300102', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:32:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 591);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105117300103', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:32:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 592);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105152000104', 6200060, 59, 7, 0, 13, 10000, 20, 0, 3, 0, '2016-04-19 15:38:40', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 593);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100105', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 594);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100106', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 595);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100107', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 596);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100108', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 597);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100109', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 598);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100110', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 599);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100111', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 600);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100112', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 601);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100113', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 602);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100114', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 603);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100115', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 604);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100116', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 605);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100117', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 606);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100118', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 607);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100119', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 608);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100120', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 609);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100121', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 610);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100122', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 611);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100123', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 612);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100124', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 613);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100125', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 614);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100126', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 615);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100127', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 616);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100128', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 617);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100129', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 618);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100130', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 619);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100131', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 620);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100132', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 621);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100133', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 622);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100134', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 623);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100135', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 624);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105219100136', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:49:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 625);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200137', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 626);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200138', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 627);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200139', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 628);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200140', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 629);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200141', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 630);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200142', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 631);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200143', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 632);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200144', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 633);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200145', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 634);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200146', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 635);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200147', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 636);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200148', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 637);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200149', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 638);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200150', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 639);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200151', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 640);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200152', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 641);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200153', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 642);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200154', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 643);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200155', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 644);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200156', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 645);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200157', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 646);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200158', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 647);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200159', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 648);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200160', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 649);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200161', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 650);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200162', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 651);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200163', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 652);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200164', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 653);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200165', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 654);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200166', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 655);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200167', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 656);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105222200168', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 657);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400169', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 658);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400170', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 659);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400171', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 660);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400172', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 661);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400173', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 662);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400174', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 663);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400175', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 664);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400176', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 665);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400177', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 666);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400178', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 667);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400179', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 668);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400180', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 669);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400181', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 670);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105223400182', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 671);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105225900183', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 672);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105225900184', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:50:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 673);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105248300185', 6200029, 27, 4, 1, 32, 10601, 50, 0, 3, 0, '2016-04-19 15:54:43', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 674);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105248300186', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:54:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 675);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105248300187', 6200029, 27, 4, 1, 32, 10602, 100, 0, 3, 0, '2016-04-19 15:54:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 676);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105251200188', 6200029, 27, 4, 1, 32, 100211, 11760, 0, 3, 0, '2016-04-19 15:55:12', 11760, 0, 1, 11760, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105334600189', 6200029, 27, 4, 1, 32, 10073, 100, 0, 3, 0, '2016-04-19 16:09:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 677);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105334600190', 6200029, 27, 4, 1, 32, 10073, 100, 0, 3, 0, '2016-04-19 16:09:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 678);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105334600191', 6200029, 27, 4, 1, 32, 10073, 100, 0, 3, 0, '2016-04-19 16:09:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 679);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105334600192', 6200029, 27, 4, 1, 32, 10073, 100, 0, 3, 0, '2016-04-19 16:09:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 680);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105334600193', 6200029, 27, 4, 1, 32, 10073, 100, 0, 3, 0, '2016-04-19 16:09:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 681);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105334600194', 6200029, 27, 4, 1, 32, 10073, 100, 0, 3, 0, '2016-04-19 16:09:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 682);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105334600195', 6200029, 27, 4, 1, 32, 10073, 100, 0, 3, 0, '2016-04-19 16:09:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 683);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105368200196', 6200012, 7, 3, 1, 32, 10151, 20, 0, 3, 0, '2016-04-19 16:14:42', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 684);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105370800197', 6200031, 28, 2, 3, 40, 10152, 40, 0, 3, 0, '2016-04-19 16:15:08', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105370800198', 6200031, 28, 2, 3, 40, 10152, 40, 0, 3, 0, '2016-04-19 16:15:08', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800199', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 685);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800200', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 686);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800201', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 687);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800202', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 688);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800203', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 689);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800204', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 690);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800205', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 691);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800206', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 692);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800207', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 693);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800208', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 694);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800209', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 695);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800210', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 696);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800211', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 697);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800212', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 698);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800213', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 699);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800214', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 700);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800215', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 701);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800216', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 702);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105373800217', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:15:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 703);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105388100218', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:18:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', '', '123.163.64.151', 704);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105392300219', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:18:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', '', '123.163.64.151', 705);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105392300220', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:18:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', '', '123.163.64.151', 706);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105392300221', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:18:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', '', '123.163.64.151', 707);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105398400222', 6200022, 24, 1, 3, 39, 10073, 100, 0, 3, 0, '2016-04-19 16:19:44', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.107.92', 708);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105399000223', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:19:50', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105410600224', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:21:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105410600225', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:21:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105410600226', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:21:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105410600227', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:21:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105410600228', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:21:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105410600229', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:21:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105410600230', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:21:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105413200231', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:22:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105413200232', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:22:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105413200233', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:22:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105413200234', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:22:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105413200235', 6200054, 52, 7, 3, 29, 10602, 100, 0, 3, 0, '2016-04-19 16:22:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105415700236', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:22:37', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105415700237', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:22:37', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105415700238', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:22:37', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105415700239', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:22:38', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105415700240', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:22:38', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105415700241', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:22:38', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105423800242', 6200054, 52, 7, 3, 29, 10073, 100, 0, 3, 0, '2016-04-19 16:23:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105487000243', 6200063, 60, 4, 0, 9, 10073, 100, 0, 3, 0, '2016-04-19 16:34:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200063', 3, 1, 1, '0', '', '43.254.170.60', 709);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105516700244', 6200012, 7, 3, 1, 33, 10073, 100, 0, 3, 0, '2016-04-19 16:39:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 710);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105611200245', 6200029, 27, 4, 1, 32, 10601, 50, 0, 3, 0, '2016-04-19 16:55:13', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 711);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105612300246', 6200029, 27, 4, 1, 32, 20010, 60, 0, 3, 0, '2016-04-19 16:55:23', 60, 0, 3, 60, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105612300247', 6200029, 27, 4, 1, 32, 31000, 240, 0, 3, 0, '2016-04-19 16:55:24', 240, 0, 1, 240, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105612300248', 6200029, 27, 4, 1, 32, 31100, 240, 0, 3, 0, '2016-04-19 16:55:24', 240, 0, 1, 240, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105694900249', 6200031, 28, 2, 3, 41, 10067, 20, 0, 3, 0, '2016-04-19 17:09:09', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105770600250', 6200060, 59, 7, 1, 22, 10080, 100, 0, 3, 0, '2016-04-19 17:21:47', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', 'cera point', '139.214.36.54', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146105884100251', 6200064, 61, 0, 0, 5, 30015, 200, 0, 3, 0, '2016-04-19 17:40:41', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200064', 3, 1, 1, '0', '', '111.17.211.254', 712);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106170600252', 6200031, 28, 2, 3, 42, 10152, 40, 0, 3, 0, '2016-04-19 18:28:26', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106287400253', 6200039, 37, 0, 1, 34, 10073, 100, 0, 3, 0, '2016-04-19 18:47:54', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106316100254', 6200029, 27, 4, 1, 34, 10152, 40, 0, 3, 0, '2016-04-19 18:52:41', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106384600255', 6200039, 63, 4, 0, 3, 10000, 20, 0, 3, 0, '2016-04-19 19:04:06', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106495400256', 6200047, 57, 0, 2, 27, 10111, 30, 0, 3, 0, '2016-04-19 19:22:34', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.19.237', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106630800257', 6200029, 27, 4, 1, 37, 10111, 30, 0, 3, 0, '2016-04-19 19:45:08', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106678000258', 6200029, 27, 4, 1, 37, 10110, 150, 0, 3, 0, '2016-04-19 19:53:00', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106680300259', 6200029, 27, 4, 1, 37, 10153, 200, 0, 3, 0, '2016-04-19 19:53:23', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106681100260', 6200029, 27, 4, 1, 37, 10065, 200, 0, 3, 0, '2016-04-19 19:53:31', 200, 0, 10, 200, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106803800261', 6200007, 11, 3, 4, 46, 10111, 30, 0, 3, 0, '2016-04-19 20:13:58', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.194.199', 713);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106842600262', 6200031, 28, 2, 3, 43, 10073, 100, 0, 3, 0, '2016-04-19 20:20:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 714);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106850800263', 6200031, 28, 2, 3, 43, 10152, 40, 0, 3, 0, '2016-04-19 20:21:48', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106850800264', 6200031, 28, 2, 3, 43, 10152, 40, 0, 3, 0, '2016-04-19 20:21:48', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106850800265', 6200031, 28, 2, 3, 43, 10152, 40, 0, 3, 0, '2016-04-19 20:21:48', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106883400266', 6200042, 41, 0, 1, 33, 10110, 150, 0, 3, 0, '2016-04-19 20:27:14', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 715);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106886600267', 6200007, 11, 3, 4, 46, 10110, 150, 0, 3, 0, '2016-04-19 20:27:46', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.194.199', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106935300268', 6200062, 65, 5, 0, 2, 10080, 100, 0, 3, 0, '2016-04-19 20:35:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 1, '0', '', '119.129.75.255', 716);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106951200269', 6200066, 64, 0, 0, 2, 100350, 960, 0, 3, 0, '2016-04-19 20:38:32', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 1, '0', '', '118.119.95.241', 717);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106952400270', 6200066, 64, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-19 20:38:44', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 718);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146106972600271', 6200066, 64, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-19 20:42:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 719);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107019700272', 6200009, 16, 0, 3, 41, 10073, 100, 0, 3, 0, '2016-04-19 20:49:57', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '125.41.236.87', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107019700273', 6200009, 16, 0, 3, 41, 10073, 100, 0, 3, 0, '2016-04-19 20:49:57', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '125.41.236.87', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107019700274', 6200009, 16, 0, 3, 41, 10073, 100, 0, 3, 0, '2016-04-19 20:49:57', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '125.41.236.87', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107064600275', 6200007, 11, 3, 4, 47, 10111, 30, 0, 3, 0, '2016-04-19 20:57:27', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.194.199', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107121900276', 6200062, 65, 5, 0, 6, 100361, 960, 0, 3, 0, '2016-04-19 21:06:59', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 2, '0', '', '119.129.75.255', 720);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107123900277', 6200066, 64, 0, 0, 6, 30015, 200, 0, 3, 0, '2016-04-19 21:07:19', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 721);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107132000278', 6200066, 64, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-19 21:08:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 722);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107132000279', 6200066, 64, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-19 21:08:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 723);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107132000280', 6200066, 64, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-19 21:08:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 724);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107132000281', 6200066, 64, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-19 21:08:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 725);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107147900282', 6200052, 48, 3, 3, 34, 10153, 200, 0, 3, 0, '2016-04-19 21:11:19', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200052', 3, 1, 2, '0', '', '119.126.196.102', 726);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107161900283', 6200033, 31, 0, 1, 39, 10153, 200, 0, 3, 0, '2016-04-19 21:13:39', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', 'cera point', '219.131.92.13', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107233700284', 6200042, 41, 0, 1, 33, 10153, 200, 0, 3, 0, '2016-04-19 21:25:37', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.118.79', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107238100285', 6200042, 41, 0, 1, 33, 10151, 20, 0, 3, 0, '2016-04-19 21:26:21', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 727);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107239300286', 6200042, 41, 0, 1, 33, 10151, 20, 0, 3, 0, '2016-04-19 21:26:33', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 728);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107308900287', 6200033, 31, 0, 1, 40, 10073, 100, 0, 3, 0, '2016-04-19 21:38:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '219.131.92.13', 729);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107387000288', 6200033, 31, 0, 1, 40, 10065, 200, 0, 3, 0, '2016-04-19 21:51:10', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '219.131.92.13', 730);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107387000289', 6200033, 31, 0, 1, 40, 10152, 40, 0, 3, 0, '2016-04-19 21:51:10', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '219.131.92.13', 731);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107392100290', 6200033, 31, 0, 1, 40, 10065, 200, 0, 3, 0, '2016-04-19 21:52:01', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '219.131.92.13', 732);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107392100291', 6200033, 31, 0, 1, 40, 10152, 40, 0, 3, 0, '2016-04-19 21:52:02', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '219.131.92.13', 733);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107402100292', 6200033, 31, 0, 1, 40, 10073, 100, 0, 3, 0, '2016-04-19 21:53:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '219.131.92.13', 734);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107402100293', 6200033, 31, 0, 1, 40, 10073, 100, 0, 3, 0, '2016-04-19 21:53:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '219.131.92.13', 735);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107407900294', 6200042, 41, 0, 1, 34, 10150, 5, 0, 3, 0, '2016-04-19 21:54:39', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 736);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107408200295', 6200042, 41, 0, 1, 34, 10150, 5, 0, 3, 0, '2016-04-19 21:54:42', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 737);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107409700296', 6200042, 41, 0, 1, 34, 10150, 5, 0, 3, 0, '2016-04-19 21:54:57', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 738);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107409700297', 6200042, 41, 0, 1, 34, 10150, 5, 0, 3, 0, '2016-04-19 21:54:57', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 739);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107409700298', 6200042, 41, 0, 1, 34, 10150, 5, 0, 3, 0, '2016-04-19 21:54:57', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 740);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107410900299', 6200042, 41, 0, 1, 34, 10150, 5, 0, 3, 0, '2016-04-19 21:55:09', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 741);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107465800300', 6200042, 41, 0, 1, 34, 10111, 30, 0, 3, 0, '2016-04-19 22:04:18', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.118.79', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107518700301', 6200057, 55, 0, 1, 25, 10110, 150, 0, 3, 0, '2016-04-19 22:13:08', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.96.183', 742);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107519600302', 6200057, 55, 0, 1, 25, 10111, 30, 0, 3, 0, '2016-04-19 22:13:16', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.96.183', 743);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107524200303', 6200042, 41, 0, 1, 34, 10111, 30, 0, 3, 0, '2016-04-19 22:14:02', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.118.79', 744);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107586200304', 6200062, 65, 5, 2, 18, 30013, 160, 0, 3, 0, '2016-04-19 22:24:22', 160, 0, 1, 160, 1, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 2, '0', '', '119.129.75.255', 745);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107630500305', 6200057, 55, 0, 1, 25, 10151, 20, 0, 3, 0, '2016-04-19 22:31:45', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.96.183', 746);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107664700306', 6200058, 56, 0, 3, 23, 10073, 100, 0, 3, 0, '2016-04-19 22:37:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 747);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146107698800307', 6200068, 66, 2, 0, 8, 100219, 1760, 0, 3, 0, '2016-04-19 22:43:08', 1760, 0, 1, 1760, 1, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 1, '0', '', '140.255.167.218', 748);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108079100308', 6200011, 18, 2, 1, 36, 10073, 100, 0, 3, 0, '2016-04-19 23:46:31', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.226.142', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108115900309', 6200011, 18, 2, 1, 36, 10073, 100, 0, 3, 0, '2016-04-19 23:52:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.142', 749);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108390200310', 6200066, 64, 0, 1, 27, 10600, 10, 0, 3, 0, '2016-04-20 00:38:22', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 750);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108390200311', 6200066, 64, 0, 1, 27, 10600, 10, 0, 3, 0, '2016-04-20 00:38:22', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 751);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108390200312', 6200066, 64, 0, 1, 27, 10600, 10, 0, 3, 0, '2016-04-20 00:38:22', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 752);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108390200313', 6200066, 64, 0, 1, 27, 10600, 10, 0, 3, 0, '2016-04-20 00:38:22', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 753);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108392800314', 6200066, 64, 0, 1, 27, 10073, 100, 0, 3, 0, '2016-04-20 00:38:48', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '118.119.95.241', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146108394800315', 6200066, 64, 0, 1, 27, 10073, 100, 0, 3, 0, '2016-04-20 00:39:08', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '118.119.95.241', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146111326300316', 6200060, 59, 7, 1, 33, 10151, 20, 0, 3, 0, '2016-04-20 08:47:43', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200060', 3, 1, 2, '0', '', '139.214.36.54', 754);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146111517400317', 6200042, 41, 0, 1, 35, 10110, 150, 0, 3, 0, '2016-04-20 09:19:34', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.129.202', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146111681300318', 6200012, 7, 3, 1, 35, 10153, 200, 0, 3, 0, '2016-04-20 09:46:53', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '123.11.221.175', 755);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146112048900319', 6200024, 23, 5, 4, 37, 10153, 200, 0, 3, 0, '2016-04-20 10:48:09', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', 'cera point', '182.133.182.218', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146112265300320', 6200063, 71, 7, 0, 1, 100356, 960, 0, 3, 0, '2016-04-20 11:24:13', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200063', 3, 1, 2, '0', '', '43.254.170.60', 756);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146112472500321', 6200042, 41, 0, 1, 37, 10110, 150, 0, 3, 0, '2016-04-20 11:58:45', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 757);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146112488800322', 6200025, 46, 3, 2, 20, 10062, 380, 0, 3, 0, '2016-04-20 12:01:28', 380, 0, 1, 380, 1, 1, 0, 1, 0, 0, 0, '6200025', 3, 1, 2, '0', '', '220.191.222.6', 758);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146112493200323', 6200025, 46, 3, 2, 20, 31200, 560, 0, 3, 0, '2016-04-20 12:02:12', 560, 0, 1, 560, 1, 1, 0, 1, 0, 0, 0, '6200025', 3, 1, 2, '0', '', '220.191.222.6', 759);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146112881300324', 6200075, 73, 0, 0, 4, 10073, 100, 0, 3, 0, '2016-04-20 13:06:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200075', 3, 1, 1, '0', '', '114.227.53.38', 760);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146112892400325', 6200058, 56, 0, 3, 31, 100247, 5760, 0, 3, 0, '2016-04-20 13:08:44', 5760, 0, 1, 5760, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.159.235', 761);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113569900326', 6200066, 64, 0, 1, 33, 10153, 200, 0, 3, 0, '2016-04-20 15:01:40', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.95.241', 762);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113655300327', 6200037, 34, 1, 1, 38, 10153, 200, 0, 3, 0, '2016-04-20 15:15:53', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.188', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113687100328', 6200039, 37, 0, 1, 37, 10001, 60, 0, 3, 0, '2016-04-20 15:21:11', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113699900329', 6200031, 28, 2, 3, 45, 10601, 50, 0, 3, 0, '2016-04-20 15:23:19', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 763);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113699900330', 6200031, 28, 2, 3, 45, 10602, 100, 0, 3, 0, '2016-04-20 15:23:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 764);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113699900331', 6200031, 28, 2, 3, 45, 10602, 100, 0, 3, 0, '2016-04-20 15:23:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 765);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113699900332', 6200031, 28, 2, 3, 45, 10602, 100, 0, 3, 0, '2016-04-20 15:23:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 766);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113700900333', 6200031, 28, 2, 3, 45, 10073, 100, 0, 3, 0, '2016-04-20 15:23:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113700900334', 6200031, 28, 2, 3, 45, 10073, 100, 0, 3, 0, '2016-04-20 15:23:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113700900335', 6200031, 28, 2, 3, 45, 10073, 100, 0, 3, 0, '2016-04-20 15:23:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113700900336', 6200031, 28, 2, 3, 45, 10073, 100, 0, 3, 0, '2016-04-20 15:23:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113738200337', 6200031, 28, 2, 3, 45, 10600, 10, 0, 3, 0, '2016-04-20 15:29:43', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 767);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113738800338', 6200031, 28, 2, 3, 45, 10120, 25, 0, 3, 0, '2016-04-20 15:29:48', 25, 0, 1, 25, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146113874900339', 6200031, 28, 2, 3, 46, 10120, 25, 0, 3, 0, '2016-04-20 15:52:29', 25, 0, 1, 25, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146114189000340', 6200031, 28, 2, 3, 47, 10152, 40, 0, 3, 0, '2016-04-20 16:44:50', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146114189000341', 6200031, 28, 2, 3, 47, 10152, 40, 0, 3, 0, '2016-04-20 16:44:50', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146114693400342', 6200078, 74, 5, 0, 1, 100227, 1760, 0, 3, 0, '2016-04-20 18:08:54', 1760, 0, 1, 1760, 1, 1, 0, 1, 0, 0, 0, '6200078', 3, 1, 1, '0', '', '59.48.8.134', 768);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146114973600343', 6200079, 75, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-20 18:55:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 1, '0', '', '180.127.223.81', 769);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146114979900344', 6200079, 75, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-20 18:56:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '180.127.223.81', 770);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146114980500345', 6200079, 75, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-20 18:56:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '180.127.223.81', 771);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115118200346', 6200029, 27, 4, 1, 40, 10110, 150, 0, 3, 0, '2016-04-20 19:19:42', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115118200347', 6200029, 27, 4, 1, 40, 10111, 30, 0, 3, 0, '2016-04-20 19:19:42', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115216700348', 6200068, 66, 2, 1, 22, 10073, 100, 0, 3, 0, '2016-04-20 19:36:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '182.34.144.81', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115275900349', 6200081, 77, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-20 19:45:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 1, '0', '', '218.28.142.42', 772);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115327800350', 6200074, 76, 0, 0, 4, 10000, 20, 0, 3, 0, '2016-04-20 19:54:38', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 1, '0', '', '171.221.3.33', 773);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115337500351', 6200074, 76, 0, 0, 4, 10080, 100, 0, 3, 0, '2016-04-20 19:56:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 774);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115349900352', 6200074, 76, 0, 0, 4, 10001, 60, 0, 3, 0, '2016-04-20 19:58:19', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 775);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115352400353', 6200074, 76, 0, 0, 4, 10002, 100, 0, 3, 0, '2016-04-20 19:58:44', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 776);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115353500354', 6200074, 76, 0, 0, 4, 10003, 140, 0, 3, 0, '2016-04-20 19:58:55', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 777);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115354700355', 6200074, 76, 0, 0, 4, 10004, 180, 0, 3, 0, '2016-04-20 19:59:07', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 778);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115362500356', 6200074, 76, 0, 0, 4, 10005, 220, 0, 3, 0, '2016-04-20 20:00:25', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 779);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115368900357', 6200074, 76, 0, 0, 4, 10060, 100, 0, 3, 0, '2016-04-20 20:01:29', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 780);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115402300358', 6200081, 77, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-20 20:07:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 781);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115402300359', 6200081, 77, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-20 20:07:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 782);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115402300360', 6200081, 77, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-20 20:07:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 783);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115550200361', 6200039, 37, 0, 1, 41, 10600, 10, 0, 3, 0, '2016-04-20 20:31:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', '', '122.224.209.222', 784);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115550200362', 6200039, 37, 0, 1, 41, 10601, 50, 0, 3, 0, '2016-04-20 20:31:42', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', '', '122.224.209.222', 785);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115550200363', 6200039, 37, 0, 1, 41, 10602, 100, 0, 3, 0, '2016-04-20 20:31:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', '', '122.224.209.222', 786);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115551600364', 6200039, 37, 0, 1, 41, 30015, 200, 0, 3, 0, '2016-04-20 20:31:56', 200, 0, 1, 200, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115557500365', 6200039, 37, 0, 1, 41, 30003, 120, 0, 3, 0, '2016-04-20 20:32:55', 120, 0, 1, 120, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115632900366', 6200081, 78, 8, 0, 5, 10073, 100, 0, 3, 0, '2016-04-20 20:45:29', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 787);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115633400367', 6200081, 78, 8, 0, 5, 10073, 100, 0, 3, 0, '2016-04-20 20:45:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 788);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115633400368', 6200081, 78, 8, 0, 5, 10073, 100, 0, 3, 0, '2016-04-20 20:45:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 789);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115728500369', 6200071, 80, 3, 0, 2, 10080, 100, 0, 3, 0, '2016-04-20 21:01:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200071', 3, 1, 1, '0', '', '112.102.40.71', 790);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115771800370', 6200057, 55, 0, 1, 27, 10065, 200, 0, 3, 0, '2016-04-20 21:08:38', 200, 0, 10, 200, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115772600371', 6200057, 55, 0, 1, 27, 10151, 20, 0, 3, 0, '2016-04-20 21:08:46', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 791);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115779900372', 6200057, 55, 0, 1, 27, 10065, 200, 0, 3, 0, '2016-04-20 21:09:59', 200, 0, 10, 200, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115780200373', 6200057, 55, 0, 1, 27, 10151, 20, 0, 3, 0, '2016-04-20 21:10:02', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 792);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115781000374', 6200057, 55, 0, 1, 27, 10151, 20, 0, 3, 0, '2016-04-20 21:10:11', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115786100375', 6200047, 57, 0, 2, 34, 10154, 400, 0, 3, 0, '2016-04-20 21:11:01', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.31.91', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115818000376', 6200057, 55, 0, 1, 28, 10150, 5, 0, 3, 0, '2016-04-20 21:16:20', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115819000377', 6200047, 57, 0, 2, 34, 9500, 50, 0, 3, 0, '2016-04-20 21:16:30', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.31.91', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115819000378', 6200047, 57, 0, 2, 34, 9500, 50, 0, 3, 0, '2016-04-20 21:16:30', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.31.91', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115820800379', 6200057, 55, 0, 1, 28, 10151, 20, 0, 3, 0, '2016-04-20 21:16:48', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115824900380', 6200057, 55, 0, 1, 28, 9500, 50, 0, 3, 0, '2016-04-20 21:17:29', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115838800381', 6200057, 55, 0, 1, 28, 9500, 50, 0, 3, 0, '2016-04-20 21:19:48', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115841800382', 6200057, 55, 0, 1, 28, 9500, 50, 0, 3, 0, '2016-04-20 21:20:18', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115844800383', 6200057, 55, 0, 1, 28, 9500, 50, 0, 3, 0, '2016-04-20 21:20:48', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115851900384', 6200081, 78, 8, 0, 10, 10211, 360, 0, 3, 0, '2016-04-20 21:21:59', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 793);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115874600385', 6200067, 81, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-20 21:25:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200067', 3, 1, 1, '0', '', '125.79.129.114', 794);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115899700386', 6200067, 81, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-20 21:29:58', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200067', 3, 1, 2, '0', '', '125.79.129.114', 795);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115919600387', 6200057, 55, 0, 1, 29, 10151, 20, 0, 3, 0, '2016-04-20 21:33:16', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115948300388', 6200067, 81, 0, 0, 3, 10001, 60, 0, 3, 0, '2016-04-20 21:38:03', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200067', 3, 1, 2, '0', '', '125.79.129.114', 796);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115949000389', 6200067, 81, 0, 0, 3, 10066, 300, 0, 3, 0, '2016-04-20 21:38:10', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200067', 3, 1, 2, '0', '', '125.79.129.114', 797);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146115974200390', 6200083, 85, 0, 0, 1, 10053, 15, 0, 3, 0, '2016-04-20 21:42:22', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 1, '0', '', '171.223.176.102', 798);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116022500391', 6200083, 85, 0, 0, 3, 100348, 960, 0, 3, 0, '2016-04-20 21:50:25', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 799);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116048800392', 6200067, 81, 0, 0, 7, 30015, 200, 0, 3, 0, '2016-04-20 21:54:48', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200067', 3, 1, 2, '0', '', '125.79.129.114', 800);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116052500393', 6200007, 11, 3, 20, 52, 10110, 150, 0, 3, 0, '2016-04-20 21:55:25', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.242.147', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116106800394', 6200009, 16, 0, 3, 45, 10062, 380, 0, 3, 0, '2016-04-20 22:04:28', 380, 0, 1, 380, 1, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', '', '182.118.68.37', 801);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116155700395', 6200057, 55, 0, 1, 31, 10151, 20, 0, 3, 0, '2016-04-20 22:12:38', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116204200396', 6200029, 27, 4, 1, 43, 10110, 150, 0, 3, 0, '2016-04-20 22:20:42', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116315400397', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:39:14', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116316700398', 6200037, 34, 1, 1, 39, 10153, 200, 0, 3, 0, '2016-04-20 22:39:27', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.188', 802);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116316700399', 6200037, 34, 1, 1, 39, 10154, 400, 0, 3, 0, '2016-04-20 22:39:27', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.188', 803);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116318500400', 6200037, 34, 1, 1, 39, 10151, 20, 0, 3, 0, '2016-04-20 22:39:45', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.188', 804);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116336200401', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:42:42', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 805);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116336200402', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:42:42', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 806);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116336200403', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:42:42', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 807);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116336200404', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:42:42', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 808);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116336200405', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:42:42', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 809);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116344600406', 6200057, 55, 0, 1, 32, 10065, 200, 0, 3, 0, '2016-04-20 22:44:06', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 810);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116345200407', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:44:12', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 811);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116345200408', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:44:12', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 812);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116353600409', 6200057, 55, 0, 1, 32, 10001, 60, 0, 3, 0, '2016-04-20 22:45:36', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 813);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116357400410', 6200057, 55, 0, 1, 32, 10120, 25, 0, 3, 0, '2016-04-20 22:46:14', 25, 0, 1, 25, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 814);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116357400411', 6200057, 55, 0, 1, 32, 10120, 25, 0, 3, 0, '2016-04-20 22:46:14', 25, 0, 1, 25, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 815);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116362900412', 6200057, 55, 0, 1, 32, 10120, 25, 0, 3, 0, '2016-04-20 22:47:09', 25, 0, 1, 25, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 816);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116370800413', 6200004, 9, 0, 1, 39, 10154, 400, 0, 3, 0, '2016-04-20 22:48:28', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200004', 3, 1, 2, '0', 'cera point', '124.238.33.238', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116395400414', 6200057, 55, 0, 1, 32, 10151, 20, 0, 3, 0, '2016-04-20 22:52:34', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 817);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116424100415', 6200009, 16, 0, 3, 46, 10004, 180, 0, 3, 0, '2016-04-20 22:57:21', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', '', '182.118.68.37', 818);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116437800416', 6200050, 50, 6, 2, 26, 10060, 100, 0, 3, 0, '2016-04-20 22:59:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '61.141.126.66', 819);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116438800417', 6200050, 50, 6, 2, 26, 10061, 100, 0, 3, 0, '2016-04-20 22:59:48', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '61.141.126.66', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116440100418', 6200007, 11, 3, 20, 52, 10111, 30, 0, 3, 0, '2016-04-20 23:00:01', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.242.147', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116449600419', 6200057, 55, 0, 1, 33, 10151, 20, 0, 3, 0, '2016-04-20 23:01:36', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116480000420', 6200036, 86, 5, 0, 2, 10080, 100, 0, 3, 0, '2016-04-20 23:06:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 1, '0', '', '171.34.228.156', 820);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116503000421', 6200029, 27, 4, 1, 44, 10110, 150, 0, 3, 0, '2016-04-20 23:10:30', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116589000422', 6200083, 85, 0, 1, 28, 10065, 200, 0, 3, 0, '2016-04-20 23:24:50', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 821);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116589600423', 6200083, 85, 0, 1, 28, 10152, 40, 0, 3, 0, '2016-04-20 23:24:56', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 822);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116591900424', 6200083, 85, 0, 1, 28, 10152, 40, 0, 3, 0, '2016-04-20 23:25:20', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.176.102', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116591900425', 6200083, 85, 0, 1, 28, 10152, 40, 0, 3, 0, '2016-04-20 23:25:20', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.176.102', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116592300426', 6200083, 85, 0, 1, 28, 10152, 40, 0, 3, 0, '2016-04-20 23:25:23', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 823);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116593400427', 6200083, 85, 0, 1, 28, 10065, 200, 0, 3, 0, '2016-04-20 23:25:35', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 824);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116593400428', 6200083, 85, 0, 1, 28, 10065, 200, 0, 3, 0, '2016-04-20 23:25:35', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 825);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116596500429', 6200008, 3, 0, 0, 4, 10073, 100, 0, 3, 0, '2016-04-20 23:26:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 1, '0', '', '202.101.138.129', 826);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116631000430', 6200083, 85, 0, 1, 28, 10080, 100, 0, 3, 0, '2016-04-20 23:31:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 827);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116656800431', 6200008, 3, 0, 0, 4, 100351, 960, 0, 3, 0, '2016-04-20 23:36:08', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 828);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116658800432', 6200008, 3, 0, 0, 4, 100328, 960, 0, 3, 0, '2016-04-20 23:36:28', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 829);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116668200433', 6200083, 85, 0, 1, 28, 10111, 30, 0, 3, 0, '2016-04-20 23:38:03', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.176.102', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116668200434', 6200083, 85, 0, 1, 28, 10111, 30, 0, 3, 0, '2016-04-20 23:38:03', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.176.102', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116669300435', 6200083, 85, 0, 1, 28, 10111, 30, 0, 3, 0, '2016-04-20 23:38:13', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.176.102', 830);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116671500436', 6200008, 3, 0, 0, 4, 10153, 200, 0, 3, 0, '2016-04-20 23:38:35', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 831);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116671500437', 6200008, 3, 0, 0, 4, 10154, 400, 0, 3, 0, '2016-04-20 23:38:35', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 832);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116673900438', 6200008, 3, 0, 0, 4, 10152, 40, 0, 3, 0, '2016-04-20 23:38:59', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 833);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116673900439', 6200008, 3, 0, 0, 4, 10152, 40, 0, 3, 0, '2016-04-20 23:38:59', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 834);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116673900440', 6200008, 3, 0, 0, 4, 10152, 40, 0, 3, 0, '2016-04-20 23:38:59', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 835);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116673900441', 6200008, 3, 0, 0, 4, 10152, 40, 0, 3, 0, '2016-04-20 23:38:59', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 836);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116673900442', 6200008, 3, 0, 0, 4, 10152, 40, 0, 3, 0, '2016-04-20 23:38:59', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 837);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116677200443', 6200008, 3, 0, 0, 4, 10065, 200, 0, 3, 0, '2016-04-20 23:39:32', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 838);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116677200444', 6200008, 3, 0, 0, 4, 10065, 200, 0, 3, 0, '2016-04-20 23:39:32', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 839);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116681700445', 6200008, 3, 0, 0, 4, 10065, 200, 0, 3, 0, '2016-04-20 23:40:17', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 840);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116689600446', 6200008, 3, 0, 0, 4, 10060, 100, 0, 3, 0, '2016-04-20 23:41:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200008', 3, 1, 2, '0', '', '202.101.138.129', 841);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116711000447', 6200029, 27, 4, 1, 45, 10154, 400, 0, 3, 0, '2016-04-20 23:45:10', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116742300448', 6200029, 27, 4, 1, 45, 10073, 100, 0, 3, 0, '2016-04-20 23:50:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116742300449', 6200029, 27, 4, 1, 45, 10073, 100, 0, 3, 0, '2016-04-20 23:50:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116742300450', 6200029, 27, 4, 1, 45, 10073, 100, 0, 3, 0, '2016-04-20 23:50:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116742300451', 6200029, 27, 4, 1, 45, 10073, 100, 0, 3, 0, '2016-04-20 23:50:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116742300452', 6200029, 27, 4, 1, 45, 10073, 100, 0, 3, 0, '2016-04-20 23:50:24', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.89.245', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116958600453', 6200057, 55, 0, 1, 35, 10151, 20, 0, 3, 0, '2016-04-21 00:26:27', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 842);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116958600454', 6200057, 55, 0, 1, 35, 10151, 20, 0, 3, 0, '2016-04-21 00:26:27', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 843);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116958600455', 6200057, 55, 0, 1, 35, 10151, 20, 0, 3, 0, '2016-04-21 00:26:27', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 844);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116964500456', 6200057, 55, 0, 1, 35, 9500, 50, 0, 3, 0, '2016-04-21 00:27:25', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 845);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146116968500457', 6200057, 55, 0, 1, 35, 9500, 50, 0, 3, 0, '2016-04-21 00:28:05', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 846);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117016800458', 6200050, 87, 2, 0, 7, 10600, 10, 0, 3, 0, '2016-04-21 00:36:08', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '61.141.126.66', 847);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117016800459', 6200050, 87, 2, 0, 7, 10600, 10, 0, 3, 0, '2016-04-21 00:36:08', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '61.141.126.66', 848);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117016800460', 6200050, 87, 2, 0, 7, 10600, 10, 0, 3, 0, '2016-04-21 00:36:08', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '61.141.126.66', 849);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117016800461', 6200050, 87, 2, 0, 7, 10600, 10, 0, 3, 0, '2016-04-21 00:36:08', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '61.141.126.66', 850);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117018300462', 6200050, 87, 2, 0, 7, 10073, 100, 0, 3, 0, '2016-04-21 00:36:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '61.141.126.66', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117021900463', 6200070, 69, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-21 00:36:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 1, '0', '', '36.43.226.142', 851);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100464', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 852);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100465', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 853);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100466', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 854);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100467', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 855);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100468', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 856);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100469', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 857);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100470', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 858);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100471', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 859);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100472', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 860);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100473', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 861);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100474', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 862);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100475', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 863);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100476', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 864);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100477', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 865);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100478', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 866);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100479', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 867);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100480', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 868);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100481', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 869);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100482', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 870);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100483', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 871);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100484', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 872);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100485', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 873);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117043100486', 6200070, 69, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:40:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.226.142', 874);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117096500487', 6200057, 55, 0, 1, 35, 100205, 11760, 0, 3, 0, '2016-04-21 00:49:25', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 875);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117098100488', 6200084, 89, 0, 0, 2, 100348, 960, 0, 3, 0, '2016-04-21 00:49:41', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 1, '0', '', '124.116.241.36', 876);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117113800489', 6200069, 70, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-21 00:52:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 1, '0', '', '36.43.226.142', 877);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117122700490', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:53:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 878);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117122700491', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:53:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 879);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600492', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 880);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600493', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 881);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600494', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 882);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600495', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 883);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600496', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 884);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600497', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 885);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600498', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 886);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600499', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 887);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600500', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 888);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600501', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 889);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600502', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 890);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600503', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 891);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600504', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 892);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600505', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 893);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600506', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 894);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600507', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 895);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600508', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 896);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600509', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 897);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600510', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 898);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600511', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 899);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117127600512', 6200069, 70, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 00:54:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.226.142', 900);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117132200513', 6200028, 32, 3, 2, 18, 10073, 100, 0, 3, 0, '2016-04-21 00:55:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.227.133.191', 901);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117132200514', 6200028, 32, 3, 2, 18, 10073, 100, 0, 3, 0, '2016-04-21 00:55:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.227.133.191', 902);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117146000515', 6200028, 32, 3, 2, 18, 100368, 960, 0, 3, 0, '2016-04-21 00:57:40', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.227.133.191', 903);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117172000516', 6200010, 5, 1, 1, 47, 10076, 600, 0, 3, 0, '2016-04-21 01:02:00', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 904);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117204400517', 6200010, 5, 1, 1, 47, 10110, 150, 0, 3, 0, '2016-04-21 01:07:24', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 905);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117224500518', 6200057, 55, 0, 1, 36, 10151, 20, 0, 3, 0, '2016-04-21 01:10:45', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117237300519', 6200057, 55, 0, 1, 36, 10002, 100, 0, 3, 0, '2016-04-21 01:12:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 906);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117238500520', 6200057, 55, 0, 1, 36, 10003, 140, 0, 3, 0, '2016-04-21 01:13:06', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 907);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146117277000521', 6200057, 55, 0, 1, 36, 9500, 50, 0, 3, 0, '2016-04-21 01:19:30', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.221', 908);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119800900522', 6200012, 7, 3, 1, 39, 30011, 80, 0, 3, 0, '2016-04-21 08:20:09', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '219.156.183.172', 909);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119830600523', 6200002, 91, 9, 0, 56, 1100008, 90, 0, 3, 0, '2016-04-21 08:25:06', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200002', 3, 1, 1, '0', '', '180.156.247.3', 910);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119830600524', 6200002, 91, 9, 0, 56, 1400018, 105, 0, 3, 0, '2016-04-21 08:25:06', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200002', 3, 1, 2, '0', '', '180.156.247.3', 911);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119830600525', 6200002, 91, 9, 0, 56, 1600020, 105, 0, 3, 0, '2016-04-21 08:25:06', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200002', 3, 1, 2, '0', '', '180.156.247.3', 912);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119830600526', 6200002, 91, 9, 0, 56, 1700020, 105, 0, 3, 0, '2016-04-21 08:25:06', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200002', 3, 1, 2, '0', '', '180.156.247.3', 913);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119901800527', 6200054, 52, 7, 3, 35, 10154, 400, 0, 3, 0, '2016-04-21 08:36:58', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200054', 3, 1, 2, '0', 'cera point', '123.163.64.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119930600528', 6200012, 7, 3, 1, 39, 31000, 240, 0, 3, 0, '2016-04-21 08:41:46', 240, 0, 1, 240, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '219.156.183.172', 914);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146119930600529', 6200012, 7, 3, 1, 39, 31100, 240, 0, 3, 0, '2016-04-21 08:41:46', 240, 0, 1, 240, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '219.156.183.172', 915);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120187400530', 6200042, 41, 0, 1, 38, 10073, 100, 0, 3, 0, '2016-04-21 09:24:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 916);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120187400531', 6200042, 41, 0, 1, 38, 10073, 100, 0, 3, 0, '2016-04-21 09:24:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 917);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120187400532', 6200042, 41, 0, 1, 38, 10073, 100, 0, 3, 0, '2016-04-21 09:24:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 918);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120187400533', 6200042, 41, 0, 1, 38, 10073, 100, 0, 3, 0, '2016-04-21 09:24:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 919);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120187400534', 6200042, 41, 0, 1, 38, 10073, 100, 0, 3, 0, '2016-04-21 09:24:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 920);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120338000535', 6200012, 7, 3, 1, 40, 10153, 200, 0, 3, 0, '2016-04-21 09:49:40', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200012', 3, 1, 2, '0', '', '219.156.183.172', 921);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120523400536', 6200087, 93, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-21 10:20:34', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 1, '0', '', '1.61.84.216', 922);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120527500537', 6200087, 93, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-21 10:21:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 923);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120528500538', 6200087, 93, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 10:21:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 924);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120529000539', 6200087, 93, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 10:21:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 925);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120530200540', 6200087, 93, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-21 10:21:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 926);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120531200541', 6200087, 93, 0, 0, 2, 10001, 60, 0, 3, 0, '2016-04-21 10:21:52', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 927);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120531500542', 6200087, 93, 0, 0, 2, 10002, 100, 0, 3, 0, '2016-04-21 10:21:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 928);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120606400543', 6200087, 93, 0, 0, 3, 100349, 960, 0, 3, 0, '2016-04-21 10:34:24', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 929);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120614200544', 6200087, 93, 0, 0, 3, 10003, 140, 0, 3, 0, '2016-04-21 10:35:42', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 930);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120619400545', 6200087, 93, 0, 0, 3, 30005, 200, 0, 3, 0, '2016-04-21 10:36:34', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 931);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120619400546', 6200087, 93, 0, 0, 3, 30015, 200, 0, 3, 0, '2016-04-21 10:36:34', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 932);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120619400547', 6200087, 93, 0, 0, 3, 30025, 200, 0, 3, 0, '2016-04-21 10:36:34', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 933);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120654400548', 6200087, 93, 0, 0, 5, 10004, 180, 0, 3, 0, '2016-04-21 10:42:24', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 934);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120660000549', 6200087, 93, 0, 0, 5, 10070, 100, 0, 3, 0, '2016-04-21 10:43:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 935);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120672300550', 6200085, 92, 0, 0, 10, 10066, 300, 0, 3, 0, '2016-04-21 10:45:23', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 1, '0', '', '116.21.104.65', 936);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120674100551', 6200085, 92, 0, 0, 10, 1700018, 105, 0, 3, 0, '2016-04-21 10:45:41', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 937);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120675800552', 6200085, 92, 0, 0, 10, 1200003, 90, 0, 3, 0, '2016-04-21 10:45:58', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 938);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120677200553', 6200085, 92, 0, 0, 10, 1300003, 90, 0, 3, 0, '2016-04-21 10:46:12', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 939);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120690600554', 6200071, 80, 3, 0, 12, 10073, 100, 0, 3, 0, '2016-04-21 10:48:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200071', 3, 1, 2, '0', '', '112.102.40.71', 940);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120703400555', 6200087, 93, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-21 10:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 941);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120703400556', 6200087, 93, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-21 10:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 942);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120703400557', 6200087, 93, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-21 10:50:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 943);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120709400558', 6200087, 93, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-21 10:51:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 944);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120709400559', 6200087, 93, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-21 10:51:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 945);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120709400560', 6200087, 93, 0, 0, 6, 10073, 100, 0, 3, 0, '2016-04-21 10:51:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 946);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120772000561', 6200087, 93, 0, 0, 7, 10050, 2, 0, 3, 0, '2016-04-21 11:02:00', 2, 0, 1, 2, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 947);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120772000562', 6200087, 93, 0, 0, 7, 10050, 2, 0, 3, 0, '2016-04-21 11:02:00', 2, 0, 1, 2, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 948);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120973300563', 6200087, 93, 0, 0, 10, 10031, 140, 0, 3, 0, '2016-04-21 11:35:33', 140, 0, 10, 140, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 949);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120981500564', 6200087, 93, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-21 11:36:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 950);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146120981500565', 6200087, 93, 0, 0, 10, 10210, 360, 0, 3, 0, '2016-04-21 11:36:55', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 951);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121152500566', 6200022, 21, 2, 1, 44, 10100, 180, 0, 3, 0, '2016-04-21 12:05:25', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 952);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121351900567', 6200087, 93, 0, 0, 14, 10073, 100, 0, 3, 0, '2016-04-21 12:38:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 953);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121434400568', 6200041, 40, 1, 2, 29, 10065, 200, 0, 3, 0, '2016-04-21 12:52:24', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.229.80', 954);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121434800569', 6200041, 40, 1, 2, 29, 10065, 200, 0, 3, 0, '2016-04-21 12:52:28', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.229.80', 955);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121435600570', 6200041, 40, 1, 2, 29, 10153, 200, 0, 3, 0, '2016-04-21 12:52:36', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.229.80', 956);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121436500571', 6200041, 40, 1, 2, 29, 10152, 40, 0, 3, 0, '2016-04-21 12:52:45', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.229.80', 957);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121461700572', 6200041, 40, 1, 2, 29, 30013, 160, 0, 3, 0, '2016-04-21 12:56:57', 160, 0, 1, 160, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.229.80', 958);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121468300573', 6200041, 40, 1, 2, 29, 20000, 100, 0, 3, 0, '2016-04-21 12:58:03', 100, 0, 100, 100, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.229.80', 959);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121556400574', 6200042, 41, 0, 1, 40, 10110, 150, 0, 3, 0, '2016-04-21 13:12:44', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.129.202', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121594900575', 6200010, 5, 1, 17, 52, 10111, 30, 0, 3, 0, '2016-04-21 13:19:09', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 960);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121619500576', 6200010, 5, 1, 17, 52, 10111, 30, 0, 3, 0, '2016-04-21 13:23:15', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 961);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121619500577', 6200010, 5, 1, 17, 52, 10111, 30, 0, 3, 0, '2016-04-21 13:23:15', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 962);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121745900578', 6200087, 93, 0, 2, 23, 10073, 100, 0, 3, 0, '2016-04-21 13:44:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 963);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121745900579', 6200087, 93, 0, 2, 23, 10073, 100, 0, 3, 0, '2016-04-21 13:44:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 964);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121745900580', 6200087, 93, 0, 2, 23, 10073, 100, 0, 3, 0, '2016-04-21 13:44:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 965);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121749800581', 6200087, 93, 0, 2, 23, 10073, 100, 0, 3, 0, '2016-04-21 13:44:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 966);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121793800582', 6200087, 93, 0, 2, 23, 10110, 150, 0, 3, 0, '2016-04-21 13:52:18', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 967);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121819400583', 6200087, 93, 0, 2, 24, 10111, 30, 0, 3, 0, '2016-04-21 13:56:34', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 968);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121820800584', 6200087, 93, 0, 2, 24, 10111, 30, 0, 3, 0, '2016-04-21 13:56:48', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 969);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121906800585', 6200031, 28, 2, 3, 47, 10153, 200, 0, 3, 0, '2016-04-21 14:11:08', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 970);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121961300586', 6200031, 28, 2, 3, 47, 10150, 5, 0, 3, 0, '2016-04-21 14:20:13', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 971);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146121961800587', 6200031, 28, 2, 3, 47, 10150, 5, 0, 3, 0, '2016-04-21 14:20:18', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 972);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122016100588', 6200031, 28, 2, 3, 47, 10121, 100, 0, 3, 0, '2016-04-21 14:29:21', 100, 0, 5, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122059300589', 6200042, 41, 0, 1, 41, 10153, 200, 0, 3, 0, '2016-04-21 14:36:33', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 973);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122064000590', 6200042, 41, 0, 1, 41, 10153, 200, 0, 3, 0, '2016-04-21 14:37:20', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 974);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122112400591', 6200047, 57, 0, 2, 38, 10153, 200, 0, 3, 0, '2016-04-21 14:45:24', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.30.35', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122125000592', 6200042, 41, 0, 1, 41, 10110, 150, 0, 3, 0, '2016-04-21 14:47:30', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.129.202', 975);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122174100593', 6200079, 75, 0, 4, 16, 10100, 180, 0, 3, 0, '2016-04-21 14:55:41', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '222.189.115.168', 976);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122673600594', 6200031, 28, 2, 3, 50, 10073, 100, 0, 3, 0, '2016-04-21 16:18:56', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122804600595', 6200007, 11, 3, 20, 56, 10072, 360, 0, 3, 0, '2016-04-21 16:40:46', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.93.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122862500596', 6200007, 11, 3, 20, 56, 10111, 30, 0, 3, 0, '2016-04-21 16:50:25', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.93.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122863400597', 6200007, 11, 3, 20, 56, 10110, 150, 0, 3, 0, '2016-04-21 16:50:35', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.93.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146122889700598', 6200031, 28, 2, 3, 50, 10111, 30, 0, 3, 0, '2016-04-21 16:54:57', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123328400599', 6200022, 24, 1, 3, 49, 10111, 30, 0, 3, 0, '2016-04-21 18:08:04', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 977);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123328700600', 6200022, 24, 1, 3, 49, 10110, 150, 0, 3, 0, '2016-04-21 18:08:08', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 978);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123365700601', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', 'cera point', '124.116.241.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123365700602', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', 'cera point', '124.116.241.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200603', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 979);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200604', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 980);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200605', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 981);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200606', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 982);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200607', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 983);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200608', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 984);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200609', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 985);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123368200610', 6200084, 90, 5, 0, 3, 10602, 100, 0, 3, 0, '2016-04-21 18:14:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '124.116.241.39', 986);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123369600611', 6200084, 90, 5, 0, 3, 100363, 960, 0, 3, 0, '2016-04-21 18:14:56', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', 'cera point', '124.116.241.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123465500612', 6200007, 11, 3, 20, 57, 10110, 150, 0, 3, 0, '2016-04-21 18:30:55', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.93.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123564700613', 6200022, 24, 1, 19, 50, 10073, 100, 0, 3, 0, '2016-04-21 18:47:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 987);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123564700614', 6200022, 24, 1, 19, 50, 10073, 100, 0, 3, 0, '2016-04-21 18:47:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 988);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123597200615', 6200022, 24, 1, 19, 50, 10211, 360, 0, 3, 0, '2016-04-21 18:52:52', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.112.95', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123602400616', 6200083, 85, 0, 1, 36, 10151, 20, 0, 3, 0, '2016-04-21 18:53:44', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 989);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123602400617', 6200083, 85, 0, 1, 36, 10152, 40, 0, 3, 0, '2016-04-21 18:53:44', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 990);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123604600618', 6200083, 85, 0, 1, 36, 10065, 200, 0, 3, 0, '2016-04-21 18:54:06', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 991);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123604600619', 6200083, 85, 0, 1, 36, 10065, 200, 0, 3, 0, '2016-04-21 18:54:07', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 992);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123604600620', 6200083, 85, 0, 1, 36, 10152, 40, 0, 3, 0, '2016-04-21 18:54:07', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 993);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123604600621', 6200083, 85, 0, 1, 36, 10152, 40, 0, 3, 0, '2016-04-21 18:54:07', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 994);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123606300622', 6200007, 11, 3, 20, 57, 10111, 30, 0, 3, 0, '2016-04-21 18:54:23', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.93.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123606500623', 6200022, 24, 1, 19, 50, 10073, 100, 0, 3, 0, '2016-04-21 18:54:25', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.112.95', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123611100624', 6200022, 24, 1, 19, 50, 10073, 100, 0, 3, 0, '2016-04-21 18:55:11', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.112.95', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123621800625', 6200083, 85, 0, 1, 36, 10152, 40, 0, 3, 0, '2016-04-21 18:56:58', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.217.184.134', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123621800626', 6200083, 85, 0, 1, 36, 10152, 40, 0, 3, 0, '2016-04-21 18:56:58', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.217.184.134', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123621800627', 6200083, 85, 0, 1, 36, 10152, 40, 0, 3, 0, '2016-04-21 18:56:58', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.217.184.134', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123622600628', 6200087, 93, 0, 2, 25, 10080, 100, 0, 3, 0, '2016-04-21 18:57:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 995);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123625700629', 6200083, 85, 0, 1, 36, 10152, 40, 0, 3, 0, '2016-04-21 18:57:38', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 996);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123626500630', 6200083, 85, 0, 1, 36, 10151, 20, 0, 3, 0, '2016-04-21 18:57:45', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.217.184.134', 997);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123627000631', 6200083, 85, 0, 1, 36, 10151, 20, 0, 3, 0, '2016-04-21 18:57:51', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.217.184.134', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123628000632', 6200087, 93, 0, 2, 25, 10065, 200, 0, 3, 0, '2016-04-21 18:58:00', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 998);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123628000633', 6200087, 93, 0, 2, 25, 10065, 200, 0, 3, 0, '2016-04-21 18:58:00', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 999);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123628000634', 6200087, 93, 0, 2, 25, 10065, 200, 0, 3, 0, '2016-04-21 18:58:00', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 1000);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123628000635', 6200087, 93, 0, 2, 25, 10065, 200, 0, 3, 0, '2016-04-21 18:58:00', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 1001);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123628000636', 6200087, 93, 0, 2, 25, 10154, 400, 0, 3, 0, '2016-04-21 18:58:00', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', '', '1.61.84.216', 1002);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123635400637', 6200022, 24, 1, 19, 50, 10073, 100, 0, 3, 0, '2016-04-21 18:59:14', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.112.95', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123635400638', 6200022, 24, 1, 19, 50, 10073, 100, 0, 3, 0, '2016-04-21 18:59:14', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.112.95', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123652800639', 6200084, 90, 5, 0, 10, 10080, 100, 0, 3, 0, '2016-04-21 19:02:08', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', 'cera point', '124.116.241.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123672500640', 6200022, 24, 1, 19, 50, 10211, 360, 0, 3, 0, '2016-04-21 19:05:25', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.112.95', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123685300641', 6200057, 55, 0, 1, 38, 10151, 20, 0, 3, 0, '2016-04-21 19:07:33', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.50.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123685300642', 6200057, 55, 0, 1, 38, 10151, 20, 0, 3, 0, '2016-04-21 19:07:33', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.50.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123685300643', 6200057, 55, 0, 1, 38, 10151, 20, 0, 3, 0, '2016-04-21 19:07:33', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.50.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123692200644', 6200022, 24, 1, 19, 50, 10211, 360, 0, 3, 0, '2016-04-21 19:08:42', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 1003);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123698500645', 6200022, 24, 1, 19, 50, 10073, 100, 0, 3, 0, '2016-04-21 19:09:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 1004);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123700200646', 6200022, 24, 1, 19, 50, 10211, 360, 0, 3, 0, '2016-04-21 19:10:02', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 1005);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123703300647', 6200022, 24, 1, 19, 50, 10211, 360, 0, 3, 0, '2016-04-21 19:10:33', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.112.95', 1006);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123704100648', 6200007, 11, 3, 20, 57, 10073, 100, 0, 3, 0, '2016-04-21 19:10:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.93.149', 1007);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123704600649', 6200007, 11, 3, 20, 57, 10073, 100, 0, 3, 0, '2016-04-21 19:10:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.93.149', 1008);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123828500650', 6200007, 11, 3, 20, 57, 10001, 60, 0, 3, 0, '2016-04-21 19:31:25', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.93.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123902300651', 6200068, 66, 2, 1, 28, 10600, 10, 0, 3, 0, '2016-04-21 19:43:43', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', '', '123.169.95.79', 1009);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123902700652', 6200068, 66, 2, 1, 28, 10600, 10, 0, 3, 0, '2016-04-21 19:43:47', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', '', '123.169.95.79', 1010);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123903100653', 6200068, 66, 2, 1, 28, 10600, 10, 0, 3, 0, '2016-04-21 19:43:51', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', '', '123.169.95.79', 1011);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123903500654', 6200068, 66, 2, 1, 28, 10600, 10, 0, 3, 0, '2016-04-21 19:43:55', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', '', '123.169.95.79', 1012);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146123905500655', 6200068, 66, 2, 1, 28, 10060, 100, 0, 3, 0, '2016-04-21 19:44:15', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '123.169.95.79', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124012800656', 6200082, 97, 8, 0, 3, 100241, 1760, 0, 3, 0, '2016-04-21 20:02:08', 1760, 0, 1, 1760, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 1, '0', '', '117.75.255.25', 1013);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124016300657', 6200082, 97, 8, 0, 3, 10000, 20, 0, 3, 0, '2016-04-21 20:02:43', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1014);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124088200658', 6200029, 27, 4, 1, 49, 10110, 150, 0, 3, 0, '2016-04-21 20:14:42', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124096200659', 6200057, 55, 0, 1, 39, 10151, 20, 0, 3, 0, '2016-04-21 20:16:02', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.50.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124096200660', 6200057, 55, 0, 1, 39, 10151, 20, 0, 3, 0, '2016-04-21 20:16:02', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.50.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124133400661', 6200024, 98, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-21 20:22:14', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', 'cera point', '182.133.182.218', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124151800662', 6200057, 55, 0, 1, 39, 10151, 20, 0, 3, 0, '2016-04-21 20:25:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1015);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124151800663', 6200057, 55, 0, 1, 39, 10151, 20, 0, 3, 0, '2016-04-21 20:25:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1016);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124151800664', 6200057, 55, 0, 1, 39, 10151, 20, 0, 3, 0, '2016-04-21 20:25:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1017);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124151800665', 6200057, 55, 0, 1, 39, 10151, 20, 0, 3, 0, '2016-04-21 20:25:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1018);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124155800666', 6200001, 6, 0, 1, 33, 10053, 15, 0, 3, 0, '2016-04-21 20:25:58', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.53.129', 1019);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124155800667', 6200001, 6, 0, 1, 33, 10053, 15, 0, 3, 0, '2016-04-21 20:25:58', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.53.129', 1020);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124155800668', 6200001, 6, 0, 1, 33, 10053, 15, 0, 3, 0, '2016-04-21 20:25:58', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.53.129', 1021);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124155800669', 6200001, 6, 0, 1, 33, 10053, 15, 0, 3, 0, '2016-04-21 20:25:58', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.53.129', 1022);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124155800670', 6200001, 6, 0, 1, 33, 10053, 15, 0, 3, 0, '2016-04-21 20:25:58', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.53.129', 1023);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124220600671', 6200029, 27, 4, 1, 50, 10073, 100, 0, 3, 0, '2016-04-21 20:36:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 1024);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124220600672', 6200029, 27, 4, 1, 50, 10073, 100, 0, 3, 0, '2016-04-21 20:36:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 1025);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124318100673', 6200029, 27, 4, 1, 50, 10073, 100, 0, 3, 0, '2016-04-21 20:53:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 1026);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124409100674', 6200007, 11, 3, 20, 58, 10111, 30, 0, 3, 0, '2016-04-21 21:08:11', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.93.149', 1027);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124409100675', 6200047, 57, 0, 2, 39, 10111, 30, 0, 3, 0, '2016-04-21 21:08:11', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.26', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124409500676', 6200007, 11, 3, 20, 58, 10110, 150, 0, 3, 0, '2016-04-21 21:08:15', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.93.149', 1028);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124442000677', 6200082, 97, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-21 21:13:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1029);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124442000678', 6200082, 97, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-21 21:13:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1030);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124444200679', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 21:14:02', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', '', '182.118.68.39', 1031);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124445000680', 6200082, 97, 8, 0, 10, 10060, 100, 0, 3, 0, '2016-04-21 21:14:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1032);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124446200681', 6200082, 97, 8, 0, 10, 10061, 100, 0, 3, 0, '2016-04-21 21:14:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1033);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124446200682', 6200082, 97, 8, 0, 10, 10062, 380, 0, 3, 0, '2016-04-21 21:14:22', 380, 0, 1, 380, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1034);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124452000683', 6200082, 97, 8, 0, 10, 10001, 60, 0, 3, 0, '2016-04-21 21:15:20', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1035);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124452700684', 6200082, 97, 8, 0, 10, 10002, 100, 0, 3, 0, '2016-04-21 21:15:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1036);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124453300685', 6200082, 97, 8, 0, 10, 10003, 140, 0, 3, 0, '2016-04-21 21:15:33', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1037);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124453600686', 6200082, 97, 8, 0, 10, 10004, 180, 0, 3, 0, '2016-04-21 21:15:36', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1038);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124456000687', 6200082, 97, 8, 0, 10, 10011, 180, 0, 3, 0, '2016-04-21 21:16:00', 180, 0, 100, 180, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1039);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124508000688', 6200073, 72, 0, 3, 26, 10060, 100, 0, 3, 0, '2016-04-21 21:24:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 1, '0', '', '125.110.32.144', 1040);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124509100689', 6200073, 72, 0, 3, 26, 10061, 100, 0, 3, 0, '2016-04-21 21:24:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.32.144', 1041);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124588400690', 6200009, 16, 0, 3, 48, 10005, 220, 0, 3, 0, '2016-04-21 21:38:04', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', '', '182.118.68.39', 1042);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124624500691', 6200029, 27, 4, 17, 50, 10111, 30, 0, 3, 0, '2016-04-21 21:44:05', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 1043);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124675300692', 6200022, 24, 1, 19, 50, 10153, 200, 0, 3, 0, '2016-04-21 21:52:33', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.111.114', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124685100693', 6200022, 24, 1, 19, 50, 10150, 5, 0, 3, 0, '2016-04-21 21:54:11', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.111.114', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124719000694', 6200029, 27, 4, 17, 50, 10001, 60, 0, 3, 0, '2016-04-21 21:59:50', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 1044);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124719600695', 6200029, 27, 4, 17, 50, 10002, 100, 0, 3, 0, '2016-04-21 21:59:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 1045);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124736400696', 6200009, 16, 0, 3, 48, 100205, 11760, 0, 3, 0, '2016-04-21 22:02:44', 11760, 0, 1, 11760, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124758000697', 6200068, 66, 2, 1, 32, 20000, 100, 0, 3, 0, '2016-04-21 22:06:20', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '182.34.166.44', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124767500698', 6200009, 16, 0, 3, 48, 10006, 260, 0, 3, 0, '2016-04-21 22:07:55', 260, 0, 1, 260, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124779900699', 6200009, 16, 0, 3, 48, 10007, 300, 0, 3, 0, '2016-04-21 22:09:59', 300, 0, 1, 300, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124780300700', 6200009, 16, 0, 3, 48, 10008, 360, 0, 3, 0, '2016-04-21 22:10:03', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300701', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 22:11:33', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300702', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 22:11:33', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300703', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 22:11:33', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300704', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 22:11:33', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300705', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 22:11:33', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300706', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 22:11:33', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300707', 6200009, 16, 0, 3, 48, 10076, 600, 0, 3, 0, '2016-04-21 22:11:33', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300708', 6200009, 16, 0, 3, 48, 10154, 400, 0, 3, 0, '2016-04-21 22:11:33', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300709', 6200009, 16, 0, 3, 48, 10154, 400, 0, 3, 0, '2016-04-21 22:11:34', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300710', 6200009, 16, 0, 3, 48, 10154, 400, 0, 3, 0, '2016-04-21 22:11:34', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300711', 6200009, 16, 0, 3, 48, 10154, 400, 0, 3, 0, '2016-04-21 22:11:34', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300712', 6200009, 16, 0, 3, 48, 10154, 400, 0, 3, 0, '2016-04-21 22:11:34', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124789300713', 6200009, 16, 0, 3, 48, 10154, 400, 0, 3, 0, '2016-04-21 22:11:34', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124807000714', 6200009, 16, 0, 3, 48, 1100020, 105, 0, 3, 0, '2016-04-21 22:14:30', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124807000715', 6200009, 16, 0, 3, 48, 1300003, 90, 0, 3, 0, '2016-04-21 22:14:30', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124807000716', 6200009, 16, 0, 3, 48, 1400020, 105, 0, 3, 0, '2016-04-21 22:14:30', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124807000717', 6200009, 16, 0, 3, 48, 1600000, 90, 0, 3, 0, '2016-04-21 22:14:30', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146124807000718', 6200009, 16, 0, 3, 48, 1700020, 105, 0, 3, 0, '2016-04-21 22:14:30', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125395000001', 6200082, 97, 8, 0, 10, 20000, 100, 0, 3, 0, '2016-04-21 23:52:30', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125420700002', 6200082, 97, 8, 0, 10, 10030, 16, 0, 3, 0, '2016-04-21 23:56:47', 16, 0, 1, 16, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1046);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125420700003', 6200082, 97, 8, 0, 10, 10030, 16, 0, 3, 0, '2016-04-21 23:56:47', 16, 0, 1, 16, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1047);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125424000004', 6200082, 97, 8, 0, 10, 10030, 16, 0, 3, 0, '2016-04-21 23:57:20', 16, 0, 1, 16, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1048);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125425100005', 6200082, 97, 8, 0, 10, 10030, 16, 0, 3, 0, '2016-04-21 23:57:31', 16, 0, 1, 16, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1049);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125425900006', 6200082, 97, 8, 0, 10, 10030, 16, 0, 3, 0, '2016-04-21 23:57:39', 16, 0, 1, 16, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.25', 1050);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125428200007', 6200082, 97, 8, 0, 10, 10030, 16, 0, 3, 0, '2016-04-21 23:58:02', 16, 0, 1, 16, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125536600008', 6200031, 28, 2, 19, 50, 10153, 200, 0, 3, 0, '2016-04-22 00:16:06', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1051);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125549300009', 6200031, 28, 2, 19, 50, 9500, 50, 0, 3, 0, '2016-04-22 00:18:14', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1052);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125551100010', 6200031, 28, 2, 19, 50, 9500, 50, 0, 3, 0, '2016-04-22 00:18:32', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1053);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125555100011', 6200031, 28, 2, 19, 50, 10600, 10, 0, 3, 0, '2016-04-22 00:19:11', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1054);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125555600012', 6200031, 28, 2, 19, 50, 9500, 50, 0, 3, 0, '2016-04-22 00:19:16', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125571800013', 6200007, 11, 3, 20, 59, 100209, 11760, 0, 3, 0, '2016-04-22 00:21:58', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.93.149', 1055);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125594900014', 6200057, 55, 0, 1, 41, 100300, 960, 0, 3, 0, '2016-04-22 00:25:49', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1056);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125626300015', 6200057, 55, 0, 1, 41, 10122, 180, 0, 3, 0, '2016-04-22 00:31:03', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1057);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125643400016', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:33:54', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1058);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125645800017', 6200057, 55, 0, 1, 41, 1400018, 105, 0, 3, 0, '2016-04-22 00:34:18', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1059);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125648100018', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:34:41', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1060);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125650400019', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:35:04', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1061);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125652200020', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:35:22', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1062);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125654400021', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:35:44', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1063);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125655000022', 6200057, 55, 0, 1, 41, 10122, 180, 0, 3, 0, '2016-04-22 00:35:50', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1064);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125657200023', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:36:12', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1065);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125658600024', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:36:26', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1066);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125660200025', 6200057, 55, 0, 1, 41, 1400020, 105, 0, 3, 0, '2016-04-22 00:36:42', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1067);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125663400026', 6200057, 55, 0, 1, 41, 1600020, 105, 0, 3, 0, '2016-04-22 00:37:14', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1068);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125666700027', 6200057, 55, 0, 1, 41, 1500020, 105, 0, 3, 0, '2016-04-22 00:37:47', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1069);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125669900028', 6200057, 55, 0, 1, 41, 1500020, 105, 0, 3, 0, '2016-04-22 00:38:19', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1070);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125672200029', 6200057, 55, 0, 1, 41, 1700020, 105, 0, 3, 0, '2016-04-22 00:38:42', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1071);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125676800030', 6200057, 55, 0, 1, 41, 1300020, 105, 0, 3, 0, '2016-04-22 00:39:28', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1072);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125679000031', 6200057, 55, 0, 1, 41, 1300020, 105, 0, 3, 0, '2016-04-22 00:39:50', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1073);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125698000032', 6200057, 55, 0, 1, 41, 1300020, 105, 0, 3, 0, '2016-04-22 00:43:00', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1074);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125699300033', 6200057, 55, 0, 1, 41, 10122, 180, 0, 3, 0, '2016-04-22 00:43:13', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1075);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125701300034', 6200057, 55, 0, 1, 41, 1300018, 105, 0, 3, 0, '2016-04-22 00:43:33', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1076);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125702900035', 6200057, 55, 0, 1, 41, 1300018, 105, 0, 3, 0, '2016-04-22 00:43:49', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1077);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125708900036', 6200057, 55, 0, 1, 41, 1000020, 105, 0, 3, 0, '2016-04-22 00:44:49', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1078);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125710400037', 6200057, 55, 0, 1, 41, 1000020, 105, 0, 3, 0, '2016-04-22 00:45:04', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1079);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125712700038', 6200057, 55, 0, 1, 41, 1100020, 105, 0, 3, 0, '2016-04-22 00:45:27', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1080);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125714300039', 6200057, 55, 0, 1, 41, 1100020, 105, 0, 3, 0, '2016-04-22 00:45:43', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1081);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125715800040', 6200057, 55, 0, 1, 41, 1100020, 105, 0, 3, 0, '2016-04-22 00:45:58', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1082);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125717400041', 6200057, 55, 0, 1, 41, 1100020, 105, 0, 3, 0, '2016-04-22 00:46:14', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1083);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125719100042', 6200057, 55, 0, 1, 41, 1000020, 105, 0, 3, 0, '2016-04-22 00:46:31', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1084);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125744400043', 6200010, 5, 1, 17, 53, 2000018, 105, 0, 3, 0, '2016-04-22 00:50:44', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1085);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125744400044', 6200010, 5, 1, 17, 53, 2000020, 105, 0, 3, 0, '2016-04-22 00:50:44', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1086);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125751700045', 6200010, 5, 1, 17, 53, 2000018, 105, 0, 3, 0, '2016-04-22 00:51:57', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1087);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125751700046', 6200010, 5, 1, 17, 53, 10121, 100, 0, 3, 0, '2016-04-22 00:51:57', 100, 0, 5, 100, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1088);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125757500047', 6200010, 5, 1, 17, 53, 2100018, 105, 0, 3, 0, '2016-04-22 00:52:55', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1089);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125757500048', 6200010, 5, 1, 17, 53, 2100020, 105, 0, 3, 0, '2016-04-22 00:52:55', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1090);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125761900049', 6200010, 5, 1, 17, 53, 2200018, 105, 0, 3, 0, '2016-04-22 00:53:39', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1091);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125761900050', 6200010, 5, 1, 17, 53, 2200020, 105, 0, 3, 0, '2016-04-22 00:53:39', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1092);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125764100051', 6200010, 5, 1, 17, 53, 2200018, 105, 0, 3, 0, '2016-04-22 00:54:01', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1093);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125766400052', 6200010, 5, 1, 17, 53, 2200018, 105, 0, 3, 0, '2016-04-22 00:54:24', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1094);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125769400053', 6200010, 5, 1, 17, 53, 2200018, 105, 0, 3, 0, '2016-04-22 00:54:54', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1095);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125769400054', 6200010, 5, 1, 17, 53, 10122, 180, 0, 3, 0, '2016-04-22 00:54:54', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1096);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125770100055', 6200057, 55, 0, 1, 41, 10122, 180, 0, 3, 0, '2016-04-22 00:55:01', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1097);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125771200056', 6200057, 55, 0, 1, 41, 1100020, 105, 0, 3, 0, '2016-04-22 00:55:12', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1098);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125771600057', 6200010, 5, 1, 17, 53, 2200018, 105, 0, 3, 0, '2016-04-22 00:55:16', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1099);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125772700058', 6200057, 55, 0, 1, 41, 1100018, 105, 0, 3, 0, '2016-04-22 00:55:27', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1100);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125773600059', 6200010, 5, 1, 17, 53, 2200018, 105, 0, 3, 0, '2016-04-22 00:55:36', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1101);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125774900060', 6200057, 55, 0, 1, 41, 1100018, 105, 0, 3, 0, '2016-04-22 00:55:49', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1102);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125775600061', 6200010, 5, 1, 17, 53, 2200018, 105, 0, 3, 0, '2016-04-22 00:55:56', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', '', '42.49.233.193', 1103);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125776300062', 6200057, 55, 0, 1, 41, 1100018, 105, 0, 3, 0, '2016-04-22 00:56:03', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1104);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125777800063', 6200057, 55, 0, 1, 41, 1100020, 105, 0, 3, 0, '2016-04-22 00:56:18', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1105);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125779400064', 6200010, 5, 1, 17, 53, 2200020, 105, 0, 3, 0, '2016-04-22 00:56:34', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125779500065', 6200057, 55, 0, 1, 41, 1100018, 105, 0, 3, 0, '2016-04-22 00:56:35', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1106);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125781500066', 6200010, 5, 1, 17, 53, 2200020, 105, 0, 3, 0, '2016-04-22 00:56:55', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125783400067', 6200057, 55, 0, 1, 41, 1200020, 105, 0, 3, 0, '2016-04-22 00:57:14', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1107);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125784900068', 6200010, 5, 1, 17, 53, 2400018, 105, 0, 3, 0, '2016-04-22 00:57:29', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125784900069', 6200010, 5, 1, 17, 53, 2400020, 105, 0, 3, 0, '2016-04-22 00:57:29', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125785100070', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 00:57:31', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1108);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125786800071', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 00:57:48', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1109);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125788400072', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 00:58:04', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1110);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125788500073', 6200010, 5, 1, 17, 53, 2400018, 105, 0, 3, 0, '2016-04-22 00:58:05', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125790000074', 6200057, 55, 0, 1, 41, 1200020, 105, 0, 3, 0, '2016-04-22 00:58:20', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1111);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125790900075', 6200057, 55, 0, 1, 41, 10121, 100, 0, 3, 0, '2016-04-22 00:58:29', 100, 0, 5, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1112);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125791000076', 6200010, 5, 1, 17, 53, 2400018, 105, 0, 3, 0, '2016-04-22 00:58:30', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125792200077', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 00:58:43', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1113);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125793500078', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 00:58:55', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1114);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125794900079', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 00:59:09', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1115);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125795200080', 6200010, 5, 1, 17, 53, 2400018, 105, 0, 3, 0, '2016-04-22 00:59:12', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125796300081', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 00:59:24', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1116);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125797800082', 6200057, 55, 0, 1, 41, 1200020, 105, 0, 3, 0, '2016-04-22 00:59:38', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1117);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146125799000083', 6200057, 55, 0, 1, 41, 10120, 25, 0, 3, 0, '2016-04-22 00:59:50', 25, 0, 1, 25, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.240', 1118);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128336600084', 6200089, 100, 7, 0, 2, 10073, 100, 0, 3, 0, '2016-04-22 08:02:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200089', 3, 1, 1, '0', '', '42.85.180.241', 1119);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128365000085', 6200089, 100, 7, 0, 2, 100358, 960, 0, 3, 0, '2016-04-22 08:07:30', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200089', 3, 1, 2, '0', '', '42.85.180.241', 1120);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128466900086', 6200089, 100, 7, 0, 6, 10154, 400, 0, 3, 0, '2016-04-22 08:24:29', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200089', 3, 1, 2, '0', '', '42.85.180.241', 1121);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128572300087', 6200071, 80, 3, 1, 25, 10122, 180, 0, 3, 0, '2016-04-22 08:42:03', 180, 0, 10, 180, 3, 1, 0, 1, 0, 0, 0, '6200071', 3, 1, 2, '0', 'cera point', '112.103.183.224', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128602400088', 6200085, 92, 0, 0, 14, 10073, 100, 0, 3, 0, '2016-04-22 08:47:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 1122);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000089', 6200009, 16, 0, 3, 48, 9004, 720, 0, 3, 0, '2016-04-22 08:58:40', 720, 0, 50, 720, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000090', 6200009, 16, 0, 3, 48, 9004, 720, 0, 3, 0, '2016-04-22 08:58:40', 720, 0, 50, 720, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000091', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000092', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000093', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000094', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000095', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000096', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000097', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000098', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000099', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000100', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000101', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000102', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000103', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000104', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000105', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000106', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000107', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000108', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000109', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000110', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000111', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000112', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000113', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000114', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000115', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000116', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:42', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000117', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:42', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000118', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:42', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000119', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:42', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000120', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:42', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128672000121', 6200009, 16, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-04-22 08:58:42', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128886200122', 6200009, 16, 0, 3, 48, 10064, 300, 0, 3, 0, '2016-04-22 09:34:22', 300, 0, 10, 300, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128886200123', 6200009, 16, 0, 3, 48, 10064, 300, 0, 3, 0, '2016-04-22 09:34:22', 300, 0, 10, 300, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128886200124', 6200009, 16, 0, 3, 48, 10064, 300, 0, 3, 0, '2016-04-22 09:34:22', 300, 0, 10, 300, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128886200125', 6200009, 16, 0, 3, 48, 10064, 300, 0, 3, 0, '2016-04-22 09:34:22', 300, 0, 10, 300, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128886200126', 6200009, 16, 0, 3, 48, 10066, 300, 0, 3, 0, '2016-04-22 09:34:22', 300, 0, 1, 300, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128886200127', 6200009, 16, 0, 3, 48, 10067, 20, 0, 3, 0, '2016-04-22 09:34:22', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146128896800128', 6200089, 100, 7, 1, 17, 10065, 200, 0, 3, 0, '2016-04-22 09:36:08', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200089', 3, 1, 2, '0', '', '42.85.180.241', 1123);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129317700129', 6200009, 16, 0, 3, 49, 20010, 60, 0, 3, 0, '2016-04-22 10:46:17', 60, 0, 3, 60, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129392700130', 6200090, 101, 5, 0, 2, 100361, 960, 0, 3, 0, '2016-04-22 10:58:47', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200090', 3, 1, 1, '0', '', '58.59.70.94', 1124);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129400500131', 6200090, 101, 5, 0, 2, 10080, 100, 0, 3, 0, '2016-04-22 11:00:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200090', 3, 1, 2, '0', '', '58.59.70.94', 1125);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129403200132', 6200090, 101, 5, 0, 2, 10060, 100, 0, 3, 0, '2016-04-22 11:00:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200090', 3, 1, 2, '0', '', '58.59.70.94', 1126);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129404200133', 6200090, 101, 5, 0, 2, 10061, 100, 0, 3, 0, '2016-04-22 11:00:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200090', 3, 1, 2, '0', '', '58.59.70.94', 1127);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129646800134', 6200010, 5, 1, 17, 56, 10122, 180, 0, 3, 0, '2016-04-22 11:41:08', 180, 0, 10, 180, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129649500135', 6200010, 5, 1, 17, 56, 2400018, 105, 0, 3, 0, '2016-04-22 11:41:35', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129653000136', 6200010, 5, 1, 17, 56, 2400018, 105, 0, 3, 0, '2016-04-22 11:42:10', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129657400137', 6200010, 5, 1, 17, 56, 2400018, 105, 0, 3, 0, '2016-04-22 11:42:55', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200010', 3, 1, 2, '0', 'cera point', '42.49.233.193', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129657900138', 6200058, 56, 0, 3, 38, 10073, 100, 0, 3, 0, '2016-04-22 11:42:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '182.151.140.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129676200139', 6200031, 28, 2, 19, 51, 10151, 20, 0, 3, 0, '2016-04-22 11:46:02', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129711900140', 6200031, 28, 2, 19, 51, 10150, 5, 0, 3, 0, '2016-04-22 11:51:59', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129711900141', 6200031, 28, 2, 19, 51, 10150, 5, 0, 3, 0, '2016-04-22 11:51:59', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129778400142', 6200031, 28, 2, 19, 52, 10152, 40, 0, 3, 0, '2016-04-22 12:03:04', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146129951400143', 6200031, 28, 2, 19, 52, 10152, 40, 0, 3, 0, '2016-04-22 12:31:54', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130080000144', 6200031, 28, 2, 19, 53, 10152, 40, 0, 3, 0, '2016-04-22 12:53:20', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130080300145', 6200022, 24, 1, 19, 52, 10060, 100, 0, 3, 0, '2016-04-22 12:53:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.111.114', 1128);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130080300146', 6200022, 24, 1, 19, 52, 10154, 400, 0, 3, 0, '2016-04-22 12:53:23', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.111.114', 1129);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130080800147', 6200022, 24, 1, 19, 52, 10061, 100, 0, 3, 0, '2016-04-22 12:53:29', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.111.114', 1130);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130081200148', 6200057, 55, 0, 1, 41, 10121, 100, 0, 3, 0, '2016-04-22 12:53:32', 100, 0, 5, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1131);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130082400149', 6200057, 55, 0, 1, 41, 1200020, 105, 0, 3, 0, '2016-04-22 12:53:44', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1132);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130083600150', 6200057, 55, 0, 1, 41, 1200020, 105, 0, 3, 0, '2016-04-22 12:53:56', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1133);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130085200151', 6200057, 55, 0, 1, 41, 1200018, 105, 0, 3, 0, '2016-04-22 12:54:12', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1134);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130090000152', 6200090, 101, 5, 0, 14, 10073, 100, 0, 3, 0, '2016-04-22 12:55:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200090', 3, 1, 2, '0', '', '58.59.70.94', 1135);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130139400153', 6200071, 80, 3, 1, 25, 9501, 200, 0, 3, 0, '2016-04-22 13:03:14', 200, 0, 5, 200, 1, 1, 0, 1, 0, 0, 0, '6200071', 3, 1, 2, '0', '', '112.103.183.224', 1136);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130146500154', 6200057, 55, 0, 1, 41, 10065, 200, 0, 3, 0, '2016-04-22 13:04:25', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1137);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130146500155', 6200057, 55, 0, 1, 41, 10152, 40, 0, 3, 0, '2016-04-22 13:04:25', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1138);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130150600156', 6200057, 55, 0, 1, 41, 10065, 200, 0, 3, 0, '2016-04-22 13:05:06', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1139);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130150600157', 6200057, 55, 0, 1, 41, 10065, 200, 0, 3, 0, '2016-04-22 13:05:06', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1140);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130150600158', 6200057, 55, 0, 1, 41, 10065, 200, 0, 3, 0, '2016-04-22 13:05:06', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1141);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130150600159', 6200057, 55, 0, 1, 41, 10152, 40, 0, 3, 0, '2016-04-22 13:05:06', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1142);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130150600160', 6200057, 55, 0, 1, 41, 10152, 40, 0, 3, 0, '2016-04-22 13:05:06', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1143);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130150600161', 6200057, 55, 0, 1, 41, 10152, 40, 0, 3, 0, '2016-04-22 13:05:06', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1144);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130156800162', 6200057, 55, 0, 1, 41, 10073, 100, 0, 3, 0, '2016-04-22 13:06:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1145);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130156800163', 6200057, 55, 0, 1, 41, 10073, 100, 0, 3, 0, '2016-04-22 13:06:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1146);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130156800164', 6200057, 55, 0, 1, 41, 10073, 100, 0, 3, 0, '2016-04-22 13:06:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1147);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130156800165', 6200057, 55, 0, 1, 41, 10073, 100, 0, 3, 0, '2016-04-22 13:06:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1148);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130156800166', 6200057, 55, 0, 1, 41, 10073, 100, 0, 3, 0, '2016-04-22 13:06:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1149);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130156800167', 6200057, 55, 0, 1, 41, 10073, 100, 0, 3, 0, '2016-04-22 13:06:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1150);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130169800168', 6200057, 55, 0, 1, 41, 10151, 20, 0, 3, 0, '2016-04-22 13:08:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1151);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130169800169', 6200057, 55, 0, 1, 41, 10151, 20, 0, 3, 0, '2016-04-22 13:08:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1152);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130169800170', 6200057, 55, 0, 1, 41, 10151, 20, 0, 3, 0, '2016-04-22 13:08:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1153);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130169800171', 6200057, 55, 0, 1, 41, 10151, 20, 0, 3, 0, '2016-04-22 13:08:18', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.30', 1154);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130292200172', 6200031, 28, 2, 19, 54, 10111, 30, 0, 3, 0, '2016-04-22 13:28:42', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146130768700173', 6200022, 24, 1, 19, 53, 10110, 150, 0, 3, 0, '2016-04-22 14:48:07', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.111.114', 1155);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146131006600174', 6200022, 24, 1, 19, 54, 10111, 30, 0, 3, 0, '2016-04-22 15:27:46', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.111.114', 1156);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146131152300175', 6200007, 11, 3, 20, 61, 10110, 150, 0, 3, 0, '2016-04-22 15:52:04', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.197', 1157);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146131298100176', 6200007, 11, 3, 20, 62, 10111, 30, 0, 3, 0, '2016-04-22 16:16:21', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '58.60.155.197', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146131359400177', 6200041, 40, 1, 2, 31, 9501, 200, 0, 3, 0, '2016-04-22 16:26:35', 200, 0, 5, 200, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.252.38', 1158);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132694700178', 6200016, 45, 7, 1, 18, 100359, 960, 0, 3, 0, '2016-04-22 20:09:07', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200016', 3, 1, 2, '0', '', '210.41.99.30', 1159);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600179', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 1, '0', '', '110.184.66.100', 1160);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600180', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1161);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600181', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1162);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600182', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1163);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600183', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1164);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600184', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1165);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600185', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1166);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600186', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1167);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600187', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1168);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600188', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1169);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600189', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1170);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600190', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1171);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600191', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1172);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600192', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1173);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600193', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1174);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600194', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1175);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600195', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1176);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132747600196', 6200035, 102, 7, 0, 1, 10073, 100, 0, 3, 0, '2016-04-22 20:17:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200035', 3, 1, 2, '0', '', '110.184.66.100', 1177);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132781900197', 6200033, 31, 0, 1, 40, 10073, 100, 0, 3, 0, '2016-04-22 20:23:39', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132840000198', 6200031, 28, 2, 19, 54, 9503, 800, 0, 3, 0, '2016-04-22 20:33:20', 800, 0, 20, 800, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132848300199', 6200031, 28, 2, 19, 54, 10122, 180, 0, 3, 0, '2016-04-22 20:34:43', 180, 0, 10, 180, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132858500200', 6200031, 28, 2, 19, 54, 10122, 180, 0, 3, 0, '2016-04-22 20:36:25', 180, 0, 10, 180, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132873800201', 6200031, 28, 2, 19, 54, 9501, 200, 0, 3, 0, '2016-04-22 20:38:58', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132874500202', 6200031, 28, 2, 19, 54, 10110, 150, 0, 3, 0, '2016-04-22 20:39:06', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132948300203', 6200050, 106, 0, 0, 2, 100351, 960, 0, 3, 0, '2016-04-22 20:51:23', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '119.122.16.69', 1178);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132964500204', 6200050, 106, 0, 0, 2, 10122, 180, 0, 3, 0, '2016-04-22 20:54:05', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '119.122.16.69', 1179);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900205', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900206', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900207', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900208', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900209', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900210', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900211', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900212', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900213', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900214', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146132999900215', 6200009, 16, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-22 20:59:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133004300216', 6200068, 66, 2, 1, 34, 10080, 100, 0, 3, 0, '2016-04-22 21:00:43', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '140.255.163.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133018100217', 6200031, 28, 2, 19, 55, 10111, 30, 0, 3, 0, '2016-04-22 21:03:01', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133042000218', 6200050, 106, 0, 0, 5, 9501, 200, 0, 3, 0, '2016-04-22 21:07:00', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '119.122.16.69', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133042000219', 6200050, 106, 0, 0, 5, 9501, 200, 0, 3, 0, '2016-04-22 21:07:00', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '119.122.16.69', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133066600220', 6200031, 28, 2, 19, 55, 10111, 30, 0, 3, 0, '2016-04-22 21:11:06', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133110100221', 6200029, 27, 4, 17, 50, 10100, 180, 0, 3, 0, '2016-04-22 21:18:21', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133131900222', 6200009, 16, 0, 3, 50, 10211, 360, 0, 3, 0, '2016-04-22 21:21:59', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133165200223', 6200047, 57, 0, 2, 46, 10073, 100, 0, 3, 0, '2016-04-22 21:27:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.25.165', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133165200224', 6200047, 57, 0, 2, 46, 10073, 100, 0, 3, 0, '2016-04-22 21:27:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.25.165', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133165200225', 6200047, 57, 0, 2, 46, 10073, 100, 0, 3, 0, '2016-04-22 21:27:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.25.165', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500226', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1180);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500227', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1181);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500228', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1182);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500229', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1183);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500230', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1184);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500231', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1185);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500232', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1186);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133272500233', 6200047, 57, 0, 2, 46, 10602, 100, 0, 3, 0, '2016-04-22 21:45:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.25.165', 1187);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133314200234', 6200009, 16, 0, 3, 50, 9002, 240, 1, 3, 0, '2016-04-22 21:52:22', 240, 0, 30, 240, 1, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', '', '182.118.68.41', 1188);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133326500235', 6200007, 11, 3, 20, 62, 10111, 30, 0, 3, 0, '2016-04-22 21:54:25', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.197', 1189);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133326900236', 6200007, 11, 3, 20, 62, 10110, 150, 0, 3, 0, '2016-04-22 21:54:29', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.197', 1190);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133363800237', 6200007, 11, 3, 20, 62, 10053, 15, 0, 3, 0, '2016-04-22 22:00:38', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '58.60.155.197', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133465700238', 6200062, 65, 5, 2, 31, 10211, 360, 0, 3, 0, '2016-04-22 22:17:37', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 2, '0', '', '119.129.74.232', 1191);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133601400239', 6200009, 16, 0, 19, 51, 10073, 100, 0, 3, 0, '2016-04-22 22:40:14', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133601400240', 6200009, 16, 0, 19, 51, 10073, 100, 0, 3, 0, '2016-04-22 22:40:14', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133601400241', 6200009, 16, 0, 19, 51, 10073, 100, 0, 3, 0, '2016-04-22 22:40:15', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133601400242', 6200009, 16, 0, 19, 51, 10073, 100, 0, 3, 0, '2016-04-22 22:40:15', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133601400243', 6200009, 16, 0, 19, 51, 10073, 100, 0, 3, 0, '2016-04-22 22:40:15', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133602100244', 6200084, 90, 5, 1, 31, 30013, 160, 0, 3, 0, '2016-04-22 22:40:21', 160, 0, 1, 160, 3, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', 'cera point', '42.62.106.151', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133624300245', 6200085, 92, 0, 2, 28, 10080, 100, 0, 3, 0, '2016-04-22 22:44:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 1192);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133624800246', 6200085, 92, 0, 2, 28, 10060, 100, 0, 3, 0, '2016-04-22 22:44:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 1193);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133625600247', 6200085, 92, 0, 2, 28, 10062, 380, 0, 3, 0, '2016-04-22 22:44:16', 380, 0, 1, 380, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 1194);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133626400248', 6200085, 92, 0, 2, 28, 10061, 100, 0, 3, 0, '2016-04-22 22:44:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 1195);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133639300249', 6200085, 92, 0, 2, 28, 10152, 40, 0, 3, 0, '2016-04-22 22:46:33', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 1196);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133656300250', 6200085, 92, 0, 2, 28, 1700020, 105, 0, 3, 0, '2016-04-22 22:49:23', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.104.65', 1197);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133696100251', 6200050, 106, 0, 4, 24, 10060, 100, 0, 3, 0, '2016-04-22 22:56:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '119.122.16.69', 1198);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133710000252', 6200031, 28, 2, 19, 55, 10111, 30, 0, 3, 0, '2016-04-22 22:58:20', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133710600253', 6200031, 28, 2, 19, 55, 10120, 25, 0, 3, 0, '2016-04-22 22:58:26', 25, 0, 1, 25, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133713800254', 6200031, 28, 2, 19, 55, 10152, 40, 0, 3, 0, '2016-04-22 22:58:58', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133826200255', 6200007, 11, 3, 20, 63, 10110, 150, 0, 3, 0, '2016-04-22 23:17:42', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.197', 1199);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133826600256', 6200007, 11, 3, 20, 63, 10111, 30, 0, 3, 0, '2016-04-22 23:17:46', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.197', 1200);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146133907200257', 6200042, 41, 0, 1, 42, 30011, 80, 0, 3, 0, '2016-04-22 23:31:12', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.134.245', 1201);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134048900258', 6200031, 28, 2, 19, 56, 10152, 40, 0, 3, 0, '2016-04-22 23:54:49', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134262000259', 6200031, 28, 2, 19, 56, 10153, 200, 0, 3, 0, '2016-04-23 00:30:20', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1202);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134266100260', 6200022, 24, 1, 19, 54, 10111, 30, 0, 3, 0, '2016-04-23 00:31:01', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.111.114', 1203);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134327500261', 6200028, 26, 2, 2, 39, 10002, 100, 0, 3, 0, '2016-04-23 00:41:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.226.34.100', 1204);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134346200262', 6200028, 26, 2, 2, 39, 10154, 400, 0, 3, 0, '2016-04-23 00:44:22', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.226.34.100', 1205);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134365800263', 6200028, 32, 3, 2, 20, 10000, 20, 0, 3, 0, '2016-04-23 00:47:38', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.226.34.100', 1206);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134366200264', 6200028, 32, 3, 2, 20, 10001, 60, 0, 3, 0, '2016-04-23 00:47:42', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.226.34.100', 1207);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134374900265', 6200028, 32, 3, 2, 20, 10060, 100, 0, 3, 0, '2016-04-23 00:49:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.226.34.100', 1208);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134375400266', 6200028, 32, 3, 2, 20, 10061, 100, 0, 3, 0, '2016-04-23 00:49:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.226.34.100', 1209);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134519100267', 6200031, 28, 2, 19, 56, 10111, 30, 0, 3, 0, '2016-04-23 01:13:11', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134645600268', 6200050, 106, 0, 4, 26, 9501, 200, 0, 3, 0, '2016-04-23 01:34:16', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '119.122.16.69', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134655700269', 6200050, 106, 0, 4, 26, 10120, 25, 0, 3, 0, '2016-04-23 01:35:57', 25, 0, 1, 25, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '119.122.16.69', 1210);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134660100270', 6200050, 106, 0, 4, 26, 10000, 20, 0, 3, 0, '2016-04-23 01:36:41', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '119.122.16.69', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134660800271', 6200007, 11, 3, 20, 64, 10111, 30, 0, 3, 0, '2016-04-23 01:36:48', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '58.60.155.197', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134741400272', 6200052, 48, 3, 3, 40, 10154, 400, 0, 3, 0, '2016-04-23 01:50:14', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200052', 3, 1, 2, '0', 'cera point', '183.27.103.156', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146134745300273', 6200031, 28, 2, 19, 56, 10152, 40, 0, 3, 0, '2016-04-23 01:50:53', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146136807900274', 6200091, 110, 2, 0, 2, 100367, 960, 0, 3, 0, '2016-04-23 07:34:39', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 1, '0', '', '223.73.143.169', 1211);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146136826400275', 6200091, 110, 2, 0, 2, 10000, 20, 0, 3, 0, '2016-04-23 07:37:44', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '223.73.143.169', 1212);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146136829000276', 6200091, 110, 2, 0, 2, 10073, 100, 0, 3, 0, '2016-04-23 07:38:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '223.73.143.169', 1213);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146136867700277', 6200091, 110, 2, 0, 4, 10080, 100, 0, 3, 0, '2016-04-23 07:44:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '223.73.143.169', 1214);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146136876900278', 6200091, 110, 2, 0, 5, 10001, 60, 0, 3, 0, '2016-04-23 07:46:09', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '223.73.143.169', 1215);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146137530500279', 6200044, 42, 0, 3, 39, 20000, 100, 0, 3, 0, '2016-04-23 09:35:05', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146137644800280', 6200091, 110, 2, 2, 16, 30011, 80, 0, 3, 0, '2016-04-23 09:54:08', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '223.73.143.169', 1216);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146137705200281', 6200091, 110, 2, 2, 17, 10060, 100, 0, 3, 0, '2016-04-23 10:04:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', 'cera point', '223.73.143.169', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146137931500282', 6200066, 64, 0, 1, 38, 10150, 5, 0, 3, 0, '2016-04-23 10:41:55', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '220.166.188.25', 1217);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138040500283', 6200066, 64, 0, 1, 38, 10151, 20, 0, 3, 0, '2016-04-23 11:00:05', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '220.166.188.25', 1218);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138040500284', 6200066, 64, 0, 1, 38, 10152, 40, 0, 3, 0, '2016-04-23 11:00:05', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '220.166.188.25', 1219);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138095600285', 6200041, 40, 1, 2, 33, 9500, 50, 0, 3, 0, '2016-04-23 11:09:16', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.252.38', 1220);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138392100286', 6200083, 85, 0, 1, 46, 10060, 100, 0, 3, 0, '2016-04-23 11:58:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.217.185.107', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138392600287', 6200083, 85, 0, 1, 46, 10061, 100, 0, 3, 0, '2016-04-23 11:58:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.217.185.107', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138446400288', 6200092, 111, 2, 0, 3, 100364, 960, 0, 3, 0, '2016-04-23 12:07:44', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 1, '0', '', '1.25.108.3', 1221);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138520600289', 6200092, 111, 2, 0, 3, 10073, 100, 0, 3, 0, '2016-04-23 12:20:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1222);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900290', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1223);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900291', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1224);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900292', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1225);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900293', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1226);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900294', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1227);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900295', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1228);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900296', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1229);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900297', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1230);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900298', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1231);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900299', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1232);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900300', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1233);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900301', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1234);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900302', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1235);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900303', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1236);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900304', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1237);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900305', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1238);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900306', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1239);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138566900307', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:27:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1240);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138579500308', 6200007, 11, 3, 20, 65, 30001, 80, 0, 3, 0, '2016-04-23 12:29:55', 80, 0, 1, 80, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '58.60.155.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138595700309', 6200092, 112, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-23 12:32:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1241);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138601300310', 6200092, 112, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-23 12:33:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1242);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138601300311', 6200092, 112, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-23 12:33:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1243);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138601300312', 6200092, 112, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-23 12:33:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1244);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138601300313', 6200092, 112, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-23 12:33:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1245);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138623400314', 6200092, 112, 0, 0, 4, 10073, 100, 0, 3, 0, '2016-04-23 12:37:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1246);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138624300315', 6200092, 112, 0, 0, 4, 10073, 100, 0, 3, 0, '2016-04-23 12:37:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1247);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100316', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1248);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100317', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1249);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100318', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1250);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100319', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1251);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100320', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1252);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100321', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1253);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100322', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1254);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100323', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1255);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100324', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1256);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100325', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1257);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100326', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1258);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100327', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1259);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100328', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1260);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100329', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1261);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138653100330', 6200007, 11, 3, 20, 65, 10073, 100, 0, 3, 0, '2016-04-23 12:42:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '58.60.155.41', 1262);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138687900331', 6200007, 11, 3, 20, 65, 10002, 100, 0, 3, 0, '2016-04-23 12:47:59', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '58.60.155.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146138860800332', 6200066, 64, 0, 1, 41, 10111, 30, 0, 3, 0, '2016-04-23 13:16:48', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '220.166.188.25', 1263);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139026900333', 6200074, 76, 0, 4, 24, 10600, 10, 0, 3, 0, '2016-04-23 13:44:29', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 1264);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139028700334', 6200074, 76, 0, 4, 24, 10602, 100, 0, 3, 0, '2016-04-23 13:44:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 1265);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139030200335', 6200074, 76, 0, 4, 24, 9501, 200, 0, 3, 0, '2016-04-23 13:45:02', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', 'cera point', '171.221.3.33', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139039800336', 6200074, 76, 0, 4, 24, 10122, 180, 0, 3, 0, '2016-04-23 13:46:38', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 1266);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139049200337', 6200074, 76, 0, 4, 24, 9501, 200, 0, 3, 0, '2016-04-23 13:48:12', 200, 0, 5, 200, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 1267);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139071400338', 6200033, 31, 0, 1, 40, 10153, 200, 0, 3, 0, '2016-04-23 13:51:54', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '218.15.213.124', 1268);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100339', 6200011, 18, 2, 1, 48, 10600, 10, 0, 3, 0, '2016-04-23 14:16:51', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1269);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100340', 6200011, 18, 2, 1, 48, 10600, 10, 0, 3, 0, '2016-04-23 14:16:51', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1270);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100341', 6200011, 18, 2, 1, 48, 10600, 10, 0, 3, 0, '2016-04-23 14:16:51', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1271);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100342', 6200011, 18, 2, 1, 48, 10600, 10, 0, 3, 0, '2016-04-23 14:16:51', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1272);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100343', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1273);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100344', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1274);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100345', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1275);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100346', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1276);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100347', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1277);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100348', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1278);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100349', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1279);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100350', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1280);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100351', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1281);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100352', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1282);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100353', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1283);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100354', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1284);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100355', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1285);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100356', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1286);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100357', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1287);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100358', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1288);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100359', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1289);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100360', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1290);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100361', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1291);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100362', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1292);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139221100363', 6200011, 18, 2, 1, 48, 10602, 100, 0, 3, 0, '2016-04-23 14:16:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', '', '36.43.226.229', 1293);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139227800364', 6200011, 18, 2, 1, 48, 100259, 5760, 0, 3, 0, '2016-04-23 14:17:58', 5760, 0, 1, 5760, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.226.229', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139402000365', 6200048, 114, 1, 0, 3, 10080, 100, 0, 3, 0, '2016-04-23 14:47:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200048', 3, 1, 1, '0', '', '27.227.40.187', 1294);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139421600366', 6200066, 64, 0, 1, 41, 10111, 30, 0, 3, 0, '2016-04-23 14:50:16', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '220.166.188.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139435600367', 6200086, 96, 0, 3, 27, 10080, 100, 0, 3, 0, '2016-04-23 14:52:36', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 1, '0', 'cera point', '58.49.208.129', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139467800368', 6200085, 92, 0, 2, 28, 1000020, 105, 0, 3, 0, '2016-04-23 14:57:58', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.113.41', 1295);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146139468600369', 6200085, 92, 0, 2, 28, 1100020, 105, 0, 3, 0, '2016-04-23 14:58:06', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.113.41', 1296);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146140571200370', 6200039, 37, 0, 1, 46, 20000, 100, 0, 3, 0, '2016-04-23 18:01:52', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146140595800371', 6200039, 37, 0, 1, 46, 10152, 40, 0, 3, 0, '2016-04-23 18:05:58', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141088200372', 6200047, 57, 0, 2, 50, 10111, 30, 0, 3, 0, '2016-04-23 19:28:02', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.106', 1297);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141248600373', 6200093, 115, 5, 0, 3, 10000, 20, 0, 3, 0, '2016-04-23 19:54:46', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 1, '0', '', '223.73.25.208', 1298);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141249100374', 6200093, 115, 5, 0, 3, 10001, 60, 0, 3, 0, '2016-04-23 19:54:51', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', '', '223.73.25.208', 1299);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141301700375', 6200093, 115, 5, 0, 5, 100314, 960, 0, 3, 0, '2016-04-23 20:03:37', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', '', '223.73.25.208', 1300);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141532900376', 6200066, 64, 0, 1, 41, 10111, 30, 0, 3, 0, '2016-04-23 20:42:09', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '220.166.188.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141533700377', 6200022, 24, 1, 19, 57, 10110, 150, 0, 3, 0, '2016-04-23 20:42:17', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1301);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141636200378', 6200066, 64, 0, 1, 41, 10153, 200, 0, 3, 0, '2016-04-23 20:59:23', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '220.166.188.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141806000379', 6200082, 97, 8, 2, 15, 10070, 100, 0, 3, 0, '2016-04-23 21:27:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.217', 1302);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146141950100380', 6200024, 98, 0, 0, 4, 100348, 960, 0, 3, 0, '2016-04-23 21:51:41', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.180.10', 1303);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142205400381', 6200031, 28, 2, 19, 56, 100245, 5760, 0, 3, 0, '2016-04-23 22:34:14', 5760, 0, 1, 5760, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1304);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142224800382', 6200042, 41, 0, 1, 48, 10110, 150, 0, 3, 0, '2016-04-23 22:37:28', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.134.245', 1305);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142243800383', 6200031, 28, 2, 19, 56, 10154, 400, 0, 3, 0, '2016-04-23 22:40:38', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1306);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142243800384', 6200031, 28, 2, 19, 56, 10154, 400, 0, 3, 0, '2016-04-23 22:40:38', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1307);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142243800385', 6200031, 28, 2, 19, 56, 10154, 400, 0, 3, 0, '2016-04-23 22:40:38', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1308);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142243800386', 6200031, 28, 2, 19, 56, 10154, 400, 0, 3, 0, '2016-04-23 22:40:38', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1309);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142243800387', 6200031, 28, 2, 19, 56, 10154, 400, 0, 3, 0, '2016-04-23 22:40:38', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1310);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700388', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1311);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700389', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1312);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700390', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1313);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700391', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1314);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700392', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1315);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700393', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1316);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700394', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1317);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700395', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1318);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700396', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1319);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142250700397', 6200031, 28, 2, 19, 56, 10073, 100, 0, 3, 0, '2016-04-23 22:41:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1320);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142273200398', 6200042, 41, 0, 1, 48, 10111, 30, 0, 3, 0, '2016-04-23 22:45:32', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.134.245', 1321);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142293900399', 6200093, 115, 5, 0, 14, 10073, 100, 0, 3, 0, '2016-04-23 22:48:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', '', '223.73.25.208', 1322);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142326200400', 6200097, 116, 2, 0, 3, 100333, 960, 0, 3, 0, '2016-04-23 22:54:23', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200097', 3, 1, 1, '0', '', '183.24.138.46', 1323);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142330100401', 6200097, 116, 2, 0, 3, 10000, 20, 0, 3, 0, '2016-04-23 22:55:01', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200097', 3, 1, 2, '0', '', '183.24.138.46', 1324);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142362600402', 6200097, 116, 2, 0, 4, 10080, 100, 0, 3, 0, '2016-04-23 23:00:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200097', 3, 1, 2, '0', '', '183.24.138.46', 1325);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142420600403', 6200031, 28, 2, 19, 57, 31000, 240, 0, 3, 0, '2016-04-23 23:10:06', 240, 0, 1, 240, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1326);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142420600404', 6200031, 28, 2, 19, 57, 31100, 240, 0, 3, 0, '2016-04-23 23:10:06', 240, 0, 1, 240, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1327);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142442800405', 6200093, 115, 5, 0, 15, 10060, 100, 0, 3, 0, '2016-04-23 23:13:48', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', 'cera point', '223.73.25.208', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142449900406', 6200047, 57, 0, 2, 51, 10073, 100, 0, 3, 0, '2016-04-23 23:14:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.27.201', 1328);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142469000407', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:18:10', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1329);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142469000408', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:18:10', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1330);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142478000409', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:19:40', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1331);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142478000410', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:19:40', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1332);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142480100411', 6200047, 57, 0, 2, 51, 10600, 10, 0, 3, 0, '2016-04-23 23:20:01', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.27.201', 1333);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142480100412', 6200047, 57, 0, 2, 51, 10600, 10, 0, 3, 0, '2016-04-23 23:20:01', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.27.201', 1334);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142480100413', 6200047, 57, 0, 2, 51, 10601, 50, 0, 3, 0, '2016-04-23 23:20:01', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.27.201', 1335);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142480100414', 6200047, 57, 0, 2, 51, 10602, 100, 0, 3, 0, '2016-04-23 23:20:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.27.201', 1336);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142497700415', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:22:57', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1337);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142497700416', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:22:57', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1338);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142507100417', 6200048, 114, 1, 1, 24, 9502, 450, 0, 3, 0, '2016-04-23 23:24:31', 450, 0, 10, 450, 1, 1, 0, 1, 0, 0, 0, '6200048', 3, 1, 2, '0', '', '61.178.177.6', 1339);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142513700418', 6200044, 42, 0, 3, 43, 10001, 60, 0, 3, 0, '2016-04-23 23:25:37', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142514800419', 6200044, 42, 0, 3, 43, 10002, 100, 0, 3, 0, '2016-04-23 23:25:48', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142538700420', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:29:47', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1340);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142546000421', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:31:00', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1341);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142556900422', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:32:49', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1342);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142558000423', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:33:00', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1343);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142566000424', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:34:20', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1344);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142572500425', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:35:25', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1345);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142573500426', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:35:35', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1346);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142581400427', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:36:54', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1347);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142591600428', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:38:36', 180, 0, 10, 180, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142596100429', 6200031, 28, 2, 19, 57, 10601, 50, 0, 3, 0, '2016-04-23 23:39:21', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1348);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142596100430', 6200031, 28, 2, 19, 57, 10602, 100, 0, 3, 0, '2016-04-23 23:39:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1349);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142598400431', 6200031, 28, 2, 19, 57, 9502, 450, 0, 3, 0, '2016-04-23 23:39:44', 450, 0, 10, 450, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142626100432', 6200048, 114, 1, 1, 26, 30015, 200, 0, 3, 0, '2016-04-23 23:44:22', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200048', 3, 1, 2, '0', '', '61.178.177.6', 1350);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142634500433', 6200044, 42, 0, 3, 43, 10111, 30, 0, 3, 0, '2016-04-23 23:45:45', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142675800434', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:52:38', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1351);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142676500435', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:52:46', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1352);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142676500436', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:52:46', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1353);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142688300437', 6200057, 55, 0, 1, 46, 10151, 20, 0, 3, 0, '2016-04-23 23:54:43', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142688300438', 6200057, 55, 0, 1, 46, 10151, 20, 0, 3, 0, '2016-04-23 23:54:43', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142688300439', 6200057, 55, 0, 1, 46, 10151, 20, 0, 3, 0, '2016-04-23 23:54:43', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142695800440', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:55:58', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1354);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142695800441', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:55:58', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1355);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142695800442', 6200031, 28, 2, 19, 57, 30021, 80, 0, 3, 0, '2016-04-23 23:55:58', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1356);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142696400443', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:56:04', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1357);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142712400444', 6200031, 28, 2, 19, 57, 9503, 800, 0, 3, 0, '2016-04-23 23:58:44', 800, 0, 20, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1358);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142712400445', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:58:44', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1359);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142712400446', 6200031, 28, 2, 19, 57, 10122, 180, 0, 3, 0, '2016-04-23 23:58:44', 180, 0, 10, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1360);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142730300447', 6200050, 106, 0, 4, 31, 10100, 180, 0, 3, 0, '2016-04-24 00:01:43', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '119.122.16.69', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142740000448', 6200031, 28, 2, 19, 57, 100287, 5760, 0, 3, 0, '2016-04-24 00:03:20', 5760, 0, 1, 5760, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1361);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142777500449', 6200057, 55, 0, 1, 46, 100328, 960, 0, 3, 0, '2016-04-24 00:09:35', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1362);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142778300450', 6200031, 28, 2, 19, 57, 10076, 600, 0, 3, 0, '2016-04-24 00:09:44', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1363);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142796600451', 6200059, 103, 0, 0, 7, 10000, 20, 0, 3, 0, '2016-04-24 00:12:46', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 1, '0', '', '121.33.33.198', 1364);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142796600452', 6200059, 103, 0, 0, 7, 10060, 100, 0, 3, 0, '2016-04-24 00:12:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.33.198', 1365);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142796600453', 6200059, 103, 0, 0, 7, 100329, 960, 0, 3, 0, '2016-04-24 00:12:47', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.33.198', 1366);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142797500454', 6200059, 103, 0, 0, 7, 10001, 60, 0, 3, 0, '2016-04-24 00:12:55', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.33.198', 1367);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142798000455', 6200059, 103, 0, 0, 7, 10061, 100, 0, 3, 0, '2016-04-24 00:13:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.33.198', 1368);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142802400456', 6200057, 55, 0, 1, 46, 100329, 960, 0, 3, 0, '2016-04-24 00:13:44', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1369);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142857700457', 6200036, 86, 5, 3, 35, 10073, 100, 0, 3, 0, '2016-04-24 00:22:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', '', '171.34.228.14', 1370);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142860200458', 6200098, 119, 0, 0, 1, 10080, 100, 0, 3, 0, '2016-04-24 00:23:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200098', 3, 1, 1, '0', '', '27.154.200.21', 1371);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142923800459', 6200057, 55, 0, 1, 46, 10073, 100, 0, 3, 0, '2016-04-24 00:33:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1372);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142923800460', 6200057, 55, 0, 1, 46, 10073, 100, 0, 3, 0, '2016-04-24 00:33:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1373);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146142923800461', 6200057, 55, 0, 1, 46, 10073, 100, 0, 3, 0, '2016-04-24 00:33:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1374);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143128500462', 6200099, 121, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-24 01:08:05', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 1, '0', '', '122.242.245.133', 1375);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143204400463', 6200057, 55, 0, 1, 47, 10110, 150, 0, 3, 0, '2016-04-24 01:20:44', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1376);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143425200464', 6200031, 28, 2, 19, 59, 10600, 10, 0, 3, 0, '2016-04-24 01:57:32', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1377);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143425200465', 6200031, 28, 2, 19, 59, 10600, 10, 0, 3, 0, '2016-04-24 01:57:32', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1378);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143425200466', 6200031, 28, 2, 19, 59, 10600, 10, 0, 3, 0, '2016-04-24 01:57:32', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1379);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143425200467', 6200031, 28, 2, 19, 59, 10601, 50, 0, 3, 0, '2016-04-24 01:57:32', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1380);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143428400468', 6200031, 28, 2, 19, 59, 10602, 100, 0, 3, 0, '2016-04-24 01:58:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1381);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143428400469', 6200031, 28, 2, 19, 59, 10602, 100, 0, 3, 0, '2016-04-24 01:58:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1382);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143428800470', 6200031, 28, 2, 19, 59, 10076, 600, 0, 3, 0, '2016-04-24 01:58:08', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400471', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1383);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400472', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1384);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400473', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1385);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400474', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1386);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400475', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1387);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400476', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1388);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400477', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1389);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400478', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1390);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400479', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1391);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143607400480', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:27:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1392);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143614400481', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:29:04', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1393);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143614400482', 6200057, 55, 0, 1, 47, 10151, 20, 0, 3, 0, '2016-04-24 02:29:04', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1394);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143614400483', 6200057, 55, 0, 1, 47, 10151, 20, 0, 3, 0, '2016-04-24 02:29:04', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1395);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143623400484', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:30:34', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1396);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143623400485', 6200057, 55, 0, 1, 47, 10152, 40, 0, 3, 0, '2016-04-24 02:30:34', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1397);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143626700486', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:31:07', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1398);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143626700487', 6200057, 55, 0, 1, 47, 10152, 40, 0, 3, 0, '2016-04-24 02:31:07', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1399);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143632600488', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:32:06', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1400);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143632600489', 6200057, 55, 0, 1, 47, 10152, 40, 0, 3, 0, '2016-04-24 02:32:06', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1401);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143636100490', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:32:41', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1402);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143636100491', 6200057, 55, 0, 1, 47, 10152, 40, 0, 3, 0, '2016-04-24 02:32:41', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1403);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143642700492', 6200031, 28, 2, 19, 60, 10111, 30, 0, 3, 0, '2016-04-24 02:33:47', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143654500493', 6200057, 55, 0, 1, 47, 10004, 180, 0, 3, 0, '2016-04-24 02:35:45', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1404);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143654900494', 6200057, 55, 0, 1, 47, 10005, 220, 0, 3, 0, '2016-04-24 02:35:50', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1405);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143655300495', 6200057, 55, 0, 1, 47, 10006, 260, 0, 3, 0, '2016-04-24 02:35:53', 260, 0, 1, 260, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1406);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143656100496', 6200057, 55, 0, 1, 47, 10007, 300, 0, 3, 0, '2016-04-24 02:36:01', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1407);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143656600497', 6200057, 55, 0, 1, 47, 10008, 360, 0, 3, 0, '2016-04-24 02:36:06', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1408);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143675100498', 6200057, 55, 0, 1, 47, 10154, 400, 0, 3, 0, '2016-04-24 02:39:11', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1409);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143686700499', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:41:07', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1410);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143686700500', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:41:07', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1411);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143686700501', 6200057, 55, 0, 1, 47, 10065, 200, 0, 3, 0, '2016-04-24 02:41:07', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1412);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143690500502', 6200057, 55, 0, 1, 47, 10150, 5, 0, 3, 0, '2016-04-24 02:41:45', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1413);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143690500503', 6200057, 55, 0, 1, 47, 10150, 5, 0, 3, 0, '2016-04-24 02:41:45', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1414);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100504', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1415);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100505', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1416);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100506', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1417);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100507', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1418);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100508', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1419);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100509', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1420);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100510', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1421);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100511', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1422);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100512', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1423);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100513', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1424);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100514', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1425);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100515', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1426);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100516', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1427);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100517', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1428);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100518', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1429);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100519', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1430);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100520', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1431);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100521', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1432);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100522', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1433);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100523', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1434);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100524', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1435);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100525', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1436);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100526', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1437);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100527', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1438);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100528', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1439);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100529', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1440);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100530', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1441);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100531', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1442);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100532', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1443);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100533', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1444);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100534', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1445);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100535', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1446);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143695100536', 6200057, 55, 0, 1, 47, 10073, 100, 0, 3, 0, '2016-04-24 02:42:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1447);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143715800537', 6200101, 122, 5, 0, 5, 10060, 100, 0, 3, 0, '2016-04-24 02:45:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200101', 3, 1, 1, '0', '', '58.61.75.30', 1448);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143716200538', 6200031, 28, 2, 19, 60, 10110, 150, 0, 3, 0, '2016-04-24 02:46:02', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143717800539', 6200101, 122, 5, 0, 5, 10061, 100, 0, 3, 0, '2016-04-24 02:46:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200101', 3, 1, 2, '0', '', '58.61.75.30', 1449);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143900800540', 6200031, 28, 2, 19, 60, 10111, 30, 0, 3, 0, '2016-04-24 03:16:48', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.66.100', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900541', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1450);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900542', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1451);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900543', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1452);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900544', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1453);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900545', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1454);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900546', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1455);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900547', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1456);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900548', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1457);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900549', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1458);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900550', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1459);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900551', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1460);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900552', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1461);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900553', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1462);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900554', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1463);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900555', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1464);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900556', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1465);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900557', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1466);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900558', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1467);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900559', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1468);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143925900560', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:21:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1469);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143930500561', 6200077, 123, 0, 0, 3, 10080, 100, 0, 3, 0, '2016-04-24 03:21:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 1, '0', '', '183.6.225.43', 1470);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800562', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1471);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800563', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1472);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800564', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1473);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800565', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1474);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800566', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1475);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800567', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1476);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800568', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1477);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800569', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1478);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800570', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1479);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143936800571', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 03:22:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1480);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143938700572', 6200077, 123, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-24 03:23:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.43', 1481);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143948000573', 6200031, 28, 2, 19, 60, 10031, 140, 0, 3, 0, '2016-04-24 03:24:40', 140, 0, 10, 140, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1482);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143948100574', 6200077, 123, 0, 0, 3, 100350, 960, 0, 3, 0, '2016-04-24 03:24:41', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.43', 1483);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146143950200575', 6200031, 28, 2, 19, 60, 10002, 100, 0, 3, 0, '2016-04-24 03:25:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1484);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144096300576', 6200077, 123, 0, 0, 7, 10060, 100, 0, 3, 0, '2016-04-24 03:49:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.43', 1485);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144096700577', 6200077, 123, 0, 0, 7, 10061, 100, 0, 3, 0, '2016-04-24 03:49:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.43', 1486);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144164800578', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 04:00:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1487);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144164800579', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 04:00:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1488);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144164800580', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 04:00:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1489);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144164800581', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 04:00:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1490);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144164800582', 6200031, 28, 2, 19, 60, 10073, 100, 0, 3, 0, '2016-04-24 04:00:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1491);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146144196700583', 6200031, 28, 2, 19, 60, 30015, 200, 0, 3, 0, '2016-04-24 04:06:08', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1492);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146145555300584', 6200096, 124, 4, 0, 2, 100372, 960, 0, 3, 0, '2016-04-24 07:52:33', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 1, '0', '', '119.187.202.59', 1493);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146145579700585', 6200096, 124, 4, 0, 2, 10080, 100, 0, 3, 0, '2016-04-24 07:56:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1494);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146145581200586', 6200096, 124, 4, 0, 2, 10073, 100, 0, 3, 0, '2016-04-24 07:56:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1495);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146145585400587', 6200096, 124, 4, 0, 2, 10000, 20, 0, 3, 0, '2016-04-24 07:57:34', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1496);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146282400588', 6200057, 55, 0, 1, 48, 10153, 200, 0, 3, 0, '2016-04-24 09:53:45', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1497);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146286700589', 6200057, 55, 0, 1, 48, 10076, 600, 0, 3, 0, '2016-04-24 09:54:27', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1498);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146368500590', 6200042, 41, 0, 1, 48, 10153, 200, 0, 3, 0, '2016-04-24 10:08:05', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.126.40', 1499);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146371600591', 6200057, 55, 0, 1, 48, 10211, 360, 0, 3, 0, '2016-04-24 10:08:36', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1500);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146380500592', 6200099, 121, 0, 4, 24, 10152, 40, 0, 3, 0, '2016-04-24 10:10:05', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', 'cera point', '122.242.245.133', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146386500593', 6200057, 55, 0, 1, 48, 30000, 250, 0, 3, 0, '2016-04-24 10:11:05', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1501);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146388500594', 6200099, 121, 0, 4, 24, 10080, 100, 0, 3, 0, '2016-04-24 10:11:26', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', 'cera point', '122.242.245.133', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146389400595', 6200057, 55, 0, 1, 48, 10211, 360, 0, 3, 0, '2016-04-24 10:11:34', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1502);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146389400596', 6200057, 55, 0, 1, 48, 30000, 250, 0, 3, 0, '2016-04-24 10:11:34', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1503);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146392700597', 6200057, 55, 0, 1, 48, 10211, 360, 0, 3, 0, '2016-04-24 10:12:07', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1504);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146392700598', 6200057, 55, 0, 1, 48, 30000, 250, 0, 3, 0, '2016-04-24 10:12:07', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1505);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146513000599', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 10:32:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.132.133', 1506);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146513000600', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 10:32:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.132.133', 1507);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146513000601', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 10:32:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.132.133', 1508);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146513000602', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 10:32:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.132.133', 1509);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146604300603', 6200042, 41, 0, 1, 48, 10153, 200, 0, 3, 0, '2016-04-24 10:47:24', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.132.133', 1510);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146791600604', 6200091, 110, 2, 2, 28, 10154, 400, 0, 3, 0, '2016-04-24 11:18:36', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '120.239.12.37', 1511);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146941600605', 6200099, 121, 0, 4, 35, 10060, 100, 0, 3, 0, '2016-04-24 11:43:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', '', '122.242.245.133', 1512);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146146952300606', 6200099, 121, 0, 4, 35, 10061, 100, 0, 3, 0, '2016-04-24 11:45:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', 'cera point', '122.242.245.133', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147052300607', 6200058, 56, 0, 3, 49, 10153, 200, 0, 3, 0, '2016-04-24 12:02:03', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '182.151.140.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147067200608', 6200058, 56, 0, 3, 49, 10153, 200, 0, 3, 0, '2016-04-24 12:04:32', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '182.151.140.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147088300609', 6200096, 124, 4, 3, 19, 10060, 100, 0, 3, 0, '2016-04-24 12:08:03', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', 'cera point', '119.187.202.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147132500610', 6200031, 28, 2, 19, 60, 10076, 600, 0, 3, 0, '2016-04-24 12:15:25', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1513);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147328900611', 6200096, 124, 4, 3, 23, 10001, 60, 0, 3, 0, '2016-04-24 12:48:09', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1514);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147328900612', 6200096, 124, 4, 3, 23, 10061, 100, 0, 3, 0, '2016-04-24 12:48:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1515);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147328900613', 6200096, 124, 4, 3, 23, 10073, 100, 0, 3, 0, '2016-04-24 12:48:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1516);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147329500614', 6200096, 124, 4, 3, 23, 10002, 100, 0, 3, 0, '2016-04-24 12:48:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1517);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147330400615', 6200096, 124, 4, 3, 23, 10003, 140, 0, 3, 0, '2016-04-24 12:48:24', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1518);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147445300616', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:07:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147445300617', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:07:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147445300618', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:07:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147445300619', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:07:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147445300620', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:07:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147445300621', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:07:33', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147449200622', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:08:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147449200623', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:08:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147449200624', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:08:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147449200625', 6200009, 16, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-24 13:08:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147504200626', 6200096, 124, 4, 3, 24, 10065, 200, 0, 3, 0, '2016-04-24 13:17:22', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1519);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147504200627', 6200096, 124, 4, 3, 24, 10152, 40, 0, 3, 0, '2016-04-24 13:17:22', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1520);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147510000628', 6200096, 124, 4, 3, 24, 10065, 200, 0, 3, 0, '2016-04-24 13:18:20', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1521);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147510000629', 6200096, 124, 4, 3, 24, 10152, 40, 0, 3, 0, '2016-04-24 13:18:20', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.59', 1522);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147665400630', 6200031, 28, 2, 19, 61, 10076, 600, 0, 3, 0, '2016-04-24 13:44:14', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1523);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147665400631', 6200031, 28, 2, 19, 61, 10076, 600, 0, 3, 0, '2016-04-24 13:44:14', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1524);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600632', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1525);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600633', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1526);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600634', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1527);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600635', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1528);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600636', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1529);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600637', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1530);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600638', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1531);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600639', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1532);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600640', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1533);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600641', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1534);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600642', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1535);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600643', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1536);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600644', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1537);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147666600645', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:44:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1538);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600646', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1539);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600647', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1540);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600648', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1541);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600649', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1542);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600650', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1543);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600651', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1544);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600652', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1545);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600653', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1546);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600654', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1547);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147681600655', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:46:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1548);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000656', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1549);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000657', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1550);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000658', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1551);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000659', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1552);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000660', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1553);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000661', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1554);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000662', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1555);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000663', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1556);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000664', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1557);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000665', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1558);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000666', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1559);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000667', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1560);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000668', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1561);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000669', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1562);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147687000670', 6200031, 28, 2, 19, 61, 10073, 100, 0, 3, 0, '2016-04-24 13:47:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1563);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147774200671', 6200058, 56, 0, 3, 50, 10602, 100, 0, 3, 0, '2016-04-24 14:02:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.140.85', 1564);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147777400672', 6200058, 56, 0, 3, 50, 10601, 50, 0, 3, 0, '2016-04-24 14:02:54', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.140.85', 1565);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147778900673', 6200058, 56, 0, 3, 50, 10211, 360, 0, 3, 0, '2016-04-24 14:03:09', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '182.151.140.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147817300674', 6200044, 42, 0, 3, 47, 10111, 30, 0, 3, 0, '2016-04-24 14:09:33', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147840500675', 6200022, 24, 1, 19, 61, 10110, 150, 0, 3, 0, '2016-04-24 14:13:25', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1566);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147856900676', 6200031, 28, 2, 19, 61, 10003, 140, 0, 3, 0, '2016-04-24 14:16:09', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1567);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147911300677', 6200009, 16, 0, 19, 56, 10111, 30, 0, 3, 0, '2016-04-24 14:25:13', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147952500678', 6200009, 16, 0, 19, 56, 10110, 150, 0, 3, 0, '2016-04-24 14:32:06', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146147952500679', 6200009, 16, 0, 19, 56, 10111, 30, 0, 3, 0, '2016-04-24 14:32:06', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148024800680', 6200101, 122, 5, 3, 17, 20000, 100, 0, 3, 0, '2016-04-24 14:44:08', 100, 0, 100, 100, 1, 1, 0, 1, 0, 0, 0, '6200101', 3, 1, 2, '0', '', '58.61.63.96', 1568);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148083100681', 6200082, 97, 8, 2, 20, 10073, 100, 0, 3, 0, '2016-04-24 14:53:51', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '106.38.187.237', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148125100682', 6200050, 127, 3, 0, 2, 9501, 200, 0, 3, 0, '2016-04-24 15:00:51', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '119.122.17.227', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148221500683', 6200087, 93, 0, 2, 34, 1000018, 105, 0, 3, 0, '2016-04-24 15:16:55', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200087', 3, 1, 2, '0', 'cera point', '113.3.47.136', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148249500684', 6200022, 24, 1, 19, 61, 10110, 150, 0, 3, 0, '2016-04-24 15:21:35', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1569);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148295700685', 6200044, 42, 0, 3, 47, 10111, 30, 0, 3, 0, '2016-04-24 15:29:17', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148300200686', 6200031, 28, 2, 19, 62, 10111, 30, 0, 3, 0, '2016-04-24 15:30:02', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1570);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148303100687', 6200101, 122, 5, 3, 23, 10000, 20, 0, 3, 0, '2016-04-24 15:30:31', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200101', 3, 1, 2, '0', '', '58.61.63.96', 1571);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148336100688', 6200093, 115, 5, 1, 26, 10600, 10, 0, 3, 0, '2016-04-24 15:36:01', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', '', '120.24.103.43', 1572);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148336100689', 6200093, 115, 5, 1, 26, 10601, 50, 0, 3, 0, '2016-04-24 15:36:01', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', '', '120.24.103.43', 1573);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148366100690', 6200031, 28, 2, 19, 63, 10110, 150, 0, 3, 0, '2016-04-24 15:41:01', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1574);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148467500691', 6200077, 123, 0, 2, 29, 10211, 360, 0, 3, 0, '2016-04-24 15:57:55', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.43', 1575);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148486800692', 6200031, 28, 2, 19, 63, 10111, 30, 0, 3, 0, '2016-04-24 16:01:08', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.66.100', 1576);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148553600693', 6200044, 42, 0, 3, 47, 10073, 100, 0, 3, 0, '2016-04-24 16:12:16', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148565200694', 6200044, 42, 0, 3, 47, 10073, 100, 0, 3, 0, '2016-04-24 16:14:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148565200695', 6200044, 42, 0, 3, 47, 10073, 100, 0, 3, 0, '2016-04-24 16:14:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148581500696', 6200082, 97, 8, 2, 24, 10073, 100, 0, 3, 0, '2016-04-24 16:16:56', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '106.38.187.237', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148720600697', 6200031, 28, 2, 19, 63, 10110, 150, 0, 3, 0, '2016-04-24 16:40:06', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.68.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148726500698', 6200082, 97, 8, 2, 24, 10030, 16, 0, 3, 0, '2016-04-24 16:41:05', 16, 0, 1, 16, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '106.38.187.237', 1577);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148728000699', 6200082, 97, 8, 2, 24, 10030, 16, 0, 3, 0, '2016-04-24 16:41:20', 16, 0, 1, 16, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '106.38.187.237', 1578);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100700', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1579);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100701', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1580);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100702', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1581);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100703', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1582);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100704', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1583);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100705', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1584);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100706', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1585);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100707', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1586);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100708', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1587);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100709', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1588);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100710', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1589);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100711', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1590);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100712', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1591);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100713', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1592);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734100714', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1593);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148734900715', 6200057, 55, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 16:42:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148799700716', 6200055, 125, 3, 1, 23, 10073, 100, 0, 3, 0, '2016-04-24 16:53:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 1, '0', 'cera point', '183.23.116.76', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148953100717', 6200031, 28, 2, 19, 63, 10111, 30, 0, 3, 0, '2016-04-24 17:18:51', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.68.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148961100718', 6200007, 11, 3, 20, 69, 10111, 30, 0, 3, 0, '2016-04-24 17:20:11', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.194.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146148961600719', 6200007, 11, 3, 20, 69, 10110, 150, 0, 3, 0, '2016-04-24 17:20:16', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.194.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149016300720', 6200007, 11, 3, 20, 69, 10073, 100, 0, 3, 0, '2016-04-24 17:29:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.194.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149016300721', 6200007, 11, 3, 20, 69, 10073, 100, 0, 3, 0, '2016-04-24 17:29:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.194.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149072800722', 6200057, 55, 0, 17, 50, 10110, 150, 0, 3, 0, '2016-04-24 17:38:48', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149119100723', 6200092, 111, 2, 0, 13, 10601, 50, 0, 3, 0, '2016-04-24 17:46:31', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', 'cera point', '1.25.108.3', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149120500724', 6200092, 111, 2, 0, 13, 10601, 50, 0, 3, 0, '2016-04-24 17:46:45', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', 'cera point', '1.25.108.3', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149121000725', 6200092, 111, 2, 0, 13, 10600, 10, 0, 3, 0, '2016-04-24 17:46:50', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1594);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149121300726', 6200092, 111, 2, 0, 13, 10600, 10, 0, 3, 0, '2016-04-24 17:46:53', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200092', 3, 1, 2, '0', '', '1.25.108.3', 1595);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149121900727', 6200057, 55, 0, 17, 50, 10100, 180, 0, 3, 0, '2016-04-24 17:46:59', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149170600728', 6200047, 57, 0, 2, 51, 10602, 100, 0, 3, 0, '2016-04-24 17:55:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.67', 1596);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149170600729', 6200047, 57, 0, 2, 51, 10602, 100, 0, 3, 0, '2016-04-24 17:55:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.67', 1597);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149170600730', 6200047, 57, 0, 2, 51, 10602, 100, 0, 3, 0, '2016-04-24 17:55:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.67', 1598);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149170600731', 6200047, 57, 0, 2, 51, 10602, 100, 0, 3, 0, '2016-04-24 17:55:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.67', 1599);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149170600732', 6200047, 57, 0, 2, 51, 10602, 100, 0, 3, 0, '2016-04-24 17:55:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.67', 1600);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149230900733', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:05:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.207.107', 1601);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149230900734', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:05:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.207.107', 1602);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149230900735', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:05:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.207.107', 1603);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149230900736', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:05:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.207.107', 1604);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149230900737', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:05:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.207.107', 1605);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149230900738', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:05:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.207.107', 1606);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149280000739', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.207.107', 1607);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149280000740', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.207.107', 1608);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149280000741', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.207.107', 1609);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149280000742', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.207.107', 1610);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149280000743', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.207.107', 1611);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149280000744', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-24 18:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.207.107', 1612);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149292700745', 6200036, 128, 1, 0, 2, 100355, 960, 0, 3, 0, '2016-04-24 18:15:27', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', '', '171.34.228.142', 1613);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149315900746', 6200036, 128, 1, 0, 2, 10073, 100, 0, 3, 0, '2016-04-24 18:19:19', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.142', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149561000747', 6200047, 57, 0, 2, 55, 10111, 30, 0, 3, 0, '2016-04-24 19:00:11', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.67', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149599600748', 6200104, 130, 1, 0, 2, 10080, 100, 0, 3, 0, '2016-04-24 19:06:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 1, '0', '', '118.75.168.149', 1614);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149601100749', 6200104, 130, 1, 0, 2, 10000, 20, 0, 3, 0, '2016-04-24 19:06:51', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '118.75.168.149', 1615);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149611700750', 6200104, 130, 1, 0, 2, 10001, 60, 0, 3, 0, '2016-04-24 19:08:38', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '118.75.168.149', 1616);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149636800751', 6200057, 55, 0, 19, 51, 10110, 150, 0, 3, 0, '2016-04-24 19:12:48', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149636800752', 6200057, 55, 0, 19, 51, 10110, 150, 0, 3, 0, '2016-04-24 19:12:48', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149636800753', 6200057, 55, 0, 19, 51, 10110, 150, 0, 3, 0, '2016-04-24 19:12:48', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149797900754', 6200007, 11, 3, 20, 70, 10003, 140, 0, 3, 0, '2016-04-24 19:39:39', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.194.240', 1617);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149801400755', 6200037, 34, 1, 1, 43, 100204, 11760, 0, 3, 0, '2016-04-24 19:40:15', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.85.47', 1618);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149803300756', 6200037, 34, 1, 1, 43, 100216, 1760, 0, 3, 0, '2016-04-24 19:40:33', 1760, 0, 1, 1760, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.85.47', 1619);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149818100757', 6200103, 132, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-24 19:43:01', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 1, '0', '', '59.52.193.207', 1620);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149818400758', 6200103, 132, 0, 0, 2, 10001, 60, 0, 3, 0, '2016-04-24 19:43:04', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1621);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149818600759', 6200103, 132, 0, 0, 2, 10002, 100, 0, 3, 0, '2016-04-24 19:43:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1622);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149818800760', 6200103, 132, 0, 0, 2, 10003, 140, 0, 3, 0, '2016-04-24 19:43:08', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1623);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149819000761', 6200103, 132, 0, 0, 2, 10004, 180, 0, 3, 0, '2016-04-24 19:43:10', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1624);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149822000762', 6200103, 132, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-24 19:43:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1625);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149832900763', 6200103, 132, 0, 0, 2, 10006, 260, 0, 3, 0, '2016-04-24 19:45:30', 260, 0, 1, 260, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1626);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149837600764', 6200103, 132, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-24 19:46:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1627);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149838100765', 6200103, 132, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-24 19:46:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200103', 3, 1, 2, '0', '', '59.52.193.207', 1628);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149866600766', 6200104, 130, 1, 0, 9, 10073, 100, 0, 3, 0, '2016-04-24 19:51:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '118.75.168.149', 1629);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149872900767', 6200104, 130, 1, 0, 9, 10073, 100, 0, 3, 0, '2016-04-24 19:52:09', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', 'cera point', '118.75.168.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149873500768', 6200104, 130, 1, 0, 9, 10073, 100, 0, 3, 0, '2016-04-24 19:52:15', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', 'cera point', '118.75.168.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149897000769', 6200065, 133, 2, 0, 1, 10000, 20, 0, 3, 0, '2016-04-24 19:56:10', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200065', 3, 1, 1, '0', '', '119.134.111.238', 1630);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149897200770', 6200065, 133, 2, 0, 1, 10001, 60, 0, 3, 0, '2016-04-24 19:56:12', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200065', 3, 1, 2, '0', '', '119.134.111.238', 1631);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149897400771', 6200065, 133, 2, 0, 1, 10002, 100, 0, 3, 0, '2016-04-24 19:56:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200065', 3, 1, 2, '0', '', '119.134.111.238', 1632);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149903200772', 6200065, 133, 2, 0, 1, 10060, 100, 0, 3, 0, '2016-04-24 19:57:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200065', 3, 1, 2, '0', '', '119.134.111.238', 1633);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149903600773', 6200065, 133, 2, 0, 1, 10061, 100, 0, 3, 0, '2016-04-24 19:57:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200065', 3, 1, 2, '0', '', '119.134.111.238', 1634);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149905300774', 6200065, 133, 2, 0, 1, 10080, 100, 0, 3, 0, '2016-04-24 19:57:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200065', 3, 1, 2, '0', '', '119.134.111.238', 1635);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149940400775', 6200022, 24, 1, 19, 61, 10111, 30, 0, 3, 0, '2016-04-24 20:03:25', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1636);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149940400776', 6200022, 24, 1, 19, 61, 10111, 30, 0, 3, 0, '2016-04-24 20:03:25', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1637);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149940400777', 6200022, 24, 1, 19, 61, 10111, 30, 0, 3, 0, '2016-04-24 20:03:25', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1638);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149981300778', 6200086, 96, 0, 3, 37, 10000, 20, 0, 3, 0, '2016-04-24 20:10:13', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', 'cera point', '58.49.208.129', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146149984300779', 6200104, 134, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-24 20:10:43', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', 'cera point', '171.123.123.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150082900780', 6200105, 135, 0, 0, 5, 10073, 100, 0, 3, 0, '2016-04-24 20:27:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200105', 3, 1, 1, '0', '', '171.9.26.86', 1639);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150082900781', 6200105, 135, 0, 0, 5, 10080, 100, 0, 3, 0, '2016-04-24 20:27:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200105', 3, 1, 2, '0', '', '171.9.26.86', 1640);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150088600782', 6200036, 128, 1, 0, 10, 30015, 200, 0, 3, 0, '2016-04-24 20:28:06', 200, 0, 1, 200, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.142', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600783', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1641);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600784', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1642);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600785', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1643);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600786', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1644);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600787', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1645);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600788', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1646);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600789', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1647);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600790', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1648);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150095600791', 6200104, 134, 0, 0, 6, 10602, 100, 0, 3, 0, '2016-04-24 20:29:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1649);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150098100792', 6200104, 134, 0, 0, 6, 100348, 960, 0, 3, 0, '2016-04-24 20:29:41', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', 'cera point', '171.123.123.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150126300793', 6200048, 114, 1, 1, 29, 30005, 200, 0, 3, 0, '2016-04-24 20:34:24', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200048', 3, 1, 2, '0', '', '61.178.177.6', 1650);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150142500794', 6200086, 96, 0, 3, 37, 10073, 100, 0, 3, 0, '2016-04-24 20:37:05', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', 'cera point', '58.49.208.129', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150147600795', 6200031, 28, 2, 19, 63, 10110, 150, 0, 3, 0, '2016-04-24 20:37:56', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.68.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150148600796', 6200031, 28, 2, 19, 63, 10110, 150, 0, 3, 0, '2016-04-24 20:38:06', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.68.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150148600797', 6200031, 28, 2, 19, 63, 10111, 30, 0, 3, 0, '2016-04-24 20:38:06', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.68.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150191800798', 6200106, 136, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-24 20:45:18', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200106', 3, 1, 1, '0', '', '49.79.199.168', 1651);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150217100799', 6200104, 134, 0, 0, 9, 10600, 10, 0, 3, 0, '2016-04-24 20:49:31', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1652);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150217400800', 6200104, 134, 0, 0, 9, 10600, 10, 0, 3, 0, '2016-04-24 20:49:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', '', '171.123.123.180', 1653);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150221400801', 6200106, 136, 0, 0, 4, 10080, 100, 0, 3, 0, '2016-04-24 20:50:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200106', 3, 1, 2, '0', '', '49.79.199.168', 1654);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150222900802', 6200106, 136, 0, 0, 4, 10001, 60, 0, 3, 0, '2016-04-24 20:50:29', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200106', 3, 1, 2, '0', '', '49.79.199.168', 1655);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150240700803', 6200048, 114, 1, 1, 30, 10153, 200, 0, 3, 0, '2016-04-24 20:53:27', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200048', 3, 1, 2, '0', '', '61.178.177.6', 1656);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150268200804', 6200107, 137, 9, 0, 3, 100346, 960, 0, 3, 0, '2016-04-24 20:58:02', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200107', 3, 1, 1, '0', '', '1.191.14.108', 1657);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150293800805', 6200007, 11, 3, 20, 70, 10110, 150, 0, 3, 0, '2016-04-24 21:02:18', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.194.240', 1658);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150297900806', 6200058, 56, 0, 19, 51, 10111, 30, 0, 3, 0, '2016-04-24 21:02:59', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.140.85', 1659);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150320500807', 6200048, 114, 1, 1, 30, 9502, 450, 0, 3, 0, '2016-04-24 21:06:45', 450, 0, 10, 450, 1, 1, 0, 1, 0, 0, 0, '6200048', 3, 1, 2, '0', '', '61.178.177.6', 1660);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150441400808', 6200084, 89, 0, 1, 32, 10060, 100, 0, 3, 0, '2016-04-24 21:26:54', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', 'cera point', '221.228.197.226', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150539300809', 6200086, 96, 0, 3, 38, 10151, 20, 0, 3, 0, '2016-04-24 21:43:13', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', '', '58.49.208.129', 1661);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150539300810', 6200086, 96, 0, 3, 38, 10152, 40, 0, 3, 0, '2016-04-24 21:43:13', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', '', '58.49.208.129', 1662);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150543900811', 6200106, 136, 0, 0, 12, 100351, 960, 0, 3, 0, '2016-04-24 21:43:59', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200106', 3, 1, 2, '0', '', '49.79.199.168', 1663);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150571300812', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 21:48:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.116.164', 1664);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150571300813', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 21:48:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.116.164', 1665);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150571300814', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 21:48:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.116.164', 1666);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150571300815', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 21:48:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.116.164', 1667);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150571300816', 6200042, 41, 0, 1, 48, 10073, 100, 0, 3, 0, '2016-04-24 21:48:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.116.164', 1668);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150634700817', 6200084, 89, 0, 1, 34, 10000, 20, 0, 3, 0, '2016-04-24 21:59:07', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', '', '221.228.197.226', 1669);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150637400818', 6200057, 55, 0, 19, 54, 10211, 360, 0, 3, 0, '2016-04-24 21:59:34', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150638100819', 6200057, 55, 0, 19, 54, 30000, 250, 0, 3, 0, '2016-04-24 21:59:41', 250, 0, 1, 250, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150644000820', 6200084, 89, 0, 1, 34, 10061, 100, 0, 3, 0, '2016-04-24 22:00:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200084', 3, 1, 2, '0', 'cera point', '221.228.197.226', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150658400821', 6200057, 55, 0, 19, 54, 10211, 360, 0, 3, 0, '2016-04-24 22:03:04', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150658400822', 6200057, 55, 0, 19, 54, 10211, 360, 0, 3, 0, '2016-04-24 22:03:04', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150730900823', 6200079, 142, 3, 0, 2, 10060, 100, 0, 3, 0, '2016-04-24 22:15:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '180.105.176.143', 1670);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150732000824', 6200079, 142, 3, 0, 2, 10061, 100, 0, 3, 0, '2016-04-24 22:15:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '180.105.176.143', 1671);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150754300825', 6200042, 41, 0, 1, 49, 10076, 600, 0, 3, 0, '2016-04-24 22:19:03', 600, 0, 150, 600, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.116.164', 1672);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150755700826', 6200007, 11, 3, 20, 70, 10111, 30, 0, 3, 0, '2016-04-24 22:19:17', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.194.240', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150758100827', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:19:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150758100828', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:19:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150758100829', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:19:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150780700830', 6200086, 96, 0, 3, 39, 20000, 100, 0, 3, 0, '2016-04-24 22:23:27', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', 'cera point', '58.49.208.129', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150789300831', 6200079, 142, 3, 0, 4, 30011, 80, 0, 3, 0, '2016-04-24 22:24:53', 80, 0, 1, 80, 3, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', 'cera point', '180.105.176.143', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150816800832', 6200007, 11, 3, 20, 70, 10073, 100, 0, 3, 0, '2016-04-24 22:29:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.194.240', 1673);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150819900833', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:29:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1674);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150819900834', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:29:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1675);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150819900835', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:29:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1676);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150819900836', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:29:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1677);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150819900837', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:29:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1678);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150830400838', 6200042, 41, 0, 1, 50, 10111, 30, 0, 3, 0, '2016-04-24 22:31:44', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.116.164', 1679);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150843300839', 6200057, 55, 0, 19, 54, 10211, 360, 0, 3, 0, '2016-04-24 22:33:53', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1680);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150849100840', 6200057, 55, 0, 19, 54, 10110, 150, 0, 3, 0, '2016-04-24 22:34:51', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1681);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150891700841', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:41:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1682);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150891700842', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:41:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1683);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150891700843', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:41:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1684);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150891700844', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:41:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1685);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150891700845', 6200057, 55, 0, 19, 54, 10073, 100, 0, 3, 0, '2016-04-24 22:41:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1686);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146150922600846', 6200079, 142, 3, 0, 7, 10073, 100, 0, 3, 0, '2016-04-24 22:47:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '180.105.176.143', 1687);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151011000847', 6200066, 64, 0, 1, 44, 10153, 200, 0, 3, 0, '2016-04-24 23:01:50', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '119.5.146.246', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151068600848', 6200031, 28, 2, 19, 64, 10600, 10, 0, 3, 0, '2016-04-24 23:11:26', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1688);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151073600849', 6200031, 28, 2, 19, 64, 10110, 150, 0, 3, 0, '2016-04-24 23:12:16', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.68.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151073600850', 6200031, 28, 2, 19, 64, 10111, 30, 0, 3, 0, '2016-04-24 23:12:16', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.68.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151138000851', 6200041, 40, 1, 2, 34, 10073, 100, 0, 3, 0, '2016-04-24 23:23:00', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', 'cera point', '222.241.252.38', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151161000852', 6200022, 24, 1, 19, 62, 10076, 600, 0, 3, 0, '2016-04-24 23:26:50', 600, 0, 150, 600, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.109.215', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700853', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1689);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700854', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1690);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700855', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1691);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700856', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1692);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700857', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1693);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700858', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1694);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700859', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1695);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700860', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1696);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700861', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1697);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700862', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1698);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700863', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1699);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700864', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1700);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700865', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1701);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700866', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1702);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700867', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1703);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700868', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1704);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700869', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1705);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700870', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1706);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700871', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1707);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151169700872', 6200031, 28, 2, 19, 64, 10073, 100, 0, 3, 0, '2016-04-24 23:28:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1708);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151206500873', 6200022, 24, 1, 19, 62, 10110, 150, 0, 3, 0, '2016-04-24 23:34:25', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.109.215', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151222900874', 6200057, 55, 0, 19, 55, 10110, 150, 0, 3, 0, '2016-04-24 23:37:09', 150, 0, 1, 150, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1709);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151223700875', 6200037, 34, 1, 1, 46, 10111, 30, 0, 3, 0, '2016-04-24 23:37:17', 30, 0, 1, 30, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.85.47', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151275600876', 6200074, 76, 0, 4, 34, 30015, 200, 0, 3, 0, '2016-04-24 23:45:56', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200074', 3, 1, 2, '0', '', '171.221.3.33', 1710);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151306800877', 6200037, 34, 1, 1, 46, 10153, 200, 0, 3, 0, '2016-04-24 23:51:08', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.85.47', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151361400878', 6200058, 56, 0, 19, 51, 10111, 30, 0, 3, 0, '2016-04-25 00:00:14', 30, 0, 1, 30, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.140.85', 1711);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151446100879', 6200057, 55, 0, 19, 56, 10154, 400, 0, 3, 0, '2016-04-25 00:14:22', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1712);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151480900880', 6200057, 55, 0, 19, 56, 10110, 150, 0, 3, 0, '2016-04-25 00:20:09', 150, 0, 1, 150, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151720700001', 6200001, 6, 0, 1, 35, 10112, 1500, 0, 3, 0, '2016-04-25 01:00:07', 1500, 0, 50, 1500, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.69.225', 1713);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146151879900002', 6200057, 55, 0, 19, 56, 10110, 180, 0, 3, 0, '2016-04-25 01:26:39', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.180', 1714);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152346100003', 6200031, 28, 2, 19, 65, 10110, 180, 0, 3, 0, '2016-04-25 02:44:21', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1715);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152346100004', 6200031, 28, 2, 19, 65, 10111, 50, 0, 3, 0, '2016-04-25 02:44:21', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1716);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152523600005', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:13:56', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1717);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152523600006', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:13:56', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1718);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152523600007', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:13:57', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1719);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500008', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:05', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1720);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500009', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:05', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1721);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500010', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:05', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1722);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500011', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:05', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1723);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500012', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:05', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1724);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500013', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1725);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500014', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1726);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500015', 6200031, 28, 2, 19, 65, 10067, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1727);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500016', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1728);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500017', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1729);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500018', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1730);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500019', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1731);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500020', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1732);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500021', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1733);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500022', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1734);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146152524500023', 6200031, 28, 2, 19, 65, 10068, 20, 0, 3, 0, '2016-04-25 03:14:06', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.68.232', 1735);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146154441600024', 6200022, 24, 1, 19, 62, 100204, 11760, 0, 3, 0, '2016-04-25 08:33:36', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1736);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146154474100025', 6200022, 24, 1, 19, 62, 10001, 60, 0, 3, 0, '2016-04-25 08:39:01', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1737);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146154474800026', 6200022, 24, 1, 19, 62, 10002, 100, 0, 3, 0, '2016-04-25 08:39:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1738);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146155100400027', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-25 10:23:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '124.116.237.176', 1739);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146155100400028', 6200070, 69, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-25 10:23:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '124.116.237.176', 1740);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146155108900029', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-25 10:24:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '124.116.237.176', 1741);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146155108900030', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-25 10:24:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '124.116.237.176', 1742);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146155749600031', 6200104, 134, 0, 3, 19, 10000, 20, 0, 3, 0, '2016-04-25 12:11:36', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200104', 3, 1, 2, '0', 'cera point', '171.123.123.180', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156197300032', 6200111, 144, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-25 13:26:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200111', 3, 1, 1, '0', '', '183.224.156.157', 1743);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156198700033', 6200066, 64, 0, 1, 48, 10111, 50, 0, 3, 0, '2016-04-25 13:26:27', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '220.166.188.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156262700034', 6200111, 144, 0, 0, 4, 20001, 200, 0, 3, 0, '2016-04-25 13:37:07', 200, 0, 300, 200, 1, 1, 0, 1, 0, 0, 0, '6200111', 3, 1, 2, '0', '', '183.224.156.157', 1744);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400035', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1745);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400036', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1746);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400037', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1747);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400038', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1748);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400039', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1749);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400040', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1750);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400041', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1751);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400042', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1752);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400043', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1753);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400044', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1754);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400045', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1755);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400046', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1756);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400047', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1757);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400048', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1758);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400049', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1759);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156559400050', 6200007, 11, 3, 20, 70, 10600, 10, 0, 3, 0, '2016-04-25 14:26:34', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1760);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156560700051', 6200007, 11, 3, 20, 70, 10073, 100, 0, 3, 0, '2016-04-25 14:26:47', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.195.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156560700052', 6200007, 11, 3, 20, 70, 10073, 100, 0, 3, 0, '2016-04-25 14:26:47', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.195.221', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146156797200053', 6200047, 57, 0, 2, 56, 10073, 100, 0, 3, 0, '2016-04-25 15:06:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.21.107', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157136400054', 6200007, 11, 3, 20, 71, 10110, 180, 0, 3, 0, '2016-04-25 16:02:44', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.195.221', 1761);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157224800055', 6200044, 42, 0, 3, 48, 10111, 50, 0, 3, 0, '2016-04-25 16:17:28', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157228900056', 6200044, 42, 0, 3, 48, 10110, 180, 0, 3, 0, '2016-04-25 16:18:10', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157283100057', 6200051, 51, 5, 2, 15, 100227, 1760, 0, 3, 0, '2016-04-25 16:27:11', 1760, 0, 1, 1760, 1, 1, 0, 1, 0, 0, 0, '6200051', 3, 1, 2, '0', '', '125.114.146.45', 1762);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157536700058', 6200042, 41, 0, 17, 51, 10076, 320, 0, 3, 0, '2016-04-25 17:09:27', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1763);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157536700059', 6200042, 41, 0, 17, 51, 10076, 320, 0, 3, 0, '2016-04-25 17:09:27', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1764);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157541500060', 6200022, 24, 1, 19, 64, 10110, 180, 0, 3, 0, '2016-04-25 17:10:15', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.109.215', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157542000061', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:10:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1765);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700062', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1766);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700063', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1767);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700064', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1768);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700065', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1769);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700066', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1770);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700067', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1771);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700068', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1772);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157548700069', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:11:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1773);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157580000070', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:16:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1774);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157580000071', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:16:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1775);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157580000072', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:16:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1776);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157580000073', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:16:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1777);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157580000074', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:16:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1778);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157580000075', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:16:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1779);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157580000076', 6200022, 24, 1, 19, 64, 10073, 100, 0, 3, 0, '2016-04-25 17:16:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1780);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157649300077', 6200079, 145, 7, 0, 2, 10060, 100, 0, 3, 0, '2016-04-25 17:28:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '180.127.247.193', 1781);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157650000078', 6200079, 145, 7, 0, 2, 10061, 100, 0, 3, 0, '2016-04-25 17:28:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', '', '180.127.247.193', 1782);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157671100079', 6200022, 24, 1, 19, 65, 30005, 200, 0, 3, 0, '2016-04-25 17:31:52', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1783);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157689600080', 6200042, 41, 0, 17, 52, 10111, 50, 0, 3, 0, '2016-04-25 17:34:56', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1784);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157700600081', 6200042, 41, 0, 17, 53, 10110, 180, 0, 3, 0, '2016-04-25 17:36:46', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.140.116', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157730400082', 6200022, 24, 1, 19, 65, 10076, 320, 0, 3, 0, '2016-04-25 17:41:45', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1785);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157730400083', 6200022, 24, 1, 19, 65, 10076, 320, 0, 3, 0, '2016-04-25 17:41:45', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.109.215', 1786);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157734000084', 6200042, 41, 0, 17, 53, 10076, 320, 0, 3, 0, '2016-04-25 17:42:20', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.140.116', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157755000085', 6200042, 41, 0, 17, 53, 10154, 400, 0, 3, 0, '2016-04-25 17:45:50', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1787);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157772700086', 6200042, 41, 0, 17, 53, 10152, 40, 0, 3, 0, '2016-04-25 17:48:47', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1788);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157773600087', 6200042, 41, 0, 17, 53, 10152, 40, 0, 3, 0, '2016-04-25 17:48:56', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1789);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146157774500088', 6200042, 41, 0, 17, 53, 10151, 20, 0, 3, 0, '2016-04-25 17:49:05', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1790);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158156300089', 6200033, 31, 0, 1, 41, 10152, 40, 0, 3, 0, '2016-04-25 18:52:43', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', 'cera point', '218.15.215.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158324000090', 6200007, 11, 3, 20, 71, 10031, 140, 0, 3, 0, '2016-04-25 19:20:40', 140, 0, 10, 140, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1791);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158339300091', 6200007, 11, 3, 20, 71, 10600, 10, 0, 3, 0, '2016-04-25 19:23:13', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1792);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158339300092', 6200007, 11, 3, 20, 71, 10600, 10, 0, 3, 0, '2016-04-25 19:23:13', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1793);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158339300093', 6200007, 11, 3, 20, 71, 10601, 50, 0, 3, 0, '2016-04-25 19:23:13', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1794);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158340600094', 6200007, 11, 3, 20, 71, 10602, 100, 0, 3, 0, '2016-04-25 19:23:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1795);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158343600095', 6200007, 11, 3, 20, 71, 30000, 250, 0, 3, 0, '2016-04-25 19:23:56', 250, 0, 1, 250, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.14.157.91', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158386800096', 6200009, 16, 0, 19, 57, 10112, 1500, 0, 3, 0, '2016-04-25 19:31:08', 1500, 0, 50, 1500, 1, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', '', '182.118.68.37', 1796);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158404000097', 6200009, 16, 0, 19, 57, 10076, 320, 0, 3, 0, '2016-04-25 19:34:00', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158449000098', 6200033, 31, 0, 1, 43, 10152, 40, 0, 3, 0, '2016-04-25 19:41:30', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '218.15.215.232', 1797);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158483800099', 6200099, 121, 0, 4, 37, 10154, 400, 0, 3, 0, '2016-04-25 19:47:18', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', '', '125.113.24.57', 1798);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158496300100', 6200099, 121, 0, 4, 37, 10002, 100, 0, 3, 0, '2016-04-25 19:49:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', '', '125.113.24.57', 1799);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158554300101', 6200112, 147, 8, 0, 12, 10080, 100, 0, 3, 0, '2016-04-25 19:59:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 1, '0', '', '116.2.151.245', 1800);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158726800102', 6200112, 147, 8, 0, 13, 10066, 300, 0, 3, 0, '2016-04-25 20:27:48', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.245', 1801);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158789000103', 6200031, 28, 2, 19, 66, 10072, 360, 0, 3, 0, '2016-04-25 20:38:10', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1802);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158796200104', 6200031, 28, 2, 19, 66, 10113, 800, 0, 3, 0, '2016-04-25 20:39:22', 800, 0, 1, 800, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1803);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100105', 6200031, 28, 2, 19, 66, 10600, 10, 0, 3, 0, '2016-04-25 20:42:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1804);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100106', 6200031, 28, 2, 19, 66, 10600, 10, 0, 3, 0, '2016-04-25 20:42:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1805);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100107', 6200031, 28, 2, 19, 66, 10600, 10, 0, 3, 0, '2016-04-25 20:42:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1806);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100108', 6200031, 28, 2, 19, 66, 10600, 10, 0, 3, 0, '2016-04-25 20:42:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1807);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100109', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1808);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100110', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1809);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100111', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1810);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100112', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1811);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100113', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1812);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100114', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1813);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100115', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1814);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100116', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1815);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100117', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1816);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100118', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1817);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100119', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1818);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158814100120', 6200031, 28, 2, 19, 66, 10602, 100, 0, 3, 0, '2016-04-25 20:42:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1819);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146158859400121', 6200077, 123, 0, 2, 32, 10100, 180, 0, 3, 0, '2016-04-25 20:49:54', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.48', 1820);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159017500122', 6200033, 31, 0, 1, 44, 10152, 40, 0, 3, 0, '2016-04-25 21:16:15', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '218.15.215.232', 1821);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159030500123', 6200033, 31, 0, 1, 44, 10111, 50, 0, 3, 0, '2016-04-25 21:18:25', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', 'cera point', '218.15.215.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159105700124', 6200031, 28, 2, 19, 66, 10076, 320, 0, 3, 0, '2016-04-25 21:30:57', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159105700125', 6200031, 28, 2, 19, 66, 10076, 320, 0, 3, 0, '2016-04-25 21:30:57', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159105700126', 6200031, 28, 2, 19, 66, 10076, 320, 0, 3, 0, '2016-04-25 21:30:57', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159128300127', 6200007, 11, 3, 20, 72, 10112, 1500, 0, 3, 0, '2016-04-25 21:34:43', 1500, 0, 50, 1500, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1822);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159142600128', 6200077, 123, 0, 1, 33, 10070, 100, 0, 3, 0, '2016-04-25 21:37:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.48', 1823);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159231600129', 6200007, 11, 3, 20, 72, 10111, 50, 0, 3, 0, '2016-04-25 21:51:56', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1824);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159232000130', 6200007, 11, 3, 20, 72, 10110, 180, 0, 3, 0, '2016-04-25 21:52:00', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.157.91', 1825);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159338100131', 6200031, 28, 2, 19, 67, 10062, 380, 0, 3, 0, '2016-04-25 22:09:41', 380, 0, 1, 380, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159471500132', 6200057, 55, 0, 19, 58, 10110, 180, 0, 3, 0, '2016-04-25 22:31:55', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159612900133', 6200057, 55, 0, 19, 58, 10076, 320, 0, 3, 0, '2016-04-25 22:55:29', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1826);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159613700134', 6200057, 55, 0, 19, 58, 10066, 300, 0, 3, 0, '2016-04-25 22:55:37', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1827);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159618900135', 6200057, 55, 0, 19, 58, 10076, 320, 0, 3, 0, '2016-04-25 22:56:29', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1828);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159671300136', 6200031, 28, 2, 19, 67, 10110, 180, 0, 3, 0, '2016-04-25 23:05:13', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159671300137', 6200031, 28, 2, 19, 67, 10111, 50, 0, 3, 0, '2016-04-25 23:05:13', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159695400138', 6200001, 6, 0, 1, 43, 10110, 180, 0, 3, 0, '2016-04-25 23:09:14', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.69.225', 1829);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159720400139', 6200106, 136, 0, 1, 30, 10060, 100, 0, 3, 0, '2016-04-25 23:13:24', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200106', 3, 1, 2, '0', 'cera point', '49.67.243.60', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159722000140', 6200106, 136, 0, 1, 30, 10061, 100, 0, 3, 0, '2016-04-25 23:13:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200106', 3, 1, 2, '0', 'cera point', '49.67.243.60', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159726800141', 6200001, 6, 0, 1, 43, 10111, 50, 0, 3, 0, '2016-04-25 23:14:28', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.69.225', 1830);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159753200142', 6200057, 55, 0, 19, 59, 10073, 100, 0, 3, 0, '2016-04-25 23:18:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1831);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159753200143', 6200057, 55, 0, 19, 59, 10073, 100, 0, 3, 0, '2016-04-25 23:18:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1832);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159753200144', 6200057, 55, 0, 19, 59, 10073, 100, 0, 3, 0, '2016-04-25 23:18:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1833);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159753200145', 6200057, 55, 0, 19, 59, 10073, 100, 0, 3, 0, '2016-04-25 23:18:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1834);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159753200146', 6200057, 55, 0, 19, 59, 10073, 100, 0, 3, 0, '2016-04-25 23:18:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1835);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159820800147', 6200077, 123, 0, 1, 35, 10000, 20, 0, 3, 0, '2016-04-25 23:30:08', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.48', 1836);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159821600148', 6200077, 123, 0, 1, 35, 10001, 60, 0, 3, 0, '2016-04-25 23:30:16', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', 'cera point', '183.6.225.48', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159822100149', 6200077, 123, 0, 1, 35, 10002, 100, 0, 3, 0, '2016-04-25 23:30:21', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', 'cera point', '183.6.225.48', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159843800150', 6200058, 148, 3, 0, 2, 10000, 20, 0, 3, 0, '2016-04-25 23:33:58', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '182.151.140.85', 1837);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146159860400151', 6200059, 103, 0, 3, 18, 100350, 960, 0, 3, 0, '2016-04-25 23:36:44', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.32.200', 1838);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160025000152', 6200077, 149, 3, 0, 3, 10073, 100, 0, 3, 0, '2016-04-26 00:04:11', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', 'cera point', '183.6.225.48', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160111000153', 6200113, 150, 0, 0, 3, 10080, 100, 0, 3, 0, '2016-04-26 00:18:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 1, '0', '', '61.131.87.235', 1839);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160116700154', 6200113, 150, 0, 0, 3, 10000, 20, 0, 3, 0, '2016-04-26 00:19:27', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.87.235', 1840);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160117300155', 6200113, 150, 0, 0, 3, 10001, 60, 0, 3, 0, '2016-04-26 00:19:33', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.87.235', 1841);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160117900156', 6200113, 150, 0, 0, 3, 10002, 100, 0, 3, 0, '2016-04-26 00:19:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.87.235', 1842);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160118600157', 6200113, 150, 0, 0, 3, 10003, 140, 0, 3, 0, '2016-04-26 00:19:46', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.87.235', 1843);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160119200158', 6200113, 150, 0, 0, 3, 10004, 180, 0, 3, 0, '2016-04-26 00:19:52', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.87.235', 1844);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160122200159', 6200113, 150, 0, 0, 3, 10005, 220, 0, 3, 0, '2016-04-26 00:20:22', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.87.235', 1845);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160122900160', 6200113, 150, 0, 0, 3, 10006, 260, 0, 3, 0, '2016-04-26 00:20:29', 260, 0, 1, 260, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.87.235', 1846);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160138700161', 6200057, 55, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 00:23:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1847);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160138700162', 6200057, 55, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 00:23:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1848);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160138700163', 6200057, 55, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 00:23:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1849);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160138700164', 6200057, 55, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 00:23:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1850);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160138700165', 6200057, 55, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 00:23:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1851);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160143000166', 6200057, 55, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 00:23:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1852);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160143000167', 6200057, 55, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 00:23:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1853);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160253900168', 6200077, 149, 3, 0, 10, 10060, 100, 0, 3, 0, '2016-04-26 00:42:19', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', 'cera point', '183.6.225.48', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160455500169', 6200022, 21, 2, 20, 51, 10073, 100, 0, 3, 0, '2016-04-26 01:15:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.114.43', 1854);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160563700170', 6200057, 55, 0, 19, 61, 10112, 1500, 0, 3, 0, '2016-04-26 01:33:57', 1500, 0, 50, 1500, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1855);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160567800171', 6200057, 55, 0, 19, 61, 10113, 800, 0, 3, 0, '2016-04-26 01:34:38', 800, 0, 1, 800, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1856);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160641500172', 6200057, 55, 0, 19, 61, 10073, 100, 0, 3, 0, '2016-04-26 01:46:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1857);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160641500173', 6200057, 55, 0, 19, 61, 10073, 100, 0, 3, 0, '2016-04-26 01:46:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1858);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160641500174', 6200057, 55, 0, 19, 61, 10073, 100, 0, 3, 0, '2016-04-26 01:46:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1859);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160641500175', 6200057, 55, 0, 19, 61, 10073, 100, 0, 3, 0, '2016-04-26 01:46:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1860);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160641500176', 6200057, 55, 0, 19, 61, 10073, 100, 0, 3, 0, '2016-04-26 01:46:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1861);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160663100177', 6200031, 109, 4, 0, 9, 100224, 1760, 0, 3, 0, '2016-04-26 01:50:31', 1760, 0, 1, 1760, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160663700178', 6200031, 109, 4, 0, 9, 10060, 100, 0, 3, 0, '2016-04-26 01:50:37', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160684700179', 6200057, 55, 0, 19, 61, 10073, 100, 1, 3, 0, '2016-04-26 01:54:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1862);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160684700180', 6200057, 55, 0, 19, 61, 10073, 100, 1, 3, 0, '2016-04-26 01:54:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1863);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160684700181', 6200057, 55, 0, 19, 61, 10073, 100, 1, 3, 0, '2016-04-26 01:54:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1864);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160684700182', 6200057, 55, 0, 19, 61, 10073, 100, 1, 3, 0, '2016-04-26 01:54:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1865);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160684700183', 6200057, 55, 0, 19, 61, 10073, 100, 1, 3, 0, '2016-04-26 01:54:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1866);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160857500184', 6200057, 55, 0, 19, 61, 100213, 1760, 0, 3, 0, '2016-04-26 02:22:55', 1760, 0, 1, 1760, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.239', 1867);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160870200185', 6200114, 153, 2, 0, 2, 10073, 100, 0, 3, 0, '2016-04-26 02:25:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200114', 3, 1, 1, '0', '', '114.221.100.69', 1868);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160872500186', 6200114, 153, 2, 0, 2, 10080, 100, 0, 3, 0, '2016-04-26 02:25:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200114', 3, 1, 2, '0', '', '114.221.100.69', 1869);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160873700187', 6200114, 153, 2, 0, 2, 10060, 100, 0, 3, 0, '2016-04-26 02:25:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200114', 3, 1, 2, '0', '', '114.221.100.69', 1870);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146160874600188', 6200114, 153, 2, 0, 2, 10061, 100, 0, 3, 0, '2016-04-26 02:25:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200114', 3, 1, 2, '0', '', '114.221.100.69', 1871);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146161298000189', 6200031, 109, 4, 3, 23, 10061, 100, 0, 3, 0, '2016-04-26 03:36:20', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146161302500190', 6200031, 109, 4, 3, 23, 10000, 20, 0, 3, 0, '2016-04-26 03:37:05', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163045700191', 6200070, 69, 0, 0, 13, 10073, 100, 0, 3, 0, '2016-04-26 08:27:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '124.116.237.176', 1872);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163045700192', 6200070, 69, 0, 0, 13, 10073, 100, 0, 3, 0, '2016-04-26 08:27:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '124.116.237.176', 1873);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163055700193', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-26 08:29:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '124.116.237.176', 1874);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163055700194', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-26 08:29:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '124.116.237.176', 1875);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163341800195', 6200011, 18, 2, 17, 58, 10001, 60, 0, 3, 0, '2016-04-26 09:16:58', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '124.116.237.176', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163679200196', 6200044, 42, 0, 3, 51, 10073, 100, 0, 3, 0, '2016-04-26 10:13:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163687200197', 6200044, 42, 0, 3, 51, 10073, 100, 0, 3, 0, '2016-04-26 10:14:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', '', '27.203.97.145', 1876);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163706200198', 6200044, 42, 0, 3, 51, 10073, 100, 0, 3, 0, '2016-04-26 10:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', '', '27.203.97.145', 1877);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163706200199', 6200044, 42, 0, 3, 51, 10073, 100, 0, 3, 0, '2016-04-26 10:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', '', '27.203.97.145', 1878);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163858400200', 6200024, 98, 0, 4, 17, 10100, 180, 0, 3, 0, '2016-04-26 10:43:04', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.180.10', 1879);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146163996700201', 6200028, 26, 2, 2, 45, 100203, 11760, 0, 3, 0, '2016-04-26 11:06:07', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.228.90.111', 1880);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146164216100202', 6200042, 41, 0, 17, 56, 10110, 180, 0, 3, 0, '2016-04-26 11:42:41', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.140.116', 1881);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146164461500203', 6200007, 11, 3, 20, 73, 10110, 180, 0, 3, 0, '2016-04-26 12:23:35', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.164.57', 1882);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146164462000204', 6200007, 11, 3, 20, 73, 10111, 50, 0, 3, 0, '2016-04-26 12:23:40', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.164.57', 1883);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165007000205', 6200028, 26, 2, 2, 49, 10110, 180, 0, 3, 0, '2016-04-26 13:54:30', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.228.90.111', 1884);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600206', 6200047, 57, 0, 18, 59, 10600, 10, 0, 3, 0, '2016-04-26 14:04:56', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1885);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600207', 6200047, 57, 0, 18, 59, 10600, 10, 0, 3, 0, '2016-04-26 14:04:56', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1886);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600208', 6200047, 57, 0, 18, 59, 10600, 10, 0, 3, 0, '2016-04-26 14:04:56', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1887);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600209', 6200047, 57, 0, 18, 59, 10600, 10, 0, 3, 0, '2016-04-26 14:04:56', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1888);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600210', 6200047, 57, 0, 18, 59, 10601, 50, 0, 3, 0, '2016-04-26 14:04:56', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1889);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600211', 6200047, 57, 0, 18, 59, 10602, 100, 0, 3, 0, '2016-04-26 14:04:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1890);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600212', 6200047, 57, 0, 18, 59, 10602, 100, 0, 3, 0, '2016-04-26 14:04:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1891);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600213', 6200047, 57, 0, 18, 59, 10602, 100, 0, 3, 0, '2016-04-26 14:04:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1892);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165069600214', 6200047, 57, 0, 18, 59, 10602, 100, 0, 3, 0, '2016-04-26 14:04:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.34', 1893);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146165156000215', 6200037, 34, 1, 1, 50, 10073, 100, 0, 3, 0, '2016-04-26 14:19:20', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.85.47', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166071400216', 6200022, 21, 2, 20, 54, 10076, 320, 0, 3, 0, '2016-04-26 16:51:54', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.104.111', 1894);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166071400217', 6200022, 21, 2, 20, 54, 10076, 320, 0, 3, 0, '2016-04-26 16:51:54', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.104.111', 1895);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166131600218', 6200041, 40, 1, 2, 39, 9500, 50, 0, 3, 0, '2016-04-26 17:01:56', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.250.130', 1896);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166135700219', 6200031, 28, 2, 19, 69, 10004, 180, 0, 3, 0, '2016-04-26 17:02:37', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166221600220', 6200083, 85, 0, 1, 51, 10076, 320, 0, 3, 0, '2016-04-26 17:16:56', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.213', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166343000221', 6200007, 11, 3, 20, 73, 10154, 400, 0, 3, 0, '2016-04-26 17:37:10', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.162.230', 1897);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166630800222', 6200057, 55, 0, 19, 61, 10076, 320, 0, 3, 0, '2016-04-26 18:25:08', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.213', 1898);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166630800223', 6200057, 55, 0, 19, 61, 10076, 320, 0, 3, 0, '2016-04-26 18:25:08', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.213', 1899);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166652500224', 6200047, 67, 4, 2, 58, 10073, 100, 0, 3, 0, '2016-04-26 18:28:45', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.18.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166875800225', 6200031, 28, 2, 19, 69, 10110, 180, 0, 3, 0, '2016-04-26 19:05:58', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166875800226', 6200031, 28, 2, 19, 69, 10111, 50, 0, 3, 0, '2016-04-26 19:05:58', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', 'cera point', '110.184.67.52', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166978900227', 6200062, 65, 5, 2, 34, 30015, 200, 0, 3, 0, '2016-04-26 19:23:09', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 2, '0', '', '119.129.70.152', 1900);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166979500228', 6200062, 65, 5, 2, 34, 10600, 10, 0, 3, 0, '2016-04-26 19:23:15', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 2, '0', '', '119.129.70.152', 1901);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146166979900229', 6200062, 65, 5, 2, 34, 10600, 10, 0, 3, 0, '2016-04-26 19:23:19', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 2, '0', '', '119.129.70.152', 1902);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167054700230', 6200099, 121, 0, 4, 41, 10150, 5, 0, 3, 0, '2016-04-26 19:35:47', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', '', '60.182.206.22', 1903);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167061200231', 6200099, 121, 0, 4, 41, 10076, 320, 0, 3, 0, '2016-04-26 19:36:52', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', '', '60.182.206.22', 1904);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167085600232', 6200057, 55, 0, 19, 61, 10110, 180, 0, 3, 0, '2016-04-26 19:40:56', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.51.213', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167154500233', 6200031, 28, 2, 19, 69, 10112, 1500, 0, 3, 0, '2016-04-26 19:52:25', 1500, 0, 50, 1500, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1905);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500234', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500235', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500236', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500237', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500238', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500239', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500240', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:56', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500241', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:56', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500242', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:56', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167157500243', 6200009, 16, 0, 19, 60, 10073, 100, 0, 3, 0, '2016-04-26 19:52:56', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200244', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1906);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200245', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1907);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200246', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1908);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200247', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1909);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200248', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1910);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200249', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1911);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200250', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1912);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200251', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1913);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200252', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1914);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200253', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1915);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200254', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1916);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200255', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1917);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200256', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1918);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200257', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1919);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167163200258', 6200031, 28, 2, 19, 69, 10073, 100, 0, 3, 0, '2016-04-26 19:53:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1920);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800259', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1921);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800260', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1922);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800261', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1923);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800262', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1924);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800263', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1925);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800264', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1926);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800265', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1927);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800266', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1928);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800267', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1929);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800268', 6200031, 28, 2, 19, 69, 10067, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1930);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800269', 6200031, 28, 2, 19, 69, 10068, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1931);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800270', 6200031, 28, 2, 19, 69, 10068, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1932);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800271', 6200031, 28, 2, 19, 69, 10068, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1933);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800272', 6200031, 28, 2, 19, 69, 10068, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1934);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167252800273', 6200031, 28, 2, 19, 69, 10068, 20, 0, 3, 0, '2016-04-26 20:08:48', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1935);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167272800274', 6200001, 6, 0, 1, 46, 10211, 300, 0, 3, 0, '2016-04-26 20:12:08', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.252', 1936);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167330000275', 6200001, 6, 0, 1, 47, 10012, 320, 0, 3, 0, '2016-04-26 20:21:40', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.252', 1937);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167503500276', 6200112, 147, 8, 2, 30, 10110, 180, 0, 3, 0, '2016-04-26 20:50:35', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.245', 1938);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167582200277', 6200057, 55, 0, 19, 62, 10076, 320, 0, 3, 0, '2016-04-26 21:03:42', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.51.213', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167597800278', 6200007, 11, 3, 20, 74, 10111, 50, 0, 3, 0, '2016-04-26 21:06:19', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.162.230', 1939);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167663700279', 6200116, 156, 0, 0, 7, 100350, 960, 0, 3, 0, '2016-04-26 21:17:17', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 1, '0', '', '180.170.148.178', 1940);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167704200280', 6200116, 156, 0, 0, 7, 10000, 20, 0, 3, 0, '2016-04-26 21:24:02', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1941);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167705200281', 6200116, 156, 0, 0, 7, 10080, 100, 0, 3, 0, '2016-04-26 21:24:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1942);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167706300282', 6200116, 156, 0, 0, 7, 10060, 100, 0, 3, 0, '2016-04-26 21:24:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1943);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167706800283', 6200116, 156, 0, 0, 7, 10061, 100, 0, 3, 0, '2016-04-26 21:24:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1944);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167707800284', 6200116, 156, 0, 0, 7, 10073, 100, 0, 3, 0, '2016-04-26 21:24:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1945);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167782600285', 6200031, 109, 4, 3, 31, 10100, 180, 0, 3, 0, '2016-04-26 21:37:06', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1946);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167786500286', 6200031, 109, 4, 4, 31, 10154, 400, 0, 3, 0, '2016-04-26 21:37:45', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1947);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167786500287', 6200031, 109, 4, 4, 31, 10154, 400, 0, 3, 0, '2016-04-26 21:37:45', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1948);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167786500288', 6200031, 109, 4, 4, 31, 10154, 400, 0, 3, 0, '2016-04-26 21:37:45', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1949);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167786700289', 6200116, 156, 0, 0, 9, 30005, 200, 0, 3, 0, '2016-04-26 21:37:47', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1950);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167786700290', 6200116, 156, 0, 0, 9, 30015, 200, 0, 3, 0, '2016-04-26 21:37:47', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1951);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167799300291', 6200031, 109, 4, 4, 31, 10070, 100, 0, 3, 0, '2016-04-26 21:39:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200031', 3, 1, 2, '0', '', '110.184.67.52', 1952);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167833100292', 6200007, 11, 3, 20, 74, 10110, 180, 0, 3, 0, '2016-04-26 21:45:31', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.162.230', 1953);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167877200293', 6200036, 86, 5, 3, 47, 10001, 60, 0, 3, 0, '2016-04-26 21:52:52', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.122', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146167926100294', 6200057, 55, 0, 19, 63, 10073, 100, 0, 3, 0, '2016-04-26 22:01:01', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.51.213', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100295', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1954);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100296', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1955);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100297', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1956);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100298', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1957);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100299', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1958);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100300', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1959);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100301', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1960);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100302', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1961);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100303', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1962);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100304', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1963);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100305', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1964);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100306', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1965);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100307', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1966);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100308', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1967);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100309', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1968);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100310', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1969);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100311', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1970);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100312', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1971);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100313', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1972);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100314', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1973);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100315', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1974);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168106100316', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:31:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1975);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168116400317', 6200116, 159, 3, 0, 1, 100369, 960, 0, 3, 0, '2016-04-26 22:32:44', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1976);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168126500318', 6200116, 159, 3, 0, 1, 10073, 100, 0, 3, 0, '2016-04-26 22:34:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 1977);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700319', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1978);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700320', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1979);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700321', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1980);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700322', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1981);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700323', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1982);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700324', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1983);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700325', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1984);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700326', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1985);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700327', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1986);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700328', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1987);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700329', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1988);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700330', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1989);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700331', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1990);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700332', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1991);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700333', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1992);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700334', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1993);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700335', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1994);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700336', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1995);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700337', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1996);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168226700338', 6200058, 56, 0, 19, 55, 10073, 100, 0, 3, 0, '2016-04-26 22:51:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 1997);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168231400339', 6200057, 55, 0, 19, 63, 10152, 40, 0, 3, 0, '2016-04-26 22:51:54', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.213', 1998);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168253400340', 6200011, 18, 2, 17, 60, 30005, 200, 0, 3, 0, '2016-04-26 22:55:34', 200, 0, 1, 200, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.226.1', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168288500341', 6200057, 55, 0, 19, 63, 1800010, 90, 0, 3, 0, '2016-04-26 23:01:25', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.51.213', 1999);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168339200342', 6200001, 6, 0, 17, 50, 10111, 50, 0, 3, 0, '2016-04-26 23:09:52', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.252', 2000);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168340400343', 6200001, 6, 0, 17, 50, 10110, 180, 0, 3, 0, '2016-04-26 23:10:04', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.252', 2001);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168345100344', 6200118, 160, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-26 23:10:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200118', 3, 1, 1, '0', '', '211.157.169.42', 2002);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168345500345', 6200118, 160, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-26 23:10:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200118', 3, 1, 2, '0', '', '211.157.169.42', 2003);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168346300346', 6200118, 160, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-26 23:11:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200118', 3, 1, 2, '0', '', '211.157.169.42', 2004);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168598100347', 6200050, 127, 3, 2, 34, 10000, 20, 0, 3, 0, '2016-04-26 23:53:01', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', '', '119.122.18.112', 2005);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168616800348', 6200116, 159, 3, 0, 3, 10060, 100, 0, 3, 0, '2016-04-26 23:56:08', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168617600349', 6200116, 159, 3, 0, 3, 10061, 100, 0, 3, 0, '2016-04-26 23:56:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2006);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168752100350', 6200116, 161, 0, 0, 1, 100329, 960, 0, 3, 0, '2016-04-27 00:18:41', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168753600351', 6200116, 161, 0, 0, 1, 10073, 100, 0, 3, 0, '2016-04-27 00:18:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2007);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168754000352', 6200116, 161, 0, 0, 1, 10060, 100, 0, 3, 0, '2016-04-27 00:19:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2008);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168767600353', 6200116, 161, 0, 0, 1, 100351, 960, 0, 3, 0, '2016-04-27 00:21:16', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168938000354', 6200079, 75, 0, 1, 18, 10073, 100, 0, 3, 0, '2016-04-27 00:49:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', 'cera point', '49.88.163.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168949000355', 6200079, 142, 3, 2, 17, 10073, 100, 0, 3, 0, '2016-04-27 00:51:30', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200079', 3, 1, 2, '0', 'cera point', '49.88.163.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146168992200356', 6200077, 149, 3, 2, 28, 10000, 20, 0, 3, 0, '2016-04-27 00:58:42', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.48', 2009);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900357', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 1, '0', '', '61.141.127.236', 2010);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900358', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2011);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900359', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2012);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900360', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2013);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900361', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2014);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900362', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2015);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900363', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2016);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900364', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2017);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900365', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2018);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169043900366', 6200119, 162, 5, 0, 1, 10602, 100, 1, 3, 0, '2016-04-27 01:07:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2019);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169052100367', 6200050, 127, 3, 2, 34, 100369, 960, 0, 3, 0, '2016-04-27 01:08:41', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '61.141.127.236', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169081000368', 6200050, 127, 3, 2, 34, 10073, 100, 0, 3, 0, '2016-04-27 01:13:30', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200050', 3, 1, 2, '0', 'cera point', '61.141.127.236', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169088000369', 6200119, 162, 5, 0, 1, 10080, 100, 0, 3, 0, '2016-04-27 01:14:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200119', 3, 1, 2, '0', '', '61.141.127.236', 2020);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169139100370', 6200120, 163, 5, 0, 1, 10080, 100, 0, 3, 0, '2016-04-27 01:23:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200120', 3, 1, 1, '0', '', '61.141.127.236', 2021);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146169231500371', 6200077, 149, 3, 2, 30, 9100, 5, 0, 3, 0, '2016-04-27 01:38:36', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '183.6.225.48', 2022);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000372', 6200047, 57, 0, 18, 61, 10601, 50, 0, 3, 0, '2016-04-27 09:52:20', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2023);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000373', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2024);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000374', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2025);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000375', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2026);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000376', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2027);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000377', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2028);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000378', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2029);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000379', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2030);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172194000380', 6200047, 57, 0, 18, 61, 10602, 100, 0, 3, 0, '2016-04-27 09:52:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.29.190', 2031);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172333400381', 6200122, 164, 1, 0, 2, 10080, 100, 0, 3, 0, '2016-04-27 10:15:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200122', 3, 1, 1, '0', '', '219.144.192.211', 2032);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172339300382', 6200122, 164, 1, 0, 2, 10073, 100, 0, 3, 0, '2016-04-27 10:16:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200122', 3, 1, 2, '0', '', '219.144.192.211', 2033);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172341000383', 6200122, 164, 1, 0, 2, 100352, 960, 0, 3, 0, '2016-04-27 10:16:50', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200122', 3, 1, 2, '0', '', '219.144.192.211', 2034);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172573600384', 6200121, 165, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-27 10:55:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 1, '0', '', '112.5.236.126', 2035);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172575100385', 6200121, 165, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-04-27 10:55:51', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2036);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172575500386', 6200121, 165, 0, 0, 2, 10001, 60, 0, 3, 0, '2016-04-27 10:55:55', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2037);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172576100387', 6200121, 165, 0, 0, 2, 10002, 100, 0, 3, 0, '2016-04-27 10:56:01', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2038);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172618900388', 6200121, 165, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-27 11:03:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2039);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146172619700389', 6200121, 165, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-27 11:03:17', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2040);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173064500390', 6200047, 57, 0, 18, 61, 10073, 100, 0, 3, 0, '2016-04-27 12:17:25', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173122700391', 6200047, 57, 0, 18, 61, 10073, 100, 0, 3, 0, '2016-04-27 12:27:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173127200392', 6200047, 67, 4, 2, 58, 10060, 100, 0, 3, 0, '2016-04-27 12:27:52', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173127800393', 6200047, 67, 4, 2, 58, 10061, 100, 0, 3, 0, '2016-04-27 12:27:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173208100394', 6200007, 11, 3, 20, 75, 10113, 800, 0, 3, 0, '2016-04-27 12:41:21', 800, 0, 1, 800, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.193.33', 2041);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173245200395', 6200073, 72, 0, 3, 41, 10602, 100, 0, 3, 0, '2016-04-27 12:47:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2042);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173251000396', 6200073, 72, 0, 3, 41, 10153, 200, 0, 3, 0, '2016-04-27 12:48:30', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', 'cera point', '125.110.55.83', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173258500397', 6200073, 72, 0, 3, 41, 10153, 200, 0, 3, 0, '2016-04-27 12:49:45', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', 'cera point', '125.110.55.83', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173261900398', 6200073, 72, 0, 3, 41, 10600, 10, 0, 3, 0, '2016-04-27 12:50:19', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2043);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173262200399', 6200073, 72, 0, 3, 41, 10600, 10, 0, 3, 0, '2016-04-27 12:50:22', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2044);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173262600400', 6200073, 72, 0, 3, 41, 10600, 10, 0, 3, 0, '2016-04-27 12:50:26', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2045);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173263000401', 6200073, 72, 0, 3, 41, 10600, 10, 0, 3, 0, '2016-04-27 12:50:30', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2046);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173263500402', 6200073, 72, 0, 3, 41, 10153, 200, 0, 3, 0, '2016-04-27 12:50:35', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2047);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173359200403', 6200073, 72, 0, 3, 41, 10073, 100, 0, 3, 0, '2016-04-27 13:06:32', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', 'cera point', '125.110.55.83', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173359800404', 6200073, 72, 0, 3, 41, 10073, 100, 0, 3, 0, '2016-04-27 13:06:38', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', 'cera point', '125.110.55.83', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173450300405', 6200073, 72, 0, 3, 41, 10073, 100, 0, 3, 0, '2016-04-27 13:21:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2048);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173508200406', 6200028, 26, 2, 18, 50, 30025, 200, 0, 3, 0, '2016-04-27 13:31:22', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.227.132.79', 2049);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173536200407', 6200073, 72, 0, 3, 41, 10080, 100, 0, 3, 0, '2016-04-27 13:36:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2050);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173543800408', 6200073, 72, 0, 3, 41, 10073, 100, 0, 3, 0, '2016-04-27 13:37:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2051);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173558200409', 6200073, 72, 0, 3, 41, 100348, 960, 0, 3, 0, '2016-04-27 13:39:42', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.55.83', 2052);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173790600410', 6200042, 41, 0, 17, 57, 10073, 100, 0, 3, 0, '2016-04-27 14:18:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.127.164', 2053);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173791000411', 6200042, 41, 0, 17, 57, 10073, 100, 0, 3, 0, '2016-04-27 14:18:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.127.164', 2054);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173791500412', 6200042, 41, 0, 17, 57, 10073, 100, 0, 3, 0, '2016-04-27 14:18:35', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.127.164', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173791900413', 6200042, 41, 0, 17, 57, 10073, 100, 0, 3, 0, '2016-04-27 14:18:39', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', 'cera point', '119.248.127.164', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173938700414', 6200007, 11, 3, 20, 75, 10111, 50, 0, 3, 0, '2016-04-27 14:43:07', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.193.33', 2055);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173941800415', 6200007, 11, 3, 20, 75, 10110, 180, 0, 3, 0, '2016-04-27 14:43:38', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.193.33', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173943200416', 6200051, 51, 5, 2, 34, 10000, 20, 0, 3, 0, '2016-04-27 14:43:52', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200051', 3, 1, 2, '0', '', '125.114.147.223', 2056);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146173987900417', 6200028, 26, 2, 18, 51, 10003, 140, 0, 3, 0, '2016-04-27 14:51:19', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '114.227.132.79', 2057);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174083600418', 6200051, 51, 5, 2, 35, 10001, 60, 0, 3, 0, '2016-04-27 15:07:16', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200051', 3, 1, 2, '0', '', '125.114.147.223', 2058);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174202200419', 6200047, 67, 4, 2, 61, 10073, 100, 0, 3, 0, '2016-04-27 15:27:03', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174203700420', 6200047, 67, 4, 2, 61, 10073, 100, 0, 3, 0, '2016-04-27 15:27:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174204100421', 6200047, 67, 4, 2, 61, 10073, 100, 0, 3, 0, '2016-04-27 15:27:21', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174315600422', 6200047, 67, 4, 2, 61, 10073, 100, 0, 3, 0, '2016-04-27 15:45:56', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174392900423', 6200047, 67, 4, 2, 61, 10073, 100, 0, 3, 0, '2016-04-27 15:58:49', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174401700424', 6200047, 67, 4, 2, 61, 31000, 240, 0, 3, 0, '2016-04-27 16:00:18', 240, 0, 1, 240, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.59', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174568200425', 6200097, 166, 4, 0, 1, 10053, 15, 0, 3, 0, '2016-04-27 16:28:02', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200097', 3, 1, 2, '0', '', '219.155.84.129', 2059);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174619900426', 6200097, 166, 4, 0, 2, 10073, 100, 0, 3, 0, '2016-04-27 16:36:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200097', 3, 1, 2, '0', '', '219.155.84.129', 2060);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146174864000427', 6200116, 156, 0, 3, 31, 10154, 400, 0, 3, 0, '2016-04-27 17:17:20', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175328700428', 6200125, 167, 5, 0, 4, 10080, 100, 0, 3, 0, '2016-04-27 18:34:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 1, '0', '', '114.239.7.6', 2061);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175353500429', 6200125, 167, 5, 0, 4, 10073, 100, 0, 3, 0, '2016-04-27 18:38:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2062);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175446300430', 6200125, 167, 5, 0, 4, 30001, 80, 0, 3, 0, '2016-04-27 18:54:23', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2063);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175446600431', 6200125, 167, 5, 0, 4, 30011, 80, 0, 3, 0, '2016-04-27 18:54:26', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2064);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000432', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2065);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000433', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2066);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000434', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2067);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000435', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2068);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000436', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2069);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000437', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2070);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000438', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2071);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000439', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2072);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546000440', 6200125, 167, 5, 0, 5, 10602, 100, 0, 3, 0, '2016-04-27 19:11:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2073);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546400441', 6200125, 167, 5, 0, 5, 10600, 10, 0, 3, 0, '2016-04-27 19:11:04', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2074);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175546700442', 6200125, 167, 5, 0, 5, 10600, 10, 0, 3, 0, '2016-04-27 19:11:07', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2075);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175550500443', 6200112, 147, 8, 2, 34, 10001, 60, 0, 3, 0, '2016-04-27 19:11:45', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.245', 2076);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175551100444', 6200125, 167, 5, 0, 5, 10600, 10, 0, 3, 0, '2016-04-27 19:11:51', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2077);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175551400445', 6200125, 167, 5, 0, 5, 10600, 10, 0, 3, 0, '2016-04-27 19:11:54', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2078);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175557200446', 6200125, 167, 5, 0, 5, 100362, 960, 0, 3, 0, '2016-04-27 19:12:52', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.7.6', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175621600447', 6200116, 161, 0, 0, 13, 10073, 100, 0, 3, 0, '2016-04-27 19:23:36', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175644100448', 6200112, 147, 8, 2, 35, 10060, 100, 0, 3, 0, '2016-04-27 19:27:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.245', 2079);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175848200449', 6200082, 97, 8, 2, 28, 10150, 5, 0, 3, 0, '2016-04-27 20:01:22', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.229', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175848200450', 6200082, 97, 8, 2, 28, 10150, 5, 0, 3, 0, '2016-04-27 20:01:22', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.229', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175851400451', 6200082, 97, 8, 2, 28, 10150, 5, 0, 3, 0, '2016-04-27 20:01:54', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.229', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175851400452', 6200082, 97, 8, 2, 28, 10150, 5, 0, 3, 0, '2016-04-27 20:01:54', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.229', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175851400453', 6200082, 97, 8, 2, 28, 10150, 5, 0, 3, 0, '2016-04-27 20:01:54', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.229', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175851400454', 6200082, 97, 8, 2, 28, 10150, 5, 0, 3, 0, '2016-04-27 20:01:54', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.229', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146175914300455', 6200024, 98, 0, 3, 35, 10011, 180, 0, 3, 0, '2016-04-27 20:12:24', 180, 0, 100, 180, 3, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', 'cera point', '182.133.181.131', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146176506300456', 6200125, 167, 5, 4, 23, 10073, 100, 0, 3, 0, '2016-04-27 21:51:03', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.7.6', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146176785800457', 6200007, 11, 3, 20, 76, 10111, 50, 0, 3, 0, '2016-04-27 22:37:38', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '14.153.193.33', 2080);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146176819200458', 6200036, 86, 5, 3, 49, 10060, 100, 0, 3, 0, '2016-04-27 22:43:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.98', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146176821300459', 6200033, 31, 0, 1, 48, 10600, 10, 0, 3, 0, '2016-04-27 22:43:33', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '218.15.214.67', 2081);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146176821300460', 6200033, 31, 0, 1, 48, 10600, 10, 0, 3, 0, '2016-04-27 22:43:33', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '218.15.214.67', 2082);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146176822300461', 6200033, 31, 0, 1, 48, 10153, 200, 0, 3, 0, '2016-04-27 22:43:43', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', 'cera point', '218.15.214.67', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146176998600462', 6200036, 86, 5, 3, 50, 10073, 100, 0, 3, 0, '2016-04-27 23:13:06', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.98', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177156200463', 6200001, 6, 0, 17, 57, 10110, 180, 0, 3, 0, '2016-04-27 23:39:22', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.46', 2083);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177156600464', 6200001, 6, 0, 17, 57, 10111, 50, 0, 3, 0, '2016-04-27 23:39:26', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.46', 2084);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177188000465', 6200036, 86, 5, 3, 50, 10073, 100, 0, 3, 0, '2016-04-27 23:44:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.98', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177220400466', 6200121, 170, 3, 0, 2, 30025, 200, 0, 3, 0, '2016-04-27 23:50:04', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2085);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177233600467', 6200041, 40, 1, 2, 40, 9501, 200, 0, 3, 0, '2016-04-27 23:52:16', 200, 0, 5, 200, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.250.130', 2086);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177238400468', 6200041, 40, 1, 2, 40, 10121, 100, 0, 3, 0, '2016-04-27 23:53:04', 100, 0, 5, 100, 1, 1, 0, 1, 0, 0, 0, '6200041', 3, 1, 2, '0', '', '222.241.250.130', 2087);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177467600469', 6200121, 170, 3, 0, 12, 10000, 20, 0, 3, 0, '2016-04-28 00:31:16', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2088);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177495000470', 6200033, 31, 0, 1, 50, 10152, 40, 0, 3, 0, '2016-04-28 00:35:50', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', '', '218.15.214.67', 2089);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177497000471', 6200033, 31, 0, 1, 50, 10152, 40, 0, 3, 0, '2016-04-28 00:36:10', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200033', 3, 1, 2, '0', 'cera point', '218.15.214.67', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177529000472', 6200127, 171, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-28 00:41:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 1, '0', '', '61.158.84.196', 2090);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177529000473', 6200127, 171, 0, 0, 2, 100351, 960, 0, 3, 0, '2016-04-28 00:41:30', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.196', 2091);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146177546500474', 6200127, 171, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-28 00:44:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.196', 2092);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146178927800475', 6200083, 154, 3, 2, 33, 10060, 100, 0, 3, 0, '2016-04-28 04:34:38', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.177.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146178928300476', 6200083, 154, 3, 2, 33, 10061, 100, 0, 3, 0, '2016-04-28 04:34:43', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.177.232', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146179176200477', 6200121, 170, 3, 0, 12, 30015, 200, 0, 3, 0, '2016-04-28 05:16:02', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2093);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146179343700478', 6200128, 172, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-28 05:43:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 1, '0', '', '114.98.250.248', 2094);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146179343700479', 6200128, 172, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-28 05:43:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '114.98.250.248', 2095);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180415800480', 6200121, 170, 3, 4, 17, 10001, 60, 0, 3, 0, '2016-04-28 08:42:38', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2096);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180439600481', 6200121, 170, 3, 4, 18, 10060, 100, 0, 3, 0, '2016-04-28 08:46:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2097);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180440000482', 6200121, 170, 3, 4, 18, 10061, 100, 0, 3, 0, '2016-04-28 08:46:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2098);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180487800483', 6200073, 72, 0, 3, 45, 10152, 40, 0, 3, 0, '2016-04-28 08:54:38', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', 'cera point', '125.110.5.61', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180487800484', 6200073, 72, 0, 3, 45, 10152, 40, 0, 3, 0, '2016-04-28 08:54:38', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', 'cera point', '125.110.5.61', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180494000485', 6200073, 72, 0, 3, 45, 10153, 200, 0, 3, 0, '2016-04-28 08:55:40', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200073', 3, 1, 2, '0', '', '125.110.5.61', 2099);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180642200486', 6200129, 173, 4, 0, 1, 100372, 960, 0, 3, 0, '2016-04-28 09:20:23', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200129', 3, 1, 1, '0', '', '219.155.84.129', 2100);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180675400487', 6200129, 173, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-04-28 09:25:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200129', 3, 1, 2, '0', '', '219.155.84.129', 2101);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180705700488', 6200121, 170, 3, 4, 26, 10053, 15, 0, 3, 0, '2016-04-28 09:30:57', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2102);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180756400489', 6200121, 170, 3, 4, 27, 10002, 100, 0, 3, 0, '2016-04-28 09:39:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2103);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146180756700490', 6200121, 170, 3, 4, 27, 10003, 140, 0, 3, 0, '2016-04-28 09:39:27', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.126', 2104);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181269500491', 6200070, 69, 0, 0, 13, 10073, 100, 0, 3, 0, '2016-04-28 11:04:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.54', 2105);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181269500492', 6200070, 69, 0, 0, 13, 10073, 100, 0, 3, 0, '2016-04-28 11:04:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.54', 2106);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181281600493', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-28 11:06:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.54', 2107);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181281600494', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-28 11:06:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.54', 2108);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181576400495', 6200036, 128, 1, 4, 29, 10060, 100, 0, 3, 0, '2016-04-28 11:56:04', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '218.95.4.119', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181913400496', 6200047, 67, 4, 2, 63, 10600, 10, 0, 3, 0, '2016-04-28 12:52:14', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.21.84', 2109);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181913400497', 6200047, 67, 4, 2, 63, 10600, 10, 0, 3, 0, '2016-04-28 12:52:14', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.21.84', 2110);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181913400498', 6200047, 67, 4, 2, 63, 10602, 100, 0, 3, 0, '2016-04-28 12:52:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.21.84', 2111);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181913400499', 6200047, 67, 4, 2, 63, 10602, 100, 0, 3, 0, '2016-04-28 12:52:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.21.84', 2112);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181913400500', 6200047, 67, 4, 2, 63, 10602, 100, 0, 3, 0, '2016-04-28 12:52:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.21.84', 2113);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146181913400501', 6200047, 67, 4, 2, 63, 10602, 100, 0, 3, 0, '2016-04-28 12:52:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.21.84', 2114);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146182798800502', 6200007, 11, 3, 20, 77, 10110, 180, 0, 3, 0, '2016-04-28 15:19:48', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.3.200', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146182804400503', 6200128, 172, 0, 3, 28, 10110, 180, 0, 3, 0, '2016-04-28 15:20:44', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146182808500504', 6200128, 172, 0, 3, 28, 10111, 50, 0, 3, 0, '2016-04-28 15:21:25', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146182808500505', 6200128, 172, 0, 3, 28, 10111, 50, 0, 3, 0, '2016-04-28 15:21:25', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146182808500506', 6200128, 172, 0, 3, 28, 10111, 50, 0, 3, 0, '2016-04-28 15:21:25', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146183643400507', 6200007, 11, 3, 20, 77, 10076, 320, 0, 3, 0, '2016-04-28 17:40:34', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.3.200', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146183643400508', 6200007, 11, 3, 20, 77, 10076, 320, 0, 3, 0, '2016-04-28 17:40:34', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.3.200', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146183715800509', 6200130, 178, 0, 0, 2, 10060, 100, 0, 3, 0, '2016-04-28 17:52:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200130', 3, 1, 1, '0', '', '42.59.71.118', 2115);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146183716500510', 6200130, 178, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-28 17:52:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200130', 3, 1, 2, '0', '', '42.59.71.118', 2116);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146183717400511', 6200130, 178, 0, 0, 2, 10061, 100, 0, 3, 0, '2016-04-28 17:52:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200130', 3, 1, 2, '0', '', '42.59.71.118', 2117);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184011800512', 6200077, 123, 0, 1, 48, 10003, 140, 0, 3, 0, '2016-04-28 18:41:58', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '123.66.35.133', 2118);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184012700513', 6200077, 123, 0, 1, 48, 10004, 180, 0, 3, 0, '2016-04-28 18:42:07', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '123.66.35.133', 2119);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184119700514', 6200131, 179, 5, 0, 2, 10060, 100, 0, 3, 0, '2016-04-28 18:59:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200131', 3, 1, 1, '0', '', '175.191.160.125', 2120);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184119700515', 6200131, 179, 5, 0, 2, 10073, 100, 0, 3, 0, '2016-04-28 18:59:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200131', 3, 1, 2, '0', '', '175.191.160.125', 2121);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184119700516', 6200131, 179, 5, 0, 2, 10080, 100, 0, 3, 0, '2016-04-28 18:59:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200131', 3, 1, 2, '0', '', '175.191.160.125', 2122);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184152100517', 6200036, 86, 5, 19, 51, 10154, 400, 0, 3, 0, '2016-04-28 19:05:21', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.146', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184170100518', 6200036, 86, 5, 19, 51, 10073, 100, 0, 3, 0, '2016-04-28 19:08:21', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.146', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184275100519', 6200117, 158, 8, 0, 5, 10080, 100, 0, 3, 0, '2016-04-28 19:25:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200117', 3, 1, 1, '0', '', '39.187.177.193', 2123);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184282700520', 6200117, 158, 8, 0, 5, 10073, 100, 0, 3, 0, '2016-04-28 19:27:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200117', 3, 1, 2, '0', '', '39.187.177.193', 2124);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184311100521', 6200117, 158, 8, 0, 5, 100385, 960, 0, 3, 0, '2016-04-28 19:31:51', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200117', 3, 1, 2, '0', '', '39.187.177.193', 2125);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184318100522', 6200077, 180, 2, 0, 2, 10053, 15, 0, 3, 0, '2016-04-28 19:33:01', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '123.66.35.133', 2126);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184397100523', 6200004, 9, 0, 1, 40, 31000, 240, 0, 3, 0, '2016-04-28 19:46:11', 240, 0, 1, 240, 1, 1, 0, 1, 0, 0, 0, '6200004', 3, 1, 2, '0', '', '124.237.10.157', 2127);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184398500524', 6200004, 9, 0, 1, 40, 31100, 240, 0, 3, 0, '2016-04-28 19:46:25', 240, 0, 1, 240, 3, 1, 0, 1, 0, 0, 0, '6200004', 3, 1, 2, '0', 'cera point', '124.237.10.157', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184416900525', 6200125, 167, 5, 4, 28, 10070, 100, 0, 3, 0, '2016-04-28 19:49:29', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.7.6', 2128);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184465100526', 6200077, 180, 2, 0, 5, 10073, 100, 0, 3, 0, '2016-04-28 19:57:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '123.66.35.133', 2129);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184493400527', 6200077, 180, 2, 0, 5, 100367, 960, 0, 3, 0, '2016-04-28 20:02:14', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '123.66.35.133', 2130);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184548400528', 6200077, 180, 2, 0, 5, 10073, 100, 0, 3, 0, '2016-04-28 20:11:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '123.66.35.133', 2131);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184773000529', 6200082, 97, 8, 2, 30, 20000, 100, 0, 3, 0, '2016-04-28 20:48:50', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '182.118.68.41', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184805300530', 6200007, 11, 3, 20, 78, 10111, 50, 0, 3, 0, '2016-04-28 20:54:13', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.3.200', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184883700531', 6200125, 167, 5, 4, 29, 10073, 100, 0, 3, 0, '2016-04-28 21:07:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.7.6', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146184914000532', 6200066, 64, 0, 17, 53, 10110, 180, 0, 3, 0, '2016-04-28 21:12:20', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '112.194.202.102', 2132);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185020100533', 6200081, 78, 8, 0, 13, 9000020, 105, 0, 3, 0, '2016-04-28 21:30:01', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 2133);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185165600534', 6200083, 85, 0, 1, 59, 10001, 60, 0, 3, 0, '2016-04-28 21:54:16', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.179.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185174200535', 6200096, 129, 0, 0, 2, 100350, 960, 0, 3, 0, '2016-04-28 21:55:42', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.129', 2134);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185195400536', 6200099, 121, 0, 20, 53, 10076, 320, 0, 3, 0, '2016-04-28 21:59:14', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', 'cera point', '60.182.201.22', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185210400537', 6200059, 103, 0, 3, 19, 10073, 100, 0, 3, 0, '2016-04-28 22:01:44', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.58.34', 2135);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185212600538', 6200059, 103, 0, 3, 19, 10073, 100, 0, 3, 0, '2016-04-28 22:02:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.58.34', 2136);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185217800539', 6200096, 129, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-28 22:02:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.129', 2137);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185219300540', 6200096, 129, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-28 22:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.187.202.129', 2138);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185240500541', 6200007, 11, 3, 20, 78, 10110, 180, 0, 3, 0, '2016-04-28 22:06:45', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.3.200', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185256000542', 6200086, 96, 0, 3, 50, 10073, 100, 0, 3, 0, '2016-04-28 22:09:20', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', 'cera point', '58.49.229.209', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185291000543', 6200044, 42, 0, 19, 57, 10111, 50, 0, 3, 0, '2016-04-28 22:15:10', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185307200544', 6200059, 103, 0, 3, 20, 10073, 100, 0, 3, 0, '2016-04-28 22:17:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200059', 3, 1, 2, '0', '', '121.33.58.34', 2139);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185372700545', 6200099, 121, 0, 20, 54, 10003, 140, 0, 3, 0, '2016-04-28 22:28:47', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200099', 3, 1, 2, '0', '', '60.182.201.22', 2140);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185467100546', 6200044, 42, 0, 19, 57, 10067, 20, 0, 3, 0, '2016-04-28 22:44:32', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185467100547', 6200044, 42, 0, 19, 57, 10067, 20, 0, 3, 0, '2016-04-28 22:44:32', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185467100548', 6200044, 42, 0, 19, 57, 10067, 20, 0, 3, 0, '2016-04-28 22:44:32', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185499600549', 6200057, 55, 0, 19, 64, 10076, 320, 0, 3, 0, '2016-04-28 22:49:56', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2141);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185533700550', 6200057, 55, 0, 19, 64, 10211, 300, 0, 3, 0, '2016-04-28 22:55:37', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2142);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185584600551', 6200037, 34, 1, 17, 58, 10111, 50, 0, 3, 0, '2016-04-28 23:04:06', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2143);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185626400552', 6200068, 181, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-28 23:11:04', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '140.255.161.34', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185752300553', 6200007, 11, 3, 20, 78, 10076, 320, 0, 3, 0, '2016-04-28 23:32:03', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.3.200', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185804400554', 6200077, 180, 2, 2, 26, 30015, 200, 0, 3, 0, '2016-04-28 23:40:44', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200077', 3, 1, 2, '0', '', '123.66.35.133', 2144);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185813200555', 6200121, 170, 3, 4, 30, 10073, 100, 0, 3, 0, '2016-04-28 23:42:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500556', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2145);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500557', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2146);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500558', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2147);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500559', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2148);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500560', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2149);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500561', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2150);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500562', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2151);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500563', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:35', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2152);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500564', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2153);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500565', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2154);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500566', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2155);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500567', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2156);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500568', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2157);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500569', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2158);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185869500570', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-28 23:51:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2159);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185954900571', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-29 00:05:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2160);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185954900572', 6200057, 55, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-04-29 00:05:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2161);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146185963100573', 6200127, 171, 0, 0, 12, 10073, 100, 0, 3, 0, '2016-04-29 00:07:11', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146186231700574', 6200085, 92, 0, 2, 50, 10001, 60, 0, 3, 0, '2016-04-29 00:51:57', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', '', '116.21.114.195', 2162);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146186239800575', 6200085, 92, 0, 2, 50, 10073, 100, 0, 3, 0, '2016-04-29 00:53:18', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', 'cera point', '116.21.114.195', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146186246200576', 6200085, 92, 0, 2, 50, 10073, 100, 0, 3, 0, '2016-04-29 00:54:22', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', 'cera point', '116.21.114.195', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146186258100577', 6200085, 92, 0, 2, 50, 10073, 100, 0, 3, 0, '2016-04-29 00:56:21', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', 'cera point', '116.21.114.195', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146186362400578', 6200057, 55, 0, 19, 66, 10110, 180, 0, 3, 0, '2016-04-29 01:13:44', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.50.68', 2163);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146186513000579', 6200085, 92, 0, 18, 51, 10154, 400, 0, 3, 0, '2016-04-29 01:38:50', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200085', 3, 1, 2, '0', 'cera point', '116.21.114.195', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146188010200580', 6200128, 172, 0, 3, 32, 10111, 50, 0, 3, 0, '2016-04-29 05:48:22', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146188014100581', 6200128, 172, 0, 3, 32, 10151, 20, 0, 3, 0, '2016-04-29 05:49:01', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146188017000582', 6200128, 172, 0, 3, 32, 10151, 20, 0, 3, 0, '2016-04-29 05:49:30', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '114.98.244.243', 2164);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146188980400583', 6200128, 172, 0, 3, 37, 10110, 180, 0, 3, 0, '2016-04-29 08:30:04', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146188980400584', 6200128, 172, 0, 3, 37, 10111, 50, 0, 3, 0, '2016-04-29 08:30:04', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146189288300585', 6200028, 26, 2, 18, 53, 10004, 180, 0, 3, 0, '2016-04-29 09:21:24', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '222.185.9.234', 2165);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190287700586', 6200132, 186, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-29 12:07:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 1, '0', '', '219.145.135.149', 2166);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190387200587', 6200044, 187, 2, 0, 2, 10073, 100, 0, 3, 0, '2016-04-29 12:24:32', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.97.145', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500588', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2167);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500589', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2168);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500590', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2169);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500591', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2170);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500592', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2171);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500593', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2172);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500594', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2173);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500595', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2174);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500596', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2175);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500597', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2176);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500598', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2177);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500599', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2178);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190467500600', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 12:37:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '219.145.135.149', 2179);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190500900601', 6200133, 188, 8, 0, 2, 10080, 100, 0, 3, 0, '2016-04-29 12:43:29', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 1, '0', '', '219.145.135.149', 2180);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000602', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2181);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000603', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2182);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000604', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2183);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000605', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2184);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000606', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2185);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000607', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2186);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000608', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2187);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000609', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2188);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000610', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2189);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000611', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2190);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000612', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2191);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000613', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2192);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190680000614', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:13:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '219.145.135.149', 2193);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190713300615', 6200134, 189, 5, 0, 2, 10080, 100, 0, 3, 0, '2016-04-29 13:18:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 1, '0', '', '219.145.135.149', 2194);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000616', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2195);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000617', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2196);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000618', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2197);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000619', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2198);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000620', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2199);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000621', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2200);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000622', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2201);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000623', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2202);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000624', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2203);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000625', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2204);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000626', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2205);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000627', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2206);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146190860000628', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-04-29 13:43:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '219.145.135.149', 2207);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191260400629', 6200007, 11, 3, 20, 79, 10110, 180, 0, 3, 0, '2016-04-29 14:50:04', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.14.161.248', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191311400630', 6200024, 23, 5, 4, 42, 10154, 400, 0, 3, 0, '2016-04-29 14:58:34', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.177.58', 2208);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191353200631', 6200024, 23, 5, 4, 42, 10100, 180, 0, 3, 0, '2016-04-29 15:05:32', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.177.58', 2209);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191685700632', 6200007, 11, 3, 20, 79, 10111, 50, 0, 3, 0, '2016-04-29 16:00:58', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.14.161.248', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191918000633', 6200070, 69, 0, 3, 30, 10600, 10, 0, 3, 0, '2016-04-29 16:39:40', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '219.145.135.149', 2210);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191918000634', 6200070, 69, 0, 3, 30, 10600, 10, 0, 3, 0, '2016-04-29 16:39:40', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '219.145.135.149', 2211);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191918000635', 6200070, 69, 0, 3, 30, 10600, 10, 0, 3, 0, '2016-04-29 16:39:40', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '219.145.135.149', 2212);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191918000636', 6200070, 69, 0, 3, 30, 10600, 10, 0, 3, 0, '2016-04-29 16:39:40', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '219.145.135.149', 2213);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191918000637', 6200070, 69, 0, 3, 30, 10602, 100, 0, 3, 0, '2016-04-29 16:39:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '219.145.135.149', 2214);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191920300638', 6200070, 69, 0, 3, 30, 10602, 100, 0, 3, 0, '2016-04-29 16:40:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '219.145.135.149', 2215);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191921800639', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-04-29 16:40:19', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', 'cera point', '219.145.135.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191921800640', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-04-29 16:40:19', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', 'cera point', '219.145.135.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191921800641', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-04-29 16:40:19', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', 'cera point', '219.145.135.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191921800642', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-04-29 16:40:19', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', 'cera point', '219.145.135.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191921800643', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-04-29 16:40:19', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', 'cera point', '219.145.135.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191956900644', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-29 16:46:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '219.145.135.149', 2216);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191956900645', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-04-29 16:46:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '219.145.135.149', 2217);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191979500646', 6200047, 67, 4, 2, 65, 10073, 100, 0, 3, 0, '2016-04-29 16:49:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.26.104', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191980600647', 6200047, 67, 4, 2, 65, 10600, 10, 0, 3, 0, '2016-04-29 16:50:06', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.26.104', 2218);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191980600648', 6200047, 67, 4, 2, 65, 10601, 50, 0, 3, 0, '2016-04-29 16:50:06', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.26.104', 2219);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191980600649', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-29 16:50:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.26.104', 2220);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191980600650', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-29 16:50:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.26.104', 2221);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191980600651', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-29 16:50:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.26.104', 2222);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146191980600652', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-29 16:50:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.26.104', 2223);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192065800653', 6200024, 23, 5, 3, 46, 10153, 200, 0, 3, 0, '2016-04-29 17:04:18', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.177.58', 2224);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192080000654', 6200024, 23, 5, 3, 46, 10153, 200, 0, 3, 0, '2016-04-29 17:06:40', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.177.58', 2225);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192083200655', 6200037, 34, 1, 17, 59, 30005, 200, 0, 3, 0, '2016-04-29 17:07:12', 200, 0, 1, 200, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192291800656', 6200055, 125, 3, 1, 30, 10152, 40, 0, 3, 0, '2016-04-29 17:41:58', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', 'cera point', '113.77.136.22', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192386200657', 6200121, 170, 3, 4, 39, 10154, 400, 0, 3, 0, '2016-04-29 17:57:42', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192413600658', 6200007, 11, 3, 20, 79, 9501, 200, 0, 3, 0, '2016-04-29 18:02:16', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.14.161.248', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192760000659', 6200001, 6, 0, 17, 63, 30005, 200, 0, 3, 0, '2016-04-29 19:00:00', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2226);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192760000660', 6200001, 6, 0, 17, 63, 30015, 200, 0, 3, 0, '2016-04-29 19:00:00', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2227);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192760000661', 6200001, 6, 0, 17, 63, 30025, 200, 0, 3, 0, '2016-04-29 19:00:00', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2228);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192773700662', 6200091, 110, 2, 2, 32, 10061, 100, 0, 3, 0, '2016-04-29 19:02:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', 'cera point', '223.73.143.181', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192889600663', 6200081, 78, 8, 2, 26, 10100, 180, 0, 3, 0, '2016-04-29 19:21:36', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', 'cera point', '218.28.142.42', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192906000664', 6200113, 150, 0, 3, 41, 100348, 960, 0, 3, 0, '2016-04-29 19:24:20', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', 'cera point', '120.39.57.129', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192915400665', 6200136, 190, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-29 19:25:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200136', 3, 1, 1, '0', '', '58.51.95.115', 2229);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192925400666', 6200136, 190, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-29 19:27:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200136', 3, 1, 2, '0', '', '58.51.95.115', 2230);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146192932900667', 6200136, 190, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-04-29 19:28:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200136', 3, 1, 2, '0', '', '58.51.95.115', 2231);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193047100668', 6200055, 125, 3, 1, 31, 9002, 240, 0, 3, 0, '2016-04-29 19:47:51', 240, 0, 30, 240, 3, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', 'cera point', '113.77.136.22', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193132000669', 6200001, 6, 0, 17, 63, 10110, 180, 0, 3, 0, '2016-04-29 20:02:00', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2232);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193140800670', 6200112, 147, 8, 2, 46, 10061, 100, 0, 3, 0, '2016-04-29 20:03:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.10', 2233);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193215700671', 6200112, 147, 8, 2, 47, 10002, 100, 0, 3, 0, '2016-04-29 20:15:57', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', 'cera point', '116.2.151.10', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193220500672', 6200117, 158, 8, 1, 28, 10060, 100, 0, 3, 0, '2016-04-29 20:16:45', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200117', 3, 1, 2, '0', 'cera point', '39.184.234.75', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193371100673', 6200128, 172, 0, 3, 41, 10111, 50, 0, 3, 0, '2016-04-29 20:41:51', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.98.244.243', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193372200674', 6200128, 172, 0, 3, 41, 10110, 180, 0, 3, 0, '2016-04-29 20:42:02', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '114.98.244.243', 2234);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193372200675', 6200128, 172, 0, 3, 41, 10110, 180, 0, 3, 0, '2016-04-29 20:42:02', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '114.98.244.243', 2235);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193374700676', 6200136, 190, 0, 0, 13, 10060, 100, 0, 3, 0, '2016-04-29 20:42:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200136', 3, 1, 2, '0', '', '58.51.95.115', 2236);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193375900677', 6200136, 190, 0, 0, 13, 10061, 100, 0, 3, 0, '2016-04-29 20:42:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200136', 3, 1, 2, '0', '', '58.51.95.115', 2237);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193555400678', 6200135, 185, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-04-29 21:12:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 1, '0', '', '113.3.125.185', 2238);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193556600679', 6200135, 185, 0, 0, 2, 10001, 60, 0, 3, 0, '2016-04-29 21:12:46', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', '', '113.3.125.185', 2239);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193557100680', 6200135, 185, 0, 0, 2, 10002, 100, 0, 3, 0, '2016-04-29 21:12:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', '', '113.3.125.185', 2240);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193557700681', 6200135, 185, 0, 0, 2, 10003, 140, 0, 3, 0, '2016-04-29 21:12:57', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', '', '113.3.125.185', 2241);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193579600682', 6200135, 185, 0, 0, 3, 10060, 100, 0, 3, 0, '2016-04-29 21:16:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', '', '113.3.125.185', 2242);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193580600683', 6200135, 185, 0, 0, 3, 10061, 100, 0, 3, 0, '2016-04-29 21:16:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', '', '113.3.125.185', 2243);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146193586900684', 6200007, 11, 3, 20, 79, 10110, 180, 0, 3, 0, '2016-04-29 21:17:49', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.14.161.248', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500001', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2244);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500002', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2245);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500003', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2246);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500004', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2247);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500005', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2248);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500006', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2249);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500007', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2250);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500008', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2251);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500009', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2252);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194341500010', 6200001, 6, 0, 17, 65, 10073, 100, 0, 3, 0, '2016-04-29 23:23:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2253);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194471300011', 6200113, 151, 5, 3, 38, 10073, 100, 0, 3, 0, '2016-04-29 23:45:13', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', 'cera point', '61.131.85.113', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194522400012', 6200055, 125, 3, 1, 32, 100260, 5760, 0, 3, 0, '2016-04-29 23:53:44', 5760, 0, 1, 5760, 1, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', '', '113.77.139.161', 2254);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194549200013', 6200082, 97, 8, 2, 31, 10150, 5, 0, 3, 0, '2016-04-29 23:58:13', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '111.206.60.74', 2255);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194549200014', 6200082, 97, 8, 2, 31, 10151, 20, 0, 3, 0, '2016-04-29 23:58:13', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '111.206.60.74', 2256);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500015', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2257);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500016', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2258);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500017', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2259);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500018', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2260);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500019', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2261);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500020', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2262);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500021', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2263);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500022', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2264);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500023', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2265);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500024', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2266);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500025', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2267);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500026', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2268);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500027', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2269);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500028', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2270);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500029', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2271);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500030', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2272);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500031', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2273);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500032', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2274);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500033', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2275);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500034', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2276);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500035', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2277);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500036', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2278);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500037', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2279);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500038', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2280);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500039', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2281);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500040', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2282);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500041', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2283);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500042', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2284);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500043', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2285);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500044', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2286);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500045', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2287);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500046', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2288);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194553500047', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-29 23:58:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2289);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200048', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2290);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200049', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2291);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200050', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2292);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200051', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2293);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200052', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2294);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200053', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2295);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200054', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2296);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200055', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:03', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2297);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200056', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:04', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2298);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194566200057', 6200001, 6, 0, 17, 66, 10211, 300, 0, 3, 0, '2016-04-30 00:01:04', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2299);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600058', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:16', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2300);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600059', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:16', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2301);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600060', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:16', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2302);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600061', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:16', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2303);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600062', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:16', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2304);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600063', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:16', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2305);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600064', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:17', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2306);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600065', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:17', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2307);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600066', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:17', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2308);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194567600067', 6200001, 6, 0, 17, 66, 30000, 250, 0, 3, 0, '2016-04-30 00:01:17', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2309);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000068', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2310);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000069', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2311);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000070', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2312);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000071', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2313);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000072', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2314);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000073', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2315);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000074', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2316);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000075', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2317);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000076', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2318);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000077', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2319);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000078', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2320);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000079', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2321);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000080', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2322);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000081', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2323);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000082', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2324);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000083', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2325);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000084', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2326);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000085', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2327);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000086', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2328);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000087', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2329);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000088', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2330);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000089', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2331);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000090', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2332);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000091', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2333);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000092', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2334);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000093', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2335);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000094', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2336);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000095', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2337);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000096', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2338);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194594000097', 6200001, 6, 0, 17, 66, 10073, 100, 0, 3, 0, '2016-04-30 00:05:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2339);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194597000098', 6200001, 6, 0, 17, 66, 10033, 600, 0, 3, 0, '2016-04-30 00:06:11', 600, 0, 50, 600, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.54.126', 2340);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194733300099', 6200121, 184, 7, 1, 27, 10000, 20, 0, 3, 0, '2016-04-30 00:28:53', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.88', 2341);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194737000100', 6200121, 184, 7, 1, 27, 10053, 15, 0, 3, 0, '2016-04-30 00:29:30', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', '', '112.5.236.88', 2342);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194764900101', 6200113, 193, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-30 00:34:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.85.113', 2343);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194765500102', 6200113, 193, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-30 00:34:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.85.113', 2344);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194767200103', 6200113, 193, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-30 00:34:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.85.113', 2345);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194767600104', 6200113, 193, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-30 00:34:36', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.85.113', 2346);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194768000105', 6200113, 193, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-30 00:34:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.85.113', 2347);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194768400106', 6200113, 193, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-30 00:34:44', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.85.113', 2348);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194768700107', 6200113, 193, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-04-30 00:34:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', '', '61.131.85.113', 2349);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146194794300108', 6200113, 193, 0, 0, 3, 100348, 960, 0, 3, 0, '2016-04-30 00:39:03', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200113', 3, 1, 2, '0', 'cera point', '61.131.85.113', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195023100109', 6200007, 11, 3, 20, 80, 10111, 50, 0, 3, 0, '2016-04-30 01:17:12', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.14.161.248', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195051000110', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:21:50', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195051000111', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:21:50', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195051000112', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:21:50', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195051000113', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:21:50', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195090700114', 6200037, 34, 1, 17, 60, 10073, 100, 1, 3, 0, '2016-04-30 01:28:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2350);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195108800115', 6200037, 34, 1, 17, 60, 10073, 100, 1, 3, 0, '2016-04-30 01:31:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2351);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800116', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2352);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800117', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2353);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800118', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2354);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800119', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2355);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800120', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2356);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800121', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2357);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800122', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2358);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800123', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2359);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800124', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2360);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800125', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2361);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800126', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2362);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800127', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2363);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800128', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2364);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800129', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2365);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800130', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2366);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800131', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2367);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800132', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2368);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800133', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2369);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800134', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2370);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800135', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2371);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800136', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2372);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800137', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2373);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800138', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2374);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800139', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2375);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800140', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2376);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800141', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2377);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800142', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2378);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800143', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2379);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800144', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2380);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800145', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2381);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800146', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2382);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195113800147', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2383);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195116200148', 6200037, 34, 1, 17, 60, 10600, 10, 0, 3, 0, '2016-04-30 01:32:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2384);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195116200149', 6200037, 34, 1, 17, 60, 10600, 10, 0, 3, 0, '2016-04-30 01:32:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2385);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195116200150', 6200037, 34, 1, 17, 60, 10600, 10, 0, 3, 0, '2016-04-30 01:32:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2386);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195116200151', 6200037, 34, 1, 17, 60, 10600, 10, 0, 3, 0, '2016-04-30 01:32:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2387);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195116200152', 6200037, 34, 1, 17, 60, 10600, 10, 0, 3, 0, '2016-04-30 01:32:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2388);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195116200153', 6200037, 34, 1, 17, 60, 10600, 10, 0, 3, 0, '2016-04-30 01:32:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2389);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195116200154', 6200037, 34, 1, 17, 60, 10600, 10, 0, 3, 0, '2016-04-30 01:32:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 2390);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195117500155', 6200037, 34, 1, 17, 60, 10073, 100, 0, 3, 0, '2016-04-30 01:32:55', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195142900156', 6200057, 55, 0, 19, 67, 10031, 140, 0, 3, 0, '2016-04-30 01:37:10', 140, 0, 10, 140, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2391);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500157', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2392);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500158', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2393);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500159', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2394);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500160', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2395);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500161', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2396);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500162', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2397);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500163', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2398);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500164', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2399);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500165', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2400);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500166', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2401);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500167', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2402);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500168', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2403);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500169', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2404);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500170', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2405);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500171', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2406);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500172', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2407);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500173', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2408);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500174', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2409);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500175', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2410);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500176', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2411);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500177', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2412);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500178', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2413);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500179', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2414);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500180', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2415);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500181', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2416);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500182', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2417);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500183', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2418);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500184', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2419);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195160500185', 6200127, 171, 0, 3, 25, 10602, 100, 0, 3, 0, '2016-04-30 01:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2420);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195162700186', 6200127, 171, 0, 3, 25, 10600, 10, 0, 3, 0, '2016-04-30 01:40:27', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2421);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195162700187', 6200127, 171, 0, 3, 25, 10600, 10, 0, 3, 0, '2016-04-30 01:40:27', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2422);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195162700188', 6200127, 171, 0, 3, 25, 10600, 10, 0, 3, 0, '2016-04-30 01:40:27', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2423);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195162700189', 6200127, 171, 0, 3, 25, 10600, 10, 0, 3, 0, '2016-04-30 01:40:27', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', '', '61.158.84.27', 2424);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195164400190', 6200057, 55, 0, 19, 67, 10065, 200, 0, 3, 0, '2016-04-30 01:40:44', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2425);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195165100191', 6200057, 55, 0, 19, 67, 10152, 40, 0, 3, 0, '2016-04-30 01:40:51', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2426);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195180400192', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 01:43:25', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.97.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195203800193', 6200127, 171, 0, 3, 25, 100257, 5760, 0, 3, 0, '2016-04-30 01:47:18', 5760, 0, 1, 5760, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195205100194', 6200127, 171, 0, 3, 25, 10060, 100, 0, 3, 0, '2016-04-30 01:47:31', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195206400195', 6200127, 171, 0, 3, 25, 10061, 100, 0, 3, 0, '2016-04-30 01:47:44', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195215700196', 6200057, 55, 0, 19, 67, 30000, 250, 0, 3, 0, '2016-04-30 01:49:20', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2427);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195217200197', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 01:49:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2428);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195217200198', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 01:49:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2429);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195217200199', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 01:49:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2430);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195223200200', 6200057, 55, 0, 19, 67, 10210, 360, 0, 3, 0, '2016-04-30 01:50:32', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2431);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195236400201', 6200057, 55, 0, 19, 67, 10210, 360, 0, 3, 0, '2016-04-30 01:52:44', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2432);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195236400202', 6200057, 55, 0, 19, 67, 10210, 360, 0, 3, 0, '2016-04-30 01:52:44', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2433);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195236400203', 6200057, 55, 0, 19, 67, 10210, 360, 0, 3, 0, '2016-04-30 01:52:44', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2434);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195236400204', 6200057, 55, 0, 19, 67, 10210, 360, 0, 3, 0, '2016-04-30 01:52:44', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2435);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195236400205', 6200057, 55, 0, 19, 67, 10210, 360, 0, 3, 0, '2016-04-30 01:52:44', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2436);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195237200206', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 01:52:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2437);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195237200207', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 01:52:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2438);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195263900208', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 01:57:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.97.29', 2439);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195276300209', 6200007, 11, 3, 20, 80, 10210, 360, 0, 3, 0, '2016-04-30 01:59:23', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.161.248', 2440);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195276300210', 6200007, 11, 3, 20, 80, 10210, 360, 0, 3, 0, '2016-04-30 01:59:23', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.161.248', 2441);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195290400211', 6200007, 11, 3, 20, 80, 10004, 180, 0, 3, 0, '2016-04-30 02:01:44', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.14.161.248', 2442);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146195328300212', 6200051, 51, 5, 2, 50, 10073, 100, 0, 3, 0, '2016-04-30 02:08:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200051', 3, 1, 2, '0', '', '125.114.147.223', 2443);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146197420300213', 6200091, 110, 2, 2, 39, 10154, 400, 0, 3, 0, '2016-04-30 07:56:44', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '223.73.232.164', 2444);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146198072100214', 6200121, 183, 1, 2, 30, 31100, 240, 0, 3, 0, '2016-04-30 09:45:21', 240, 0, 1, 240, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146198392200215', 6200116, 161, 0, 1, 42, 10600, 10, 0, 3, 0, '2016-04-30 10:38:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2445);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146198394800216', 6200135, 185, 0, 0, 13, 100351, 960, 0, 3, 0, '2016-04-30 10:39:08', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', '', '113.3.125.185', 2446);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146198667300217', 6200116, 161, 0, 1, 45, 10051, 5, 0, 3, 0, '2016-04-30 11:24:33', 5, 0, 3, 5, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146198667300218', 6200116, 161, 0, 1, 45, 10051, 5, 0, 3, 0, '2016-04-30 11:24:33', 5, 0, 3, 5, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900219', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2447);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900220', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2448);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900221', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2449);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900222', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2450);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900223', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2451);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900224', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2452);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900225', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2453);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900226', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2454);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900227', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2455);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900228', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2456);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900229', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2457);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900230', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2458);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900231', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2459);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900232', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2460);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900233', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2461);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900234', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2462);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900235', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2463);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900236', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2464);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900237', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2465);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900238', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2466);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900239', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2467);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900240', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2468);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900241', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2469);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900242', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2470);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900243', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2471);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900244', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2472);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900245', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2473);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199147900246', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2474);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199148600247', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2475);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199148600248', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2476);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199148600249', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2477);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199148600250', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2478);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199148600251', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2479);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199148600252', 6200116, 161, 0, 1, 48, 10602, 100, 0, 3, 0, '2016-04-30 12:44:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 2480);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300253', 6200047, 67, 4, 2, 65, 10600, 10, 0, 3, 0, '2016-04-30 13:25:03', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2481);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300254', 6200047, 67, 4, 2, 65, 10600, 10, 0, 3, 0, '2016-04-30 13:25:03', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2482);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300255', 6200047, 67, 4, 2, 65, 10600, 10, 0, 3, 0, '2016-04-30 13:25:03', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2483);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300256', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2484);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300257', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2485);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300258', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2486);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300259', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2487);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300260', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2488);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300261', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2489);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300262', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2490);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300263', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2491);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300264', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2492);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300265', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2493);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300266', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2494);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300267', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2495);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300268', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2496);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300269', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2497);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300270', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2498);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300271', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2499);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300272', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2500);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300273', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2501);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300274', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2502);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300275', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2503);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300276', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2504);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300277', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2505);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300278', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2506);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300279', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2507);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300280', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2508);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300281', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2509);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300282', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2510);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300283', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2511);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300284', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2512);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199390300285', 6200047, 67, 4, 2, 65, 10602, 100, 0, 3, 0, '2016-04-30 13:25:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.23.90', 2513);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199576700286', 6200042, 41, 0, 17, 59, 10073, 100, 0, 3, 0, '2016-04-30 13:56:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.133.41', 2514);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199576700287', 6200042, 41, 0, 17, 59, 10073, 100, 0, 3, 0, '2016-04-30 13:56:07', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.133.41', 2515);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199667900288', 6200042, 41, 0, 17, 59, 10210, 360, 0, 3, 0, '2016-04-30 14:11:19', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.133.41', 2516);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199697400289', 6200042, 41, 0, 17, 59, 10210, 360, 0, 3, 0, '2016-04-30 14:16:14', 360, 0, 1, 360, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.133.41', 2517);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199722200290', 6200042, 41, 0, 17, 59, 10076, 320, 0, 3, 0, '2016-04-30 14:20:22', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200042', 3, 1, 2, '0', '', '119.248.133.41', 2518);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199857300291', 6200131, 179, 5, 3, 28, 20000, 100, 0, 3, 0, '2016-04-30 14:42:53', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200131', 3, 1, 2, '0', 'cera point', '175.191.160.125', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000292', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:30', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2519);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000293', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:30', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2520);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000294', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:30', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2521);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000295', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:30', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2522);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000296', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:30', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2523);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000297', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:30', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2524);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000298', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2525);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000299', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2526);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000300', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2527);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000301', 6200001, 6, 0, 17, 67, 10067, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2528);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000302', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2529);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000303', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2530);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000304', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2531);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000305', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2532);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000306', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2533);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000307', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2534);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000308', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2535);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000309', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2536);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000310', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2537);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000311', 6200001, 6, 0, 17, 67, 10068, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2538);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000312', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2539);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000313', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2540);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000314', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:31', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2541);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000315', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:32', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2542);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000316', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:32', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2543);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000317', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:32', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2544);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000318', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:32', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2545);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000319', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:32', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2546);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000320', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:32', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2547);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146199867000321', 6200001, 6, 0, 17, 67, 10069, 20, 0, 3, 0, '2016-04-30 14:44:32', 20, 0, 15, 20, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2548);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200013800322', 6200138, 196, 4, 0, 11, 100211, 11760, 0, 3, 0, '2016-04-30 15:08:58', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 1, '0', '', '180.158.80.25', 2549);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400323', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:44', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2550);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400324', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:44', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2551);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400325', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:44', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2552);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400326', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:44', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2553);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400327', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:44', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2554);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400328', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:44', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2555);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400329', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:44', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2556);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400330', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:45', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2557);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400331', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:45', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2558);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200228400332', 6200001, 6, 0, 17, 69, 10076, 320, 0, 3, 0, '2016-04-30 15:44:45', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2559);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200233400333', 6200007, 11, 3, 20, 81, 10076, 320, 0, 3, 0, '2016-04-30 15:45:34', 320, 0, 150, 320, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.2.196', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200298200334', 6200131, 179, 5, 3, 31, 10153, 200, 0, 3, 0, '2016-04-30 15:56:23', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200131', 3, 1, 2, '0', '', '175.191.160.125', 2560);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200338900335', 6200141, 197, 7, 4, 18, 10080, 100, 0, 3, 0, '2016-04-30 16:03:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 1, '0', '', '180.170.148.178', 2561);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200460300336', 6200001, 6, 0, 17, 69, 9100, 5, 0, 3, 0, '2016-04-30 16:23:23', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2562);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200465300337', 6200001, 6, 0, 17, 69, 9004, 720, 0, 3, 0, '2016-04-30 16:24:13', 720, 0, 50, 720, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2563);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200465300338', 6200001, 6, 0, 17, 69, 9004, 720, 0, 3, 0, '2016-04-30 16:24:13', 720, 0, 50, 720, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2564);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200465300339', 6200001, 6, 0, 17, 69, 9004, 720, 0, 3, 0, '2016-04-30 16:24:13', 720, 0, 50, 720, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2565);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200465300340', 6200001, 6, 0, 17, 69, 9004, 720, 0, 3, 0, '2016-04-30 16:24:13', 720, 0, 50, 720, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.76.197', 2566);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200494700341', 6200141, 197, 7, 4, 22, 10073, 100, 0, 3, 0, '2016-04-30 16:29:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200632400342', 6200139, 195, 0, 3, 29, 10080, 100, 0, 3, 0, '2016-04-30 16:52:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 1, '0', '', '121.234.253.105', 2567);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400343', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2568);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400344', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2569);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400345', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2570);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400346', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2571);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400347', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2572);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400348', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2573);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400349', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2574);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400350', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2575);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400351', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2576);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400352', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2577);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400353', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2578);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400354', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2579);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400355', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2580);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400356', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2581);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400357', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2582);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400358', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2583);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400359', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2584);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400360', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2585);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400361', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2586);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400362', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2587);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400363', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2588);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400364', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2589);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400365', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2590);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400366', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2591);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200698400367', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2592);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300368', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2593);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300369', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2594);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300370', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2595);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300371', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2596);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300372', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2597);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300373', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2598);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300374', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2599);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300375', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2600);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300376', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2601);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300377', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2602);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200699300378', 6200141, 197, 7, 4, 26, 10073, 100, 0, 3, 0, '2016-04-30 17:03:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 2603);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200739000379', 6200139, 195, 0, 3, 29, 10073, 100, 0, 3, 0, '2016-04-30 17:09:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2604);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146200762100380', 6200131, 179, 5, 3, 33, 10154, 400, 0, 3, 0, '2016-04-30 17:13:41', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200131', 3, 1, 2, '0', '', '175.191.160.125', 2605);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201014100381', 6200128, 172, 0, 3, 51, 10073, 100, 0, 3, 0, '2016-04-30 17:55:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.97.48.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201014100382', 6200128, 172, 0, 3, 51, 10073, 100, 0, 3, 0, '2016-04-30 17:55:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.97.48.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201014100383', 6200128, 172, 0, 3, 51, 10073, 100, 0, 3, 0, '2016-04-30 17:55:41', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.97.48.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201019800384', 6200055, 125, 3, 1, 36, 10154, 400, 0, 3, 0, '2016-04-30 17:56:39', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', '', '113.77.137.194', 2606);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201275200385', 6200135, 185, 0, 1, 31, 10153, 200, 0, 3, 0, '2016-04-30 18:39:12', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', 'cera point', '113.3.125.185', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201293500386', 6200138, 196, 4, 2, 29, 20001, 200, 0, 3, 0, '2016-04-30 18:42:15', 200, 0, 300, 200, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2607);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201386200387', 6200081, 78, 8, 1, 31, 100290, 5760, 0, 3, 0, '2016-04-30 18:57:42', 5760, 0, 1, 5760, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '218.28.142.42', 2608);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201646400388', 6200038, 54, 6, 1, 38, 100208, 11760, 0, 3, 0, '2016-04-30 19:41:04', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2609);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201648000389', 6200038, 54, 6, 1, 38, 10001, 60, 0, 3, 0, '2016-04-30 19:41:20', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2610);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201648600390', 6200038, 54, 6, 1, 38, 10002, 100, 0, 3, 0, '2016-04-30 19:41:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2611);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201649200391', 6200038, 54, 6, 1, 38, 10003, 140, 0, 3, 0, '2016-04-30 19:41:32', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2612);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201649600392', 6200038, 54, 6, 1, 38, 10004, 180, 0, 3, 0, '2016-04-30 19:41:37', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2613);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201663400393', 6200038, 54, 6, 1, 38, 10154, 400, 0, 3, 0, '2016-04-30 19:43:54', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2614);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201673900394', 6200038, 54, 6, 1, 38, 10073, 100, 0, 3, 0, '2016-04-30 19:45:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2615);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201674500395', 6200038, 54, 6, 1, 38, 10073, 100, 0, 3, 0, '2016-04-30 19:45:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2616);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201674800396', 6200038, 54, 6, 1, 38, 10154, 400, 0, 3, 0, '2016-04-30 19:45:48', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2617);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201675100397', 6200038, 54, 6, 1, 38, 10154, 400, 0, 3, 0, '2016-04-30 19:45:51', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2618);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201677200398', 6200038, 54, 6, 1, 38, 10073, 100, 0, 3, 0, '2016-04-30 19:46:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2619);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201678400399', 6200038, 54, 6, 1, 38, 10073, 100, 0, 3, 0, '2016-04-30 19:46:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2620);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201678800400', 6200038, 54, 6, 1, 38, 10073, 100, 0, 3, 0, '2016-04-30 19:46:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2621);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201679900401', 6200038, 54, 6, 1, 38, 10073, 100, 0, 3, 0, '2016-04-30 19:46:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2622);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201696500402', 6200057, 55, 0, 19, 67, 10073, 100, 0, 3, 0, '2016-04-30 19:49:25', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201750200403', 6200038, 54, 6, 1, 38, 8300018, 105, 0, 3, 0, '2016-04-30 19:58:22', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2623);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201750200404', 6200038, 54, 6, 1, 38, 8300020, 105, 0, 3, 0, '2016-04-30 19:58:22', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2624);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201780600405', 6200143, 198, 0, 3, 17, 10080, 100, 0, 3, 0, '2016-04-30 20:03:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200143', 3, 1, 1, '0', '', '114.97.48.29', 2625);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201780700406', 6200038, 54, 6, 1, 38, 100253, 5760, 0, 3, 0, '2016-04-30 20:03:27', 5760, 0, 1, 5760, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2626);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201783500407', 6200038, 35, 5, 1, 27, 100288, 5760, 0, 3, 0, '2016-04-30 20:03:55', 5760, 0, 1, 5760, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2627);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201788200408', 6200038, 35, 5, 1, 27, 10000, 20, 0, 3, 0, '2016-04-30 20:04:42', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2628);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201788400409', 6200038, 35, 5, 1, 27, 10001, 60, 0, 3, 0, '2016-04-30 20:04:44', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2629);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201788700410', 6200038, 35, 5, 1, 27, 10002, 100, 0, 3, 0, '2016-04-30 20:04:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2630);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201789000411', 6200038, 35, 5, 1, 27, 10003, 140, 0, 3, 0, '2016-04-30 20:04:50', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2631);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201846200412', 6200138, 196, 4, 2, 31, 10110, 180, 0, 3, 0, '2016-04-30 20:14:22', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', 'cera point', '180.158.80.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201924300413', 6200055, 125, 3, 1, 38, 10153, 200, 0, 3, 0, '2016-04-30 20:27:23', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', 'cera point', '113.77.137.194', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201960200414', 6200009, 16, 0, 19, 63, 31100, 240, 0, 3, 0, '2016-04-30 20:33:22', 240, 0, 1, 240, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201972200415', 6200112, 147, 8, 2, 53, 10152, 40, 0, 3, 0, '2016-04-30 20:35:22', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.10', 2632);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201979500416', 6200112, 147, 8, 2, 53, 10152, 40, 0, 3, 0, '2016-04-30 20:36:35', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.10', 2633);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146201982100417', 6200112, 147, 8, 2, 53, 10152, 40, 0, 3, 0, '2016-04-30 20:37:01', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200112', 3, 1, 2, '0', '', '116.2.151.10', 2634);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202021800418', 6200024, 23, 5, 3, 49, 10153, 200, 0, 3, 0, '2016-04-30 20:43:38', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', 'cera point', '182.133.177.58', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202031400419', 6200128, 172, 0, 3, 52, 10001, 60, 0, 3, 0, '2016-04-30 20:45:14', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.97.48.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202032100420', 6200128, 172, 0, 3, 52, 10002, 100, 0, 3, 0, '2016-04-30 20:45:21', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.97.48.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202053200421', 6200138, 196, 4, 2, 32, 9500, 50, 0, 3, 0, '2016-04-30 20:48:52', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', 'cera point', '180.158.80.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202249200422', 6200138, 194, 0, 2, 16, 10100, 180, 0, 3, 0, '2016-04-30 21:21:32', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2635);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200423', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2636);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200424', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2637);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200425', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2638);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200426', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2639);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200427', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2640);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200428', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2641);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200429', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2642);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200430', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2643);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200431', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2644);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200432', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2645);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202283200433', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2646);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500434', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2647);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500435', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2648);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500436', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2649);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500437', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2650);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500438', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2651);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500439', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2652);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500440', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2653);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500441', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2654);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500442', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2655);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500443', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2656);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202284500444', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2657);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202285200445', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2658);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202285200446', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2659);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202285200447', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2660);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202285200448', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2661);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202285200449', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2662);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202285200450', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2663);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202285200451', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 21:27:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2664);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202321800452', 6200047, 67, 4, 2, 69, 10073, 100, 0, 3, 0, '2016-04-30 21:33:38', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.23.90', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202328700453', 6200114, 153, 2, 0, 6, 100364, 960, 0, 3, 0, '2016-04-30 21:34:47', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200114', 3, 1, 2, '0', '', '49.74.108.183', 2665);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202329400454', 6200093, 115, 5, 1, 27, 10073, 100, 0, 3, 0, '2016-04-30 21:34:54', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', 'cera point', '120.24.103.43', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202394500455', 6200138, 194, 0, 1, 16, 100348, 960, 0, 3, 0, '2016-04-30 21:45:46', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2666);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202411100456', 6200138, 194, 0, 1, 16, 10073, 100, 0, 3, 0, '2016-04-30 21:48:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2667);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202421100457', 6200036, 86, 5, 19, 56, 10211, 300, 0, 3, 0, '2016-04-30 21:50:11', 300, 0, 1, 300, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.60', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202429200458', 6200138, 194, 0, 1, 16, 10073, 100, 0, 3, 0, '2016-04-30 21:51:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2668);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202437500459', 6200024, 23, 5, 3, 51, 10073, 100, 0, 3, 0, '2016-04-30 21:52:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200024', 3, 1, 2, '0', '', '182.133.177.58', 2669);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202454900460', 6200038, 35, 5, 1, 27, 10154, 400, 0, 3, 0, '2016-04-30 21:55:49', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', '', '218.77.75.24', 2670);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202455400461', 6200038, 35, 5, 1, 27, 10154, 400, 0, 3, 0, '2016-04-30 21:55:54', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200038', 3, 1, 2, '0', 'cera point', '218.77.75.24', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202670800462', 6200068, 181, 0, 3, 32, 20000, 100, 0, 3, 0, '2016-04-30 22:31:48', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '182.34.163.230', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202765800463', 6200139, 195, 0, 3, 37, 10060, 100, 0, 3, 0, '2016-04-30 22:47:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2671);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202767800464', 6200139, 195, 0, 3, 37, 10073, 100, 0, 3, 0, '2016-04-30 22:47:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2672);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800465', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2673);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800466', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2674);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800467', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2675);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800468', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2676);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800469', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2677);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800470', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2678);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800471', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2679);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800472', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2680);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800473', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2681);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800474', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2682);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800475', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2683);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800476', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2684);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800477', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2685);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800478', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2686);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800479', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2687);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800480', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2688);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800481', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2689);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800482', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2690);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800483', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2691);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202886800484', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:07:49', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2692);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202894500485', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2693);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202895900486', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2694);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000487', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-04-30 23:09:30', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2695);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000488', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-04-30 23:09:30', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2696);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000489', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-04-30 23:09:30', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2697);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000490', 6200125, 167, 5, 4, 38, 10601, 50, 0, 3, 0, '2016-04-30 23:09:30', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2698);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000491', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:09:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2699);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000492', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:09:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2700);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000493', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:09:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2701);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000494', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:09:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2702);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897000495', 6200125, 167, 5, 4, 38, 10602, 100, 0, 3, 0, '2016-04-30 23:09:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2703);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200496', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2704);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200497', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2705);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200498', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2706);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200499', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2707);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200500', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2708);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200501', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2709);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200502', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2710);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200503', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2711);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200504', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2712);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200505', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2713);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200506', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2714);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200507', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2715);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200508', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2716);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200509', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2717);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200510', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2718);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200511', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2719);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200512', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2720);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200513', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2721);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200514', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2722);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200515', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2723);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200516', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2724);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200517', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2725);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200518', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2726);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200519', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2727);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200520', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2728);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200521', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2729);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200522', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2730);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200523', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2731);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200524', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2732);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200525', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2733);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200526', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2734);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200527', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2735);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202897200528', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2736);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100529', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2737);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100530', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2738);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100531', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2739);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100532', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2740);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100533', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2741);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100534', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2742);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100535', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2743);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100536', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2744);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100537', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2745);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100538', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2746);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100539', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2747);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100540', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2748);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100541', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2749);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100542', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2750);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100543', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2751);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100544', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2752);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100545', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2753);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100546', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2754);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100547', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2755);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100548', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2756);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100549', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2757);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100550', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2758);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100551', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2759);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100552', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2760);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202899100553', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:09:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2761);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202926100554', 6200055, 125, 3, 1, 40, 10000, 20, 0, 3, 0, '2016-04-30 23:14:21', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', 'cera point', '113.77.137.194', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202927600555', 6200055, 125, 3, 1, 40, 10001, 60, 0, 3, 0, '2016-04-30 23:14:36', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', 'cera point', '113.77.137.194', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146202941500556', 6200125, 167, 5, 4, 38, 100252, 5760, 0, 3, 0, '2016-04-30 23:16:55', 5760, 0, 1, 5760, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.5.3', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000557', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2762);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000558', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2763);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000559', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2764);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000560', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2765);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000561', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2766);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000562', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2767);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000563', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2768);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000564', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2769);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000565', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2770);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000566', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2771);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000567', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2772);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000568', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2773);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000569', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2774);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000570', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2775);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000571', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2776);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000572', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2777);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000573', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2778);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000574', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2779);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000575', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2780);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000576', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2781);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000577', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2782);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000578', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2783);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000579', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2784);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000580', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2785);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000581', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2786);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000582', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2787);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000583', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2788);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000584', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2789);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000585', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2790);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000586', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2791);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000587', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2792);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000588', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2793);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203036000589', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2794);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100590', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2795);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100591', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2796);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100592', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2797);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100593', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2798);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100594', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2799);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100595', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2800);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100596', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2801);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100597', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2802);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100598', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2803);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100599', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2804);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100600', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2805);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100601', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2806);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100602', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2807);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100603', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2808);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100604', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2809);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100605', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2810);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100606', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2811);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100607', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2812);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203037100608', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-04-30 23:32:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2813);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203041700609', 6200139, 195, 0, 3, 37, 100205, 11760, 0, 3, 0, '2016-04-30 23:33:38', 11760, 0, 1, 11760, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203127000610', 6200139, 195, 0, 3, 37, 1800010, 90, 0, 3, 0, '2016-04-30 23:47:50', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203175600611', 6200007, 11, 3, 20, 81, 10110, 180, 0, 3, 0, '2016-04-30 23:55:56', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.2.196', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203210000612', 6200057, 55, 0, 19, 70, 10110, 180, 0, 3, 0, '2016-05-01 00:01:40', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203381400613', 6200082, 97, 8, 2, 33, 10073, 100, 0, 3, 0, '2016-05-01 00:30:14', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', 'cera point', '117.75.255.175', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203577100614', 6200007, 11, 3, 20, 81, 10111, 50, 0, 3, 0, '2016-05-01 01:02:51', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.2.196', 2814);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203606200615', 6200083, 85, 0, 17, 66, 10210, 360, 0, 3, 0, '2016-05-01 01:07:42', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.217.185.33', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203617900616', 6200082, 97, 8, 2, 34, 10073, 100, 0, 3, 0, '2016-05-01 01:09:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200082', 3, 1, 2, '0', '', '117.75.255.175', 2815);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203635900617', 6200011, 18, 2, 17, 65, 10032, 380, 0, 3, 0, '2016-05-01 01:12:39', 380, 0, 30, 380, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '1.82.200.35', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146203640400618', 6200057, 55, 0, 19, 70, 10073, 100, 0, 3, 0, '2016-05-01 01:13:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.49', 2816);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146204962800619', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-05-01 04:53:48', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2817);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146204962800620', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-05-01 04:53:48', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2818);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146204962800621', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-05-01 04:53:48', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2819);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146204962800622', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-05-01 04:53:48', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2820);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146204962800623', 6200125, 167, 5, 4, 38, 10600, 10, 0, 3, 0, '2016-05-01 04:53:48', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.3', 2821);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146204964000624', 6200125, 167, 5, 4, 38, 10110, 180, 0, 3, 0, '2016-05-01 04:54:00', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.5.3', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146205875900625', 6200146, 203, 0, 0, 2, 100329, 960, 0, 3, 0, '2016-05-01 07:25:59', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 1, '0', '', '121.206.226.78', 2822);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146205877200626', 6200146, 203, 0, 0, 2, 10073, 100, 0, 3, 0, '2016-05-01 07:26:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 2823);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146205890100627', 6200146, 203, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-05-01 07:28:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 2824);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146205892600628', 6200146, 203, 0, 0, 2, 10000, 20, 0, 3, 0, '2016-05-01 07:28:46', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 2825);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146205928200629', 6200121, 170, 3, 4, 50, 10004, 180, 0, 3, 0, '2016-05-01 07:34:42', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146205957700630', 6200128, 172, 0, 3, 60, 10110, 180, 0, 3, 0, '2016-05-01 07:39:37', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.97.48.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206062700631', 6200146, 203, 0, 0, 8, 10001, 60, 0, 3, 0, '2016-05-01 07:57:07', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 2826);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206063400632', 6200146, 203, 0, 0, 8, 10002, 100, 0, 3, 0, '2016-05-01 07:57:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 2827);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206065900633', 6200146, 203, 0, 0, 8, 10003, 140, 0, 3, 0, '2016-05-01 07:57:39', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 2828);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206109900634', 6200128, 172, 0, 3, 60, 10111, 50, 0, 3, 0, '2016-05-01 08:04:59', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '114.97.48.29', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206153200635', 6200121, 170, 3, 4, 51, 10005, 220, 0, 3, 0, '2016-05-01 08:12:12', 220, 0, 1, 220, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206397700636', 6200149, 206, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-05-01 08:52:57', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200149', 3, 1, 1, '0', '', '221.176.144.226', 2829);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206601700637', 6200091, 110, 2, 2, 48, 10154, 400, 0, 3, 0, '2016-05-01 09:26:57', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', 'cera point', '223.73.232.117', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206617100638', 6200146, 203, 0, 3, 18, 10060, 100, 0, 3, 0, '2016-05-01 09:29:31', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', 'cera point', '121.206.226.78', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206730100639', 6200066, 64, 0, 17, 56, 10001, 60, 0, 3, 0, '2016-05-01 09:48:22', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.89.157', 2830);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206749500640', 6200146, 203, 0, 3, 21, 10053, 15, 0, 3, 0, '2016-05-01 09:51:35', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 2831);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206782100641', 6200007, 11, 3, 20, 81, 9100, 5, 0, 3, 0, '2016-05-01 09:57:01', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2832);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206789200642', 6200121, 183, 1, 2, 35, 10053, 15, 0, 3, 0, '2016-05-01 09:58:12', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206872200643', 6200007, 11, 3, 20, 81, 9100, 5, 0, 3, 0, '2016-05-01 10:12:02', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2833);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146206898000644', 6200151, 207, 1, 0, 2, 10080, 100, 0, 3, 0, '2016-05-01 10:16:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200151', 3, 1, 1, '0', '', '122.142.233.206', 2834);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207016800645', 6200150, 205, 8, 0, 12, 10080, 100, 0, 3, 0, '2016-05-01 10:36:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200150', 3, 1, 1, '0', '', '120.210.172.239', 2835);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207160100646', 6200007, 11, 3, 20, 81, 9100, 5, 0, 3, 0, '2016-05-01 11:00:01', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2836);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207197200647', 6200138, 194, 0, 1, 29, 100205, 11760, 0, 3, 0, '2016-05-01 11:06:12', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2837);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207214000648', 6200153, 208, 1, 0, 3, 10080, 100, 0, 3, 0, '2016-05-01 11:09:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 1, '0', '', '183.198.56.85', 2838);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207273100649', 6200153, 208, 1, 0, 5, 10073, 100, 0, 3, 0, '2016-05-01 11:18:51', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207386200650', 6200148, 209, 6, 0, 1, 10060, 100, 0, 3, 0, '2016-05-01 11:37:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200148', 3, 1, 1, '0', '', '220.181.102.195', 2839);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207386600651', 6200148, 209, 6, 0, 1, 10080, 100, 0, 3, 0, '2016-05-01 11:37:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200148', 3, 1, 2, '0', '', '220.181.102.195', 2840);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207395000652', 6200148, 209, 6, 0, 1, 10061, 100, 0, 3, 0, '2016-05-01 11:39:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200148', 3, 1, 2, '0', '', '220.181.102.195', 2841);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207400800653', 6200148, 209, 6, 0, 1, 10001, 60, 0, 3, 0, '2016-05-01 11:40:08', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200148', 3, 1, 2, '0', '', '220.181.102.195', 2842);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207401200654', 6200148, 209, 6, 0, 1, 10002, 100, 0, 3, 0, '2016-05-01 11:40:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200148', 3, 1, 2, '0', '', '220.181.102.195', 2843);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207452500655', 6200146, 203, 0, 3, 28, 10061, 100, 0, 3, 0, '2016-05-01 11:48:46', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', 'cera point', '121.206.226.78', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207456000656', 6200066, 64, 0, 17, 57, 30001, 80, 0, 3, 0, '2016-05-01 11:49:20', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '118.119.89.157', 2844);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207589400657', 6200138, 194, 0, 1, 31, 10000, 20, 0, 3, 0, '2016-05-01 12:11:34', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2845);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207602200658', 6200047, 67, 4, 2, 70, 10600, 10, 0, 3, 0, '2016-05-01 12:13:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.24.237', 2846);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207602200659', 6200047, 67, 4, 2, 70, 10600, 10, 0, 3, 0, '2016-05-01 12:13:42', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.24.237', 2847);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207602200660', 6200047, 67, 4, 2, 70, 10602, 100, 0, 3, 0, '2016-05-01 12:13:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.24.237', 2848);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207602200661', 6200047, 67, 4, 2, 70, 10602, 100, 0, 3, 0, '2016-05-01 12:13:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.24.237', 2849);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207602200662', 6200047, 67, 4, 2, 70, 10602, 100, 0, 3, 0, '2016-05-01 12:13:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.24.237', 2850);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207602200663', 6200047, 67, 4, 2, 70, 10602, 100, 0, 3, 0, '2016-05-01 12:13:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.24.237', 2851);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207776300664', 6200007, 11, 3, 20, 82, 9100, 5, 0, 3, 0, '2016-05-01 12:42:43', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2852);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146207936000665', 6200091, 110, 2, 18, 50, 10112, 1500, 0, 3, 0, '2016-05-01 13:09:21', 1500, 0, 50, 1500, 1, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', '', '223.73.232.117', 2853);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208065300666', 6200153, 211, 5, 0, 3, 10073, 100, 0, 3, 0, '2016-05-01 13:30:53', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208091400667', 6200007, 11, 3, 20, 82, 9100, 5, 0, 3, 0, '2016-05-01 13:35:14', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2854);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208101100668', 6200007, 11, 3, 20, 82, 9002, 240, 0, 3, 0, '2016-05-01 13:36:51', 240, 0, 30, 240, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.0.194', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208398300001', 6200153, 211, 5, 0, 8, 10602, 100, 0, 3, 0, '2016-05-01 14:26:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 2855);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208398300002', 6200153, 211, 5, 0, 8, 10602, 100, 0, 3, 0, '2016-05-01 14:26:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 2856);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208398300003', 6200153, 211, 5, 0, 8, 10602, 100, 0, 3, 0, '2016-05-01 14:26:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 2857);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208398300004', 6200153, 211, 5, 0, 8, 10602, 100, 0, 3, 0, '2016-05-01 14:26:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 2858);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208398300005', 6200153, 211, 5, 0, 8, 10602, 100, 0, 3, 0, '2016-05-01 14:26:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 2859);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208639200001', 6200001, 6, 0, 17, 70, 10154, 400, 0, 3, 0, '2016-05-01 15:06:32', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.229.90', 2860);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208666800002', 6200068, 181, 0, 3, 37, 10060, 100, 0, 3, 0, '2016-05-01 15:11:08', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '182.34.153.12', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400003', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2861);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400004', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2862);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400005', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2863);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400006', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2864);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400007', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2865);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400008', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2866);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400009', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2867);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400010', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2868);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400011', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2869);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400012', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2870);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400013', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2871);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400014', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2872);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400015', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2873);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400016', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2874);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400017', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2875);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400018', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2876);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400019', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2877);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400020', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2878);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400021', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2879);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400022', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2880);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400023', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2881);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400024', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2882);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400025', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2883);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400026', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2884);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208673400027', 6200070, 69, 0, 3, 30, 10073, 100, 0, 3, 0, '2016-05-01 15:12:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '36.43.227.239', 2885);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100028', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2886);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100029', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2887);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100030', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2888);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100031', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2889);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100032', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2890);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100033', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2891);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100034', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2892);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100035', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2893);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100036', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2894);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100037', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2895);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100038', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2896);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100039', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2897);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100040', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2898);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100041', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2899);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100042', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2900);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100043', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2901);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100044', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:11', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2902);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100045', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2903);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100046', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2904);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100047', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2905);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100048', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2906);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100049', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2907);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100050', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2908);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100051', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2909);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208685100052', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-01 15:14:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '36.43.227.239', 2910);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100053', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2911);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100054', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2912);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100055', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2913);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100056', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2914);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100057', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2915);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100058', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2916);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100059', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2917);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100060', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2918);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100061', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2919);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100062', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2920);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100063', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2921);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100064', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2922);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208695100065', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '36.43.227.239', 2923);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200066', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2924);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200067', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2925);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200068', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2926);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200069', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2927);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200070', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2928);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200071', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2929);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200072', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2930);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200073', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:42', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2931);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200074', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2932);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200075', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2933);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200076', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2934);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200077', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2935);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208706200078', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:17:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '36.43.227.239', 2936);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400079', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2937);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400080', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2938);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400081', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2939);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400082', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2940);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400083', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2941);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400084', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2942);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400085', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2943);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400086', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2944);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400087', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2945);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400088', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2946);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400089', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2947);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400090', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2948);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208733400091', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 15:22:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '36.43.227.239', 2949);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208735100092', 6200007, 11, 3, 20, 82, 10154, 400, 0, 3, 0, '2016-05-01 15:22:31', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2950);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208735100093', 6200007, 11, 3, 20, 82, 10154, 400, 0, 3, 0, '2016-05-01 15:22:32', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2951);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208809900094', 6200154, 212, 4, 0, 5, 10080, 100, 0, 3, 0, '2016-05-01 15:34:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200154', 3, 1, 1, '0', '', '183.6.35.21', 2952);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208810100095', 6200091, 110, 2, 18, 52, 10110, 180, 0, 3, 0, '2016-05-01 15:35:01', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200091', 3, 1, 2, '0', 'cera point', '223.73.232.117', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208817000096', 6200011, 18, 2, 17, 65, 100203, 11760, 0, 3, 0, '2016-05-01 15:36:11', 11760, 0, 1, 11760, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208847500097', 6200011, 18, 2, 17, 65, 4400004, 90, 0, 3, 0, '2016-05-01 15:41:15', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208847500098', 6200011, 18, 2, 17, 65, 4600005, 90, 0, 3, 0, '2016-05-01 15:41:15', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208865200099', 6200011, 18, 2, 17, 65, 10154, 400, 0, 3, 0, '2016-05-01 15:44:12', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208896100100', 6200083, 85, 0, 17, 66, 10154, 400, 0, 3, 0, '2016-05-01 15:49:21', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208897300101', 6200083, 85, 0, 17, 66, 10152, 40, 0, 3, 0, '2016-05-01 15:49:33', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208897300102', 6200083, 85, 0, 17, 66, 10152, 40, 0, 3, 0, '2016-05-01 15:49:33', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208897300103', 6200083, 85, 0, 17, 66, 10152, 40, 0, 3, 0, '2016-05-01 15:49:33', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208897300104', 6200083, 85, 0, 17, 66, 10152, 40, 0, 3, 0, '2016-05-01 15:49:33', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208897900105', 6200083, 85, 0, 17, 66, 10151, 20, 0, 3, 0, '2016-05-01 15:49:39', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208898500106', 6200083, 85, 0, 17, 66, 10150, 5, 0, 3, 0, '2016-05-01 15:49:45', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208898500107', 6200083, 85, 0, 17, 66, 10150, 5, 0, 3, 0, '2016-05-01 15:49:45', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208899100108', 6200083, 85, 0, 17, 66, 10150, 5, 0, 3, 0, '2016-05-01 15:49:51', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.178.39', 2953);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208899100109', 6200083, 85, 0, 17, 66, 10150, 5, 0, 3, 0, '2016-05-01 15:49:51', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.178.39', 2954);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208899100110', 6200083, 85, 0, 17, 66, 10150, 5, 0, 3, 0, '2016-05-01 15:49:51', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', '', '171.223.178.39', 2955);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208905800111', 6200011, 18, 2, 17, 65, 10002, 100, 0, 3, 0, '2016-05-01 15:50:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208951100112', 6200057, 55, 0, 19, 70, 10153, 200, 0, 3, 0, '2016-05-01 15:58:32', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.182', 2956);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208960300113', 6200138, 194, 0, 1, 37, 10153, 200, 0, 3, 0, '2016-05-01 16:00:03', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', 'cera point', '180.158.80.25', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146208988700114', 6200154, 212, 4, 0, 10, 10073, 100, 0, 3, 0, '2016-05-01 16:04:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200154', 3, 1, 2, '0', '', '183.6.35.21', 2957);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209019500115', 6200007, 11, 3, 20, 82, 10111, 50, 0, 3, 0, '2016-05-01 16:09:55', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2958);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209020100116', 6200068, 181, 0, 3, 38, 10061, 100, 0, 3, 0, '2016-05-01 16:10:01', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '182.34.153.12', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209035800117', 6200139, 195, 0, 3, 37, 10600, 10, 0, 3, 0, '2016-05-01 16:12:38', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2959);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209035800118', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:12:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2960);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209035800119', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:12:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2961);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209035800120', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:12:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2962);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209035800121', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:12:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2963);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209042900122', 6200057, 55, 0, 19, 70, 10152, 40, 0, 3, 0, '2016-05-01 16:13:49', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209054700123', 6200139, 195, 0, 3, 37, 1800003, 90, 0, 3, 0, '2016-05-01 16:15:47', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209062500124', 6200139, 195, 0, 3, 37, 1400007, 90, 0, 3, 0, '2016-05-01 16:17:05', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209065200125', 6200139, 195, 0, 3, 37, 1600000, 90, 0, 3, 0, '2016-05-01 16:17:32', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209080200126', 6200139, 195, 0, 3, 37, 1700001, 90, 0, 3, 0, '2016-05-01 16:20:02', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209098700127', 6200057, 55, 0, 19, 70, 10152, 40, 0, 3, 0, '2016-05-01 16:23:07', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.98.182', 2964);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209102000128', 6200057, 55, 0, 19, 70, 10150, 5, 0, 3, 0, '2016-05-01 16:23:40', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209102000129', 6200057, 55, 0, 19, 70, 10150, 5, 0, 3, 0, '2016-05-01 16:23:40', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209102000130', 6200057, 55, 0, 19, 70, 10150, 5, 0, 3, 0, '2016-05-01 16:23:40', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209121400131', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:26:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2965);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209121400132', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:26:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2966);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209121400133', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:26:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2967);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209121400134', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:26:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2968);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209121400135', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:26:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2969);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209125400136', 6200139, 195, 0, 3, 37, 1000008, 90, 0, 3, 0, '2016-05-01 16:27:34', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209127800137', 6200139, 195, 0, 3, 37, 1200006, 90, 0, 3, 0, '2016-05-01 16:27:58', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209131200138', 6200139, 195, 0, 3, 37, 1300002, 90, 0, 3, 0, '2016-05-01 16:28:32', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209133700139', 6200139, 195, 0, 3, 37, 1500000, 90, 0, 3, 0, '2016-05-01 16:28:57', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209136700140', 6200139, 195, 0, 3, 37, 20000, 100, 0, 3, 0, '2016-05-01 16:29:27', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209153300141', 6200125, 167, 5, 4, 39, 10152, 40, 0, 3, 0, '2016-05-01 16:32:13', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209169500142', 6200125, 167, 5, 4, 39, 10152, 40, 0, 3, 0, '2016-05-01 16:34:55', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209188400143', 6200125, 167, 5, 4, 39, 10152, 40, 0, 3, 0, '2016-05-01 16:38:04', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2970);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209199600144', 6200125, 167, 5, 4, 39, 10152, 40, 0, 3, 0, '2016-05-01 16:39:56', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2971);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209199900145', 6200125, 167, 5, 4, 39, 10152, 40, 0, 3, 0, '2016-05-01 16:39:59', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2972);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209202500146', 6200154, 212, 4, 2, 15, 10001, 60, 0, 3, 0, '2016-05-01 16:40:25', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200154', 3, 1, 2, '0', '', '183.6.35.21', 2973);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209215100147', 6200125, 167, 5, 4, 39, 10152, 40, 0, 3, 0, '2016-05-01 16:42:31', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2974);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209227700148', 6200139, 195, 0, 3, 37, 10602, 100, 0, 3, 0, '2016-05-01 16:44:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 2975);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209228400149', 6200139, 195, 0, 3, 37, 10153, 200, 0, 3, 0, '2016-05-01 16:44:44', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209232800150', 6200057, 55, 0, 19, 70, 10150, 5, 0, 3, 0, '2016-05-01 16:45:28', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209232800151', 6200057, 55, 0, 19, 70, 10150, 5, 0, 3, 0, '2016-05-01 16:45:28', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209273800152', 6200057, 55, 0, 19, 70, 10150, 5, 0, 3, 0, '2016-05-01 16:52:18', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209311600153', 6200007, 11, 3, 20, 82, 10153, 200, 0, 3, 0, '2016-05-01 16:58:36', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2976);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209413000154', 6200057, 55, 0, 19, 70, 10150, 5, 0, 3, 0, '2016-05-01 17:15:30', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209443300155', 6200138, 196, 4, 2, 33, 10000, 20, 0, 3, 0, '2016-05-01 17:20:33', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 2977);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209540600156', 6200057, 55, 0, 19, 71, 10150, 5, 0, 3, 0, '2016-05-01 17:36:46', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209540600157', 6200057, 55, 0, 19, 71, 10150, 5, 0, 3, 0, '2016-05-01 17:36:46', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209588600158', 6200007, 213, 4, 0, 1, 10000, 20, 0, 3, 0, '2016-05-01 17:44:46', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '183.38.0.194', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209622300159', 6200057, 55, 0, 19, 71, 10150, 5, 0, 3, 0, '2016-05-01 17:50:23', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209655900160', 6200007, 11, 3, 20, 82, 31100, 240, 0, 3, 0, '2016-05-01 17:55:59', 240, 0, 1, 240, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '183.38.0.194', 2978);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209687800161', 6200057, 55, 0, 19, 71, 10150, 5, 0, 3, 0, '2016-05-01 18:01:18', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209755500162', 6200057, 55, 0, 19, 71, 10152, 40, 0, 3, 0, '2016-05-01 18:12:35', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209916200163', 6200144, 214, 1, 0, 2, 10073, 100, 0, 3, 0, '2016-05-01 18:39:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 1, '0', '', '120.86.125.129', 2979);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209916200164', 6200144, 214, 1, 0, 2, 10073, 100, 0, 3, 0, '2016-05-01 18:39:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2980);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209922800165', 6200144, 214, 1, 0, 2, 10080, 100, 0, 3, 0, '2016-05-01 18:40:28', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2981);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209930200166', 6200144, 214, 1, 0, 2, 10000, 20, 0, 3, 0, '2016-05-01 18:41:42', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2982);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209930600167', 6200144, 214, 1, 0, 2, 10001, 60, 0, 3, 0, '2016-05-01 18:41:47', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2983);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209931000168', 6200144, 214, 1, 0, 2, 10002, 100, 0, 3, 0, '2016-05-01 18:41:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2984);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209931400169', 6200144, 214, 1, 0, 2, 10003, 140, 0, 3, 0, '2016-05-01 18:41:54', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2985);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209931800170', 6200144, 214, 1, 0, 2, 10004, 180, 0, 3, 0, '2016-05-01 18:41:58', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2986);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209932300171', 6200144, 214, 1, 0, 2, 10005, 220, 0, 3, 0, '2016-05-01 18:42:03', 220, 0, 1, 220, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2987);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209940100172', 6200125, 167, 5, 4, 40, 10600, 10, 0, 3, 0, '2016-05-01 18:43:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2988);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209940100173', 6200125, 167, 5, 4, 40, 10600, 10, 0, 3, 0, '2016-05-01 18:43:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2989);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209940100174', 6200125, 167, 5, 4, 40, 10600, 10, 0, 3, 0, '2016-05-01 18:43:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2990);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209940100175', 6200125, 167, 5, 4, 40, 10600, 10, 0, 3, 0, '2016-05-01 18:43:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2991);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209940100176', 6200125, 167, 5, 4, 40, 10600, 10, 0, 3, 0, '2016-05-01 18:43:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 2992);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146209941200177', 6200125, 167, 5, 4, 40, 10110, 180, 0, 3, 0, '2016-05-01 18:43:32', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210010400178', 6200144, 214, 1, 0, 5, 100355, 960, 0, 3, 0, '2016-05-01 18:55:04', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 2993);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210136000179', 6200125, 167, 5, 4, 41, 10152, 40, 0, 3, 0, '2016-05-01 19:16:00', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210154600180', 6200116, 156, 0, 3, 49, 10073, 100, 0, 3, 0, '2016-05-01 19:19:06', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210264500181', 6200125, 167, 5, 4, 41, 10152, 40, 0, 3, 0, '2016-05-01 19:37:25', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210269000182', 6200125, 167, 5, 4, 41, 10152, 40, 0, 3, 0, '2016-05-01 19:38:10', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210293700183', 6200139, 195, 0, 3, 40, 10110, 180, 0, 3, 0, '2016-05-01 19:42:17', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210345300184', 6200057, 55, 0, 19, 72, 10151, 20, 0, 3, 0, '2016-05-01 19:50:53', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210351400185', 6200105, 135, 0, 1, 24, 10060, 100, 0, 3, 0, '2016-05-01 19:51:54', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200105', 3, 1, 2, '0', '', '171.9.25.213', 2994);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210398700186', 6200154, 212, 4, 2, 31, 20000, 100, 0, 3, 0, '2016-05-01 19:59:47', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200154', 3, 1, 2, '0', 'cera point', '183.6.35.21', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210443200187', 6200125, 167, 5, 4, 41, 10152, 40, 0, 3, 0, '2016-05-01 20:07:12', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210460700188', 6200057, 55, 0, 19, 72, 10150, 5, 0, 3, 0, '2016-05-01 20:10:07', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210460700189', 6200057, 55, 0, 19, 72, 10150, 5, 0, 3, 0, '2016-05-01 20:10:07', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210483400190', 6200057, 55, 0, 19, 72, 10152, 40, 0, 3, 0, '2016-05-01 20:13:54', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210512200191', 6200062, 65, 5, 2, 36, 10154, 400, 0, 3, 0, '2016-05-01 20:18:42', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200062', 3, 1, 2, '0', 'cera point', '119.129.74.241', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210516900192', 6200105, 135, 0, 1, 26, 100351, 960, 0, 3, 0, '2016-05-01 20:19:29', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200105', 3, 1, 2, '0', '', '171.9.25.213', 2995);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210579300193', 6200057, 55, 0, 19, 72, 10150, 5, 0, 3, 0, '2016-05-01 20:29:53', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661500194', 6200011, 18, 2, 17, 66, 4300008, 90, 0, 3, 0, '2016-05-01 20:43:36', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661500195', 6200011, 18, 2, 17, 66, 4500000, 90, 0, 3, 0, '2016-05-01 20:43:36', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661900196', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:43:39', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661900197', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:43:39', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661900198', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:43:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661900199', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:43:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661900200', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:43:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661900201', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:43:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210661900202', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:43:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210664500203', 6200057, 55, 0, 19, 72, 10073, 100, 0, 3, 0, '2016-05-01 20:44:05', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.182', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210688200204', 6200083, 85, 0, 17, 69, 10150, 5, 0, 3, 0, '2016-05-01 20:48:02', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210688200205', 6200083, 85, 0, 17, 69, 10150, 5, 0, 3, 0, '2016-05-01 20:48:03', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210688200206', 6200083, 85, 0, 17, 69, 10150, 5, 0, 3, 0, '2016-05-01 20:48:03', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210843800207', 6200161, 216, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-05-01 21:13:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200161', 3, 1, 1, '0', '', '125.121.196.37', 2996);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210880600208', 6200083, 85, 0, 17, 70, 10210, 360, 0, 3, 0, '2016-05-01 21:20:06', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200083', 3, 1, 2, '0', 'cera point', '171.223.178.39', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210997400209', 6200021, 19, 3, 3, 17, 10000, 20, 0, 3, 0, '2016-05-01 21:39:34', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200021', 3, 1, 2, '0', '', '218.14.173.66', 2997);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210997900210', 6200021, 19, 3, 3, 17, 10001, 60, 0, 3, 0, '2016-05-01 21:39:39', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200021', 3, 1, 2, '0', '', '218.14.173.66', 2998);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146210998100211', 6200001, 6, 0, 17, 79, 10110, 180, 0, 3, 0, '2016-05-01 21:39:41', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '219.134.229.90', 2999);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211000600212', 6200021, 19, 3, 3, 17, 10002, 100, 0, 3, 0, '2016-05-01 21:40:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200021', 3, 1, 2, '0', '', '218.14.173.66', 3000);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211001500213', 6200021, 19, 3, 3, 17, 10003, 140, 0, 3, 0, '2016-05-01 21:40:15', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200021', 3, 1, 2, '0', '', '218.14.173.66', 3001);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211002200214', 6200021, 19, 3, 3, 17, 10004, 180, 0, 3, 0, '2016-05-01 21:40:22', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200021', 3, 1, 2, '0', '', '218.14.173.66', 3002);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211008700215', 6200021, 19, 3, 3, 17, 10060, 100, 0, 3, 0, '2016-05-01 21:41:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200021', 3, 1, 2, '0', '', '218.14.173.66', 3003);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211009700216', 6200021, 19, 3, 3, 17, 10061, 100, 0, 3, 0, '2016-05-01 21:41:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200021', 3, 1, 2, '0', '', '218.14.173.66', 3004);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211011600217', 6200086, 96, 0, 19, 53, 10001, 60, 0, 3, 0, '2016-05-01 21:41:57', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', 'cera point', '171.40.205.64', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211015200218', 6200086, 96, 0, 19, 53, 10002, 100, 0, 3, 0, '2016-05-01 21:42:32', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', 'cera point', '171.40.205.64', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211078000219', 6200037, 34, 1, 17, 65, 10073, 100, 0, 3, 0, '2016-05-01 21:53:00', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211078000220', 6200037, 34, 1, 17, 65, 10073, 100, 0, 3, 0, '2016-05-01 21:53:00', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211090000221', 6200159, 217, 7, 0, 3, 10080, 100, 0, 3, 0, '2016-05-01 21:55:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 1, '0', '', '117.191.150.250', 3005);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211140300222', 6200036, 86, 5, 19, 62, 10061, 100, 0, 3, 0, '2016-05-01 22:03:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.118', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211224700223', 6200144, 214, 1, 0, 12, 10060, 100, 0, 3, 0, '2016-05-01 22:17:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200144', 3, 1, 2, '0', '', '120.86.125.129', 3006);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211265700224', 6200159, 217, 7, 0, 10, 100356, 960, 0, 3, 0, '2016-05-01 22:24:17', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', '', '117.191.150.250', 3007);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211289300225', 6200093, 115, 5, 1, 32, 10061, 100, 0, 3, 0, '2016-05-01 22:28:13', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', 'cera point', '223.73.25.31', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211394300226', 6200093, 115, 5, 1, 32, 20000, 100, 0, 3, 0, '2016-05-01 22:45:43', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200093', 3, 1, 2, '0', 'cera point', '223.73.25.31', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211477600227', 6200141, 197, 7, 4, 30, 10073, 100, 0, 3, 0, '2016-05-01 22:59:36', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211493300228', 6200159, 217, 7, 1, 17, 10053, 15, 0, 3, 0, '2016-05-01 23:02:13', 15, 0, 10, 15, 1, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', '', '117.191.150.250', 3008);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211555300229', 6200164, 219, 1, 0, 2, 10080, 100, 0, 3, 0, '2016-05-01 23:12:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 1, '0', '', '218.56.175.214', 3009);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211841200001', 6200159, 217, 7, 1, 19, 10601, 50, 0, 3, 0, '2016-05-02 00:00:12', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', 'cera point', '117.191.150.250', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211845900002', 6200159, 217, 7, 1, 19, 10600, 10, 0, 3, 0, '2016-05-02 00:00:59', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', '', '117.191.150.250', 3010);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211845900003', 6200159, 217, 7, 1, 19, 10600, 10, 0, 3, 0, '2016-05-02 00:00:59', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', '', '117.191.150.250', 3011);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211847300004', 6200159, 217, 7, 1, 19, 10073, 100, 0, 3, 0, '2016-05-02 00:01:14', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', 'cera point', '117.191.150.250', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211967900006', 6200139, 195, 0, 3, 41, 10602, 100, 0, 3, 0, '2016-05-02 00:21:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 3012);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211967900007', 6200139, 195, 0, 3, 41, 10602, 100, 0, 3, 0, '2016-05-02 00:21:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 3013);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211967900008', 6200139, 195, 0, 3, 41, 10602, 100, 0, 3, 0, '2016-05-02 00:21:20', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.105', 3014);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146211969200009', 6200139, 195, 0, 3, 41, 10110, 180, 0, 3, 0, '2016-05-02 00:21:32', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.105', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212068600010', 6200011, 222, 0, 0, 3, 10060, 100, 0, 3, 0, '2016-05-02 00:38:06', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212069200011', 6200011, 222, 0, 0, 3, 10061, 100, 0, 3, 0, '2016-05-02 00:38:12', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '36.43.227.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212134600012', 6200022, 24, 1, 19, 67, 10600, 10, 0, 3, 0, '2016-05-02 00:49:06', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.106.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212135700013', 6200022, 24, 1, 19, 67, 10600, 10, 0, 3, 0, '2016-05-02 00:49:17', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3015);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212136500014', 6200022, 24, 1, 19, 67, 10154, 400, 0, 3, 0, '2016-05-02 00:49:25', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', 'cera point', '183.16.106.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212158000015', 6200164, 219, 1, 0, 10, 10000, 20, 0, 3, 0, '2016-05-02 00:53:00', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212226800016', 6200022, 24, 1, 19, 67, 2300018, 105, 0, 3, 0, '2016-05-02 01:04:28', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3016);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212226800017', 6200022, 24, 1, 19, 67, 2300020, 105, 0, 3, 0, '2016-05-02 01:04:28', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3017);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212226800018', 6200022, 24, 1, 19, 67, 2400018, 105, 0, 3, 0, '2016-05-02 01:04:29', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3018);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212226800019', 6200022, 24, 1, 19, 67, 2400020, 105, 0, 3, 0, '2016-05-02 01:04:29', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3019);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212233700020', 6200022, 24, 1, 19, 67, 2300018, 105, 0, 3, 0, '2016-05-02 01:05:37', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3020);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212233700021', 6200022, 24, 1, 19, 67, 2300020, 105, 0, 3, 0, '2016-05-02 01:05:37', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3021);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212236800022', 6200022, 24, 1, 19, 67, 2300018, 105, 0, 3, 0, '2016-05-02 01:06:08', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3022);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212236800023', 6200022, 24, 1, 19, 67, 2300020, 105, 0, 3, 0, '2016-05-02 01:06:08', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3023);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212239100024', 6200022, 24, 1, 19, 67, 2300018, 105, 0, 3, 0, '2016-05-02 01:06:31', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3024);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212239100025', 6200022, 24, 1, 19, 67, 2300020, 105, 0, 3, 0, '2016-05-02 01:06:31', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3025);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212241200026', 6200022, 24, 1, 19, 67, 2300018, 105, 0, 3, 0, '2016-05-02 01:06:52', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3026);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212241200027', 6200022, 24, 1, 19, 67, 2300020, 105, 0, 3, 0, '2016-05-02 01:06:52', 105, 0, 1, 105, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.106.178', 3027);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212248500028', 6200055, 108, 0, 1, 15, 10100, 180, 0, 3, 0, '2016-05-02 01:08:05', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', '', '113.77.137.194', 3028);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212262200029', 6200055, 108, 0, 3, 15, 100350, 960, 0, 3, 0, '2016-05-02 01:10:22', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', '', '113.77.137.194', 3029);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212310300030', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212310300031', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212310300032', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212310300033', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212310300034', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212310300035', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212310300036', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212311300037', 6200164, 219, 1, 0, 13, 10600, 10, 0, 3, 0, '2016-05-02 01:18:33', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212313800038', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212313800039', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212313800040', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212313800041', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212313800042', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212313800043', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212313800044', 6200164, 219, 1, 0, 13, 10602, 100, 0, 3, 0, '2016-05-02 01:18:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212324300045', 6200164, 219, 1, 0, 13, 10073, 100, 0, 3, 0, '2016-05-02 01:20:43', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212356100046', 6200164, 219, 1, 0, 13, 10001, 60, 0, 3, 0, '2016-05-02 01:26:01', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212356500047', 6200164, 219, 1, 0, 13, 10002, 100, 0, 3, 0, '2016-05-02 01:26:05', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212358600048', 6200164, 219, 1, 0, 13, 10060, 100, 0, 3, 0, '2016-05-02 01:26:26', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212359200049', 6200159, 217, 7, 1, 28, 10152, 40, 0, 3, 0, '2016-05-02 01:26:32', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', 'cera point', '117.191.150.250', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212359200050', 6200159, 217, 7, 1, 28, 10152, 40, 0, 3, 0, '2016-05-02 01:26:32', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200159', 3, 1, 2, '0', 'cera point', '117.191.150.250', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212359500051', 6200164, 219, 1, 0, 13, 10061, 100, 0, 3, 0, '2016-05-02 01:26:35', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212360400052', 6200164, 219, 1, 0, 13, 10003, 140, 0, 3, 0, '2016-05-02 01:26:44', 140, 0, 1, 140, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212361000053', 6200164, 219, 1, 0, 13, 10004, 180, 0, 3, 0, '2016-05-02 01:26:50', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146212599900054', 6200166, 223, 1, 0, 8, 10080, 100, 0, 3, 0, '2016-05-02 02:06:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200166', 3, 1, 1, '0', '', '223.73.59.151', 3030);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146214877200055', 6200128, 172, 0, 19, 64, 10110, 180, 0, 3, 0, '2016-05-02 08:26:12', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146214985700056', 6200128, 172, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-05-02 08:44:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146214985700057', 6200128, 172, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-05-02 08:44:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146214985700058', 6200128, 172, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-05-02 08:44:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146214985700059', 6200128, 172, 0, 19, 65, 10073, 100, 0, 3, 0, '2016-05-02 08:44:17', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215298800060', 6200153, 211, 5, 2, 30, 10600, 10, 0, 3, 0, '2016-05-02 09:36:28', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 3031);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215298800061', 6200153, 211, 5, 2, 30, 10600, 10, 0, 3, 0, '2016-05-02 09:36:28', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 3032);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215298800062', 6200153, 211, 5, 2, 30, 10601, 50, 0, 3, 0, '2016-05-02 09:36:28', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', '', '183.198.56.85', 3033);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215300900063', 6200153, 211, 5, 2, 30, 100360, 960, 0, 3, 0, '2016-05-02 09:36:49', 960, 0, 1, 960, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215375900064', 6200163, 224, 1, 0, 5, 10080, 100, 0, 3, 0, '2016-05-02 09:49:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 1, '0', '', '121.41.122.140', 3034);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215399900065', 6200163, 224, 1, 0, 5, 10060, 100, 0, 3, 0, '2016-05-02 09:53:19', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3035);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215400400066', 6200163, 224, 1, 0, 5, 10061, 100, 0, 3, 0, '2016-05-02 09:53:24', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3036);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215403500067', 6200163, 224, 1, 0, 5, 30005, 200, 0, 3, 0, '2016-05-02 09:53:55', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3037);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215403500068', 6200163, 224, 1, 0, 5, 30005, 200, 0, 3, 0, '2016-05-02 09:53:55', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3038);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215403500069', 6200163, 224, 1, 0, 5, 30015, 200, 0, 3, 0, '2016-05-02 09:53:55', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3039);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215403500070', 6200163, 224, 1, 0, 5, 30015, 200, 0, 3, 0, '2016-05-02 09:53:55', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3040);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215403500071', 6200163, 224, 1, 0, 5, 30025, 200, 0, 3, 0, '2016-05-02 09:53:55', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3041);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146215403500072', 6200163, 224, 1, 0, 5, 30025, 200, 0, 3, 0, '2016-05-02 09:53:55', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3042);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216086000073', 6200153, 211, 5, 2, 34, 10073, 100, 0, 3, 0, '2016-05-02 11:47:40', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216186600074', 6200169, 225, 4, 0, 1, 10080, 100, 0, 3, 0, '2016-05-02 12:04:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200169', 3, 1, 1, '0', '', '1.63.240.227', 3043);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216283700075', 6200169, 225, 4, 0, 5, 10073, 100, 0, 3, 0, '2016-05-02 12:20:37', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200169', 3, 1, 2, '0', 'cera point', '1.63.240.227', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216460300076', 6200128, 172, 0, 19, 67, 10111, 50, 0, 3, 0, '2016-05-02 12:50:03', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216461000077', 6200128, 172, 0, 19, 67, 10110, 180, 0, 3, 0, '2016-05-02 12:50:11', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216683400078', 6200160, 221, 0, 1, 17, 10602, 100, 0, 3, 0, '2016-05-02 13:27:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 1, '0', '', '106.114.18.8', 3044);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216686300079', 6200160, 221, 0, 1, 17, 9501, 200, 0, 3, 0, '2016-05-02 13:27:43', 200, 0, 5, 200, 3, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', 'cera point', '106.114.18.8', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216688800080', 6200138, 196, 4, 2, 40, 10154, 400, 0, 3, 0, '2016-05-02 13:28:08', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3045);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216689300081', 6200138, 196, 4, 2, 40, 10154, 400, 0, 3, 0, '2016-05-02 13:28:13', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3046);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216769400082', 6200153, 211, 5, 2, 35, 10152, 40, 0, 3, 0, '2016-05-02 13:41:34', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216769400083', 6200153, 211, 5, 2, 35, 10152, 40, 0, 3, 0, '2016-05-02 13:41:34', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216769400084', 6200153, 211, 5, 2, 35, 10152, 40, 0, 3, 0, '2016-05-02 13:41:34', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216796900085', 6200011, 222, 0, 3, 16, 10100, 180, 0, 3, 0, '2016-05-02 13:46:09', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '219.145.135.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216806600086', 6200096, 124, 4, 3, 44, 10152, 40, 0, 3, 0, '2016-05-02 13:47:46', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3047);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216807200087', 6200096, 124, 4, 3, 44, 10152, 40, 0, 3, 0, '2016-05-02 13:47:52', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3048);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216820300088', 6200096, 124, 4, 3, 44, 10152, 40, 0, 3, 0, '2016-05-02 13:50:04', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3049);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216820700089', 6200096, 124, 4, 3, 44, 10152, 40, 0, 3, 0, '2016-05-02 13:50:07', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3050);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216884000090', 6200047, 67, 4, 2, 71, 10073, 100, 0, 3, 0, '2016-05-02 14:00:41', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.20.148', 3051);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216903100091', 6200138, 196, 4, 2, 40, 10001, 60, 0, 3, 0, '2016-05-02 14:03:51', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3052);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216903800092', 6200138, 196, 4, 2, 40, 10002, 100, 0, 3, 0, '2016-05-02 14:03:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3053);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216904600093', 6200138, 196, 4, 2, 40, 10060, 100, 0, 3, 0, '2016-05-02 14:04:06', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3054);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216914400094', 6200047, 67, 4, 2, 71, 10600, 10, 0, 3, 0, '2016-05-02 14:05:45', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.20.148', 3055);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216914400095', 6200047, 67, 4, 2, 71, 10600, 10, 0, 3, 0, '2016-05-02 14:05:45', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.20.148', 3056);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216914400096', 6200047, 67, 4, 2, 71, 10602, 100, 0, 3, 0, '2016-05-02 14:05:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.20.148', 3057);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216914400097', 6200047, 67, 4, 2, 71, 10602, 100, 0, 3, 0, '2016-05-02 14:05:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.20.148', 3058);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216914400098', 6200047, 67, 4, 2, 71, 10602, 100, 0, 3, 0, '2016-05-02 14:05:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.20.148', 3059);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216921200099', 6200138, 194, 0, 1, 43, 10001, 60, 0, 3, 0, '2016-05-02 14:06:52', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3060);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216921800100', 6200138, 194, 0, 1, 43, 10002, 100, 0, 3, 0, '2016-05-02 14:06:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3061);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216922300101', 6200138, 194, 0, 1, 43, 10060, 100, 0, 3, 0, '2016-05-02 14:07:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3062);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216922700102', 6200138, 194, 0, 1, 43, 10154, 400, 0, 3, 0, '2016-05-02 14:07:07', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3063);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216923100103', 6200138, 194, 0, 1, 43, 10152, 40, 0, 3, 0, '2016-05-02 14:07:11', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3064);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216935600104', 6200138, 194, 0, 1, 43, 10151, 20, 0, 3, 0, '2016-05-02 14:09:16', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3065);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146216959800105', 6200160, 228, 0, 0, 2, 100205, 11760, 0, 3, 0, '2016-05-02 14:13:19', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3066);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217087400106', 6200163, 224, 1, 3, 28, 10110, 180, 0, 3, 0, '2016-05-02 14:34:34', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '121.41.122.140', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217099700107', 6200160, 228, 0, 0, 7, 10073, 100, 0, 3, 0, '2016-05-02 14:36:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3067);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217218000108', 6200037, 34, 1, 17, 65, 10153, 200, 0, 3, 0, '2016-05-02 14:56:20', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 3068);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217249700109', 6200037, 34, 1, 17, 65, 10601, 50, 0, 3, 0, '2016-05-02 15:01:37', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 3069);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217249700110', 6200037, 34, 1, 17, 65, 10602, 100, 0, 3, 0, '2016-05-02 15:01:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', '', '61.158.84.27', 3070);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217250900111', 6200037, 34, 1, 17, 65, 10153, 200, 0, 3, 0, '2016-05-02 15:01:49', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217289400112', 6200037, 34, 1, 17, 65, 10153, 200, 0, 3, 0, '2016-05-02 15:08:14', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217308700113', 6200164, 219, 1, 2, 33, 10152, 40, 0, 3, 0, '2016-05-02 15:11:27', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217316700114', 6200164, 219, 1, 2, 33, 10151, 20, 0, 3, 0, '2016-05-02 15:12:47', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217442800115', 6200160, 228, 0, 3, 17, 10080, 100, 0, 3, 0, '2016-05-02 15:33:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3071);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217447000116', 6200160, 228, 0, 3, 17, 10000, 20, 0, 3, 0, '2016-05-02 15:34:30', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3072);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217447300117', 6200160, 228, 0, 3, 17, 10001, 60, 0, 3, 0, '2016-05-02 15:34:34', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3073);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217447700118', 6200160, 228, 0, 3, 17, 10002, 100, 0, 3, 0, '2016-05-02 15:34:37', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3074);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217448100119', 6200160, 228, 0, 3, 17, 10003, 140, 0, 3, 0, '2016-05-02 15:34:41', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3075);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217450800120', 6200171, 229, 2, 0, 2, 10080, 100, 0, 3, 0, '2016-05-02 15:35:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200171', 3, 1, 1, '0', '', '59.36.225.230', 3076);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217451700121', 6200160, 228, 0, 3, 17, 30011, 80, 0, 3, 0, '2016-05-02 15:35:17', 80, 0, 1, 80, 1, 1, 0, 1, 0, 0, 0, '6200160', 3, 1, 2, '0', '', '106.114.18.8', 3077);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217510800122', 6200146, 203, 0, 3, 32, 10120, 25, 0, 3, 0, '2016-05-02 15:45:08', 25, 0, 1, 25, 1, 1, 0, 1, 0, 0, 0, '6200146', 3, 1, 2, '0', '', '121.206.226.78', 3078);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217555600123', 6200011, 18, 2, 17, 68, 10003, 140, 0, 3, 0, '2016-05-02 15:52:36', 140, 0, 1, 140, 3, 1, 0, 1, 0, 0, 0, '6200011', 3, 1, 2, '0', 'cera point', '219.145.135.149', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217564000124', 6200141, 197, 7, 4, 37, 10073, 100, 0, 3, 0, '2016-05-02 15:54:00', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217626700125', 6200116, 169, 5, 3, 52, 10602, 100, 0, 3, 0, '2016-05-02 16:04:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3079);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217626700126', 6200116, 169, 5, 3, 52, 10602, 100, 0, 3, 0, '2016-05-02 16:04:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3080);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217626700127', 6200116, 169, 5, 3, 52, 10602, 100, 0, 3, 0, '2016-05-02 16:04:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3081);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217626700128', 6200116, 169, 5, 3, 52, 10602, 100, 0, 3, 0, '2016-05-02 16:04:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3082);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217626700129', 6200116, 169, 5, 3, 52, 10602, 100, 0, 3, 0, '2016-05-02 16:04:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3083);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217626700130', 6200116, 169, 5, 3, 52, 10602, 100, 0, 3, 0, '2016-05-02 16:04:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3084);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146217626700131', 6200116, 169, 5, 3, 52, 10602, 100, 0, 3, 0, '2016-05-02 16:04:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3085);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218149700132', 6200125, 167, 5, 4, 43, 10110, 180, 0, 3, 0, '2016-05-02 17:31:37', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3086);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218234700133', 6200096, 129, 0, 3, 23, 10000, 20, 0, 3, 0, '2016-05-02 17:45:47', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3087);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218235100134', 6200096, 129, 0, 3, 23, 10001, 60, 0, 3, 0, '2016-05-02 17:45:51', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3088);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218238300135', 6200096, 129, 0, 3, 23, 10060, 100, 0, 3, 0, '2016-05-02 17:46:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3089);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218238900136', 6200096, 129, 0, 3, 23, 10061, 100, 0, 3, 0, '2016-05-02 17:46:29', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3090);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218250700137', 6200096, 129, 0, 3, 25, 10152, 40, 0, 3, 0, '2016-05-02 17:48:27', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3091);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218251000138', 6200096, 129, 0, 3, 25, 10152, 40, 0, 3, 0, '2016-05-02 17:48:30', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '119.185.191.113', 3092);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218413300139', 6200163, 224, 1, 3, 28, 10073, 100, 0, 3, 0, '2016-05-02 18:15:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3093);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218413300140', 6200163, 224, 1, 3, 28, 10073, 100, 0, 3, 0, '2016-05-02 18:15:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3094);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218416600141', 6200138, 196, 4, 2, 44, 10110, 180, 0, 3, 0, '2016-05-02 18:16:06', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3095);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218437800142', 6200163, 224, 1, 3, 28, 10073, 100, 0, 3, 0, '2016-05-02 18:19:38', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3096);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218439600143', 6200163, 224, 1, 3, 28, 10073, 100, 0, 3, 0, '2016-05-02 18:19:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3097);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218499400144', 6200121, 170, 3, 4, 59, 20000, 100, 0, 3, 0, '2016-05-02 18:29:54', 100, 0, 100, 100, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218541000145', 6200163, 224, 1, 3, 28, 10001, 60, 0, 3, 0, '2016-05-02 18:36:50', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '121.41.122.140', 3098);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218620500146', 6200037, 34, 1, 17, 66, 10001, 60, 0, 3, 0, '2016-05-02 18:50:05', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218669000147', 6200057, 55, 0, 19, 72, 10151, 20, 0, 3, 0, '2016-05-02 18:58:10', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.72', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218747100148', 6200139, 195, 0, 3, 44, 10153, 200, 0, 3, 0, '2016-05-02 19:11:11', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218786700149', 6200139, 195, 0, 3, 44, 10001, 60, 0, 3, 0, '2016-05-02 19:17:47', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218848000150', 6200164, 219, 1, 2, 34, 10073, 100, 0, 3, 0, '2016-05-02 19:28:00', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218855600151', 6200130, 178, 0, 3, 22, 100348, 960, 0, 3, 0, '2016-05-02 19:29:17', 960, 0, 1, 960, 1, 1, 0, 1, 0, 0, 0, '6200130', 3, 1, 2, '0', '', '175.167.173.38', 3099);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218864200152', 6200127, 171, 0, 3, 35, 10153, 200, 0, 3, 0, '2016-05-02 19:30:42', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218874800153', 6200057, 55, 0, 19, 72, 10151, 20, 0, 3, 0, '2016-05-02 19:32:28', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.72', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218982100154', 6200057, 55, 0, 19, 73, 10151, 20, 0, 3, 0, '2016-05-02 19:50:21', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.72', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146218984400155', 6200138, 194, 0, 1, 43, 10110, 180, 0, 3, 0, '2016-05-02 19:50:45', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3100);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219051700156', 6200039, 37, 0, 1, 50, 10073, 100, 0, 3, 0, '2016-05-02 20:01:57', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '122.224.209.222', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200157', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3101);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200158', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3102);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200159', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3103);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200160', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3104);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200161', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3105);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200162', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3106);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200163', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3107);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200164', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3108);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200165', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3109);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219139200166', 6200001, 6, 0, 17, 79, 10076, 320, 0, 3, 0, '2016-05-02 20:16:33', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3110);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219202000167', 6200068, 181, 0, 3, 47, 10153, 200, 0, 3, 0, '2016-05-02 20:27:00', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '123.169.92.150', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219202500168', 6200068, 181, 0, 3, 47, 10152, 40, 0, 3, 0, '2016-05-02 20:27:05', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '123.169.92.150', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219203200169', 6200068, 181, 0, 3, 47, 10151, 20, 0, 3, 0, '2016-05-02 20:27:12', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '123.169.92.150', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219214700170', 6200057, 55, 0, 19, 73, 10151, 20, 0, 3, 0, '2016-05-02 20:29:07', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.72', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219230700171', 6200179, 231, 0, 0, 1, 10080, 100, 0, 3, 0, '2016-05-02 20:31:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200179', 3, 1, 1, '0', '', '122.224.209.222', 3111);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219262700172', 6200138, 196, 4, 2, 45, 10110, 180, 0, 3, 0, '2016-05-02 20:37:07', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200138', 3, 1, 2, '0', '', '180.158.80.25', 3112);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219308100173', 6200001, 6, 0, 17, 79, 10012, 320, 0, 3, 0, '2016-05-02 20:44:41', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3113);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219308100174', 6200001, 6, 0, 17, 79, 10012, 320, 0, 3, 0, '2016-05-02 20:44:41', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3114);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219308100175', 6200001, 6, 0, 17, 79, 10012, 320, 0, 3, 0, '2016-05-02 20:44:41', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3115);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219308100176', 6200001, 6, 0, 17, 79, 10012, 320, 0, 3, 0, '2016-05-02 20:44:41', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3116);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219312200177', 6200121, 183, 1, 2, 45, 10053, 15, 0, 3, 0, '2016-05-02 20:45:22', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219312200178', 6200121, 183, 1, 2, 45, 10053, 15, 0, 3, 0, '2016-05-02 20:45:22', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219437700179', 6200086, 96, 0, 19, 55, 10152, 40, 0, 3, 0, '2016-05-02 21:06:17', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', '', '58.49.210.61', 3117);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219449000180', 6200121, 183, 1, 2, 47, 10000, 20, 0, 3, 0, '2016-05-02 21:08:10', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219449600181', 6200121, 183, 1, 2, 47, 10001, 60, 0, 3, 0, '2016-05-02 21:08:16', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219520100182', 6200057, 55, 0, 19, 73, 10110, 180, 0, 3, 0, '2016-05-02 21:20:01', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.72', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219537700183', 6200116, 161, 0, 1, 53, 100205, 11760, 0, 3, 0, '2016-05-02 21:22:57', 11760, 0, 1, 11760, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219546100184', 6200116, 161, 0, 1, 53, 10000, 20, 0, 3, 0, '2016-05-02 21:24:21', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300185', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:33', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3118);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300186', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3119);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300187', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3120);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300188', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3121);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300189', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3122);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300190', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3123);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300191', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3124);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300192', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3125);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300193', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3126);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219559300194', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:26:34', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3127);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200195', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:26:52', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3128);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200196', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:26:52', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3129);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200197', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:26:52', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3130);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200198', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:26:52', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3131);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200199', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:26:52', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3132);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200200', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:26:52', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3133);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200201', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:26:52', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3134);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200202', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:26:52', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3135);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200203', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:26:52', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3136);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219561200204', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:26:52', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3137);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000205', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:30:30', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3138);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000206', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:30:30', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3139);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000207', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:30:30', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3140);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000208', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:30:30', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3141);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000209', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:30:30', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3142);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000210', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:30:30', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3143);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000211', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:30:30', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3144);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000212', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:30:30', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3145);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000213', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:30:30', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3146);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219583000214', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:30:30', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3147);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500215', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:33:25', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3148);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500216', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:33:25', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3149);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500217', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:33:25', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3150);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500218', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:33:25', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3151);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500219', 6200001, 6, 0, 17, 79, 10211, 300, 0, 3, 0, '2016-05-02 21:33:25', 300, 0, 1, 300, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3152);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500220', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:33:25', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3153);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500221', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:33:25', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3154);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500222', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:33:25', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3155);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500223', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:33:25', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3156);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219600500224', 6200001, 6, 0, 17, 79, 30000, 250, 0, 3, 0, '2016-05-02 21:33:25', 250, 0, 1, 250, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3157);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400225', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3158);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400226', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3159);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400227', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3160);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400228', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3161);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400229', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3162);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400230', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3163);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400231', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3164);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400232', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3165);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400233', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3166);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219622400234', 6200001, 6, 0, 17, 79, 10073, 100, 0, 3, 0, '2016-05-02 21:37:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3167);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219623600235', 6200176, 233, 0, 0, 5, 10080, 100, 0, 3, 0, '2016-05-02 21:37:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 1, '0', '', '111.227.79.21', 3168);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219688900236', 6200170, 234, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-05-02 21:48:09', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200170', 3, 1, 1, '0', '', '183.209.1.197', 3169);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219699600237', 6200170, 234, 0, 0, 3, 10080, 100, 0, 3, 0, '2016-05-02 21:49:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200170', 3, 1, 2, '0', '', '183.209.1.197', 3170);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219719600238', 6200153, 208, 1, 3, 23, 30011, 80, 0, 3, 0, '2016-05-02 21:53:16', 80, 0, 1, 80, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219723700239', 6200176, 233, 0, 0, 7, 10051, 5, 0, 3, 0, '2016-05-02 21:53:57', 5, 0, 3, 5, 3, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', 'cera point', '111.227.79.21', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219723700240', 6200176, 233, 0, 0, 7, 10051, 5, 0, 3, 0, '2016-05-02 21:53:57', 5, 0, 3, 5, 3, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', 'cera point', '111.227.79.21', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219842200241', 6200057, 55, 0, 19, 73, 10150, 5, 0, 3, 0, '2016-05-02 22:13:42', 5, 0, 1, 5, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.98.72', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219919700242', 6200036, 128, 1, 4, 41, 10000, 20, 0, 3, 0, '2016-05-02 22:26:37', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219920800243', 6200036, 128, 1, 4, 41, 10001, 60, 0, 3, 0, '2016-05-02 22:26:48', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219929300244', 6200135, 185, 0, 1, 41, 10153, 200, 0, 3, 0, '2016-05-02 22:28:13', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200135', 3, 1, 2, '0', 'cera point', '60.219.122.236', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219943600245', 6200176, 233, 0, 0, 12, 10073, 100, 0, 3, 0, '2016-05-02 22:30:36', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', 'cera point', '111.227.79.21', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219969300246', 6200128, 172, 0, 19, 70, 10111, 50, 0, 3, 0, '2016-05-02 22:34:53', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146219981800247', 6200176, 233, 0, 0, 12, 10073, 100, 0, 3, 0, '2016-05-02 22:36:58', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', 'cera point', '111.227.79.21', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220035800248', 6200125, 167, 5, 4, 44, 10600, 10, 0, 3, 0, '2016-05-02 22:45:58', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3171);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220035800249', 6200125, 167, 5, 4, 44, 10600, 10, 0, 3, 0, '2016-05-02 22:45:58', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3172);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220035800250', 6200125, 167, 5, 4, 44, 10601, 50, 0, 3, 0, '2016-05-02 22:45:58', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3173);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220035800251', 6200125, 167, 5, 4, 44, 10601, 50, 0, 3, 0, '2016-05-02 22:45:58', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3174);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220037700252', 6200176, 233, 0, 0, 12, 10153, 200, 0, 3, 0, '2016-05-02 22:46:17', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', '', '111.227.79.21', 3175);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220038500253', 6200182, 236, 0, 0, 1, 10080, 100, 0, 3, 0, '2016-05-02 22:46:25', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200182', 3, 1, 1, '0', '', '116.227.170.112', 3176);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900254', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3177);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900255', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3178);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900256', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3179);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900257', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3180);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900258', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3181);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900259', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3182);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900260', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3183);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900261', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3184);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900262', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3185);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900263', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3186);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900264', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3187);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900265', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3188);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900266', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3189);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900267', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3190);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900268', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3191);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900269', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3192);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900270', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3193);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900271', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3194);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900272', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3195);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900273', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3196);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900274', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3197);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900275', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3198);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900276', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3199);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900277', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3200);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900278', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3201);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900279', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3202);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900280', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3203);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900281', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3204);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900282', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3205);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900283', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3206);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900284', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3207);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900285', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3208);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220045900286', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:40', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3209);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500287', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3210);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500288', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3211);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500289', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3212);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500290', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3213);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500291', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3214);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500292', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3215);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500293', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3216);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500294', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3217);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500295', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3218);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500296', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3219);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500297', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3220);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500298', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3221);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500299', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3222);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500300', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3223);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500301', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3224);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500302', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3225);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500303', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3226);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500304', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3227);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500305', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3228);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500306', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3229);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500307', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3230);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500308', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3231);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500309', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3232);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500310', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3233);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500311', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3234);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500312', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3235);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500313', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3236);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500314', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3237);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500315', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3238);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500316', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3239);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500317', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3240);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500318', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3241);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220047500319', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:47:55', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3242);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800320', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3243);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800321', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3244);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800322', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3245);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800323', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3246);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800324', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3247);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800325', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3248);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800326', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3249);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800327', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3250);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800328', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3251);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800329', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3252);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800330', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3253);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800331', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3254);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800332', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3255);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800333', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3256);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800334', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3257);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800335', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3258);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800336', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3259);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800337', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3260);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800338', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3261);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800339', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3262);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800340', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3263);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220048800341', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3264);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800342', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3265);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800343', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3266);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800344', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3267);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800345', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3268);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800346', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3269);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800347', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3270);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800348', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3271);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800349', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3272);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800350', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3273);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800351', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3274);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800352', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3275);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220049800353', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:48:18', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3276);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220068200354', 6200127, 171, 0, 3, 40, 10154, 400, 0, 3, 0, '2016-05-02 22:51:22', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.27', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400355', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3277);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400356', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3278);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400357', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3279);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400358', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3280);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400359', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3281);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400360', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3282);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400361', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3283);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400362', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3284);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400363', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3285);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400364', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3286);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400365', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3287);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400366', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3288);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400367', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3289);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400368', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3290);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400369', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3291);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400370', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3292);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400371', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3293);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400372', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3294);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400373', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3295);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220084400374', 6200125, 167, 5, 4, 44, 10602, 100, 0, 3, 0, '2016-05-02 22:54:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3296);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220093000375', 6200125, 167, 5, 4, 44, 100210, 11760, 0, 3, 0, '2016-05-02 22:55:30', 11760, 0, 1, 11760, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220172000376', 6200007, 11, 3, 20, 82, 10210, 360, 0, 3, 0, '2016-05-02 23:08:40', 360, 0, 1, 360, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '14.153.241.197', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220179200377', 6200001, 6, 0, 17, 81, 10110, 180, 0, 3, 0, '2016-05-02 23:09:52', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3297);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220179200378', 6200001, 6, 0, 17, 81, 10110, 180, 0, 3, 0, '2016-05-02 23:09:52', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3298);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220179200379', 6200001, 6, 0, 17, 81, 10111, 50, 0, 3, 0, '2016-05-02 23:09:52', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3299);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220179200380', 6200001, 6, 0, 17, 81, 10111, 50, 0, 3, 0, '2016-05-02 23:09:52', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3300);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220346800381', 6200116, 161, 0, 1, 57, 10061, 100, 0, 3, 0, '2016-05-02 23:37:48', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220352900382', 6200116, 161, 0, 1, 57, 10154, 400, 0, 3, 0, '2016-05-02 23:38:49', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220371300383', 6200125, 167, 5, 4, 44, 10154, 400, 0, 3, 0, '2016-05-02 23:41:53', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220374100384', 6200081, 78, 8, 1, 43, 10153, 200, 0, 3, 0, '2016-05-02 23:42:21', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', 'cera point', '61.158.152.167', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220377900385', 6200125, 167, 5, 4, 44, 10110, 180, 0, 3, 0, '2016-05-02 23:42:59', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220386900386', 6200125, 167, 5, 4, 44, 10001, 60, 0, 3, 0, '2016-05-02 23:44:29', 60, 0, 1, 60, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220406300387', 6200125, 167, 5, 4, 44, 9500, 50, 0, 3, 0, '2016-05-02 23:47:43', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220541100388', 6200139, 195, 0, 3, 44, 10110, 180, 0, 3, 0, '2016-05-03 00:10:11', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146220936600389', 6200081, 78, 8, 1, 45, 10073, 100, 0, 3, 0, '2016-05-03 01:16:06', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', 'cera point', '61.158.152.167', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146221166900390', 6200081, 78, 8, 1, 47, 10110, 180, 0, 3, 0, '2016-05-03 01:54:29', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', 'cera point', '61.158.152.167', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223279500391', 6200125, 167, 5, 4, 45, 100227, 1760, 0, 3, 0, '2016-05-03 07:46:35', 1760, 0, 1, 1760, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3301);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223280600392', 6200125, 167, 5, 4, 45, 10060, 100, 0, 3, 0, '2016-05-03 07:46:46', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3302);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223282000393', 6200125, 167, 5, 4, 45, 10061, 100, 0, 3, 0, '2016-05-03 07:47:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3303);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223284300394', 6200125, 167, 5, 4, 45, 10600, 10, 0, 3, 0, '2016-05-03 07:47:23', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3304);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223284300395', 6200125, 167, 5, 4, 45, 10600, 10, 0, 3, 0, '2016-05-03 07:47:23', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3305);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223284300396', 6200125, 167, 5, 4, 45, 10600, 10, 0, 3, 0, '2016-05-03 07:47:23', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.4.11', 3306);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223284900397', 6200125, 167, 5, 4, 45, 10002, 100, 0, 3, 0, '2016-05-03 07:47:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.4.11', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223474000398', 6200128, 172, 0, 19, 74, 10060, 100, 0, 3, 0, '2016-05-03 08:19:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '124.73.14.93', 3307);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223477200399', 6200128, 172, 0, 19, 74, 10061, 100, 0, 3, 0, '2016-05-03 08:19:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '124.73.14.93', 3308);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223479000400', 6200128, 172, 0, 19, 74, 10003, 140, 0, 3, 0, '2016-05-03 08:19:50', 140, 0, 1, 140, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '124.73.14.93', 3309);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223482800401', 6200128, 172, 0, 19, 74, 10111, 50, 0, 3, 0, '2016-05-03 08:20:29', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146223638500402', 6200170, 234, 0, 3, 19, 30015, 200, 0, 3, 0, '2016-05-03 08:46:25', 200, 0, 1, 200, 1, 1, 0, 1, 0, 0, 0, '6200170', 3, 1, 2, '0', '', '183.209.1.197', 3310);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224088100403', 6200170, 234, 0, 3, 28, 10060, 100, 0, 3, 0, '2016-05-03 10:01:21', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200170', 3, 1, 2, '0', '', '183.209.1.197', 3311);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224089000404', 6200170, 234, 0, 3, 28, 10061, 100, 0, 3, 0, '2016-05-03 10:01:30', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200170', 3, 1, 2, '0', '', '183.209.1.197', 3312);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300405', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3313);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300406', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3314);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300407', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3315);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300408', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3316);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300409', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3317);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300410', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3318);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300411', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3319);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300412', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3320);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300413', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3321);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224167300414', 6200022, 24, 1, 19, 67, 10067, 20, 0, 3, 0, '2016-05-03 10:14:33', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3322);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224288900415', 6200029, 27, 4, 19, 51, 10601, 50, 0, 3, 0, '2016-05-03 10:34:49', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224289800416', 6200029, 27, 4, 19, 51, 10601, 50, 0, 3, 0, '2016-05-03 10:34:58', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', '', '27.17.13.18', 3323);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224318900417', 6200170, 234, 0, 3, 32, 10152, 40, 0, 3, 0, '2016-05-03 10:39:49', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200170', 3, 1, 2, '0', '', '183.209.1.197', 3324);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224320200418', 6200029, 27, 4, 19, 51, 10073, 100, 0, 3, 0, '2016-05-03 10:40:02', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '27.17.13.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224403400419', 6200044, 42, 0, 19, 61, 10211, 300, 0, 3, 0, '2016-05-03 10:53:54', 300, 0, 1, 300, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '182.37.126.94', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224464800420', 6200176, 233, 0, 4, 24, 10602, 100, 0, 3, 0, '2016-05-03 11:04:08', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', '', '110.250.225.177', 3325);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224466900421', 6200176, 233, 0, 4, 24, 10073, 100, 0, 3, 0, '2016-05-03 11:04:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', 'cera point', '110.250.225.177', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224466900422', 6200176, 233, 0, 4, 24, 10073, 100, 0, 3, 0, '2016-05-03 11:04:29', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', 'cera point', '110.250.225.177', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224539000423', 6200153, 211, 5, 2, 36, 10073, 100, 0, 3, 0, '2016-05-03 11:16:30', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224760900424', 6200058, 56, 0, 19, 69, 10067, 20, 0, 3, 0, '2016-05-03 11:53:29', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', '', '171.214.61.152', 3326);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224886000425', 6200164, 219, 1, 2, 38, 10152, 40, 0, 3, 0, '2016-05-03 12:14:20', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224905000426', 6200163, 224, 1, 3, 31, 10150, 5, 0, 3, 0, '2016-05-03 12:17:30', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '42.55.169.244', 3327);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224905000427', 6200163, 224, 1, 3, 31, 10150, 5, 0, 3, 0, '2016-05-03 12:17:30', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '42.55.169.244', 3328);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224905600428', 6200058, 148, 3, 2, 26, 10060, 100, 0, 3, 0, '2016-05-03 12:17:36', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '171.214.61.152', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224906800429', 6200058, 148, 3, 2, 26, 10061, 100, 0, 3, 0, '2016-05-03 12:17:48', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '171.214.61.152', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224907600430', 6200163, 224, 1, 3, 31, 10151, 20, 0, 3, 0, '2016-05-03 12:17:56', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224907600431', 6200163, 224, 1, 3, 31, 10152, 40, 0, 3, 0, '2016-05-03 12:17:56', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224924300432', 6200163, 224, 1, 3, 31, 10030, 16, 0, 3, 0, '2016-05-03 12:20:43', 16, 0, 1, 16, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224924300433', 6200163, 224, 1, 3, 31, 10030, 16, 0, 3, 0, '2016-05-03 12:20:43', 16, 0, 1, 16, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224924300434', 6200163, 224, 1, 3, 31, 10030, 16, 0, 3, 0, '2016-05-03 12:20:43', 16, 0, 1, 16, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146224924300435', 6200163, 224, 1, 3, 31, 10030, 16, 0, 3, 0, '2016-05-03 12:20:43', 16, 0, 1, 16, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225016200436', 6200164, 219, 1, 2, 39, 10151, 20, 0, 3, 0, '2016-05-03 12:36:02', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225039600437', 6200128, 172, 0, 19, 75, 10111, 50, 0, 3, 0, '2016-05-03 12:39:56', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225047100438', 6200128, 172, 0, 19, 75, 10110, 180, 0, 3, 0, '2016-05-03 12:41:11', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '124.73.14.93', 3329);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225127700439', 6200176, 233, 0, 4, 28, 10073, 100, 0, 3, 0, '2016-05-03 12:54:38', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', 'cera point', '110.250.225.177', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225194800440', 6200066, 64, 0, 17, 58, 10601, 50, 0, 3, 0, '2016-05-03 13:05:48', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '182.140.196.239', 3330);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225194800441', 6200066, 64, 0, 17, 58, 10602, 100, 0, 3, 0, '2016-05-03 13:05:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '182.140.196.239', 3331);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225194800442', 6200066, 64, 0, 17, 58, 10602, 100, 0, 3, 0, '2016-05-03 13:05:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', '', '182.140.196.239', 3332);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225196500443', 6200022, 24, 1, 19, 68, 10153, 200, 0, 3, 0, '2016-05-03 13:06:05', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200022', 3, 1, 2, '0', '', '183.16.113.116', 3333);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225196800444', 6200066, 64, 0, 17, 58, 10153, 200, 0, 3, 0, '2016-05-03 13:06:08', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '182.140.196.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225196800445', 6200066, 64, 0, 17, 58, 10154, 400, 0, 3, 0, '2016-05-03 13:06:08', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '182.140.196.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225234700446', 6200058, 56, 0, 19, 69, 10067, 20, 0, 3, 0, '2016-05-03 13:12:27', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '171.214.61.152', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100447', 6200047, 57, 0, 18, 74, 10600, 10, 0, 3, 0, '2016-05-03 13:14:31', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3334);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100448', 6200047, 57, 0, 18, 74, 10600, 10, 0, 3, 0, '2016-05-03 13:14:31', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3335);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100449', 6200047, 57, 0, 18, 74, 10600, 10, 0, 3, 0, '2016-05-03 13:14:31', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3336);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100450', 6200047, 57, 0, 18, 74, 10600, 10, 0, 3, 0, '2016-05-03 13:14:31', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3337);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100451', 6200047, 57, 0, 18, 74, 10602, 100, 0, 3, 0, '2016-05-03 13:14:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3338);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100452', 6200047, 57, 0, 18, 74, 10602, 100, 0, 3, 0, '2016-05-03 13:14:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3339);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100453', 6200047, 57, 0, 18, 74, 10602, 100, 0, 3, 0, '2016-05-03 13:14:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3340);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225247100454', 6200047, 57, 0, 18, 74, 10602, 100, 0, 3, 0, '2016-05-03 13:14:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', '', '122.239.30.113', 3341);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225253400455', 6200047, 57, 0, 18, 74, 10153, 200, 0, 3, 0, '2016-05-03 13:15:34', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.30.113', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225293400456', 6200163, 224, 1, 3, 33, 20001, 200, 0, 3, 0, '2016-05-03 13:22:14', 200, 0, 300, 200, 1, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', '', '42.55.169.244', 3342);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225328000457', 6200066, 64, 0, 17, 58, 31100, 240, 0, 3, 0, '2016-05-03 13:28:00', 240, 0, 1, 240, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '182.140.196.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225592000458', 6200163, 224, 1, 3, 34, 10151, 20, 0, 3, 0, '2016-05-03 14:12:00', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225592000459', 6200163, 224, 1, 3, 34, 10152, 40, 0, 3, 0, '2016-05-03 14:12:00', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225592000460', 6200163, 224, 1, 3, 34, 10152, 40, 0, 3, 0, '2016-05-03 14:12:00', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200163', 3, 1, 2, '0', 'cera point', '42.55.169.244', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225620700461', 6200047, 57, 0, 18, 75, 10153, 200, 0, 3, 0, '2016-05-03 14:16:47', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200047', 3, 1, 2, '0', 'cera point', '122.239.30.113', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600462', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3343);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600463', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3344);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600464', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3345);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600465', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3346);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600466', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3347);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600467', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3348);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600468', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3349);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600469', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3350);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600470', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3351);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225759600471', 6200141, 197, 7, 4, 37, 10073, 100, 1, 3, 0, '2016-05-03 14:39:56', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', '', '180.170.148.178', 3352);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225814800472', 6200068, 181, 0, 3, 48, 10100, 180, 0, 3, 0, '2016-05-03 14:49:08', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '182.34.144.57', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225862600473', 6200164, 230, 4, 1, 33, 10151, 20, 0, 3, 0, '2016-05-03 14:57:06', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225862600474', 6200164, 230, 4, 1, 33, 10152, 40, 0, 3, 0, '2016-05-03 14:57:06', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146225899800475', 6200164, 230, 4, 1, 33, 10151, 20, 0, 3, 0, '2016-05-03 15:03:18', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226040900476', 6200164, 219, 1, 2, 39, 10152, 40, 0, 3, 0, '2016-05-03 15:26:49', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226105200477', 6200141, 197, 7, 4, 40, 10073, 100, 0, 3, 0, '2016-05-03 15:37:32', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200141', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226209000478', 6200188, 239, 5, 0, 1, 10073, 100, 1, 3, 0, '2016-05-03 15:54:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200188', 3, 1, 1, '0', '', '180.170.148.178', 3353);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226209000479', 6200188, 239, 5, 0, 1, 10073, 100, 1, 3, 0, '2016-05-03 15:54:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200188', 3, 1, 2, '0', '', '180.170.148.178', 3354);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226209000480', 6200188, 239, 5, 0, 1, 10073, 100, 1, 3, 0, '2016-05-03 15:54:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200188', 3, 1, 2, '0', '', '180.170.148.178', 3355);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226209000481', 6200188, 239, 5, 0, 1, 10073, 100, 1, 3, 0, '2016-05-03 15:54:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200188', 3, 1, 2, '0', '', '180.170.148.178', 3356);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226209000482', 6200188, 239, 5, 0, 1, 10073, 100, 1, 3, 0, '2016-05-03 15:54:50', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200188', 3, 1, 2, '0', '', '180.170.148.178', 3357);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226234900483', 6200116, 169, 5, 3, 55, 10060, 100, 0, 3, 0, '2016-05-03 15:59:10', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3358);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226238400484', 6200176, 233, 0, 4, 28, 10065, 200, 0, 3, 0, '2016-05-03 15:59:44', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200176', 3, 1, 2, '0', '', '110.250.225.177', 3359);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226262400485', 6200081, 78, 8, 1, 47, 10110, 180, 0, 3, 0, '2016-05-03 16:03:44', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '61.158.148.77', 3360);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226314800486', 6200081, 78, 8, 1, 47, 10153, 200, 0, 3, 0, '2016-05-03 16:12:28', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', '', '61.158.148.77', 3361);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226420000487', 6200170, 234, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 16:30:00', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200170', 3, 1, 2, '0', '', '183.209.1.197', 3362);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226630700488', 6200007, 11, 3, 20, 83, 10110, 180, 0, 3, 0, '2016-05-03 17:05:07', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.103.13', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226774500489', 6200191, 242, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-05-03 17:29:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200191', 3, 1, 1, '0', '', '183.53.107.206', 3363);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226813100490', 6200189, 241, 1, 0, 2, 10073, 100, 0, 3, 0, '2016-05-03 17:35:31', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200189', 3, 1, 1, '0', '', '113.251.49.137', 3364);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226814000491', 6200189, 241, 1, 0, 2, 10000, 20, 0, 3, 0, '2016-05-03 17:35:40', 20, 0, 1, 20, 1, 1, 0, 1, 0, 0, 0, '6200189', 3, 1, 2, '0', '', '113.251.49.137', 3365);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226814500492', 6200189, 241, 1, 0, 2, 10001, 60, 0, 3, 0, '2016-05-03 17:35:45', 60, 0, 1, 60, 1, 1, 0, 1, 0, 0, 0, '6200189', 3, 1, 2, '0', '', '113.251.49.137', 3366);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226820500493', 6200189, 241, 1, 0, 2, 10080, 100, 0, 3, 0, '2016-05-03 17:36:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200189', 3, 1, 2, '0', '', '113.251.49.137', 3367);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226820800494', 6200086, 96, 0, 19, 55, 100205, 11760, 0, 3, 0, '2016-05-03 17:36:48', 11760, 0, 1, 11760, 1, 1, 0, 1, 0, 0, 0, '6200086', 3, 1, 2, '0', '', '58.49.210.61', 3368);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226844400495', 6200068, 181, 0, 1, 51, 10111, 50, 0, 3, 0, '2016-05-03 17:40:44', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200068', 3, 1, 2, '0', 'cera point', '182.34.144.57', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146226897000496', 6200189, 241, 1, 0, 3, 20010, 60, 0, 3, 0, '2016-05-03 17:49:30', 60, 0, 3, 60, 1, 1, 0, 1, 0, 0, 0, '6200189', 3, 1, 2, '0', '', '113.251.49.137', 3369);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227088300497', 6200116, 156, 0, 3, 60, 10073, 100, 0, 3, 0, '2016-05-03 18:21:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3370);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227088300498', 6200116, 156, 0, 3, 60, 10073, 100, 0, 3, 0, '2016-05-03 18:21:23', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', '', '180.170.148.178', 3371);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227365600499', 6200058, 148, 3, 2, 31, 30015, 200, 0, 3, 0, '2016-05-03 19:07:36', 200, 0, 1, 200, 3, 1, 0, 1, 0, 0, 0, '6200058', 3, 1, 2, '0', 'cera point', '171.214.61.152', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227413700500', 6200164, 219, 1, 2, 39, 2000001, 90, 0, 3, 0, '2016-05-03 19:15:37', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227413700501', 6200164, 219, 1, 2, 39, 2400018, 105, 0, 3, 0, '2016-05-03 19:15:37', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227413700502', 6200164, 219, 1, 2, 39, 2600006, 90, 0, 3, 0, '2016-05-03 19:15:37', 90, 0, 1, 90, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227413700503', 6200164, 219, 1, 2, 39, 2700018, 105, 0, 3, 0, '2016-05-03 19:15:37', 105, 0, 1, 105, 3, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', 'cera point', '218.56.175.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227435800504', 6200128, 172, 0, 19, 76, 10110, 180, 0, 3, 0, '2016-05-03 19:19:18', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '124.73.14.93', 3372);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227451200505', 6200164, 219, 1, 2, 39, 2800003, 90, 0, 3, 0, '2016-05-03 19:21:52', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', '', '218.56.175.214', 3373);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227481300506', 6200164, 230, 4, 1, 34, 7400007, 90, 0, 3, 0, '2016-05-03 19:26:53', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', '', '218.56.175.214', 3374);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227481300507', 6200164, 230, 4, 1, 34, 7600008, 90, 0, 3, 0, '2016-05-03 19:26:53', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', '', '218.56.175.214', 3375);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227481300508', 6200164, 230, 4, 1, 34, 7700007, 90, 0, 3, 0, '2016-05-03 19:26:53', 90, 0, 1, 90, 1, 1, 0, 1, 0, 0, 0, '6200164', 3, 1, 2, '0', '', '218.56.175.214', 3376);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227545900509', 6200128, 172, 0, 19, 76, 10111, 50, 0, 3, 0, '2016-05-03 19:37:39', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227674300510', 6200153, 211, 5, 2, 40, 10152, 40, 0, 3, 0, '2016-05-03 19:59:03', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227674300511', 6200153, 211, 5, 2, 40, 10152, 40, 0, 3, 0, '2016-05-03 19:59:03', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800512', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3377);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800513', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3378);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800514', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3379);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800515', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3380);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800516', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3381);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800517', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3382);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800518', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3383);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800519', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3384);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800520', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3385);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227702800521', 6200001, 6, 0, 17, 81, 10076, 320, 0, 3, 0, '2016-05-03 20:03:48', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3386);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227703000522', 6200153, 211, 5, 2, 40, 10000, 20, 0, 3, 0, '2016-05-03 20:03:50', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200153', 3, 1, 2, '0', 'cera point', '183.198.56.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227711300523', 6200116, 161, 0, 1, 57, 10154, 400, 0, 3, 0, '2016-05-03 20:05:13', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227718100524', 6200081, 77, 0, 0, 11, 10080, 100, 0, 3, 0, '2016-05-03 20:06:21', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200081', 3, 1, 2, '0', 'cera point', '123.161.209.85', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227722300525', 6200029, 27, 4, 19, 53, 10153, 200, 0, 3, 0, '2016-05-03 20:07:03', 200, 0, 50, 200, 3, 1, 0, 1, 0, 0, 0, '6200029', 3, 1, 2, '0', 'cera point', '171.83.44.101', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227771600526', 6200125, 167, 5, 4, 47, 10601, 50, 0, 3, 0, '2016-05-03 20:15:16', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.119', 3387);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227771600527', 6200125, 167, 5, 4, 47, 10602, 100, 0, 3, 0, '2016-05-03 20:15:16', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.119', 3388);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227772700528', 6200125, 167, 5, 4, 47, 10110, 180, 0, 3, 0, '2016-05-03 20:15:27', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.5.119', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227782300529', 6200194, 244, 0, 0, 5, 10073, 100, 0, 3, 0, '2016-05-03 20:17:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200194', 3, 1, 1, '0', '', '218.6.159.112', 3389);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227868300530', 6200055, 108, 0, 3, 32, 10080, 100, 0, 3, 0, '2016-05-03 20:31:23', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200055', 3, 1, 2, '0', 'cera point', '183.23.117.224', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227910700531', 6200139, 195, 0, 3, 47, 10110, 180, 0, 3, 0, '2016-05-03 20:38:27', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227934200532', 6200154, 212, 4, 2, 42, 10153, 200, 0, 3, 0, '2016-05-03 20:42:22', 200, 0, 50, 200, 1, 1, 0, 1, 0, 0, 0, '6200154', 3, 1, 2, '0', '', '183.6.35.21', 3390);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146227975100533', 6200154, 212, 4, 2, 42, 10151, 20, 0, 3, 0, '2016-05-03 20:49:11', 20, 0, 5, 20, 1, 1, 0, 1, 0, 0, 0, '6200154', 3, 1, 2, '0', '', '183.6.35.21', 3391);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228098700534', 6200096, 124, 4, 3, 50, 10111, 50, 0, 3, 0, '2016-05-03 21:09:47', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '60.214.63.51', 3392);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228194900535', 6200096, 129, 0, 3, 27, 10150, 5, 0, 3, 0, '2016-05-03 21:25:49', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '60.214.63.51', 3393);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228194900536', 6200096, 129, 0, 3, 27, 10150, 5, 0, 3, 0, '2016-05-03 21:25:49', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '60.214.63.51', 3394);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228194900537', 6200096, 129, 0, 3, 27, 10152, 40, 0, 3, 0, '2016-05-03 21:25:49', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '60.214.63.51', 3395);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228194900538', 6200096, 129, 0, 3, 27, 10152, 40, 0, 3, 0, '2016-05-03 21:25:49', 40, 0, 10, 40, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '60.214.63.51', 3396);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228222200539', 6200096, 129, 0, 3, 27, 10154, 400, 0, 3, 0, '2016-05-03 21:30:22', 400, 0, 100, 400, 1, 1, 0, 1, 0, 0, 0, '6200096', 3, 1, 2, '0', '', '60.214.63.51', 3397);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228223200540', 6200172, 246, 0, 0, 2, 10080, 100, 0, 3, 0, '2016-05-03 21:30:32', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 1, '0', '', '113.249.241.18', 3398);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228230500541', 6200036, 86, 5, 19, 67, 10073, 100, 0, 3, 0, '2016-05-03 21:31:45', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200036', 3, 1, 2, '0', 'cera point', '171.34.228.71', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228234800542', 6200116, 159, 3, 4, 54, 10000, 20, 0, 3, 0, '2016-05-03 21:32:28', 20, 0, 1, 20, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228255400543', 6200007, 11, 3, 20, 83, 10111, 50, 0, 3, 0, '2016-05-03 21:35:54', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.103.13', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228302500544', 6200116, 161, 0, 1, 61, 10073, 100, 0, 3, 0, '2016-05-03 21:43:45', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400545', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3399);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400546', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3400);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400547', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3401);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400548', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3402);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400549', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3403);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400550', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3404);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400551', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3405);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400552', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3406);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228443400553', 6200070, 69, 0, 3, 36, 10073, 100, 0, 3, 0, '2016-05-03 22:07:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200070', 3, 1, 2, '0', '', '1.84.204.60', 3407);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500554', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3408);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500555', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3409);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500556', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3410);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500557', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3411);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500558', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3412);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500559', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3413);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500560', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3414);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500561', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3415);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500562', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3416);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228452500563', 6200069, 70, 0, 0, 11, 10073, 100, 0, 3, 0, '2016-05-03 22:08:45', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200069', 3, 1, 2, '0', '', '1.84.204.60', 3417);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228466100564', 6200116, 161, 0, 1, 61, 10073, 100, 0, 3, 0, '2016-05-03 22:11:01', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200116', 3, 1, 2, '0', 'cera point', '180.170.148.178', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200565', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3418);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200566', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3419);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200567', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3420);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200568', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3421);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200569', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3422);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200570', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:12', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3423);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200571', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3424);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200572', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3425);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200573', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3426);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200574', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3427);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200575', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3428);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200576', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3429);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228473200577', 6200132, 186, 0, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:12:13', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200132', 3, 1, 2, '0', '', '1.84.204.60', 3430);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200578', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3431);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200579', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3432);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200580', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3433);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200581', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3434);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200582', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3435);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200583', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3436);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200584', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3437);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200585', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3438);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200586', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3439);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200587', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3440);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200588', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3441);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200589', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3442);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228484200590', 6200133, 188, 8, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:14:03', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200133', 3, 1, 2, '0', '', '1.84.204.60', 3443);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228490700591', 6200028, 26, 2, 18, 62, 10073, 100, 0, 3, 0, '2016-05-03 22:15:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', 'cera point', '121.231.55.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228490700592', 6200028, 26, 2, 18, 62, 10073, 100, 0, 3, 0, '2016-05-03 22:15:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', 'cera point', '121.231.55.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228490700593', 6200028, 26, 2, 18, 62, 10073, 100, 0, 3, 0, '2016-05-03 22:15:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', 'cera point', '121.231.55.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228490700594', 6200028, 26, 2, 18, 62, 10073, 100, 0, 3, 0, '2016-05-03 22:15:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', 'cera point', '121.231.55.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228490700595', 6200028, 26, 2, 18, 62, 10073, 100, 0, 3, 0, '2016-05-03 22:15:07', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', 'cera point', '121.231.55.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228490700596', 6200028, 26, 2, 18, 62, 10073, 100, 0, 3, 0, '2016-05-03 22:15:08', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', 'cera point', '121.231.55.49', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100597', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3444);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100598', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3445);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100599', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3446);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100600', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3447);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100601', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3448);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100602', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3449);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100603', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3450);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100604', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3451);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100605', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3452);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100606', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3453);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100607', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3454);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100608', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:51', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3455);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228495100609', 6200134, 189, 5, 0, 10, 10073, 100, 0, 3, 0, '2016-05-03 22:15:52', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200134', 3, 1, 2, '0', '', '1.84.204.60', 3456);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228514200610', 6200121, 170, 3, 4, 63, 10006, 260, 0, 3, 0, '2016-05-03 22:19:02', 260, 0, 1, 260, 3, 1, 0, 1, 0, 0, 0, '6200121', 3, 1, 2, '0', 'cera point', '112.5.236.88', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228542300611', 6200037, 34, 1, 17, 68, 10152, 40, 0, 3, 0, '2016-05-03 22:23:43', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.143', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228548200612', 6200007, 11, 3, 20, 83, 10073, 100, 0, 3, 0, '2016-05-03 22:24:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.103.13', 3457);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228548300613', 6200037, 34, 1, 17, 68, 10152, 40, 0, 3, 0, '2016-05-03 22:24:43', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200037', 3, 1, 2, '0', 'cera point', '61.158.84.143', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228559900614', 6200194, 244, 0, 1, 19, 10060, 100, 0, 3, 0, '2016-05-03 22:26:39', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200194', 3, 1, 2, '0', '', '118.123.108.19', 3458);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228560400615', 6200194, 244, 0, 1, 19, 10061, 100, 0, 3, 0, '2016-05-03 22:26:44', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200194', 3, 1, 2, '0', '', '118.123.108.19', 3459);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228561100616', 6200194, 244, 0, 1, 19, 10062, 380, 0, 3, 0, '2016-05-03 22:26:51', 380, 0, 1, 380, 1, 1, 0, 1, 0, 0, 0, '6200194', 3, 1, 2, '0', '', '118.123.108.19', 3460);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228564600617', 6200007, 11, 3, 20, 83, 10073, 100, 0, 3, 0, '2016-05-03 22:27:26', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.103.13', 3461);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228567700618', 6200028, 26, 2, 18, 62, 10067, 20, 0, 3, 0, '2016-05-03 22:27:57', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '121.231.55.49', 3462);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228567700619', 6200028, 26, 2, 18, 62, 10067, 20, 0, 3, 0, '2016-05-03 22:27:57', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '121.231.55.49', 3463);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228567700620', 6200028, 26, 2, 18, 62, 10067, 20, 0, 3, 0, '2016-05-03 22:27:57', 20, 0, 10, 20, 1, 1, 0, 1, 0, 0, 0, '6200028', 3, 1, 2, '0', '', '121.231.55.49', 3464);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600621', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600622', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600623', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600624', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600625', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600626', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600627', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600628', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600629', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600630', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600631', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600632', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600633', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228570600634', 6200009, 16, 0, 19, 63, 10053, 15, 0, 3, 0, '2016-05-03 22:28:26', 15, 0, 10, 15, 3, 1, 0, 1, 0, 0, 0, '6200009', 3, 1, 2, '0', 'cera point', '182.118.68.37', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800635', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:58', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3465);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800636', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3466);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800637', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3467);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800638', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3468);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800639', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3469);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800640', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3470);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800641', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3471);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228615800642', 6200139, 195, 0, 3, 48, 10073, 100, 0, 3, 0, '2016-05-03 22:35:59', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3472);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000643', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3473);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000644', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3474);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000645', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3475);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000646', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3476);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000647', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3477);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000648', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3478);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000649', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3479);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228618000650', 6200139, 195, 0, 3, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:36:21', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', '', '121.234.253.214', 3480);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228641100651', 6200127, 171, 0, 3, 40, 10100, 180, 0, 3, 0, '2016-05-03 22:40:11', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.143', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228647300652', 6200139, 195, 0, 3, 48, 10061, 100, 0, 3, 0, '2016-05-03 22:41:13', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200139', 3, 1, 2, '0', 'cera point', '121.234.253.214', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228649100653', 6200007, 11, 3, 20, 83, 10154, 400, 0, 3, 0, '2016-05-03 22:41:31', 400, 0, 100, 400, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.103.13', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228662700654', 6200066, 64, 0, 17, 59, 10111, 50, 0, 3, 0, '2016-05-03 22:43:47', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '182.140.196.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228683000655', 6200066, 64, 0, 17, 59, 10073, 100, 0, 3, 0, '2016-05-03 22:47:10', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '182.140.196.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228683000656', 6200066, 64, 0, 17, 59, 10073, 100, 0, 3, 0, '2016-05-03 22:47:10', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200066', 3, 1, 2, '0', 'cera point', '182.140.196.239', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228716300657', 6200125, 167, 5, 4, 48, 10600, 10, 0, 3, 0, '2016-05-03 22:52:43', 10, 0, 1, 10, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.119', 3481);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228716300658', 6200125, 167, 5, 4, 48, 10601, 50, 0, 3, 0, '2016-05-03 22:52:43', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.119', 3482);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228716300659', 6200125, 167, 5, 4, 48, 10602, 100, 0, 3, 0, '2016-05-03 22:52:43', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', '', '114.239.5.119', 3483);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228718000660', 6200125, 167, 5, 4, 48, 10110, 180, 0, 3, 0, '2016-05-03 22:53:00', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200125', 3, 1, 2, '0', 'cera point', '114.239.5.119', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228721900661', 6200001, 6, 0, 17, 82, 10065, 200, 0, 3, 0, '2016-05-03 22:53:39', 200, 0, 10, 200, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3484);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228767200662', 6200057, 55, 0, 19, 73, 10152, 40, 0, 3, 0, '2016-05-03 23:01:12', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.48.252', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228801300663', 6200007, 11, 3, 20, 83, 10602, 100, 0, 3, 0, '2016-05-03 23:06:53', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.103.13', 3485);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228801700664', 6200007, 11, 3, 20, 83, 10601, 50, 0, 3, 0, '2016-05-03 23:06:57', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.103.13', 3486);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228802900665', 6200007, 11, 3, 20, 83, 10110, 180, 0, 3, 0, '2016-05-03 23:07:09', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', 'cera point', '219.133.103.13', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700666', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3487);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700667', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3488);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700668', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3489);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700669', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3490);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700670', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3491);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700671', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3492);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700672', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3493);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700673', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3494);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700674', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3495);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700675', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3496);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700676', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3497);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700677', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3498);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700678', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:47', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3499);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700679', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3500);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700680', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3501);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700681', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3502);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700682', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3503);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700683', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3504);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700684', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3505);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228812700685', 6200001, 1, 0, 0, 85, 10073, 100, 0, 3, 0, '2016-05-03 23:08:48', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3506);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228864200686', 6200001, 1, 0, 0, 85, 10060, 100, 0, 3, 0, '2016-05-03 23:17:22', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3507);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146228864700687', 6200001, 1, 0, 0, 85, 10061, 100, 0, 3, 0, '2016-05-03 23:17:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '58.60.193.126', 3508);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229000000688', 6200057, 55, 0, 19, 74, 10151, 20, 0, 3, 0, '2016-05-03 23:40:00', 20, 0, 5, 20, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.48.252', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229165900689', 6200044, 42, 0, 19, 61, 10067, 20, 0, 3, 0, '2016-05-04 00:07:40', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.159.86', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400690', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 1, '0', '', '171.214.61.152', 3509);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400691', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3510);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400692', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:04', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3511);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400693', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3512);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400694', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3513);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400695', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3514);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400696', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3515);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400697', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3516);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229216400698', 6200199, 247, 4, 0, 1, 10073, 100, 0, 3, 0, '2016-05-04 00:16:05', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3517);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229223500699', 6200172, 246, 0, 3, 24, 10060, 100, 0, 3, 0, '2016-05-04 00:17:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', '', '113.249.241.18', 3518);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229224700700', 6200172, 246, 0, 3, 24, 10061, 100, 0, 3, 0, '2016-05-04 00:17:27', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', '', '113.249.241.18', 3519);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229225400701', 6200172, 246, 0, 3, 24, 10073, 100, 0, 3, 0, '2016-05-04 00:17:35', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229252800702', 6200057, 55, 0, 19, 74, 10152, 40, 0, 3, 0, '2016-05-04 00:22:08', 40, 0, 10, 40, 3, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', 'cera point', '36.63.48.252', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229275100703', 6200199, 247, 4, 0, 3, 10150, 5, 1, 3, 0, '2016-05-04 00:25:51', 5, 0, 1, 5, 1, 1, 0, 1, 0, 0, 0, '6200199', 3, 1, 2, '0', '', '171.214.61.152', 3520);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229276200704', 6200179, 231, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-05-04 00:26:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200179', 3, 1, 2, '0', '', '36.23.39.207', 3521);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229276200705', 6200179, 231, 0, 0, 3, 10073, 100, 0, 3, 0, '2016-05-04 00:26:02', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200179', 3, 1, 2, '0', '', '36.23.39.207', 3522);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400706', 6200200, 248, 0, 0, 1, 10601, 50, 1, 3, 0, '2016-05-04 00:32:14', 50, 0, 1, 50, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 1, '0', '', '171.214.61.152', 3523);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400707', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3524);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400708', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3525);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400709', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3526);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400710', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3527);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400711', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:14', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3528);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400712', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3529);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400713', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3530);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229313400714', 6200200, 248, 0, 0, 1, 10602, 100, 1, 3, 0, '2016-05-04 00:32:15', 100, 0, 1, 100, 1, 1, 0, 1, 0, 0, 0, '6200200', 3, 1, 2, '0', '', '171.214.61.152', 3531);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229317200715', 6200127, 171, 0, 1, 41, 10100, 180, 0, 3, 0, '2016-05-04 00:32:52', 180, 0, 1, 180, 3, 1, 0, 1, 0, 0, 0, '6200127', 3, 1, 2, '0', 'cera point', '61.158.84.143', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229319200716', 6200057, 55, 0, 19, 74, 10110, 180, 0, 3, 0, '2016-05-04 00:33:12', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200057', 3, 1, 2, '0', '', '36.63.48.252', 3532);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229355500717', 6200007, 11, 3, 20, 83, 10076, 320, 0, 3, 0, '2016-05-04 00:39:15', 320, 0, 150, 320, 1, 1, 0, 1, 0, 0, 0, '6200007', 3, 1, 2, '0', '', '219.133.103.13', 3533);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229388300718', 6200128, 172, 0, 19, 77, 10111, 50, 0, 3, 0, '2016-05-04 00:44:43', 50, 0, 1, 50, 3, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', 'cera point', '124.73.14.93', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229388900719', 6200128, 172, 0, 19, 77, 10110, 180, 0, 3, 0, '2016-05-04 00:44:50', 180, 0, 1, 180, 1, 1, 0, 1, 0, 0, 0, '6200128', 3, 1, 2, '0', '', '124.73.14.93', 3534);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229570800720', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:08', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900721', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900722', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900723', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900724', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900725', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900726', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900727', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900728', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229571900729', 6200172, 246, 0, 3, 27, 10600, 10, 0, 3, 0, '2016-05-04 01:15:19', 10, 0, 1, 10, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229575100730', 6200172, 246, 0, 3, 27, 10602, 100, 0, 3, 0, '2016-05-04 01:15:51', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200172', 3, 1, 2, '0', 'cera point', '113.249.241.18', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229659300731', 6200044, 42, 0, 19, 62, 10067, 20, 0, 3, 0, '2016-05-04 01:29:53', 20, 0, 10, 20, 3, 1, 0, 1, 0, 0, 0, '6200044', 3, 1, 2, '0', 'cera point', '27.203.159.86', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146229826400732', 6200039, 37, 0, 17, 53, 10002, 100, 0, 3, 0, '2016-05-04 01:57:45', 100, 0, 1, 100, 3, 1, 0, 1, 0, 0, 0, '6200039', 3, 1, 2, '0', 'cera point', '36.23.39.207', 0);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146242880000001', 6200001, 6, 0, 17, 85, 10012, 320, 0, 3, 0, '2016-05-05 02:13:21', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '192.168.200.1', 3535);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146242880000002', 6200001, 6, 0, 17, 85, 10012, 320, 0, 3, 0, '2016-05-05 02:13:21', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '192.168.200.1', 3536);
INSERT INTO `prod_sale_entry_162` VALUES ('0311146242880000003', 6200001, 6, 0, 17, 85, 10012, 320, 0, 3, 0, '2016-05-05 02:13:22', 320, 0, 200, 320, 1, 1, 0, 1, 0, 0, 0, '6200001', 3, 1, 2, '0', '', '192.168.200.1', 3537);
COMMIT;

-- ----------------------------
-- Table structure for prod_set_info
-- ----------------------------
DROP TABLE IF EXISTS `prod_set_info`;
CREATE TABLE `prod_set_info` (
  `ipg_no` int(10) unsigned NOT NULL default '0',
  `consist_ipg_no` int(10) unsigned NOT NULL default '0',
  `fix_flag` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ipg_no`,`consist_ipg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prod_set_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pu_user_list
-- ----------------------------
DROP TABLE IF EXISTS `pu_user_list`;
CREATE TABLE `pu_user_list` (
  `m_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pu_user_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for slot_bonus_info
-- ----------------------------
DROP TABLE IF EXISTS `slot_bonus_info`;
CREATE TABLE `slot_bonus_info` (
  `slot_part_code` smallint(5) unsigned NOT NULL default '0',
  `bonus_ipg_no` int(10) unsigned NOT NULL default '0',
  `bonus_rate` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`slot_part_code`,`bonus_ipg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slot_bonus_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for slot_info
-- ----------------------------
DROP TABLE IF EXISTS `slot_info`;
CREATE TABLE `slot_info` (
  `slot_part_code` smallint(5) unsigned NOT NULL default '0',
  `slot_num` tinyint(3) unsigned NOT NULL default '0',
  `slot_position` tinyint(3) unsigned NOT NULL default '0',
  `slot1_ipg_no` int(10) unsigned NOT NULL default '0',
  `slot1_rate` smallint(5) unsigned NOT NULL default '0',
  `regist_user_id` varchar(25) NOT NULL default '',
  `regist_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `mod_user_id` varchar(25) NOT NULL default '',
  `mod_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`slot_part_code`,`slot_num`,`slot_position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slot_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for slot_master
-- ----------------------------
DROP TABLE IF EXISTS `slot_master`;
CREATE TABLE `slot_master` (
  `slot_part_type` tinyint(3) unsigned NOT NULL default '0',
  `slot_part_code` smallint(5) unsigned NOT NULL default '0',
  `slot_part_name` varchar(35) NOT NULL default '',
  `slot_part_step` tinyint(3) unsigned NOT NULL default '0',
  `slot_part_script` varchar(50) NOT NULL default '',
  `slot_npc_no` smallint(5) unsigned NOT NULL default '0',
  `slot_sell_item_type` varchar(35) NOT NULL default '',
  `slot_set_flag` tinyint(3) unsigned NOT NULL default '0',
  `slot_price` smallint(5) unsigned NOT NULL default '0',
  `slot_bonus_rate` smallint(5) unsigned NOT NULL default '0',
  `slot_it_no` mediumint(8) unsigned NOT NULL default '0',
  `slot_it_cnt` tinyint(3) unsigned NOT NULL default '0',
  `slot_stat` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`slot_part_code`),
  UNIQUE KEY `slot_part_name` USING BTREE (`slot_part_name`),
  KEY `idx_slot_part_step` USING BTREE (`slot_part_step`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slot_master
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for slot_mod_history
-- ----------------------------
DROP TABLE IF EXISTS `slot_mod_history`;
CREATE TABLE `slot_mod_history` (
  `mod_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `slot_part_code` smallint(5) unsigned NOT NULL default '0',
  `slot_num` tinyint(3) unsigned NOT NULL default '0',
  `slot_position` tinyint(3) unsigned NOT NULL default '0',
  `slot1_ipg_no` int(10) unsigned NOT NULL default '0',
  `slot1_rate` smallint(5) unsigned NOT NULL default '0',
  `mod_type` tinyint(3) unsigned NOT NULL default '0',
  `mod_user_id` varchar(25) NOT NULL default '',
  `mod_explain` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`mod_time`,`slot_part_code`,`slot_num`,`slot_position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slot_mod_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for slot_prod_ability_info
-- ----------------------------
DROP TABLE IF EXISTS `slot_prod_ability_info`;
CREATE TABLE `slot_prod_ability_info` (
  `slot_part_code` smallint(5) unsigned NOT NULL default '0',
  `slot_num` tinyint(3) unsigned NOT NULL default '0',
  `slot_position` tinyint(3) unsigned NOT NULL default '0',
  `slot_ipg_no` int(10) unsigned NOT NULL default '0',
  `job` tinyint(4) NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `ability_no` mediumint(8) unsigned NOT NULL default '0',
  `rate` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`slot_part_code`,`slot_num`,`slot_position`,`slot_ipg_no`,`job`,`grow_type`,`ability_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slot_prod_ability_info
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
