/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_cain_auction_cera

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:37:02
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auction_average_price
-- ----------------------------
DROP TABLE IF EXISTS `auction_average_price`;
CREATE TABLE `auction_average_price` (
  `item_id` int(10) unsigned NOT NULL default '0',
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `average_price` int(11) default NULL,
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`item_id`,`upgrade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_average_price
-- ----------------------------
BEGIN;
INSERT INTO `auction_average_price` VALUES (2675336, 0, 200, 0);
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
COMMIT;

-- ----------------------------
-- Table structure for auction_history_201603
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201603`;
CREATE TABLE `auction_history_201603` (
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
-- Records of auction_history_201603
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history_201604
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201604`;
CREATE TABLE `auction_history_201604` (
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
-- Records of auction_history_201604
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history_201605
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201605`;
CREATE TABLE `auction_history_201605` (
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
-- Records of auction_history_201605
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history_201606
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_201606`;
CREATE TABLE `auction_history_201606` (
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
-- Records of auction_history_201606
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history_buyer
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer`;
CREATE TABLE `auction_history_buyer` (
  `auction_id` bigint(20) unsigned default NULL,
  `occ_time` datetime default NULL,
  `pre_buyer_id` int(11) default NULL,
  `buyer_id` int(11) default NULL,
  `pre_price` int(11) default NULL,
  `price` int(11) default NULL,
  `pre_buyer_postal_id` int(10) unsigned default NULL,
  `commission` int(11) unsigned NOT NULL default '0',
  KEY `idx_auction_id` USING BTREE (`auction_id`),
  KEY `idx_buyer_id` USING BTREE (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history_buyer
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history_buyer_201603
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201603`;
CREATE TABLE `auction_history_buyer_201603` (
  `auction_id` bigint(20) unsigned default NULL,
  `occ_time` datetime default NULL,
  `pre_buyer_id` int(11) default NULL,
  `buyer_id` int(11) default NULL,
  `pre_price` int(11) default NULL,
  `price` int(11) default NULL,
  `pre_buyer_postal_id` int(10) unsigned default NULL,
  `commission` int(11) unsigned NOT NULL default '0',
  KEY `idx_auction_id` USING BTREE (`auction_id`),
  KEY `idx_buyer_id` USING BTREE (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history_buyer_201603
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history_buyer_201604
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201604`;
CREATE TABLE `auction_history_buyer_201604` (
  `auction_id` bigint(20) unsigned default NULL,
  `occ_time` datetime default NULL,
  `pre_buyer_id` int(11) default NULL,
  `buyer_id` int(11) default NULL,
  `pre_price` int(11) default NULL,
  `price` int(11) default NULL,
  `pre_buyer_postal_id` int(10) unsigned default NULL,
  `commission` int(11) unsigned NOT NULL default '0',
  KEY `idx_auction_id` USING BTREE (`auction_id`),
  KEY `idx_buyer_id` USING BTREE (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history_buyer_201604
-- ----------------------------
BEGIN;
INSERT INTO `auction_history_buyer_201604` VALUES (1, '2016-04-19 04:27:20', -1, 1, -1, 200, 0, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (1, '2016-04-19 04:57:51', -1, 1, -1, 200, 0, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (2, '2016-04-19 04:57:55', -1, 1, -1, 200, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for auction_history_buyer_201605
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201605`;
CREATE TABLE `auction_history_buyer_201605` (
  `auction_id` bigint(20) unsigned default NULL,
  `occ_time` datetime default NULL,
  `pre_buyer_id` int(11) default NULL,
  `buyer_id` int(11) default NULL,
  `pre_price` int(11) default NULL,
  `price` int(11) default NULL,
  `pre_buyer_postal_id` int(10) unsigned default NULL,
  `commission` int(11) unsigned NOT NULL default '0',
  KEY `idx_auction_id` USING BTREE (`auction_id`),
  KEY `idx_buyer_id` USING BTREE (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history_buyer_201605
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_history_buyer_201606
-- ----------------------------
DROP TABLE IF EXISTS `auction_history_buyer_201606`;
CREATE TABLE `auction_history_buyer_201606` (
  `auction_id` bigint(20) unsigned default NULL,
  `occ_time` datetime default NULL,
  `pre_buyer_id` int(11) default NULL,
  `buyer_id` int(11) default NULL,
  `pre_price` int(11) default NULL,
  `price` int(11) default NULL,
  `pre_buyer_postal_id` int(10) unsigned default NULL,
  `commission` int(11) unsigned NOT NULL default '0',
  KEY `idx_auction_id` USING BTREE (`auction_id`),
  KEY `idx_buyer_id` USING BTREE (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history_buyer_201606
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_main
-- ----------------------------
DROP TABLE IF EXISTS `auction_main`;
CREATE TABLE `auction_main` (
  `auction_id` bigint(20) NOT NULL default '0',
  `occ_time` datetime default NULL,
  `expire_time` int(11) default NULL,
  `owner_id` int(11) default NULL,
  `owner_name` varchar(20) default NULL,
  `owner_type` tinyint(4) NOT NULL default '0',
  `owner_nexon_id` varchar(25) NOT NULL default '',
  `buyer_id` int(11) default NULL,
  `buyer_name` varchar(20) default NULL,
  `price` bigint(20) default NULL,
  `instant_price` bigint(20) default NULL,
  `seal_flag` tinyint(3) unsigned default NULL,
  `item_id` int(10) unsigned default NULL,
  `add_info` int(11) default NULL,
  `upgrade` tinyint(3) unsigned default NULL,
  `amplify_option` tinyint(3) unsigned NOT NULL default '0',
  `amplify_value` mediumint(8) unsigned NOT NULL default '0',
  `seal_cnt` tinyint(3) unsigned default NULL,
  `endurance` smallint(5) unsigned default NULL,
  `extend_info` int(10) unsigned default NULL,
  `black_point` int(10) unsigned NOT NULL default '0',
  `unit_price` int(11) default NULL,
  `random_option` varchar(14) NOT NULL default '',
  `roi_high_key` bigint(20) NOT NULL default '0',
  `roi_low_key` int(11) NOT NULL default '0',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  `item_guid` varbinary(10) NOT NULL default '',
  PRIMARY KEY  (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_main
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_manual_average_price
-- ----------------------------
DROP TABLE IF EXISTS `auction_manual_average_price`;
CREATE TABLE `auction_manual_average_price` (
  `no` int(11) unsigned NOT NULL auto_increment,
  `item_id` int(11) unsigned NOT NULL default '0',
  `upgrade` tinyint(4) unsigned NOT NULL default '0',
  `average_price` int(11) unsigned NOT NULL default '0',
  `is_apply` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_serverid_isapply` USING BTREE (`is_apply`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_manual_average_price
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_roi_average_price
-- ----------------------------
DROP TABLE IF EXISTS `auction_roi_average_price`;
CREATE TABLE `auction_roi_average_price` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `item_id` int(10) unsigned NOT NULL default '0',
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `roi_high_key` bigint(20) NOT NULL default '0',
  `roi_low_key` int(10) unsigned NOT NULL default '0',
  `roi_index1` smallint(5) unsigned NOT NULL default '0',
  `roi_index2` smallint(5) unsigned NOT NULL default '0',
  `roi_index3` smallint(5) unsigned NOT NULL default '0',
  `average_price` int(10) unsigned NOT NULL default '0',
  `real_purchase_count` mediumint(8) unsigned NOT NULL default '0',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  UNIQUE KEY `item_id` USING BTREE (`item_id`,`upgrade`,`roi_high_key`,`roi_low_key`,`roi_index1`,`roi_index2`,`roi_index3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_roi_average_price
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_roi_constraint
-- ----------------------------
DROP TABLE IF EXISTS `auction_roi_constraint`;
CREATE TABLE `auction_roi_constraint` (
  `db_inf_max_price` int(10) unsigned NOT NULL default '0',
  `db_inf_min_price` int(10) unsigned NOT NULL default '0',
  `db_inf_prob` int(10) unsigned NOT NULL default '0',
  `db_inf_limit_count` int(10) unsigned NOT NULL default '0',
  `db_inf_base_mul_min_a` int(10) unsigned NOT NULL default '0',
  `db_inf_base_mul_max_b` int(10) unsigned NOT NULL default '0',
  `last_update_date` date NOT NULL default '2021-11-19'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_roi_constraint
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_system_iteminfo
-- ----------------------------
DROP TABLE IF EXISTS `auction_system_iteminfo`;
CREATE TABLE `auction_system_iteminfo` (
  `sys_auction_id` int(11) default '0',
  `probability` smallint(5) unsigned default '0',
  `price` int(11) default '0',
  `seal_flag` tinyint(3) unsigned default '0',
  `item_id` int(10) unsigned default '0',
  `add_info` int(11) default '0',
  `upgrade` tinyint(3) unsigned default '0',
  `seal_cnt` tinyint(3) unsigned default '0',
  `endurance` smallint(5) unsigned default '0',
  `extend_info` int(10) unsigned default '0',
  KEY `idx1` USING BTREE (`sys_auction_id`,`item_id`),
  KEY `idx2` USING BTREE (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_system_iteminfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_system_main
-- ----------------------------
DROP TABLE IF EXISTS `auction_system_main`;
CREATE TABLE `auction_system_main` (
  `sys_auction_id` int(11) NOT NULL auto_increment,
  `occ_time` datetime default '2021-11-19 00:00:00',
  `regist_interval` int(11) default '0',
  `regist_time` time default '00:00:00',
  `start_date` date default '2021-11-19',
  `end_date` date default '2021-11-19',
  `expire_interval` smallint(5) unsigned default '0',
  `last_auction_time` datetime default '2021-11-19 00:00:00',
  `expected_regist_time` time default '00:00:00',
  PRIMARY KEY  (`sys_auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_system_main
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
