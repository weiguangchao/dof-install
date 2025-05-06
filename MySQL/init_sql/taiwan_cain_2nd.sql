/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_cain_2nd

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:36:50
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bak_charac_no_20130221
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_no_20130221`;
CREATE TABLE `bak_charac_no_20130221` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  KEY `charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_no_20130221
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_no_20130222
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_no_20130222`;
CREATE TABLE `bak_charac_no_20130222` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  KEY `charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_no_20130222
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_no_20130222_1
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_no_20130222_1`;
CREATE TABLE `bak_charac_no_20130222_1` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  KEY `charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_no_20130222_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_no_20130223
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_no_20130223`;
CREATE TABLE `bak_charac_no_20130223` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  KEY `charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_no_20130223
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_no_20130223_1
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_no_20130223_1`;
CREATE TABLE `bak_charac_no_20130223_1` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  KEY `charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_no_20130223_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_charac_no_20130224
-- ----------------------------
DROP TABLE IF EXISTS `bak_charac_no_20130224`;
CREATE TABLE `bak_charac_no_20130224` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  KEY `charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_charac_no_20130224
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_letter
-- ----------------------------
DROP TABLE IF EXISTS `bak_letter`;
CREATE TABLE `bak_letter` (
  `letter_id` int(11) NOT NULL auto_increment,
  `charac_no` int(11) NOT NULL default '0',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `letter_text` varchar(255) NOT NULL default '',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `stat` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`letter_id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`),
  KEY `idx_reg_date` USING BTREE (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_letter
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_letter_20130409
-- ----------------------------
DROP TABLE IF EXISTS `bak_letter_20130409`;
CREATE TABLE `bak_letter_20130409` (
  `letter_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `letter_text` varchar(255) NOT NULL default '',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `stat` tinyint(4) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_letter_20130409
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal`;
CREATE TABLE `bak_postal` (
  `postal_id` int(10) unsigned NOT NULL auto_increment,
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `receive_charac_no` int(11) NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(11) NOT NULL default '0',
  `endurance` smallint(5) unsigned NOT NULL default '0',
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `amplify_option` tinyint(3) unsigned NOT NULL default '0',
  `amplify_value` mediumint(8) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `receive_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL default '0',
  `avata_flag` tinyint(4) NOT NULL default '0',
  `unlimit_flag` tinyint(4) NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `creature_flag` tinyint(4) NOT NULL default '0',
  `postal` int(11) NOT NULL default '0',
  `letter_id` int(11) NOT NULL default '0',
  `extend_info` int(11) NOT NULL default '0',
  `ipg_db_id` tinyint(4) NOT NULL default '0',
  `ipg_transaction_id` int(11) NOT NULL default '0',
  `ipg_nexon_id` varchar(32) NOT NULL default '',
  `auction_id` bigint(20) unsigned NOT NULL default '0',
  `random_option` varbinary(14) NOT NULL default '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `item_guid` varbinary(10) NOT NULL default '',
  PRIMARY KEY  (`postal_id`),
  KEY `idx_send_charac_no` USING BTREE (`send_charac_no`),
  KEY `idx_receive_charac_no` USING BTREE (`receive_charac_no`),
  KEY `idx_occ_time` USING BTREE (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130221
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130221`;
CREATE TABLE `bak_postal_20130221` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `item_id` int(10) unsigned NOT NULL default '0',
  `receive_charac_no` int(11) NOT NULL default '0',
  KEY `receive_charac_no` USING BTREE (`receive_charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130221
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130222
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130222`;
CREATE TABLE `bak_postal_20130222` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `item_id` int(10) unsigned NOT NULL default '0',
  `receive_charac_no` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130222
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130222_1
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130222_1`;
CREATE TABLE `bak_postal_20130222_1` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `item_id` int(10) unsigned NOT NULL default '0',
  `receive_charac_no` int(11) NOT NULL default '0',
  KEY `receive_charac_no` USING BTREE (`receive_charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130222_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130223
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130223`;
CREATE TABLE `bak_postal_20130223` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `item_id` int(10) unsigned NOT NULL default '0',
  `receive_charac_no` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130223
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130223_1
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130223_1`;
CREATE TABLE `bak_postal_20130223_1` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `item_id` int(10) unsigned NOT NULL default '0',
  `receive_charac_no` int(11) NOT NULL default '0',
  KEY `receive_charac_no` USING BTREE (`receive_charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130223_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130224
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130224`;
CREATE TABLE `bak_postal_20130224` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `item_id` int(10) unsigned NOT NULL default '0',
  `receive_charac_no` int(11) NOT NULL default '0',
  KEY `receive_charac_no` USING BTREE (`receive_charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130224
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130406
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130406`;
CREATE TABLE `bak_postal_20130406` (
  `receive_charac_no` int(11) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130406
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bak_postal_20130409
-- ----------------------------
DROP TABLE IF EXISTS `bak_postal_20130409`;
CREATE TABLE `bak_postal_20130409` (
  `postal_id` int(10) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `receive_charac_no` int(11) NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(11) NOT NULL default '0',
  `endurance` smallint(5) unsigned NOT NULL default '0',
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `amplify_option` tinyint(3) unsigned NOT NULL default '0',
  `amplify_value` mediumint(8) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `receive_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL default '0',
  `avata_flag` tinyint(4) NOT NULL default '0',
  `unlimit_flag` tinyint(4) NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `creature_flag` tinyint(4) NOT NULL default '0',
  `postal` int(11) NOT NULL default '0',
  `letter_id` int(11) NOT NULL default '0',
  `extend_info` int(11) NOT NULL default '0',
  `ipg_db_id` tinyint(4) NOT NULL default '0',
  `ipg_transaction_id` int(11) NOT NULL default '0',
  `ipg_nexon_id` varchar(32) NOT NULL default '',
  `auction_id` bigint(20) unsigned NOT NULL default '0',
  `random_option` varbinary(14) NOT NULL default '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `item_guid` varbinary(10) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bak_postal_20130409
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
-- Table structure for charac_advance_altar
-- ----------------------------
DROP TABLE IF EXISTS `charac_advance_altar`;
CREATE TABLE `charac_advance_altar` (
  `charac_no` int(11) NOT NULL default '0' COMMENT 'ﾄｳｸｯﾅﾍｹ?｣',
  `ridable_id` int(11) NOT NULL default '0' COMMENT 'ｺｯｽﾅｸ?ｺﾅﾍ ｾﾆﾀﾌｵ',
  `ticket_free` smallint(6) NOT NULL default '0' COMMENT 'ｹｫｷ眤ﾔﾀ螻ﾇ(ｻ鄂ﾅﾀﾇ ﾃﾊｴ??ﾃｳｷｳ ｸﾅﾀﾏ ﾃ､ｿ??',
  `ticket_cera` smallint(6) NOT NULL default '0' COMMENT 'ｼｼｶ?･ｿ｡ｼｭ ｱｸｸﾅﾇﾑ ﾀｯｷ眤ﾔﾀ螻ﾇ',
  `star_game` int(11) NOT NULL default '0' COMMENT 'ｽｺﾅﾗﾀﾌﾁ?ﾅｬｸｮｾ?ｺｸｻ?ｸｷﾎ ｹﾞﾀｺ star (ﾁ?｡ﾇﾏｰ?ｰｨｼﾒ ｾ?ｽ)',
  `star_cera` int(11) NOT NULL default '0' COMMENT 'ｼｼｶ?･ｿ｡ｼｭ ｱｸｸﾅﾇﾑ ﾀｯｷ?star(ﾁ?｡ﾇﾏｰ?ｰｨｼﾒ ｾ?ｽ)',
  `star_usable` int(11) NOT NULL default '0' COMMENT 'ｻ鄙?｡ｴﾉﾇﾑ star (=ｻ鄙?ﾏｰ?ｳｲﾀｺ star)',
  `survival_best` smallint(6) NOT NULL default '0' COMMENT 'ｼｭｹﾙﾀﾌｹ??蠢｡ｼｭ ﾅｬｸｮｾ?ﾑ ﾃﾖｴ?ｽｺﾅﾗﾀﾌﾁ??｣',
  `star_reset_count` smallint(6) NOT NULL default '0' COMMENT 'starｸｦ ﾃﾊｱ篳ｭﾇﾑ ﾈｸｼ?ｱ篳ｹ:ﾃﾊｱ篳ｭ ﾈｽｼ?｡ ｵ??ｺ??ﾌ ｴﾙｸｧ)',
  `is_unlock_stage_effect` smallint(6) NOT NULL default '0' COMMENT 'ｽｺﾅﾗﾀﾌﾁ?unlock ﾀﾌﾆ衄ｮｸｦ ｺｸｿｩﾁ狎ﾟ ﾇﾏｴﾂﾁ?',
  `stage_list` blob NOT NULL COMMENT 'ﾅｬｸｮｾ?ﾑ, ﾀﾔﾀ?ﾇﾒ ｼ?ﾀﾖｴﾂ ｽｺﾅﾗﾀﾌﾁ?ｮｽｺﾆｮ',
  `slot_list` blob NOT NULL COMMENT 'ｽｽｷﾔ ｸｮｽｺﾆｮ',
  `buy_item_list` blob NOT NULL COMMENT 'ｾ?ﾗｷｹﾀﾌｵ?ｻ?｡ｿ｡ｼｭ ｱｸｸﾅﾇﾑ ｾﾆﾀﾌﾅﾛ ｸｮｽｺﾆｮ',
  `reward_list` blob NOT NULL COMMENT 'ｾ??ｺｸｻ?ｸｮｽｺﾆｮ',
  PRIMARY KEY  (`charac_no`,`ridable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_advance_altar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_advance_altar_item_desc
-- ----------------------------
DROP TABLE IF EXISTS `charac_advance_altar_item_desc`;
CREATE TABLE `charac_advance_altar_item_desc` (
  `ridable_id` int(11) NOT NULL default '0' COMMENT 'ｺｯｽﾅｸ?ｺﾅﾍ ｾﾆﾀﾌｵ',
  `item_type` smallint(6) NOT NULL default '0' COMMENT 'ｾﾆﾀﾌﾅﾛﾅｸﾀﾔ 0:ﾀｯｴﾖ, 1:ｽｺﾅｳ, 2:ﾅｸｿ',
  `item_id` int(11) NOT NULL default '0' COMMENT 'ｾﾆﾀﾌﾅﾛｾﾆﾀﾌｵ',
  `item_desc` blob NOT NULL COMMENT 'ｾﾆﾀﾌﾅﾛｼｳｸ',
  PRIMARY KEY  (`ridable_id`,`item_type`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_advance_altar_item_desc
-- ----------------------------
BEGIN;
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 1000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 2000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 3000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 4000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 5000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 6000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 7000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 0, 8000, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 1, 100, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 1, 1001, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 1, 1501, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 1, 2001, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 1, 3001, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 1, 4001, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 1, 5001, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 2, 12610, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 2, 12617, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 2, 64597, '');
INSERT INTO `charac_advance_altar_item_desc` VALUES (1, 2, 64632, '');
COMMIT;

-- ----------------------------
-- Table structure for charac_black_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_black_info`;
CREATE TABLE `charac_black_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `black_point` smallint(5) unsigned NOT NULL default '0',
  `offset_point` smallint(5) unsigned NOT NULL default '0',
  `problem_child_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_black_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_black_list
-- ----------------------------
DROP TABLE IF EXISTS `charac_black_list`;
CREATE TABLE `charac_black_list` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_black_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_event_items
-- ----------------------------
DROP TABLE IF EXISTS `charac_event_items`;
CREATE TABLE `charac_event_items` (
  `id` int(11) NOT NULL auto_increment,
  `charac_no` int(11) NOT NULL default '0',
  `it_id` int(11) NOT NULL default '0',
  `event_code` int(11) NOT NULL default '0',
  `reg_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(4) NOT NULL default '0',
  `stack_count` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx1` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_event_items
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_inven_expand
-- ----------------------------
DROP TABLE IF EXISTS `charac_inven_expand`;
CREATE TABLE `charac_inven_expand` (
  `charac_no` int(11) NOT NULL default '0',
  `cargo` blob NOT NULL,
  `cargo_capacity` int(10) unsigned NOT NULL default '0',
  `jewel` blob NOT NULL,
  `current_equipslot` char(1) NOT NULL default '',
  `switch_equipslot` blob NOT NULL,
  `expand_equipslot` blob NOT NULL,
  `redeem_info` blob NOT NULL,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_inven_expand
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for charac_item_lock_info
-- ----------------------------
DROP TABLE IF EXISTS `charac_item_lock_info`;
CREATE TABLE `charac_item_lock_info` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `item_lock_info` blob,
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charac_item_lock_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for combo_skill
-- ----------------------------
DROP TABLE IF EXISTS `combo_skill`;
CREATE TABLE `combo_skill` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `combo_idx` int(10) unsigned NOT NULL default '0',
  `value1` smallint(5) unsigned NOT NULL default '0',
  `value2` smallint(5) unsigned NOT NULL default '0',
  `value3` smallint(5) unsigned NOT NULL default '0',
  `value4` smallint(5) unsigned NOT NULL default '0',
  `value5` smallint(5) unsigned NOT NULL default '0',
  `value6` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`combo_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of combo_skill
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for combo_skill_2nd
-- ----------------------------
DROP TABLE IF EXISTS `combo_skill_2nd`;
CREATE TABLE `combo_skill_2nd` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `combo_idx` int(10) unsigned NOT NULL default '0',
  `value1` smallint(5) unsigned NOT NULL default '0',
  `value2` smallint(5) unsigned NOT NULL default '0',
  `value3` smallint(5) unsigned NOT NULL default '0',
  `value4` smallint(5) unsigned NOT NULL default '0',
  `value5` smallint(5) unsigned NOT NULL default '0',
  `value6` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`combo_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of combo_skill_2nd
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for creature_items
-- ----------------------------
DROP TABLE IF EXISTS `creature_items`;
CREATE TABLE `creature_items` (
  `ui_id` int(11) NOT NULL auto_increment,
  `charac_no` int(11) NOT NULL default '0',
  `slot` tinyint(3) unsigned NOT NULL default '0',
  `it_id` int(10) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `name` varchar(12) NOT NULL default '',
  `stomach` int(10) unsigned NOT NULL default '0',
  `exp` int(10) unsigned NOT NULL default '0',
  `endurance` tinyint(3) unsigned NOT NULL default '0',
  `creature_type` tinyint(4) NOT NULL default '0',
  `no_charge` tinyint(4) NOT NULL default '0',
  `stat` tinyint(4) NOT NULL default '0',
  `item_lock_key` tinyint(3) unsigned NOT NULL default '0',
  `ipg_agency_no` varchar(32) NOT NULL default '',
  `expire_date` datetime NOT NULL default '9999-12-31 23:59:59',
  `delete_date` datetime NOT NULL default '9999-12-31 23:59:59',
  PRIMARY KEY  (`ui_id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of creature_items
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for creature_items_del
-- ----------------------------
DROP TABLE IF EXISTS `creature_items_del`;
CREATE TABLE `creature_items_del` (
  `sdate` date NOT NULL default '2021-11-19',
  `ui_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `slot` tinyint(3) unsigned NOT NULL default '0',
  `it_id` int(10) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `name` varchar(12) NOT NULL default '',
  `stomach` int(10) unsigned NOT NULL default '0',
  `exp` int(10) unsigned NOT NULL default '0',
  `endurance` tinyint(3) unsigned NOT NULL default '0',
  `creature_type` tinyint(4) NOT NULL default '0',
  `no_charge` tinyint(4) NOT NULL default '0',
  `stat` tinyint(4) NOT NULL default '0',
  `item_lock_key` tinyint(4) NOT NULL default '0',
  `ipg_agency_no` varchar(32) NOT NULL default '',
  `expire_date` datetime NOT NULL default '9999-12-31 23:59:59',
  `delete_date` datetime NOT NULL default '9999-12-31 23:59:59',
  PRIMARY KEY  (`sdate`,`ui_id`),
  KEY `idx_charac_no_exp_dele_date` USING BTREE (`charac_no`,`expire_date`,`delete_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of creature_items_del
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dblab_avatar_socket
-- ----------------------------
DROP TABLE IF EXISTS `dblab_avatar_socket`;
CREATE TABLE `dblab_avatar_socket` (
  `it_id` int(11) NOT NULL default '0',
  `jewel_socket` varchar(600) default NULL,
  PRIMARY KEY  (`it_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dblab_avatar_socket
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fair_pvp_score
-- ----------------------------
DROP TABLE IF EXISTS `fair_pvp_score`;
CREATE TABLE `fair_pvp_score` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `private_win` int(10) unsigned NOT NULL default '0',
  `private_lose` int(10) unsigned NOT NULL default '0',
  `private_draw` int(10) unsigned NOT NULL default '0',
  `relay_battle_win` int(10) unsigned NOT NULL default '0',
  `relay_battle_lose` int(10) unsigned NOT NULL default '0',
  `relay_battle_draw` int(10) unsigned NOT NULL default '0',
  `relay_battle_2kill` int(10) unsigned NOT NULL default '0',
  `successive_win` int(10) unsigned NOT NULL default '0',
  `job_score` blob,
  `relay_battle_3kill` int(10) unsigned default '0',
  `max_successive_win` int(10) unsigned default '0',
  `daily_play_count` int(10) unsigned NOT NULL default '0',
  `last_play_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `pvp_mission_info` blob,
  `give_item` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fair_pvp_score
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `charac_no` int(11) NOT NULL default '0',
  `money` int(11) unsigned NOT NULL default '0',
  `coin` int(11) unsigned NOT NULL default '0',
  `inventory` blob NOT NULL,
  `equipslot` blob NOT NULL,
  `pay_coin` int(11) unsigned NOT NULL default '0',
  `event_coin` int(11) unsigned NOT NULL default '0',
  `creature` blob NOT NULL,
  `creature_flag` tinyint(4) NOT NULL default '0',
  `katagaki` blob NOT NULL,
  `inventory_capacity` int(10) unsigned NOT NULL default '0',
  `avatar_coin` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL auto_increment,
  `charac_no` int(11) NOT NULL default '0',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `letter_text` varchar(255) NOT NULL default '',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `stat` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`letter_id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`),
  KEY `idx_reg_date` USING BTREE (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for letter_del
-- ----------------------------
DROP TABLE IF EXISTS `letter_del`;
CREATE TABLE `letter_del` (
  `sdate` date NOT NULL default '2021-11-19',
  `letter_id` int(11) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `letter_text` varchar(255) NOT NULL default '',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `stat` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`sdate`,`letter_id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`),
  KEY `idx_reg_date` USING BTREE (`reg_date`),
  KEY `idx_letter_del_id` USING BTREE (`letter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter_del
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_avatar_coin
-- ----------------------------
DROP TABLE IF EXISTS `member_avatar_coin`;
CREATE TABLE `member_avatar_coin` (
  `m_id` int(11) NOT NULL default '0',
  `avatar_coin` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_avatar_coin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for postal
-- ----------------------------
DROP TABLE IF EXISTS `postal`;
CREATE TABLE `postal` (
  `postal_id` int(10) unsigned NOT NULL auto_increment,
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `receive_charac_no` int(11) NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(11) NOT NULL default '0',
  `endurance` smallint(5) unsigned NOT NULL default '0',
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `amplify_option` tinyint(3) unsigned NOT NULL default '0',
  `amplify_value` mediumint(8) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `receive_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL default '0',
  `avata_flag` tinyint(4) NOT NULL default '0',
  `unlimit_flag` tinyint(4) NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `creature_flag` tinyint(4) NOT NULL default '0',
  `postal` int(11) NOT NULL default '0',
  `letter_id` int(11) NOT NULL default '0',
  `extend_info` int(11) NOT NULL default '0',
  `ipg_db_id` tinyint(4) NOT NULL default '0',
  `ipg_transaction_id` int(11) NOT NULL default '0',
  `ipg_nexon_id` varchar(32) NOT NULL default '',
  `auction_id` bigint(20) unsigned NOT NULL default '0',
  `random_option` varbinary(14) NOT NULL default '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `item_guid` varbinary(10) NOT NULL default '',
  PRIMARY KEY  (`postal_id`),
  KEY `idx_send_charac_no` USING BTREE (`send_charac_no`),
  KEY `idx_receive_charac_no` USING BTREE (`receive_charac_no`),
  KEY `idx_occ_time` USING BTREE (`occ_time`)
) ENGINE=InnoDB AUTO_INCREMENT=9767 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postal
-- ----------------------------
BEGIN;
INSERT INTO `postal` VALUES (9470, '2016-05-06 08:10:46', 0, 'GM', 1, 3037, 100, 0, 0, 0, 0, 0, '2016-05-04 19:03:10', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9471, '2016-05-06 08:10:46', 0, 'GM', 2, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9472, '2016-05-06 08:10:46', 0, 'GM', 3, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9473, '2016-05-06 08:10:46', 0, 'GM', 4, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9474, '2016-05-06 08:10:46', 0, 'GM', 5, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9475, '2016-05-06 08:10:46', 0, 'GM', 6, 3037, 100, 0, 0, 0, 0, 0, '2016-05-04 19:02:57', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9476, '2016-05-06 08:10:46', 0, 'GM', 7, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9477, '2016-05-06 08:10:46', 0, 'GM', 8, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9478, '2016-05-06 08:10:46', 0, 'GM', 9, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9479, '2016-05-06 08:10:46', 0, 'GM', 10, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9480, '2016-05-06 08:10:46', 0, 'GM', 11, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9481, '2016-05-06 08:10:46', 0, 'GM', 12, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9482, '2016-05-06 08:10:46', 0, 'GM', 13, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9483, '2016-05-06 08:10:46', 0, 'GM', 14, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9484, '2016-05-06 08:10:46', 0, 'GM', 15, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9485, '2016-05-06 08:10:46', 0, 'GM', 16, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9486, '2016-05-06 08:10:46', 0, 'GM', 17, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9487, '2016-05-06 08:10:46', 0, 'GM', 18, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9488, '2016-05-06 08:10:46', 0, 'GM', 19, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9489, '2016-05-06 08:10:46', 0, 'GM', 20, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9490, '2016-05-06 08:10:46', 0, 'GM', 21, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9491, '2016-05-06 08:10:46', 0, 'GM', 22, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9492, '2016-05-06 08:10:46', 0, 'GM', 23, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9493, '2016-05-06 08:10:46', 0, 'GM', 24, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9494, '2016-05-06 08:10:46', 0, 'GM', 25, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9495, '2016-05-06 08:10:46', 0, 'GM', 26, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9496, '2016-05-06 08:10:46', 0, 'GM', 27, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9497, '2016-05-06 08:10:46', 0, 'GM', 28, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9498, '2016-05-06 08:10:46', 0, 'GM', 29, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9499, '2016-05-06 08:10:46', 0, 'GM', 30, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9500, '2016-05-06 08:10:46', 0, 'GM', 31, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9501, '2016-05-06 08:10:46', 0, 'GM', 32, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9502, '2016-05-06 08:10:46', 0, 'GM', 33, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9503, '2016-05-06 08:10:46', 0, 'GM', 34, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9504, '2016-05-06 08:10:46', 0, 'GM', 35, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9505, '2016-05-06 08:10:46', 0, 'GM', 36, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9506, '2016-05-06 08:10:46', 0, 'GM', 37, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9507, '2016-05-06 08:10:46', 0, 'GM', 38, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9508, '2016-05-06 08:10:46', 0, 'GM', 39, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9509, '2016-05-06 08:10:46', 0, 'GM', 40, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9510, '2016-05-06 08:10:46', 0, 'GM', 41, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9511, '2016-05-06 08:10:46', 0, 'GM', 42, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9512, '2016-05-06 08:10:46', 0, 'GM', 43, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9513, '2016-05-06 08:10:46', 0, 'GM', 44, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9514, '2016-05-06 08:10:46', 0, 'GM', 45, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9515, '2016-05-06 08:10:46', 0, 'GM', 46, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9516, '2016-05-06 08:10:46', 0, 'GM', 47, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9517, '2016-05-06 08:10:46', 0, 'GM', 48, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9518, '2016-05-06 08:10:46', 0, 'GM', 49, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9519, '2016-05-06 08:10:46', 0, 'GM', 50, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9520, '2016-05-06 08:10:46', 0, 'GM', 51, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9521, '2016-05-06 08:10:46', 0, 'GM', 52, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9522, '2016-05-06 08:10:46', 0, 'GM', 53, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9523, '2016-05-06 08:10:46', 0, 'GM', 54, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9524, '2016-05-06 08:10:46', 0, 'GM', 55, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9525, '2016-05-06 08:10:46', 0, 'GM', 56, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9526, '2016-05-06 08:10:46', 0, 'GM', 57, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9527, '2016-05-06 08:10:46', 0, 'GM', 58, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9528, '2016-05-06 08:10:46', 0, 'GM', 59, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9529, '2016-05-06 08:10:46', 0, 'GM', 60, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9530, '2016-05-06 08:10:46', 0, 'GM', 61, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9531, '2016-05-06 08:10:46', 0, 'GM', 62, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9532, '2016-05-06 08:10:46', 0, 'GM', 63, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9533, '2016-05-06 08:10:46', 0, 'GM', 64, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9534, '2016-05-06 08:10:46', 0, 'GM', 65, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9535, '2016-05-06 08:10:46', 0, 'GM', 66, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9536, '2016-05-06 08:10:46', 0, 'GM', 67, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9537, '2016-05-06 08:10:46', 0, 'GM', 68, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9538, '2016-05-06 08:10:46', 0, 'GM', 69, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9539, '2016-05-06 08:10:46', 0, 'GM', 70, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9540, '2016-05-06 08:10:46', 0, 'GM', 71, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9541, '2016-05-06 08:10:46', 0, 'GM', 72, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9542, '2016-05-06 08:10:46', 0, 'GM', 73, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9543, '2016-05-06 08:10:46', 0, 'GM', 74, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9544, '2016-05-06 08:10:46', 0, 'GM', 75, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9545, '2016-05-06 08:10:46', 0, 'GM', 76, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9546, '2016-05-06 08:10:46', 0, 'GM', 77, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9547, '2016-05-06 08:10:46', 0, 'GM', 78, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9548, '2016-05-06 08:10:46', 0, 'GM', 79, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9549, '2016-05-06 08:10:46', 0, 'GM', 80, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9550, '2016-05-06 08:10:46', 0, 'GM', 81, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9551, '2016-05-06 08:10:46', 0, 'GM', 82, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9552, '2016-05-06 08:10:46', 0, 'GM', 83, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9553, '2016-05-06 08:10:46', 0, 'GM', 84, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9554, '2016-05-06 08:10:46', 0, 'GM', 85, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9555, '2016-05-06 08:10:46', 0, 'GM', 86, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9556, '2016-05-06 08:10:46', 0, 'GM', 87, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9557, '2016-05-06 08:10:46', 0, 'GM', 88, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9558, '2016-05-06 08:10:46', 0, 'GM', 89, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9559, '2016-05-06 08:10:46', 0, 'GM', 90, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9560, '2016-05-06 08:10:46', 0, 'GM', 91, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9561, '2016-05-06 08:10:46', 0, 'GM', 92, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9562, '2016-05-06 08:10:46', 0, 'GM', 93, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9563, '2016-05-06 08:10:46', 0, 'GM', 94, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9564, '2016-05-06 08:10:46', 0, 'GM', 95, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9565, '2016-05-06 08:10:46', 0, 'GM', 96, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9566, '2016-05-06 08:10:46', 0, 'GM', 97, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9567, '2016-05-06 08:10:46', 0, 'GM', 98, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9568, '2016-05-06 08:10:46', 0, 'GM', 99, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9569, '2016-05-06 08:10:46', 0, 'GM', 100, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9570, '2016-05-06 08:10:46', 0, 'GM', 101, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9571, '2016-05-06 08:10:46', 0, 'GM', 102, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9572, '2016-05-06 08:10:46', 0, 'GM', 103, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9573, '2016-05-06 08:10:46', 0, 'GM', 104, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9574, '2016-05-06 08:10:46', 0, 'GM', 105, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9575, '2016-05-06 08:10:46', 0, 'GM', 106, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9576, '2016-05-06 08:10:46', 0, 'GM', 107, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9577, '2016-05-06 08:10:46', 0, 'GM', 108, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9578, '2016-05-06 08:10:46', 0, 'GM', 109, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9579, '2016-05-06 08:10:46', 0, 'GM', 110, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9580, '2016-05-06 08:10:46', 0, 'GM', 111, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9581, '2016-05-06 08:10:46', 0, 'GM', 112, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9582, '2016-05-06 08:10:46', 0, 'GM', 113, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9583, '2016-05-06 08:10:46', 0, 'GM', 114, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9584, '2016-05-06 08:10:46', 0, 'GM', 115, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9585, '2016-05-06 08:10:46', 0, 'GM', 116, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9586, '2016-05-06 08:10:46', 0, 'GM', 117, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9587, '2016-05-06 08:10:46', 0, 'GM', 118, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9588, '2016-05-06 08:10:46', 0, 'GM', 119, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9589, '2016-05-06 08:10:46', 0, 'GM', 120, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9590, '2016-05-06 08:10:46', 0, 'GM', 121, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9591, '2016-05-06 08:10:46', 0, 'GM', 122, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9592, '2016-05-06 08:10:46', 0, 'GM', 123, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9593, '2016-05-06 08:10:46', 0, 'GM', 124, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9594, '2016-05-06 08:10:46', 0, 'GM', 125, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9595, '2016-05-06 08:10:46', 0, 'GM', 126, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9596, '2016-05-06 08:10:46', 0, 'GM', 127, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9597, '2016-05-06 08:10:46', 0, 'GM', 128, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9598, '2016-05-06 08:10:46', 0, 'GM', 129, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9599, '2016-05-06 08:10:46', 0, 'GM', 130, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9600, '2016-05-06 08:10:46', 0, 'GM', 131, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9601, '2016-05-06 08:10:46', 0, 'GM', 132, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9602, '2016-05-06 08:10:46', 0, 'GM', 133, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9603, '2016-05-06 08:10:46', 0, 'GM', 134, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9604, '2016-05-06 08:10:46', 0, 'GM', 135, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9605, '2016-05-06 08:10:46', 0, 'GM', 136, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9606, '2016-05-06 08:10:46', 0, 'GM', 137, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9607, '2016-05-06 08:10:46', 0, 'GM', 138, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9608, '2016-05-06 08:10:46', 0, 'GM', 139, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9609, '2016-05-06 08:10:46', 0, 'GM', 140, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9610, '2016-05-06 08:10:46', 0, 'GM', 141, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9611, '2016-05-06 08:10:46', 0, 'GM', 142, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9612, '2016-05-06 08:10:46', 0, 'GM', 143, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9613, '2016-05-06 08:10:46', 0, 'GM', 144, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9614, '2016-05-06 08:10:46', 0, 'GM', 145, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9615, '2016-05-06 08:10:46', 0, 'GM', 146, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9616, '2016-05-06 08:10:46', 0, 'GM', 147, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9617, '2016-05-06 08:10:46', 0, 'GM', 148, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9618, '2016-05-06 08:10:46', 0, 'GM', 149, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9619, '2016-05-06 08:10:46', 0, 'GM', 150, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9620, '2016-05-06 08:10:46', 0, 'GM', 151, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9621, '2016-05-06 08:10:46', 0, 'GM', 152, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9622, '2016-05-06 08:10:46', 0, 'GM', 153, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9623, '2016-05-06 08:10:46', 0, 'GM', 154, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9624, '2016-05-06 08:10:46', 0, 'GM', 155, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9625, '2016-05-06 08:10:46', 0, 'GM', 156, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9626, '2016-05-06 08:10:46', 0, 'GM', 157, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9627, '2016-05-06 08:10:46', 0, 'GM', 158, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9628, '2016-05-06 08:10:46', 0, 'GM', 159, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9629, '2016-05-06 08:10:46', 0, 'GM', 160, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9630, '2016-05-06 08:10:46', 0, 'GM', 161, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9631, '2016-05-06 08:10:46', 0, 'GM', 162, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9632, '2016-05-06 08:10:46', 0, 'GM', 163, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9633, '2016-05-06 08:10:46', 0, 'GM', 164, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9634, '2016-05-06 08:10:46', 0, 'GM', 165, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9635, '2016-05-06 08:10:46', 0, 'GM', 166, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9636, '2016-05-06 08:10:46', 0, 'GM', 167, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9637, '2016-05-06 08:10:46', 0, 'GM', 168, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9638, '2016-05-06 08:10:46', 0, 'GM', 169, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9639, '2016-05-06 08:10:46', 0, 'GM', 170, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9640, '2016-05-06 08:10:46', 0, 'GM', 171, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9641, '2016-05-06 08:10:46', 0, 'GM', 172, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9642, '2016-05-06 08:10:46', 0, 'GM', 173, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9643, '2016-05-06 08:10:46', 0, 'GM', 174, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9644, '2016-05-06 08:10:46', 0, 'GM', 175, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9645, '2016-05-06 08:10:46', 0, 'GM', 176, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9646, '2016-05-06 08:10:46', 0, 'GM', 177, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9647, '2016-05-06 08:10:46', 0, 'GM', 178, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9648, '2016-05-06 08:10:46', 0, 'GM', 179, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9649, '2016-05-06 08:10:46', 0, 'GM', 180, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9650, '2016-05-06 08:10:46', 0, 'GM', 181, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9651, '2016-05-06 08:10:46', 0, 'GM', 182, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9652, '2016-05-06 08:10:46', 0, 'GM', 183, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9653, '2016-05-06 08:10:46', 0, 'GM', 184, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9654, '2016-05-06 08:10:46', 0, 'GM', 185, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9655, '2016-05-06 08:10:46', 0, 'GM', 186, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9656, '2016-05-06 08:10:46', 0, 'GM', 187, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9657, '2016-05-06 08:10:46', 0, 'GM', 188, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9658, '2016-05-06 08:10:46', 0, 'GM', 189, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9659, '2016-05-06 08:10:46', 0, 'GM', 190, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9660, '2016-05-06 08:10:46', 0, 'GM', 191, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9661, '2016-05-06 08:10:46', 0, 'GM', 192, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9662, '2016-05-06 08:10:46', 0, 'GM', 193, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9663, '2016-05-06 08:10:46', 0, 'GM', 194, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9664, '2016-05-06 08:10:46', 0, 'GM', 195, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9665, '2016-05-06 08:10:46', 0, 'GM', 196, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9666, '2016-05-06 08:10:46', 0, 'GM', 197, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9667, '2016-05-06 08:10:46', 0, 'GM', 198, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9668, '2016-05-06 08:10:46', 0, 'GM', 199, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9669, '2016-05-06 08:10:46', 0, 'GM', 200, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9670, '2016-05-06 08:10:46', 0, 'GM', 201, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9671, '2016-05-06 08:10:46', 0, 'GM', 202, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9672, '2016-05-06 08:10:46', 0, 'GM', 203, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9673, '2016-05-06 08:10:46', 0, 'GM', 204, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9674, '2016-05-06 08:10:46', 0, 'GM', 205, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9675, '2016-05-06 08:10:46', 0, 'GM', 206, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9676, '2016-05-06 08:10:46', 0, 'GM', 207, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9677, '2016-05-06 08:10:46', 0, 'GM', 208, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9678, '2016-05-06 08:10:46', 0, 'GM', 209, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9679, '2016-05-06 08:10:46', 0, 'GM', 210, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9680, '2016-05-06 08:10:46', 0, 'GM', 211, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9681, '2016-05-06 08:10:46', 0, 'GM', 212, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9682, '2016-05-06 08:10:46', 0, 'GM', 213, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9683, '2016-05-06 08:10:46', 0, 'GM', 214, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9684, '2016-05-06 08:10:46', 0, 'GM', 215, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9685, '2016-05-06 08:10:46', 0, 'GM', 216, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9686, '2016-05-06 08:10:46', 0, 'GM', 217, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9687, '2016-05-06 08:10:46', 0, 'GM', 218, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9688, '2016-05-06 08:10:46', 0, 'GM', 219, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9689, '2016-05-06 08:10:46', 0, 'GM', 220, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9690, '2016-05-06 08:10:46', 0, 'GM', 221, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9691, '2016-05-06 08:10:46', 0, 'GM', 222, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9692, '2016-05-06 08:10:46', 0, 'GM', 223, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9693, '2016-05-06 08:10:46', 0, 'GM', 224, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9694, '2016-05-06 08:10:46', 0, 'GM', 225, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9695, '2016-05-06 08:10:46', 0, 'GM', 226, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9696, '2016-05-06 08:10:46', 0, 'GM', 227, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9697, '2016-05-06 08:10:46', 0, 'GM', 228, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9698, '2016-05-06 08:10:46', 0, 'GM', 229, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9699, '2016-05-06 08:10:46', 0, 'GM', 230, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9700, '2016-05-06 08:10:46', 0, 'GM', 231, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9701, '2016-05-06 08:10:46', 0, 'GM', 232, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9702, '2016-05-06 08:10:46', 0, 'GM', 233, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9703, '2016-05-06 08:10:46', 0, 'GM', 234, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9704, '2016-05-06 08:10:46', 0, 'GM', 235, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9705, '2016-05-06 08:10:46', 0, 'GM', 236, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9706, '2016-05-06 08:10:46', 0, 'GM', 237, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9707, '2016-05-06 08:10:46', 0, 'GM', 238, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9708, '2016-05-06 08:10:46', 0, 'GM', 239, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9709, '2016-05-06 08:10:46', 0, 'GM', 240, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9710, '2016-05-06 08:10:46', 0, 'GM', 241, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9711, '2016-05-06 08:10:46', 0, 'GM', 242, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9712, '2016-05-06 08:10:46', 0, 'GM', 243, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9713, '2016-05-06 08:10:46', 0, 'GM', 244, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9714, '2016-05-06 08:10:46', 0, 'GM', 245, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9715, '2016-05-06 08:10:46', 0, 'GM', 246, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9716, '2016-05-06 08:10:46', 0, 'GM', 247, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9717, '2016-05-06 08:10:46', 0, 'GM', 248, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9718, '2016-05-06 08:10:46', 0, 'GM', 249, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9719, '2016-05-06 08:10:46', 0, 'GM', 250, 3037, 100, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9720, '2016-05-06 11:06:09', 0, 'GM', 6, 3330, 1500, 0, 0, 0, 0, 0, '2016-05-04 21:57:22', 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9721, '2016-05-10 00:16:43', 0, 'GM', 6, 2660500, 1, 0, 0, 0, 0, 0, '2016-05-04 23:02:23', 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9722, '2016-05-10 00:16:55', 0, 'GM', 6, 10060000, 10, 0, 0, 0, 0, 0, '2016-05-04 23:02:23', 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9723, '2016-05-10 00:16:58', 0, 'GM', 6, 10060001, 10, 0, 0, 0, 0, 0, '2016-05-04 23:02:23', 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9724, '2016-05-10 00:17:01', 0, 'GM', 6, 10060002, 10, 0, 0, 0, 0, 0, '2016-05-04 23:02:22', 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9725, '2016-05-10 00:17:04', 0, 'GM', 6, 10060003, 10, 0, 0, 0, 0, 0, '2016-05-04 23:02:22', 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9726, '2016-05-10 00:20:23', 0, 'GM', 6, 11543, 1, 0, 31, 3, 0, 0, '2016-05-04 23:05:18', 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, '', 0, '', 10, 0, '');
INSERT INTO `postal` VALUES (9727, '2016-05-10 00:20:27', 0, 'GM', 6, 11543, 1, 0, 31, 3, 0, 0, '2016-05-04 23:05:17', 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, '', 0, '', 10, 0, '');
INSERT INTO `postal` VALUES (9728, '2016-05-10 02:01:32', 0, 'GM', 6, 1295, 10, 0, 0, 0, 0, 0, '2016-05-05 00:46:48', 1, 0, 0, 0, 0, 0, 10, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9729, '2016-05-10 02:01:37', 0, 'GM', 6, 1296, 10, 0, 0, 0, 0, 0, '2016-05-05 00:46:47', 1, 0, 0, 0, 0, 0, 11, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9730, '2016-05-12 16:01:05', 0, 'GM', 6, 11584, 1, 0, 0, 0, 0, 0, '2016-05-05 02:35:53', 1, 0, 0, 0, 0, 0, 12, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9731, '2016-05-12 16:01:08', 0, 'GM', 6, 11585, 1, 0, 0, 0, 0, 0, '2016-05-05 02:35:53', 1, 0, 0, 0, 0, 0, 13, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9732, '2016-05-12 16:01:11', 0, 'GM', 6, 11586, 1, 0, 0, 0, 0, 0, '2016-05-05 02:35:53', 1, 0, 0, 0, 0, 0, 14, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9733, '2016-05-12 16:01:15', 0, 'GM', 6, 11587, 1, 0, 0, 0, 0, 0, '2016-05-05 02:35:52', 1, 0, 0, 0, 0, 0, 15, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9734, '2016-05-12 17:27:52', 0, 'GM', 6, 690000799, 1, 0, 0, 0, 0, 0, '2016-05-05 04:02:17', 1, 0, 0, 0, 0, 0, 16, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9735, '2016-05-12 17:31:56', 0, 'GM', 6, 690000474, 1, 0, 0, 0, 0, 0, '2016-05-05 04:06:49', 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9736, '2016-05-12 17:37:17', 0, 'GM', 6, 690000192, 1, 0, 0, 0, 0, 0, '2016-05-05 04:11:47', 1, 0, 0, 0, 0, 0, 18, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9737, '2016-05-12 17:37:20', 0, 'GM', 6, 690000193, 1, 0, 0, 0, 0, 0, '2016-05-05 04:11:47', 1, 0, 0, 0, 0, 0, 19, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9738, '2016-05-12 17:37:23', 0, 'GM', 6, 690000194, 1, 0, 0, 0, 0, 0, '2016-05-05 04:11:47', 1, 0, 0, 0, 0, 0, 20, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9739, '2016-05-12 17:41:37', 0, 'GM', 6, 690000139, 1, 0, 0, 0, 0, 0, '2016-05-05 04:16:17', 1, 0, 0, 0, 0, 0, 21, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9740, '2016-05-12 17:41:41', 0, 'GM', 6, 690000140, 1, 0, 0, 0, 0, 0, '2016-05-05 04:16:16', 1, 0, 0, 0, 0, 0, 22, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9741, '2016-05-12 17:41:44', 0, 'GM', 6, 690000141, 1, 0, 0, 0, 0, 0, '2016-05-05 04:16:16', 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9742, '2016-05-12 17:41:48', 0, 'GM', 6, 690000142, 1, 0, 0, 0, 0, 0, '2016-05-05 04:16:16', 1, 0, 0, 0, 0, 0, 24, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9743, '2016-05-12 17:44:47', 0, 'GM', 6, 690000057, 1, 0, 0, 0, 0, 0, '2016-05-05 04:19:25', 1, 0, 0, 0, 0, 0, 25, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9744, '2016-05-12 17:44:50', 0, 'GM', 6, 690000058, 1, 0, 0, 0, 0, 0, '2016-05-05 04:19:24', 1, 0, 0, 0, 0, 0, 26, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9745, '2016-05-12 17:44:53', 0, 'GM', 6, 690000059, 1, 0, 0, 0, 0, 0, '2016-05-05 04:19:24', 1, 0, 0, 0, 0, 0, 27, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9746, '2016-05-12 17:44:59', 0, 'GM', 6, 690000060, 1, 0, 0, 0, 0, 0, '2016-05-05 04:19:24', 1, 0, 0, 0, 0, 0, 28, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9747, '2016-05-12 18:50:38', 0, 'GM', 6, 11793, 1, 0, 0, 0, 0, 0, '2016-05-05 05:25:16', 1, 0, 0, 0, 0, 0, 29, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9748, '2016-05-12 18:50:42', 0, 'GM', 6, 11794, 1, 0, 0, 0, 0, 0, '2016-05-05 05:25:15', 1, 0, 0, 0, 0, 0, 30, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9749, '2016-05-12 18:50:45', 0, 'GM', 6, 11795, 1, 0, 0, 0, 0, 0, '2016-05-05 05:25:15', 1, 0, 0, 0, 0, 0, 31, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9750, '2016-05-12 18:50:48', 0, 'GM', 6, 11796, 1, 0, 0, 0, 0, 0, '2016-05-05 05:25:15', 1, 0, 0, 0, 0, 0, 32, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9751, '2016-05-12 18:50:52', 0, 'GM', 6, 11797, 1, 0, 0, 0, 0, 0, '2016-05-05 05:25:14', 1, 0, 0, 0, 0, 0, 33, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9752, '2016-05-12 19:28:40', 0, 'GM', 6, 3299, 100, 0, 0, 0, 0, 0, '2016-05-05 06:04:31', 1, 0, 0, 0, 0, 0, 34, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9753, '2016-05-12 19:52:14', 0, 'GM', 6, 39075, 1, 0, 0, 0, 0, 0, '2021-11-19 00:00:00', 1, 0, 0, 0, 0, 0, 35, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9754, '2016-05-12 20:19:54', 0, 'GM', 6, 10000145, 1, 0, 0, 0, 0, 0, '2016-05-05 06:56:23', 1, 0, 0, 0, 0, 0, 36, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9755, '2016-05-12 20:20:03', 0, 'GM', 6, 2660555, 1, 0, 0, 0, 0, 0, '2016-05-05 06:56:23', 1, 0, 0, 0, 0, 0, 37, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9756, '2016-05-12 20:20:12', 0, 'GM', 6, 2660438, 1, 0, 0, 0, 0, 0, '2016-05-05 06:56:22', 1, 0, 0, 0, 0, 0, 38, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9757, '2016-05-12 20:20:58', 0, 'GM', 6, 701, 1, 0, 0, 0, 0, 0, '2016-05-05 06:56:22', 1, 0, 0, 0, 0, 0, 39, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9758, '2016-05-12 20:25:02', 0, 'GM', 6, 2660207, 1, 0, 0, 0, 0, 0, '2016-05-05 06:59:26', 1, 0, 0, 0, 0, 0, 40, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9759, '2016-05-12 20:26:06', 0, 'GM', 6, 2660555, 1, 0, 0, 0, 0, 0, '2016-05-05 07:00:28', 1, 0, 0, 0, 0, 0, 41, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9760, '2016-05-12 20:26:42', 0, 'GM', 6, 10000145, 1, 0, 0, 0, 0, 0, '2016-05-05 07:01:06', 1, 0, 0, 0, 0, 0, 42, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9761, '2016-05-12 20:27:25', 0, 'GM', 6, 2660044, 1, 0, 0, 0, 0, 0, '2016-05-05 07:01:48', 1, 0, 0, 0, 0, 0, 43, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9762, '2016-05-12 20:28:22', 0, 'GM', 6, 2660660, 1, 0, 0, 0, 0, 0, '2016-05-05 07:02:45', 1, 0, 0, 0, 0, 0, 44, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9763, '2016-05-17 10:00:00', 0, 'å·²èªè­‰çš„å†’éšªå®', 1, 2660410, 1, 0, 0, 0, 0, 0, '2016-05-17 09:40:51', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, 0x0000000000000000000000000000, 0, 0, 0x00000000000000000000);
INSERT INTO `postal` VALUES (9764, '2016-11-02 15:00:00', 0, 'å·²èªè­‰çš„å†’éšªå®', 1, 2660410, 1, 0, 0, 0, 0, 0, '2016-11-02 14:49:07', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, 0x0000000000000000000000000000, 0, 0, 0x00000000000000000000);
INSERT INTO `postal` VALUES (9765, '2016-11-03 00:48:59', 0, 'Game绠＄悊鍛', 1, 1232, 300, 0, 0, 0, 0, 0, '2016-11-02 14:49:07', 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, '', 0, '', 0, 0, '');
INSERT INTO `postal` VALUES (9766, '2016-11-03 00:50:20', 0, 'Game绠＄悊鍛', 1, 3340, 300, 0, 0, 0, 0, 0, '2016-11-02 14:50:26', 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, '', 0, '', 0, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for postal_del
-- ----------------------------
DROP TABLE IF EXISTS `postal_del`;
CREATE TABLE `postal_del` (
  `sdate` date NOT NULL default '2021-11-19',
  `postal_id` int(10) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL default '0',
  `send_charac_name` varchar(20) NOT NULL default '',
  `receive_charac_no` int(11) NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(11) NOT NULL default '0',
  `endurance` smallint(5) unsigned NOT NULL default '0',
  `upgrade` tinyint(3) unsigned NOT NULL default '0',
  `amplify_option` tinyint(3) unsigned NOT NULL default '0',
  `amplify_value` mediumint(8) unsigned NOT NULL default '0',
  `gold` int(10) unsigned NOT NULL default '0',
  `receive_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL default '0',
  `avata_flag` tinyint(4) NOT NULL default '0',
  `unlimit_flag` tinyint(4) NOT NULL default '0',
  `seal_flag` tinyint(4) NOT NULL default '0',
  `creature_flag` tinyint(4) NOT NULL default '0',
  `postal` int(11) NOT NULL default '0',
  `letter_id` int(11) NOT NULL default '0',
  `extend_info` int(11) NOT NULL default '0',
  `ipg_db_id` tinyint(4) NOT NULL default '0',
  `ipg_transaction_id` int(11) NOT NULL default '0',
  `ipg_nexon_id` varchar(32) NOT NULL default '',
  `auction_id` bigint(20) unsigned NOT NULL default '0',
  `random_option` varbinary(14) NOT NULL default '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `item_guid` varbinary(10) NOT NULL default '',
  PRIMARY KEY  (`sdate`,`postal_id`),
  KEY `idx_send_charac_no` USING BTREE (`send_charac_no`),
  KEY `idx_receive_charac_no` USING BTREE (`receive_charac_no`),
  KEY `idx_occ_time` USING BTREE (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postal_del
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `charac_no` int(11) NOT NULL default '0',
  `remain_sp` int(11) unsigned NOT NULL default '0',
  `skill_slot` blob NOT NULL,
  `request_sp` blob NOT NULL,
  `sp_garbage` int(11) unsigned NOT NULL default '0',
  `used_sp` int(11) unsigned NOT NULL default '0',
  `remain_sp_2nd` int(11) unsigned NOT NULL default '0',
  `skill_slot_2nd` blob NOT NULL,
  `request_sp_2nd` blob NOT NULL,
  `skill_slot_lethe` blob NOT NULL,
  `lethe_flag` tinyint(4) NOT NULL default '0',
  `skill_slot_lethe_2nd` blob NOT NULL,
  `lethe_flag_2nd` tinyint(4) NOT NULL default '0',
  `remain_sfp_2nd` int(11) unsigned NOT NULL default '0',
  `remain_sfp_1st` int(11) unsigned NOT NULL default '0',
  `skill_command` blob NOT NULL,
  `script_version` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for skill_fair_pvp
-- ----------------------------
DROP TABLE IF EXISTS `skill_fair_pvp`;
CREATE TABLE `skill_fair_pvp` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `remain_sp` int(10) unsigned NOT NULL default '0',
  `skill_slot` blob,
  `sp_garbage` int(10) unsigned NOT NULL default '0',
  `used_sp` int(10) unsigned NOT NULL default '0',
  `skill_slot_lethe` blob,
  `lethe_flag` tinyint(4) NOT NULL default '0',
  `remain_sp_2nd` int(10) unsigned NOT NULL default '0',
  `skill_slot_2nd` blob,
  `skill_slot_lethe_2nd` blob,
  `lethe_flag_2nd` tinyint(4) NOT NULL default '0',
  `remain_sfp_1st` smallint(5) unsigned NOT NULL default '0',
  `remain_sfp_2nd` smallint(5) unsigned NOT NULL default '0',
  `skill_command` blob,
  `script_version` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_fair_pvp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for skill_index
-- ----------------------------
DROP TABLE IF EXISTS `skill_index`;
CREATE TABLE `skill_index` (
  `no` int(11) NOT NULL auto_increment,
  `job` mediumint(9) NOT NULL default '100',
  `skill_idx` mediumint(9) NOT NULL default '0',
  `skill_name` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_job` USING BTREE (`job`),
  KEY `idx_skill` USING BTREE (`skill_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=1725 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_index
-- ----------------------------
BEGIN;
INSERT INTO `skill_index` VALUES (1, 0, 1, 'æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (2, 0, 2, 'é¬¼å°ç ');
INSERT INTO `skill_index` VALUES (3, 0, 3, 'è‡ªå‹•æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (4, 0, 4, 'å…‰åŠç²¾é€š');
INSERT INTO `skill_index` VALUES (5, 0, 5, 'é¬¼æ–¬');
INSERT INTO `skill_index` VALUES (6, 0, 6, 'å™¬éˆé¬¼æ–¬');
INSERT INTO `skill_index` VALUES (7, 0, 7, 'é€†è½‰åæ“Š');
INSERT INTO `skill_index` VALUES (8, 0, 8, 'ä¸‰æ®µæ–¬');
INSERT INTO `skill_index` VALUES (9, 0, 9, 'æ‹”åˆ€æ–¬');
INSERT INTO `skill_index` VALUES (10, 0, 11, 'é€£çªåˆº');
INSERT INTO `skill_index` VALUES (11, 0, 12, 'çŸ­åŠç²¾é€š');
INSERT INTO `skill_index` VALUES (12, 0, 13, 'å¤ªåˆ€ç²¾é€š');
INSERT INTO `skill_index` VALUES (13, 0, 14, 'å·¨åŠç²¾é€š');
INSERT INTO `skill_index` VALUES (14, 0, 15, 'éˆå™¨ç²¾é€š');
INSERT INTO `skill_index` VALUES (15, 0, 16, 'éŠ€å…‰è½åˆƒ');
INSERT INTO `skill_index` VALUES (16, 0, 17, 'ç©ºä¸­é€£æ–¬');
INSERT INTO `skill_index` VALUES (17, 0, 18, 'æ†‘ä¾');
INSERT INTO `skill_index` VALUES (18, 0, 19, 'è¡€æ°£å–šé†’');
INSERT INTO `skill_index` VALUES (19, 0, 20, 'åœ°è£‚ Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (20, 0, 21, 'å†°åˆƒ Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (21, 0, 22, 'çˆ†ç‚Ž Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (22, 0, 23, 'å—œè¡€');
INSERT INTO `skill_index` VALUES (23, 0, 24, 'æ€’æ°£çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (24, 0, 25, 'é¬¼ç¥žâ€§å¡è´Š');
INSERT INTO `skill_index` VALUES (25, 0, 27, 'æ­¦å™¨å¥§ç¾©');
INSERT INTO `skill_index` VALUES (26, 0, 29, 'æš—ä¹‹è¦ªå’Œ');
INSERT INTO `skill_index` VALUES (27, 0, 30, 'æš—æœˆé™è‡¨');
INSERT INTO `skill_index` VALUES (28, 0, 31, 'å—œé­‚ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (29, 0, 32, 'æ³¢å‹•çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (30, 0, 33, 'å…‰åŠæŽŒæ¡');
INSERT INTO `skill_index` VALUES (31, 0, 34, 'æ­»äº¡æŠ—æ‹’');
INSERT INTO `skill_index` VALUES (32, 0, 35, 'å°å°è§£é™¤');
INSERT INTO `skill_index` VALUES (33, 0, 36, 'é¬¼ç¥žâ€§å†°éœœè–©äºž');
INSERT INTO `skill_index` VALUES (34, 0, 37, 'ç–¾å½±æ‰‹');
INSERT INTO `skill_index` VALUES (35, 0, 38, 'ç ´æ¥µå…µåˆƒ');
INSERT INTO `skill_index` VALUES (36, 0, 39, 'æ­¦å™¨ç¯€åˆ¶');
INSERT INTO `skill_index` VALUES (37, 0, 40, 'æš´èµ°');
INSERT INTO `skill_index` VALUES (38, 0, 41, 'é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾è’™');
INSERT INTO `skill_index` VALUES (39, 0, 42, 'é¬¼é£Ÿ');
INSERT INTO `skill_index` VALUES (40, 0, 43, 'è‰ä¸Šé£›');
INSERT INTO `skill_index` VALUES (41, 0, 44, 'æ­»äº¡å¢“ç¢‘');
INSERT INTO `skill_index` VALUES (42, 0, 46, 'ä¸ŠæŒ‘');
INSERT INTO `skill_index` VALUES (43, 0, 47, 'æ³¢å‹•åˆ»å°');
INSERT INTO `skill_index` VALUES (44, 0, 49, 'å¾Œè·³æ–¬');
INSERT INTO `skill_index` VALUES (45, 0, 50, 'é‚ªå…‰æ–¬');
INSERT INTO `skill_index` VALUES (46, 0, 51, 'ä¿®ç¾…é‚ªå…‰æ–¬');
INSERT INTO `skill_index` VALUES (47, 0, 52, 'æ®ºæ„æ³¢å‹•');
INSERT INTO `skill_index` VALUES (48, 0, 53, 'æŒ«æŠ˜æ„å¿—');
INSERT INTO `skill_index` VALUES (49, 0, 55, 'æ®ºæ°£æ„ŸçŸ¥');
INSERT INTO `skill_index` VALUES (50, 0, 56, 'ç‹‚æˆ°å£«é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (51, 0, 57, 'é‚ªå…‰æ³¢å‹•é™£');
INSERT INTO `skill_index` VALUES (52, 0, 58, 'è£‚æ³¢æ–¬');
INSERT INTO `skill_index` VALUES (53, 0, 60, 'é¬¼å½±é–ƒ');
INSERT INTO `skill_index` VALUES (54, 0, 61, 'é˜¿ä¿®ç¾…æ¿ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (55, 0, 62, 'ç„¡é›™æ³¢');
INSERT INTO `skill_index` VALUES (56, 0, 63, 'è¡€æ°£æ—ºç››');
INSERT INTO `skill_index` VALUES (57, 0, 64, 'åå­—æ–¬');
INSERT INTO `skill_index` VALUES (58, 0, 65, 'å´©å±±æ“Š');
INSERT INTO `skill_index` VALUES (59, 0, 67, 'è£â€§é¬¼åŠè¡“');
INSERT INTO `skill_index` VALUES (60, 0, 68, 'ç ´è»å‡é¾æ“Š');
INSERT INTO `skill_index` VALUES (61, 0, 72, 'çŒ›é¾æ–·ç©ºæ–¬');
INSERT INTO `skill_index` VALUES (62, 0, 73, 'å¹»å½±åŠèˆž');
INSERT INTO `skill_index` VALUES (63, 0, 74, 'ä¸å‹•æ˜ŽçŽ‹é™£');
INSERT INTO `skill_index` VALUES (64, 0, 75, 'é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž');
INSERT INTO `skill_index` VALUES (65, 0, 76, 'è¡€ä¹‹ç‹‚æš´');
INSERT INTO `skill_index` VALUES (66, 0, 77, 'æœˆå…‰æ–¬');
INSERT INTO `skill_index` VALUES (67, 0, 79, 'å—œé­‚å°é­”æ–¬');
INSERT INTO `skill_index` VALUES (68, 0, 80, 'æ»¿æœˆæ–¬');
INSERT INTO `skill_index` VALUES (69, 0, 81, 'å´©å±±è£‚åœ°æ–¬');
INSERT INTO `skill_index` VALUES (70, 0, 82, 'é¬¼ç¥žâ€§å†¥ç‚Žå¡æ´›');
INSERT INTO `skill_index` VALUES (71, 0, 84, 'é¬¼ç¥žâ€§æ®˜å½±å‡±è³ˆ');
INSERT INTO `skill_index` VALUES (72, 0, 85, 'é­”ç„è¡€å‰Ž');
INSERT INTO `skill_index` VALUES (73, 0, 86, 'æ¥µ Â· é¬¼åŠè¡“ (æš´é¢¨å¼)');
INSERT INTO `skill_index` VALUES (74, 0, 87, 'æ€–æ‹‰ä¿®');
INSERT INTO `skill_index` VALUES (75, 0, 88, 'æ³¢å‹•çœ¼:çµ‚çµæŠ€');
INSERT INTO `skill_index` VALUES (76, 0, 89, 'ææ‡¼å…‰ç’°');
INSERT INTO `skill_index` VALUES (77, 0, 90, 'é®®è¡€ä¹‹æ†¶');
INSERT INTO `skill_index` VALUES (78, 0, 91, 'æ¥µ Â· é¬¼åŠè¡“ (æ–¬éµå¼)');
INSERT INTO `skill_index` VALUES (79, 0, 92, 'å¿ƒçœ¼');
INSERT INTO `skill_index` VALUES (80, 0, 93, 'å™¬é­‚è€…å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (81, 0, 94, 'åŠé­‚è¼•ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (82, 0, 95, 'å¢“ç¢‘ä¸‰çµ•é™£');
INSERT INTO `skill_index` VALUES (83, 0, 96, 'é¬¼ç¥žâ€§å†°æ™¶è–©äºž');
INSERT INTO `skill_index` VALUES (84, 0, 97, 'ç ´ç©ºæ‹”åˆ€æ–¬');
INSERT INTO `skill_index` VALUES (85, 0, 98, 'ç ´è»æ–¬é¾æ“Š');
INSERT INTO `skill_index` VALUES (86, 0, 99, 'æ¥µç‚Ž Â· è£‚æ³¢åŠ');
INSERT INTO `skill_index` VALUES (87, 0, 100, 'æ¥µå†° Â· è£‚æ³¢åŠ');
INSERT INTO `skill_index` VALUES (88, 0, 101, 'è¡€æ°£çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (89, 0, 102, 'æ»…é­‚ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (90, 0, 103, 'è¡€æ°£ä¹‹åˆƒ');
INSERT INTO `skill_index` VALUES (91, 0, 105, 'æµå¿ƒ');
INSERT INTO `skill_index` VALUES (92, 0, 107, 'æµå¿ƒ : åˆº');
INSERT INTO `skill_index` VALUES (93, 0, 108, 'æµå¿ƒ : èº');
INSERT INTO `skill_index` VALUES (94, 0, 109, 'æµå¿ƒ : å‡');
INSERT INTO `skill_index` VALUES (95, 0, 110, 'æµå¿ƒ : ç‹‚');
INSERT INTO `skill_index` VALUES (96, 0, 111, 'é¬¼å½±éž­');
INSERT INTO `skill_index` VALUES (97, 0, 112, 'é¬¼å½±ä¸‰æ“ŠåŠ');
INSERT INTO `skill_index` VALUES (98, 0, 115, 'å¼·åŒ– - é¬¼åŠéž­');
INSERT INTO `skill_index` VALUES (99, 0, 116, 'å¼·åŒ– - é¬¼å½±ä¸‰æ“ŠåŠ');
INSERT INTO `skill_index` VALUES (100, 0, 139, 'å¼·åŒ– - è¡€æ°£å–šé†’');
INSERT INTO `skill_index` VALUES (101, 0, 140, 'å¼·åŒ– - åœ°è£‚ Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (102, 0, 141, 'å¼·åŒ– - åå­—æ–¬');
INSERT INTO `skill_index` VALUES (103, 0, 142, 'å¼·åŒ– - é¬¼æ–¬');
INSERT INTO `skill_index` VALUES (104, 0, 143, 'å¼·åŒ– - ä¸‰æ®µæ–¬');
INSERT INTO `skill_index` VALUES (105, 0, 144, 'å¼·åŒ– - é€†è½‰åæ“Š');
INSERT INTO `skill_index` VALUES (106, 0, 145, 'å¼·åŒ– - è‡ªå‹•æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (107, 0, 146, 'å¼·åŒ– - é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾');
INSERT INTO `skill_index` VALUES (108, 0, 147, 'å¼·åŒ– - æ†‘ä¾');
INSERT INTO `skill_index` VALUES (109, 0, 148, 'å¼·åŒ– - æ­»äº¡æŠ—æ‹’');
INSERT INTO `skill_index` VALUES (110, 0, 149, 'å¼·åŒ– - æš´èµ°');
INSERT INTO `skill_index` VALUES (111, 0, 150, 'å¼·åŒ– - æ®ºæ„æ³¢å‹•');
INSERT INTO `skill_index` VALUES (112, 0, 151, 'å¼·åŒ– - æ³¢å‹•åˆ»å°');
INSERT INTO `skill_index` VALUES (113, 0, 152, 'å¼·åŒ– - çŒ›é¾æ–·ç©ºæ–¬');
INSERT INTO `skill_index` VALUES (114, 0, 153, 'å¼·åŒ– - éŠ€å…‰è½åˆƒ');
INSERT INTO `skill_index` VALUES (115, 0, 154, 'å¼·åŒ– - æ‹”åˆ€æ–¬');
INSERT INTO `skill_index` VALUES (116, 0, 155, 'å¼·åŒ– - æœˆå…‰æ–¬');
INSERT INTO `skill_index` VALUES (117, 0, 156, 'å¼·åŒ– - é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž');
INSERT INTO `skill_index` VALUES (118, 0, 157, 'å¼·åŒ– - å´©å±±æ“Š');
INSERT INTO `skill_index` VALUES (119, 0, 158, 'å¼·åŒ– - å—œé­‚å°é­”æ–¬');
INSERT INTO `skill_index` VALUES (120, 0, 159, 'å¼·åŒ– - è£‚æ³¢æ–¬');
INSERT INTO `skill_index` VALUES (121, 0, 160, 'å¼·åŒ– - é¬¼å°ç ');
INSERT INTO `skill_index` VALUES (122, 0, 161, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (123, 0, 162, 'å¼·åŒ– - é€£çªåˆº');
INSERT INTO `skill_index` VALUES (124, 0, 163, 'å¼·åŒ– - æ ¼æª”');
INSERT INTO `skill_index` VALUES (125, 0, 164, 'å¼·åŒ– - é¬¼ç¥žâ€§å¡è´Š');
INSERT INTO `skill_index` VALUES (126, 0, 165, 'å¼·åŒ– - å—œé­‚ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (127, 0, 166, 'å¼·åŒ– - æ€’æ°£çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (128, 0, 167, 'å¼·åŒ– - å´©å±±è£‚åœ°æ–¬');
INSERT INTO `skill_index` VALUES (129, 0, 168, 'å¼·åŒ– - è¡€æ°£ä¹‹åˆƒ');
INSERT INTO `skill_index` VALUES (130, 0, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (131, 0, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (132, 0, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (133, 0, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (134, 0, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (135, 0, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (136, 0, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (137, 0, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (138, 0, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (139, 0, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (140, 0, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (141, 0, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (142, 0, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (143, 0, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (144, 0, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (145, 0, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (146, 0, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (147, 0, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (148, 0, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (149, 0, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (150, 0, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (151, 0, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (152, 0, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (153, 0, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (154, 0, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (155, 0, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (156, 0, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (157, 0, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (158, 0, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (159, 0, 210, 'å¼·åŒ– - æ³¢å‹•çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (160, 0, 211, 'å¼·åŒ– - é‚ªå…‰æ–¬');
INSERT INTO `skill_index` VALUES (161, 0, 212, 'å¼·åŒ– - çˆ†ç‚Žæ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (162, 0, 213, 'å¼·åŒ– - ç„¡é›™æ³¢');
INSERT INTO `skill_index` VALUES (163, 0, 214, 'å¼·åŒ– - ä¸å‹•æ˜ŽçŽ‹é™£');
INSERT INTO `skill_index` VALUES (164, 0, 215, 'å¼·åŒ– - ä¸ŠæŒ‘');
INSERT INTO `skill_index` VALUES (165, 0, 216, 'å¼·åŒ– - å†°åˆƒ Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (166, 0, 217, 'å¼·åŒ– - å¹»å½±åŠèˆž');
INSERT INTO `skill_index` VALUES (167, 0, 218, 'å¼·åŒ– - ç ´è»å‡é¾æ“Š');
INSERT INTO `skill_index` VALUES (168, 0, 219, 'å¼·åŒ– - æµå¿ƒï¼šåˆº');
INSERT INTO `skill_index` VALUES (169, 0, 220, 'å¼·åŒ– - æµå¿ƒï¼šèº');
INSERT INTO `skill_index` VALUES (170, 0, 221, 'å¼·åŒ– - æµå¿ƒï¼šå‡');
INSERT INTO `skill_index` VALUES (171, 0, 224, 'å¼·åŒ– - é¬¼ç¥žâ€§å†°éœœè–©äºž');
INSERT INTO `skill_index` VALUES (172, 0, 225, 'å¼·åŒ– - æ­»äº¡å¢“ç¢‘');
INSERT INTO `skill_index` VALUES (173, 0, 226, 'å¼·åŒ– - é¬¼å½±é–ƒ');
INSERT INTO `skill_index` VALUES (174, 0, 227, 'å¼·åŒ– - é¬¼ç¥žâ€§å†¥ç‚Žé¬¼ç¥ž');
INSERT INTO `skill_index` VALUES (175, 0, 228, 'å¼·åŒ– - é¬¼å°ç ');
INSERT INTO `skill_index` VALUES (176, 1, 1, 'éµå±±é ');
INSERT INTO `skill_index` VALUES (177, 1, 2, 'è¹²ä¼');
INSERT INTO `skill_index` VALUES (178, 1, 3, 'æ“’æœˆç‚Ž');
INSERT INTO `skill_index` VALUES (179, 1, 4, 'ç¢Žéª¨');
INSERT INTO `skill_index` VALUES (180, 1, 5, 'ä¸Šå‹¾æ‹³');
INSERT INTO `skill_index` VALUES (181, 1, 6, 'ä¸‹æ®µè¸¢');
INSERT INTO `skill_index` VALUES (182, 1, 7, 'é‹¼ç­‹éµéª¨');
INSERT INTO `skill_index` VALUES (183, 1, 8, 'åˆ†èº«');
INSERT INTO `skill_index` VALUES (184, 1, 9, 'èƒŒæ‘”');
INSERT INTO `skill_index` VALUES (185, 1, 10, 'èƒŒæ‘”å¼·åŒ–');
INSERT INTO `skill_index` VALUES (186, 1, 11, 'é›·éœ†èƒŒæ‘”');
INSERT INTO `skill_index` VALUES (187, 1, 12, 'å¿µæ°£æ³¢');
INSERT INTO `skill_index` VALUES (188, 1, 13, 'æ‹‹æ²™');
INSERT INTO `skill_index` VALUES (189, 1, 14, 'ä¼è™Žéœ¸çŽ‹æ‹³');
INSERT INTO `skill_index` VALUES (190, 1, 15, 'ç…å­å¼');
INSERT INTO `skill_index` VALUES (191, 1, 16, 'èžºæ—‹å¿µæ°£å ´');
INSERT INTO `skill_index` VALUES (192, 1, 17, 'é·¹è¸');
INSERT INTO `skill_index` VALUES (193, 1, 18, 'èžºæ—‹å½—æ˜Ÿè½');
INSERT INTO `skill_index` VALUES (194, 1, 19, 'å¯¸æ‹³');
INSERT INTO `skill_index` VALUES (195, 1, 20, 'éœ¸é«”è­·ç”²');
INSERT INTO `skill_index` VALUES (196, 1, 21, 'å¼·åˆ¶ - å¿µæ°£æ³¢');
INSERT INTO `skill_index` VALUES (197, 1, 22, 'æ‘”æŠ€å¼·åŒ–');
INSERT INTO `skill_index` VALUES (198, 1, 29, 'å…‰ä¹‹è¦ªå’Œ');
INSERT INTO `skill_index` VALUES (199, 1, 30, 'å…‰ä¹‹å…µåˆƒ');
INSERT INTO `skill_index` VALUES (200, 1, 31, 'é¢¨ä¹‹æ°£æ¯');
INSERT INTO `skill_index` VALUES (201, 1, 32, 'åŠ‡æ¯’æŠµæŠ—');
INSERT INTO `skill_index` VALUES (202, 1, 33, 'èµ°ç«å…¥é­”');
INSERT INTO `skill_index` VALUES (203, 1, 34, 'æ‹³å¥—æŽŒæ¡');
INSERT INTO `skill_index` VALUES (204, 1, 35, 'å¿µæ°£æ„ŸçŸ¥');
INSERT INTO `skill_index` VALUES (205, 1, 36, 'çƒˆæ—¥å…‰è¼');
INSERT INTO `skill_index` VALUES (206, 1, 37, 'å¼·æ‹³');
INSERT INTO `skill_index` VALUES (207, 1, 38, 'å¡—æ¯’');
INSERT INTO `skill_index` VALUES (208, 1, 39, 'å¼±é»žæ„ŸçŸ¥');
INSERT INTO `skill_index` VALUES (209, 1, 40, 'å¿µæ°£ç’°ç¹ž');
INSERT INTO `skill_index` VALUES (210, 1, 41, 'å¿µæ°£åˆ†è§£');
INSERT INTO `skill_index` VALUES (211, 1, 42, 'å¿µæ°£ç½©');
INSERT INTO `skill_index` VALUES (212, 1, 43, 'é›™é‡æŠ•æ“²');
INSERT INTO `skill_index` VALUES (213, 1, 44, 'æŒ‘é‡');
INSERT INTO `skill_index` VALUES (214, 1, 45, 'çˆªç²¾é€š');
INSERT INTO `skill_index` VALUES (215, 1, 46, 'å‰è¸¢');
INSERT INTO `skill_index` VALUES (216, 1, 49, 'æ‹‹æŠ•');
INSERT INTO `skill_index` VALUES (217, 1, 50, 'æš´åŠ›æŠ“å–');
INSERT INTO `skill_index` VALUES (218, 1, 51, 'æ»‘è¡ŒæŠ“å–');
INSERT INTO `skill_index` VALUES (219, 1, 52, 'æŠ•ç¶²');
INSERT INTO `skill_index` VALUES (220, 1, 54, 'é‡Žè »è¡æ’ž');
INSERT INTO `skill_index` VALUES (221, 1, 55, 'æŠ“è½Ÿç‚®');
INSERT INTO `skill_index` VALUES (222, 1, 56, 'æ­¦é¬¥è¼•ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (223, 1, 57, 'æŸ”é“å®¶å®¶è¼•ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (224, 1, 58, 'æ—‹é¢¨è…¿');
INSERT INTO `skill_index` VALUES (225, 1, 60, 'ç£šè¥²');
INSERT INTO `skill_index` VALUES (226, 1, 62, 'ç©ºçµžéŒ˜');
INSERT INTO `skill_index` VALUES (227, 1, 63, 'æœ«æ—¥é¢¨æš´');
INSERT INTO `skill_index` VALUES (228, 1, 64, 'æ­»äº¡æ¯’éœ§');
INSERT INTO `skill_index` VALUES (229, 1, 65, 'çŒ›æ¯’ä¹‹è¡€');
INSERT INTO `skill_index` VALUES (230, 1, 66, 'æŠ“å–å¥§ç¾©');
INSERT INTO `skill_index` VALUES (231, 1, 67, 'åƒè“®æ€’æ”¾');
INSERT INTO `skill_index` VALUES (232, 1, 68, 'é–ƒé›»ä¹‹èˆž');
INSERT INTO `skill_index` VALUES (233, 1, 69, 'å¹»å½±çˆ†ç¢Ž');
INSERT INTO `skill_index` VALUES (234, 1, 70, 'æ­¦ç¥žæ­¥');
INSERT INTO `skill_index` VALUES (235, 1, 71, 'æ­¦ç¥žå¼·è¸¢');
INSERT INTO `skill_index` VALUES (236, 1, 72, 'äº‚èˆž Â· åƒè‘‰èŠ±');
INSERT INTO `skill_index` VALUES (237, 1, 73, 'è¡—éœ¸é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (238, 1, 74, 'ç‹‚Â·éœ¸çŽ‹æ‹³');
INSERT INTO `skill_index` VALUES (239, 1, 75, 'æ¯’å½±é‡');
INSERT INTO `skill_index` VALUES (240, 1, 76, 'æ¯’é›·å¼•çˆ†');
INSERT INTO `skill_index` VALUES (241, 1, 77, 'è¡—é ­é¢¨æš´');
INSERT INTO `skill_index` VALUES (242, 1, 78, 'è“„å¿µç‚®');
INSERT INTO `skill_index` VALUES (243, 1, 79, 'å¿µç¸ : é¾è™Žå˜¯');
INSERT INTO `skill_index` VALUES (244, 1, 80, 'å´©æ‹³');
INSERT INTO `skill_index` VALUES (245, 1, 81, 'æŠ˜é ¸');
INSERT INTO `skill_index` VALUES (246, 1, 82, 'å¹»å½±é€£ç’°è¸¢');
INSERT INTO `skill_index` VALUES (247, 1, 83, 'æ˜‡é¾æ‹³');
INSERT INTO `skill_index` VALUES (248, 1, 84, 'ç–¾é¢¨è¿½æ“Š');
INSERT INTO `skill_index` VALUES (249, 1, 85, ' ç–¾é¢¨é€£æ“Š');
INSERT INTO `skill_index` VALUES (250, 1, 86, 'é‡‘å‰›ç¢Ž');
INSERT INTO `skill_index` VALUES (251, 1, 87, 'éœ¹é‚è‚˜æ“Š');
INSERT INTO `skill_index` VALUES (252, 1, 88, 'è£‚çŸ³ç ´å¤©');
INSERT INTO `skill_index` VALUES (253, 1, 89, 'åœ°ç„æ–ç±ƒ');
INSERT INTO `skill_index` VALUES (254, 1, 90, 'å¿µç¸ : é›·é¾å‡ºæµ·');
INSERT INTO `skill_index` VALUES (255, 1, 91, 'æŸ”åŒ–è‚Œè‚‰');
INSERT INTO `skill_index` VALUES (256, 1, 97, 'é¬¥æ°£å¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (257, 1, 98, 'ç©¶æ¥µå¿µæ°£ç½©');
INSERT INTO `skill_index` VALUES (258, 1, 99, 'çŒ›æ¯’æ“’æœˆç‚Ž');
INSERT INTO `skill_index` VALUES (259, 1, 100, 'ç‹‚ç…æ€’å¼');
INSERT INTO `skill_index` VALUES (260, 1, 101, 'ç©ºçµžé€£éŒ˜');
INSERT INTO `skill_index` VALUES (261, 1, 102, 'ç ´ç¢Žæ‹³');
INSERT INTO `skill_index` VALUES (262, 1, 103, 'å‡é¾éœ¸æ‹³');
INSERT INTO `skill_index` VALUES (263, 1, 104, 'çˆ†ç¢Žç£šè£‚');
INSERT INTO `skill_index` VALUES (264, 1, 105, 'æ­»äº¡æ–ç±ƒ');
INSERT INTO `skill_index` VALUES (265, 1, 106, 'è£‚åœ°é£›æ²™');
INSERT INTO `skill_index` VALUES (266, 1, 139, 'å¼·åŒ– - æ˜‡é¾æ‹³');
INSERT INTO `skill_index` VALUES (267, 1, 140, 'å¼·åŒ– - å¿µæ°£æ³¢');
INSERT INTO `skill_index` VALUES (268, 1, 141, 'å¼·åŒ– - ä¸‹æ®µè¸¢');
INSERT INTO `skill_index` VALUES (269, 1, 142, 'å¼·åŒ– - èƒŒæ‘”');
INSERT INTO `skill_index` VALUES (270, 1, 143, 'å¼·åŒ– - è¹²ä¼');
INSERT INTO `skill_index` VALUES (271, 1, 144, 'å¼·åŒ– - èžºæ—‹å¿µæ°£å ´');
INSERT INTO `skill_index` VALUES (272, 1, 145, 'å¼·åŒ– - å¿µæ°£ç’°ç¹ž');
INSERT INTO `skill_index` VALUES (273, 1, 146, 'å¼·åŒ– - éµå±±é ');
INSERT INTO `skill_index` VALUES (274, 1, 147, 'å¼·åŒ– - å¯¸æ‹³');
INSERT INTO `skill_index` VALUES (275, 1, 148, 'å¼·åŒ– - ç‹‚ Â· éœ¸çŽ‹æ‹³');
INSERT INTO `skill_index` VALUES (276, 1, 149, 'å¼·åŒ– - æŠ•ç¶²');
INSERT INTO `skill_index` VALUES (277, 1, 150, 'å¼·åŒ– - ç©ºçµžéŒ˜');
INSERT INTO `skill_index` VALUES (278, 1, 151, 'å¼·åŒ– - èžºæ—‹å½—æ˜Ÿè½');
INSERT INTO `skill_index` VALUES (279, 1, 152, 'å¼·åŒ– - é‡Žè »è¡æ’ž');
INSERT INTO `skill_index` VALUES (280, 1, 153, 'å¼·åŒ– - é‹¼ç­‹éµéª¨');
INSERT INTO `skill_index` VALUES (281, 1, 154, 'å¼·åŒ– - å¿µç¸ : é¾è™Žå˜¯');
INSERT INTO `skill_index` VALUES (282, 1, 155, 'å¼·åŒ– - ç–¾é¢¨è¿½æ“Š');
INSERT INTO `skill_index` VALUES (283, 1, 156, 'å¼·åŒ– - é–ƒé›»ä¹‹èˆž');
INSERT INTO `skill_index` VALUES (284, 1, 157, 'å¼·åŒ– - æ‹‹æ²™');
INSERT INTO `skill_index` VALUES (285, 1, 158, 'å¼·åŒ– - è¡—é ­é¢¨æš´');
INSERT INTO `skill_index` VALUES (286, 1, 159, 'å¼·åŒ– - é‡‘å‰›ç¢Ž');
INSERT INTO `skill_index` VALUES (287, 1, 160, 'å¼·åŒ– - åœ°ç„æ–ç±ƒ');
INSERT INTO `skill_index` VALUES (288, 1, 161, 'å¼·åŒ– - é›·éœ†èƒŒæ‘”');
INSERT INTO `skill_index` VALUES (289, 1, 162, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (290, 1, 163, 'å¼·åŒ– - ä¸Šå‹¾æ‹³');
INSERT INTO `skill_index` VALUES (291, 1, 164, 'å¼·åŒ– - å‰è¸¢');
INSERT INTO `skill_index` VALUES (292, 1, 165, 'å¼·åŒ– - åˆ†èº«');
INSERT INTO `skill_index` VALUES (293, 1, 166, 'å¼·åŒ– - é·¹è¸');
INSERT INTO `skill_index` VALUES (294, 1, 167, 'å¼·åŒ– - å¿µæ°£ç½©');
INSERT INTO `skill_index` VALUES (295, 1, 168, 'å¼·åŒ– - å¹»å½±çˆ†ç¢Ž');
INSERT INTO `skill_index` VALUES (296, 1, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (297, 1, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (298, 1, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (299, 1, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (300, 1, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (301, 1, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (302, 1, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (303, 1, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (304, 1, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (305, 1, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (306, 1, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (307, 1, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (308, 1, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (309, 1, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (310, 1, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (311, 1, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (312, 1, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (313, 1, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (314, 1, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (315, 1, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (316, 1, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (317, 1, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (318, 1, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (319, 1, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (320, 1, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (321, 1, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (322, 1, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (323, 1, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (324, 1, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (325, 1, 210, 'å¼·åŒ– - ç…å­å¼');
INSERT INTO `skill_index` VALUES (326, 1, 211, 'å¼·åŒ– - å¿µç¸ï¼šé›·é¾å‡ºæµ·');
INSERT INTO `skill_index` VALUES (327, 1, 212, 'å¼·åŒ– - å´©æ‹³');
INSERT INTO `skill_index` VALUES (328, 1, 214, 'å¼·åŒ– - ç¢Žéª¨');
INSERT INTO `skill_index` VALUES (329, 1, 215, 'å¼·åŒ– - å¹»å½±é€£ç’°è¸¢');
INSERT INTO `skill_index` VALUES (330, 1, 216, 'å¼·åŒ– - æ“’æœˆç‚Ž');
INSERT INTO `skill_index` VALUES (331, 1, 217, 'å¼·åŒ– - æ¯’å½±é‡');
INSERT INTO `skill_index` VALUES (332, 1, 218, 'å¼·åŒ– - æ¯’é›·å¼•çˆ†');
INSERT INTO `skill_index` VALUES (333, 1, 219, 'å¼·åŒ– - è£‚åœ°é£›æ²™');
INSERT INTO `skill_index` VALUES (334, 1, 220, 'å¼·åŒ– - æ‹‹æŠ•');
INSERT INTO `skill_index` VALUES (335, 1, 221, 'å¼·åŒ– - æŠ˜é ¸');
INSERT INTO `skill_index` VALUES (336, 1, 222, 'å¼·åŒ– - æ—‹é¢¨è…¿');
INSERT INTO `skill_index` VALUES (337, 1, 223, 'å¼·åŒ– - éœ¹é‚è‚˜æ“Š ');
INSERT INTO `skill_index` VALUES (338, 1, 224, 'å¼·åŒ– - è£‚çŸ³ç ´å¤©');
INSERT INTO `skill_index` VALUES (339, 2, 1, 'çˆ†ç‚Žå½ˆ');
INSERT INTO `skill_index` VALUES (340, 2, 2, 'å†°å‡å½ˆ');
INSERT INTO `skill_index` VALUES (341, 2, 3, 'è¿´æ—‹è¸¢');
INSERT INTO `skill_index` VALUES (342, 2, 4, 'è†æ’ž');
INSERT INTO `skill_index` VALUES (343, 2, 5, 'çˆ†é ­ä¸€æ“Š');
INSERT INTO `skill_index` VALUES (344, 2, 6, 'è¸å°„');
INSERT INTO `skill_index` VALUES (345, 2, 7, 'çž¬è¸¢');
INSERT INTO `skill_index` VALUES (346, 2, 8, 'èµ·èº«è¿´æ—‹è¸¢');
INSERT INTO `skill_index` VALUES (347, 2, 9, 'äº‚å°„');
INSERT INTO `skill_index` VALUES (348, 2, 10, 'é ç¨‹æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (349, 2, 11, 'å¿«é€Ÿæ‹”æ§');
INSERT INTO `skill_index` VALUES (350, 2, 12, 'M-137æ ¼æž—æ©Ÿæ§');
INSERT INTO `skill_index` VALUES (351, 2, 13, 'M-3å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (352, 2, 14, 'BBQ');
INSERT INTO `skill_index` VALUES (353, 2, 15, 'ç§»å‹•å°„æ“Š');
INSERT INTO `skill_index` VALUES (354, 2, 20, 'å›žé ­ä¸€æ“Š');
INSERT INTO `skill_index` VALUES (355, 2, 21, 'é‡ç«å™¨ç²¾é€š');
INSERT INTO `skill_index` VALUES (356, 2, 22, 'å·¦è¼ªç²¾é€š');
INSERT INTO `skill_index` VALUES (357, 2, 23, 'å¿«é€Ÿå¡«è£');
INSERT INTO `skill_index` VALUES (358, 2, 26, 'å¾©ä»‡åæ“Š');
INSERT INTO `skill_index` VALUES (359, 2, 27, 'RX-78è¿½æ“Šè€…');
INSERT INTO `skill_index` VALUES (360, 2, 28, 'Ez-8è‡ªçˆ†è€…');
INSERT INTO `skill_index` VALUES (361, 2, 29, 'Ex-Sæ¯’è›‡ç‚®');
INSERT INTO `skill_index` VALUES (362, 2, 30, 'éŠ€å½ˆ');
INSERT INTO `skill_index` VALUES (363, 2, 31, 'å½ˆè—¥æ”¹è‰¯');
INSERT INTO `skill_index` VALUES (364, 2, 32, 'ä¸‰é‡æŽ§åˆ¶');
INSERT INTO `skill_index` VALUES (365, 2, 33, 'ç©ºä¸­å°„æ“Š');
INSERT INTO `skill_index` VALUES (366, 2, 34, 'é‡ç«å™¨æ‹”æ“Š');
INSERT INTO `skill_index` VALUES (367, 2, 35, 'æµ®ç©ºæˆªæ“Š');
INSERT INTO `skill_index` VALUES (368, 2, 36, 'èšç„¦å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (369, 2, 37, 'æµ®ç©ºéŸ');
INSERT INTO `skill_index` VALUES (370, 2, 38, 'FM-31æ¦´å½ˆç™¼å°„å™¨');
INSERT INTO `skill_index` VALUES (371, 2, 39, 'é³å°„ç‚®');
INSERT INTO `skill_index` VALUES (372, 2, 40, 'åå¦å…‹ç‚®');
INSERT INTO `skill_index` VALUES (373, 2, 41, 'è“„é›»é³å°„ç‚®');
INSERT INTO `skill_index` VALUES (374, 2, 42, 'å—œæˆ°è¿½æ“Šè€…');
INSERT INTO `skill_index` VALUES (375, 2, 43, 'å½è£');
INSERT INTO `skill_index` VALUES (376, 2, 44, 'é‡ç«å™¨å¥§ç¾©');
INSERT INTO `skill_index` VALUES (377, 2, 45, 'é‡å­çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (378, 2, 46, 'æ©Ÿæ¢°æ”¹è‰¯');
INSERT INTO `skill_index` VALUES (379, 2, 47, 'æµ®ç©ºå½ˆ');
INSERT INTO `skill_index` VALUES (380, 2, 48, 'äº¤å‰å°„æ“Š');
INSERT INTO `skill_index` VALUES (381, 2, 49, 'å½ˆåŒ£æ“´å……');
INSERT INTO `skill_index` VALUES (382, 2, 50, 'æ©Ÿæ¢°å¼•çˆ†');
INSERT INTO `skill_index` VALUES (383, 2, 51, 'é›™é·¹è¿´æ—‹');
INSERT INTO `skill_index` VALUES (384, 2, 52, 'ç ´ç”²å½ˆ');
INSERT INTO `skill_index` VALUES (385, 2, 53, 'åœ°ç„çƒˆç‚Ž');
INSERT INTO `skill_index` VALUES (386, 2, 54, 'è¡›æ˜Ÿå…‰æŸ');
INSERT INTO `skill_index` VALUES (387, 2, 55, 'éŠä¿ çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (388, 2, 56, 'G-14 æ‰‹é›·');
INSERT INTO `skill_index` VALUES (389, 2, 57, 'G35L æ„Ÿé›»æ‰‹é›·');
INSERT INTO `skill_index` VALUES (390, 2, 58, 'G-18C å†°å‡æ‰‹é›·');
INSERT INTO `skill_index` VALUES (391, 2, 59, 'ç©ºæŠ•æ”¯æ´');
INSERT INTO `skill_index` VALUES (392, 2, 60, 'æ­»äº¡å·¦è¼ª');
INSERT INTO `skill_index` VALUES (393, 2, 61, 'é­”å½ˆå°„æ‰‹çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (394, 2, 62, 'æ½›èƒ½çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (395, 2, 63, 'ç©ºæˆ°æ©Ÿæ¢° : é¢¨æš´');
INSERT INTO `skill_index` VALUES (396, 2, 64, 'ç˜‹ç‹‚å± æˆ®');
INSERT INTO `skill_index` VALUES (397, 2, 65, 'è¡›æ˜Ÿå®šä½');
INSERT INTO `skill_index` VALUES (398, 2, 66, 'æ­»äº¡å°è¨˜');
INSERT INTO `skill_index` VALUES (399, 2, 67, 'è“‹æ³¢åŠ ä¹‹æ‹³');
INSERT INTO `skill_index` VALUES (400, 2, 68, 'é¬¥å¿—ä¹‹æ­Œ');
INSERT INTO `skill_index` VALUES (401, 2, 69, 'å½ˆè—¥ä¸»å®°');
INSERT INTO `skill_index` VALUES (402, 2, 70, 'é»‘çŽ«ç‘°ç‰¹ç¨®æˆ°éšŠ');
INSERT INTO `skill_index` VALUES (403, 2, 71, 'X-1 å£“ç¸®é‡å­ç‚®');
INSERT INTO `skill_index` VALUES (404, 2, 72, 'å¤šé‡çˆ†é ­');
INSERT INTO `skill_index` VALUES (405, 2, 73, 'åŠ è¾²ç‚®');
INSERT INTO `skill_index` VALUES (406, 2, 74, 'å¼·åˆ¶ - åŠ è¾²ç‚®');
INSERT INTO `skill_index` VALUES (407, 2, 75, 'FM-92 åˆºç ²å½ˆ');
INSERT INTO `skill_index` VALUES (408, 2, 76, 'é–ƒæ“Šåœ°é›·');
INSERT INTO `skill_index` VALUES (409, 2, 77, 'C4é ç«¯ç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (410, 2, 78, 'å°¼çˆ¾ç‹™æ“Š');
INSERT INTO `skill_index` VALUES (411, 2, 79, 'G-1æŸ¯æ´›ç´');
INSERT INTO `skill_index` VALUES (412, 2, 80, 'æ”¹è£ï¼š G-2 æ—‹é›·');
INSERT INTO `skill_index` VALUES (413, 2, 81, 'æ”¹è£ï¼šG-3 çŒ›ç¦½');
INSERT INTO `skill_index` VALUES (414, 2, 82, 'å½ˆè—¥æ”¯æ´');
INSERT INTO `skill_index` VALUES (415, 2, 83, 'æ””æˆªæ©Ÿå·¥å» ');
INSERT INTO `skill_index` VALUES (416, 2, 91, 'æ©Ÿæ¢°å¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (417, 2, 92, 'é‡ç‚®æ‰‹é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (418, 2, 101, 'è¿´æ—‹æˆªæ“Š');
INSERT INTO `skill_index` VALUES (419, 2, 102, 'C4é£›é€Ÿç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (420, 2, 103, 'M-61åœ°é›·');
INSERT INTO `skill_index` VALUES (421, 2, 104, 'æ¥µé™å¤šé‡çˆ†é ­');
INSERT INTO `skill_index` VALUES (422, 2, 105, 'Ez-10åæ“Šè€…');
INSERT INTO `skill_index` VALUES (423, 2, 106, 'Ex-S Zeroæ¯’è›‡ç‚®');
INSERT INTO `skill_index` VALUES (424, 2, 107, 'èšç„¦å¯’å†°å™´å°„å™¨');
INSERT INTO `skill_index` VALUES (425, 2, 108, 'FM-92 SWåˆºå½ˆç‚®');
INSERT INTO `skill_index` VALUES (426, 2, 109, 'ç ´è£‚å°„æ“Š');
INSERT INTO `skill_index` VALUES (427, 2, 110, 'æ­¥æ§ç²¾é€š');
INSERT INTO `skill_index` VALUES (428, 2, 140, 'å¼·åŒ– - çˆ†é ­ä¸€æ“Š');
INSERT INTO `skill_index` VALUES (429, 2, 141, 'å¼·åŒ– - BBQ');
INSERT INTO `skill_index` VALUES (430, 2, 142, 'å¼·åŒ– - RX-78è¿½æ“Šè€…');
INSERT INTO `skill_index` VALUES (431, 2, 143, 'å¼·åŒ– - éŠ€å½ˆ');
INSERT INTO `skill_index` VALUES (432, 2, 144, 'å¼·åŒ– - é ç¨‹æ ¼æª”');
INSERT INTO `skill_index` VALUES (433, 2, 145, 'å¼·åŒ– - è¸å°„');
INSERT INTO `skill_index` VALUES (434, 2, 146, 'å¼·åŒ– - M-3å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (435, 2, 147, 'å¼·åŒ– - åå¦å…‹ç‚®');
INSERT INTO `skill_index` VALUES (436, 2, 148, 'å¼·åŒ– - æ©Ÿæ¢°å¼•çˆ†');
INSERT INTO `skill_index` VALUES (437, 2, 149, 'å¼·åŒ– - G-1æŸ¯æ´›ç´');
INSERT INTO `skill_index` VALUES (438, 2, 150, 'å¼·åŒ– - äº¤å‰å°„æ“Š');
INSERT INTO `skill_index` VALUES (439, 2, 151, 'å¼·åŒ– - å½ˆåŒ£æ“´å……');
INSERT INTO `skill_index` VALUES (440, 2, 152, 'é­”æ”»è½‰æ›');
INSERT INTO `skill_index` VALUES (441, 2, 153, 'å¼·åŒ– - çž¬è¸¢');
INSERT INTO `skill_index` VALUES (442, 2, 154, 'å¼·åŒ– - äº‚å°„');
INSERT INTO `skill_index` VALUES (443, 2, 155, 'å¼·åŒ– - G-14æ‰‹é›·');
INSERT INTO `skill_index` VALUES (444, 2, 156, 'å¼·åŒ– - åœ°ç„çƒˆç‚Ž');
INSERT INTO `skill_index` VALUES (445, 2, 157, 'å¼·åŒ– - Ez-8è‡ªçˆ†è€…');
INSERT INTO `skill_index` VALUES (446, 2, 158, 'å¼·åŒ– - æ””æˆªæ©Ÿå·¥å» ');
INSERT INTO `skill_index` VALUES (447, 2, 159, 'å¼·åŒ– - M-137æ ¼æž—æ©Ÿæ§');
INSERT INTO `skill_index` VALUES (448, 2, 160, 'å¼·åŒ– - FM-92åˆºå½ˆç‚®');
INSERT INTO `skill_index` VALUES (449, 2, 161, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (450, 2, 162, 'å¼·åŒ– - çˆ†ç‚Žå½ˆ');
INSERT INTO `skill_index` VALUES (451, 2, 163, 'å¼·åŒ– - å†°å‡å½ˆ');
INSERT INTO `skill_index` VALUES (452, 2, 164, 'å¼·åŒ– - å¾©ä»‡åæ“Š');
INSERT INTO `skill_index` VALUES (453, 2, 166, 'å¼·åŒ– - è¿´æ—‹è¸¢');
INSERT INTO `skill_index` VALUES (454, 2, 167, 'å¼·åŒ– - æµ®ç©ºå½ˆ');
INSERT INTO `skill_index` VALUES (455, 2, 168, 'å¼·åŒ– - è†æ’ž');
INSERT INTO `skill_index` VALUES (456, 2, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (457, 2, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (458, 2, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (459, 2, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (460, 2, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (461, 2, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (462, 2, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (463, 2, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (464, 2, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (465, 2, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (466, 2, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (467, 2, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (468, 2, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (469, 2, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (470, 2, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (471, 2, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (472, 2, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (473, 2, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (474, 2, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (475, 2, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (476, 2, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (477, 2, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (478, 2, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (479, 2, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (480, 2, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (481, 2, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (482, 2, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (483, 2, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (484, 2, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (485, 2, 211, 'å¼·åŒ– - æµ®ç©ºæˆªæ“Š');
INSERT INTO `skill_index` VALUES (486, 2, 212, 'å¼·åŒ– - ç§»å‹•å°„æ“Š');
INSERT INTO `skill_index` VALUES (487, 2, 213, 'å¼·åŒ– - é›™é·¹è¿´æ—‹');
INSERT INTO `skill_index` VALUES (488, 2, 214, 'å¼·åŒ– - å¤šé‡çˆ†é ­');
INSERT INTO `skill_index` VALUES (489, 2, 215, 'å¼·åŒ– - é³å°„ç‚®');
INSERT INTO `skill_index` VALUES (490, 2, 216, 'å¼·åŒ– - X-1 å£“ç¸®é‡å­ç‚®');
INSERT INTO `skill_index` VALUES (491, 2, 217, 'å¼·åŒ– - åŠ è¾²ç‚®');
INSERT INTO `skill_index` VALUES (492, 2, 218, 'å¼·åŒ– - èšç„¦å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (493, 2, 219, 'å¼·åŒ– - æ”¹è£ï¼šG-2 æ—‹é›·');
INSERT INTO `skill_index` VALUES (494, 2, 220, 'å¼·åŒ– - æ”¹è£ï¼šG-3 çŒ›ç¦½');
INSERT INTO `skill_index` VALUES (495, 2, 221, 'å¼·åŒ– - é‡å­çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (496, 2, 222, 'å¼·åŒ– - ç©ºæˆ°æ©Ÿæ¢°ï¼šé¢¨æš´');
INSERT INTO `skill_index` VALUES (497, 2, 223, 'å¼·åŒ– - G35L æ„Ÿé›»æ‰‹é›·');
INSERT INTO `skill_index` VALUES (498, 2, 224, 'å¼·åŒ– - G18C å†°å‡æ‰‹é›·');
INSERT INTO `skill_index` VALUES (499, 2, 225, 'å¼·åŒ– - ç ´ç”²å½ˆ');
INSERT INTO `skill_index` VALUES (500, 2, 226, 'å¼·åŒ– - ç ´è£‚å°„æ“Š');
INSERT INTO `skill_index` VALUES (501, 2, 227, 'å¼·åŒ– - é–ƒæ“Šåœ°é›·');
INSERT INTO `skill_index` VALUES (502, 2, 228, 'å¼·åŒ– - C4 é ç«¯ç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (503, 2, 229, 'å¼·åŒ– - å°¼çˆ¾ç‹™æ“Š');
INSERT INTO `skill_index` VALUES (504, 2, 230, 'å¼·åŒ– - Ex-S æ¯’è›‡ç‚®');
INSERT INTO `skill_index` VALUES (505, 2, 231, 'å¼·åŒ– - ç©ºæŠ•æ”¯æ´');
INSERT INTO `skill_index` VALUES (506, 3, 1, 'é¾èŠ±éœ¸');
INSERT INTO `skill_index` VALUES (507, 3, 2, 'é­”æ³•ç§€');
INSERT INTO `skill_index` VALUES (508, 3, 3, 'æ›¿èº«è‰äºº');
INSERT INTO `skill_index` VALUES (509, 3, 4, 'é¾ç‰™');
INSERT INTO `skill_index` VALUES (510, 3, 5, 'ç‚«ç´‹ : ç„¡å±¬æ€§');
INSERT INTO `skill_index` VALUES (511, 3, 6, 'ç‚«ç´‹ : ç«å±¬æ€§');
INSERT INTO `skill_index` VALUES (512, 3, 7, 'ç‚«ç´‹ : å†°å±¬æ€§');
INSERT INTO `skill_index` VALUES (513, 3, 8, 'ç‚«ç´‹ : é—‡å±¬æ€§');
INSERT INTO `skill_index` VALUES (514, 3, 9, 'ç‚«ç´‹ : å…‰å±¬æ€§');
INSERT INTO `skill_index` VALUES (515, 3, 10, 'ç‚«ç´‹å¼·å£“');
INSERT INTO `skill_index` VALUES (516, 3, 11, 'é­”æ³•æ˜Ÿå½ˆ');
INSERT INTO `skill_index` VALUES (517, 3, 12, 'å¤©æ“Š');
INSERT INTO `skill_index` VALUES (518, 3, 13, 'ç¢Žéœ¸');
INSERT INTO `skill_index` VALUES (519, 3, 14, 'è½èŠ±æŽŒ');
INSERT INTO `skill_index` VALUES (520, 3, 15, 'å‚‘å…‹çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (521, 3, 16, 'å†°éœœé›ªäºº');
INSERT INTO `skill_index` VALUES (522, 3, 17, 'å…‰é›»é°»');
INSERT INTO `skill_index` VALUES (523, 3, 18, 'æš—å½±å¤œè²“');
INSERT INTO `skill_index` VALUES (524, 3, 19, 'é­”æ³•è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (525, 3, 20, 'éž­æ’»');
INSERT INTO `skill_index` VALUES (526, 3, 21, 'ç²¾éˆå¬å–š : äºžå¾·ç‚Ž');
INSERT INTO `skill_index` VALUES (527, 3, 22, 'ç²¾éˆå¬å–š : å†°å¥ˆæ–¯');
INSERT INTO `skill_index` VALUES (528, 3, 23, 'ç²¾éˆå¬å–š : ç‘Ÿå†¥ç‰¹å…‹');
INSERT INTO `skill_index` VALUES (529, 3, 24, 'ç²¾éˆå¬å–š : é›·æ²ƒæ–¯');
INSERT INTO `skill_index` VALUES (530, 3, 25, 'å¥‘ç´„å¬å–š : èµ«å¾·çˆ¾');
INSERT INTO `skill_index` VALUES (531, 3, 26, 'è™›ç„¡ä¹‹çƒ');
INSERT INTO `skill_index` VALUES (532, 3, 27, 'å‚‘å…‹é™è‡¨');
INSERT INTO `skill_index` VALUES (533, 3, 28, 'é©…æ•£é­”æ³•');
INSERT INTO `skill_index` VALUES (534, 3, 29, 'å…ƒç´ é»žç‡ƒ');
INSERT INTO `skill_index` VALUES (535, 3, 30, 'å¬å–šç¸è·Ÿéš¨');
INSERT INTO `skill_index` VALUES (536, 3, 31, 'é›·æ—‹');
INSERT INTO `skill_index` VALUES (537, 3, 35, 'çŸ›ç²¾é€š');
INSERT INTO `skill_index` VALUES (538, 3, 36, 'æ£æ£’ç²¾é€š');
INSERT INTO `skill_index` VALUES (539, 3, 37, 'é­”æ³•è­·ç›¾');
INSERT INTO `skill_index` VALUES (540, 3, 38, 'ç§»å‹•æ–½æ³•');
INSERT INTO `skill_index` VALUES (541, 3, 39, 'ç‚«ç´‹ç™¼å°„');
INSERT INTO `skill_index` VALUES (542, 3, 40, 'è‡ªå‹•ç‚«ç´‹');
INSERT INTO `skill_index` VALUES (543, 3, 41, 'é å¤é­”æ³•æ›¸');
INSERT INTO `skill_index` VALUES (544, 3, 42, 'ç©ºä¸­æ–½æ”¾  : å‚‘å…‹çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (545, 3, 43, 'æŒ‘é‡äººå¶ : èˆ’éœ²éœ²');
INSERT INTO `skill_index` VALUES (546, 3, 44, 'å¥‘ç´„å¬å–š :é»‘é¨Žå£« æ¡‘å¾·');
INSERT INTO `skill_index` VALUES (547, 3, 45, 'å¥‘ç´„å¬å–šï¼šé­”ç•ŒèŠ±è¥–ç´¢');
INSERT INTO `skill_index` VALUES (548, 3, 46, 'å¥‘ç´„å¬å–š :éœ²æ˜“çµ²å¤§å§!');
INSERT INTO `skill_index` VALUES (549, 3, 47, 'ç²¾éˆå¬å–šï¼šç²¾éˆçŽ‹ä¼Šä¼½');
INSERT INTO `skill_index` VALUES (550, 3, 48, 'å¬å–šç¸å¼·åŒ–');
INSERT INTO `skill_index` VALUES (551, 3, 49, 'ç²¾éˆç»ç¥­');
INSERT INTO `skill_index` VALUES (552, 3, 50, 'é­”åŠ›å°è¨˜');
INSERT INTO `skill_index` VALUES (553, 3, 51, 'ç»ç¥­æ”»æ“Š : äºžå¾·ç‚Ž');
INSERT INTO `skill_index` VALUES (554, 3, 52, 'ç»ç¥­æ”»æ“Š : å†°å¥ˆæ–¯');
INSERT INTO `skill_index` VALUES (555, 3, 53, 'ç»ç¥­æ”»æ“Š : ç‘Ÿå†¥ç‰¹å…‹');
INSERT INTO `skill_index` VALUES (556, 3, 54, 'ç»ç¥­æ”»æ“Š : é›·æ²ƒæ–¯');
INSERT INTO `skill_index` VALUES (557, 3, 55, 'å¤©é›·');
INSERT INTO `skill_index` VALUES (558, 3, 56, 'å†°ç‰†');
INSERT INTO `skill_index` VALUES (559, 3, 57, 'çƒˆç„°è¡æ“Š');
INSERT INTO `skill_index` VALUES (560, 3, 58, 'é»‘æ´ž');
INSERT INTO `skill_index` VALUES (561, 3, 59, 'æ¥µå†°ç››å®´');
INSERT INTO `skill_index` VALUES (562, 3, 60, 'é­”æ³•è­·ç›¾å¼·åŒ–');
INSERT INTO `skill_index` VALUES (563, 3, 61, 'ç«ç³»ç²¾é€š');
INSERT INTO `skill_index` VALUES (564, 3, 62, 'å†°ç³»ç²¾é€š');
INSERT INTO `skill_index` VALUES (565, 3, 63, 'æš—ç³»ç²¾é€š');
INSERT INTO `skill_index` VALUES (566, 3, 64, 'å…‰ç³»ç²¾é€š');
INSERT INTO `skill_index` VALUES (567, 3, 65, 'åœ“èˆžæ£');
INSERT INTO `skill_index` VALUES (568, 3, 66, 'æµæ˜Ÿé–ƒå½±æ“Š');
INSERT INTO `skill_index` VALUES (569, 3, 67, 'é­”é¬¥å£«çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (570, 3, 68, 'å¼·è¥²æµæ˜Ÿæ‰“');
INSERT INTO `skill_index` VALUES (571, 3, 69, 'ç…Œé¾åƒæœˆåˆ€');
INSERT INTO `skill_index` VALUES (572, 3, 73, 'å…ƒç´ é›†ä¸­');
INSERT INTO `skill_index` VALUES (573, 3, 74, 'å±¬æ€§è½Ÿç‚¸');
INSERT INTO `skill_index` VALUES (574, 3, 75, 'éˆé­‚æ”¯é…');
INSERT INTO `skill_index` VALUES (575, 3, 76, 'ç²¾éˆå¬å–š : äº¡é­‚é»˜å…‹çˆ¾');
INSERT INTO `skill_index` VALUES (576, 3, 77, 'ç²¾éˆå¬å–š : æ¥µå…‰æ ¼é›·æž—');
INSERT INTO `skill_index` VALUES (577, 3, 78, 'ç²¾éˆå¬å–š : å†°å½±é˜¿å¥Žåˆ©');
INSERT INTO `skill_index` VALUES (578, 3, 79, 'ç²¾éˆå¬å–š : ç«ç„°èµ«ç‘žå…‹');
INSERT INTO `skill_index` VALUES (579, 3, 80, 'å¥‘ç´„å¬å–š : å¼—åˆ©ç‰¹');
INSERT INTO `skill_index` VALUES (580, 3, 81, 'å¬å–šç¸ç‹‚åŒ–');
INSERT INTO `skill_index` VALUES (581, 3, 82, 'å¥‘ç´„å¬å–š : å¾æœè€…å‡±è¥¿');
INSERT INTO `skill_index` VALUES (582, 3, 83, 'è®Šèº«è²äºžå¨œ');
INSERT INTO `skill_index` VALUES (583, 3, 84, 'é¬¥ç¥žæ„å¿—');
INSERT INTO `skill_index` VALUES (584, 3, 85, 'è¦ªå’Œ - æš—å½±å¤œè²“');
INSERT INTO `skill_index` VALUES (585, 3, 86, 'è¦ªå’Œ - å…‰é›»é°»');
INSERT INTO `skill_index` VALUES (586, 3, 87, 'è¦ªå’Œ - å†°éœœé›ªäºº');
INSERT INTO `skill_index` VALUES (587, 3, 88, 'è¦ªå’Œ - å‚‘å…‹çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (588, 3, 89, 'å†°å‡ç²‰æœ«');
INSERT INTO `skill_index` VALUES (589, 3, 90, 'æ­»äº¡ç²‰æœ«');
INSERT INTO `skill_index` VALUES (590, 3, 91, 'æŽƒæŠŠæŽŒæ¡');
INSERT INTO `skill_index` VALUES (591, 3, 92, 'æš—å½±æ–—ç¯·');
INSERT INTO `skill_index` VALUES (592, 3, 93, 'æ”¹é€ èˆ’éœ²éœ²');
INSERT INTO `skill_index` VALUES (593, 3, 95, 'è®Šç•°è’¼è …æ‹');
INSERT INTO `skill_index` VALUES (594, 3, 97, 'å¹¸é‹æ£’æ£’ç³–');
INSERT INTO `skill_index` VALUES (595, 3, 98, 'æ—‹è½‰æŽƒæŠŠ');
INSERT INTO `skill_index` VALUES (596, 3, 99, 'é¹½é…¸é›²éœ§');
INSERT INTO `skill_index` VALUES (597, 3, 100, 'æ”¹è‰¯é­”æ³•æ˜Ÿå½ˆ');
INSERT INTO `skill_index` VALUES (598, 3, 101, 'ç†”å²©è—¥ç“¶');
INSERT INTO `skill_index` VALUES (599, 3, 102, 'é­”é“å­¸è€…çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (600, 3, 103, 'åé‡åŠ›è£ç½®');
INSERT INTO `skill_index` VALUES (601, 3, 104, 'å†°éœœé‘½å­”è»Š');
INSERT INTO `skill_index` VALUES (602, 3, 105, 'ç‰¹æ–¯æ‹‰ç·šåœˆ');
INSERT INTO `skill_index` VALUES (603, 3, 106, 'æš´ç‚ŽåŠ ç†±çˆ');
INSERT INTO `skill_index` VALUES (604, 3, 107, 'å…ƒç´ å¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (605, 3, 108, 'å¬å–šå¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (606, 3, 109, 'èžåˆå·¥è—');
INSERT INTO `skill_index` VALUES (607, 3, 110, 'æˆåŠŸé æ„Ÿ');
INSERT INTO `skill_index` VALUES (608, 3, 111, 'å…‰é›»å†°ç‰†');
INSERT INTO `skill_index` VALUES (609, 3, 112, 'æµæ˜Ÿé›·é€£æ“Š');
INSERT INTO `skill_index` VALUES (610, 3, 113, 'è™›ç„¡ç«å±±');
INSERT INTO `skill_index` VALUES (611, 3, 114, 'å½ˆè·³æ—‹è½‰æŽƒæŠŠ');
INSERT INTO `skill_index` VALUES (612, 3, 115, 'è¶…ç´šè’¼è …æ‹');
INSERT INTO `skill_index` VALUES (613, 3, 116, 'å¬å–šç¸æ·¨åŒ–');
INSERT INTO `skill_index` VALUES (614, 3, 117, 'ç‚«ç´‹ç¢Žéœ¸');
INSERT INTO `skill_index` VALUES (615, 3, 118, 'å¥‘ç´„å¬å–š : æ†¤æ€’çš„æ¡‘å¾·');
INSERT INTO `skill_index` VALUES (616, 3, 119, 'ç²¾éˆå¬å–š : æ‹‰ç‰¹åˆ©äºž');
INSERT INTO `skill_index` VALUES (617, 3, 120, 'ç²¾éˆå¬å–š : ç‘Ÿåˆ©æ–¯ç‰¹');
INSERT INTO `skill_index` VALUES (618, 3, 121, 'ç²¾éˆå¬å–š : å¸Œå¾·');
INSERT INTO `skill_index` VALUES (619, 3, 122, 'ç²¾éˆå¬å–š : è‰¾éº—è¥¿å©­');
INSERT INTO `skill_index` VALUES (620, 3, 123, 'ç‚«ç´‹èžåˆ');
INSERT INTO `skill_index` VALUES (621, 3, 124, 'å¼·åˆ¶ - ç‚«ç´‹èžåˆ');
INSERT INTO `skill_index` VALUES (622, 3, 125, 'é›™é‡éŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (623, 3, 127, 'å®šæ™‚ç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (624, 3, 129, 'å¬å–šè§£é™¤');
INSERT INTO `skill_index` VALUES (625, 3, 130, 'é€£æ“Šç²¾é€š');
INSERT INTO `skill_index` VALUES (626, 3, 140, 'å¼·åŒ– - é­”æ³•è­·ç›¾');
INSERT INTO `skill_index` VALUES (627, 3, 141, 'å¼·åŒ– - å…‰é›»é°»');
INSERT INTO `skill_index` VALUES (628, 3, 142, 'å¼·åŒ– - éž­æ’»');
INSERT INTO `skill_index` VALUES (629, 3, 143, 'å¼·åŒ– - é å¤é­”æ³•æ›¸');
INSERT INTO `skill_index` VALUES (630, 3, 144, 'å¼·åŒ– - å†°éœœé›ªäºº');
INSERT INTO `skill_index` VALUES (631, 3, 145, 'å¼·åŒ– - é­”æ³•ç§€');
INSERT INTO `skill_index` VALUES (632, 3, 146, 'å¼·åŒ– - è½èŠ±æŽŒ');
INSERT INTO `skill_index` VALUES (633, 3, 147, 'å¼·åŒ– - æ›¿èº«è‰äºº');
INSERT INTO `skill_index` VALUES (634, 3, 148, 'å¼·åŒ– - å¹¸é‹æ£’æ£’ç³–');
INSERT INTO `skill_index` VALUES (635, 3, 149, 'å¼·åŒ– - æ”¹è‰¯é­”æ³•æ˜Ÿå½ˆ');
INSERT INTO `skill_index` VALUES (636, 3, 150, 'å¼·åŒ– - é­”åŠ›å°è¨˜');
INSERT INTO `skill_index` VALUES (637, 3, 151, 'å¼·åŒ– - ä¸‹ç´šç²¾éˆ');
INSERT INTO `skill_index` VALUES (638, 3, 152, 'å¼·åŒ– - å‚‘å…‹é™è‡¨');
INSERT INTO `skill_index` VALUES (639, 3, 153, 'å¼·åŒ– - è‡ªå‹•ç‚«ç´‹');
INSERT INTO `skill_index` VALUES (640, 3, 154, 'å¼·åŒ– - è™›ç„¡ä¹‹çƒ');
INSERT INTO `skill_index` VALUES (641, 3, 155, 'å¼·åŒ– - åœ“èˆžæ£');
INSERT INTO `skill_index` VALUES (642, 3, 156, 'å¼·åŒ– - ç‚«ç´‹');
INSERT INTO `skill_index` VALUES (643, 3, 157, 'å¼·åŒ– - å…ƒç´ é»žç‡ƒ');
INSERT INTO `skill_index` VALUES (644, 3, 158, 'å¼·åŒ– - æ¥µå†°ç››å®´');
INSERT INTO `skill_index` VALUES (645, 3, 159, 'å¼·åŒ– - å¥‘ç´„å¬å–š : èµ«å¾·');
INSERT INTO `skill_index` VALUES (646, 3, 160, 'å¼·åŒ– - å¥‘ç´„å¬å–š : éœ²æ˜“');
INSERT INTO `skill_index` VALUES (647, 3, 161, 'å¼·åŒ– - ç²¾éˆå¬å–š : ä¼Šä¼½');
INSERT INTO `skill_index` VALUES (648, 3, 162, 'å¼·åŒ– - å¼·è¥²æµæ˜Ÿæ‰“');
INSERT INTO `skill_index` VALUES (649, 3, 163, 'å¼·åŒ– - æŒ‘é‡äººå¶ : èˆ’éœ²');
INSERT INTO `skill_index` VALUES (650, 3, 164, 'å¼·åŒ– - åé‡åŠ›è£ç½®');
INSERT INTO `skill_index` VALUES (651, 3, 165, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (652, 3, 166, 'å¼·åŒ– - å¥‘ç´„å¬å–šï¼šé­”ç•Œ');
INSERT INTO `skill_index` VALUES (653, 3, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (654, 3, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (655, 3, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (656, 3, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (657, 3, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (658, 3, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (659, 3, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (660, 3, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (661, 3, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (662, 3, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (663, 3, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (664, 3, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (665, 3, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (666, 3, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (667, 3, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (668, 3, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (669, 3, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (670, 3, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (671, 3, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (672, 3, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (673, 3, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (674, 3, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (675, 3, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (676, 3, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (677, 3, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (678, 3, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (679, 3, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (680, 3, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (681, 3, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (682, 3, 210, 'å¼·åŒ– - å¤©æ“Š');
INSERT INTO `skill_index` VALUES (683, 3, 211, 'å¼·åŒ– - æš—å½±å¤œè²“');
INSERT INTO `skill_index` VALUES (684, 3, 212, 'å¼·åŒ– - é¾ç‰™');
INSERT INTO `skill_index` VALUES (685, 3, 213, 'å¼·åŒ– - é­”æ³•æ˜Ÿå½ˆ');
INSERT INTO `skill_index` VALUES (686, 3, 214, 'å¼·åŒ– - çƒˆç„°è¡æ“Š');
INSERT INTO `skill_index` VALUES (687, 3, 215, 'å¼·åŒ– - é›·æ—‹');
INSERT INTO `skill_index` VALUES (688, 3, 216, 'å¼·åŒ– - å†°ç‰†');
INSERT INTO `skill_index` VALUES (689, 3, 217, 'å¼·åŒ– - å¤©é›·');
INSERT INTO `skill_index` VALUES (690, 3, 218, 'å¼·åŒ– - é»‘æ´ž');
INSERT INTO `skill_index` VALUES (691, 3, 219, 'å¼·åŒ– - ç‚«ç´‹ç™¼å°„');
INSERT INTO `skill_index` VALUES (692, 3, 221, 'å¼·åŒ– - ç‚«ç´‹å¼·å£“');
INSERT INTO `skill_index` VALUES (693, 3, 222, 'å¼·åŒ– - é›™é‡éŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (694, 3, 223, 'å¼·åŒ– - ç‚«ç´‹èžåˆ');
INSERT INTO `skill_index` VALUES (695, 3, 224, 'å¼·åŒ– - æµæ˜Ÿé–ƒå½±æ“Š');
INSERT INTO `skill_index` VALUES (696, 3, 225, 'å¼·åŒ– - ç¢Žéœ¸');
INSERT INTO `skill_index` VALUES (697, 3, 226, 'å¼·åŒ– - ç…Œé¾åƒæœˆåˆ€');
INSERT INTO `skill_index` VALUES (698, 3, 227, 'å¼·åŒ– - å®šæ™‚ç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (699, 3, 228, 'å¼·åŒ– - æš—å½±æ–—ç¯·');
INSERT INTO `skill_index` VALUES (700, 3, 229, 'å¼·åŒ– - æ—‹è½‰æŽƒæŠŠ');
INSERT INTO `skill_index` VALUES (701, 3, 230, 'å¼·åŒ– - é¹½é…¸é›²éœ§');
INSERT INTO `skill_index` VALUES (702, 3, 231, 'å¼·åŒ– - è®Šç•°è’¼è …æ‹');
INSERT INTO `skill_index` VALUES (703, 3, 232, 'å¼·åŒ– - ç†”å²©è—¥ç“¶');
INSERT INTO `skill_index` VALUES (704, 3, 233, 'å¼·åŒ– - å†°éœœé‘½å­”è»Š');
INSERT INTO `skill_index` VALUES (705, 3, 234, 'å¼·åŒ– - ç‰¹æ–¯æ‹‰ç·šåœˆ');
INSERT INTO `skill_index` VALUES (706, 3, 235, 'å¼·åŒ– - æš´ç‚ŽåŠ ç†±çˆ');
INSERT INTO `skill_index` VALUES (707, 3, 236, 'å¼·åŒ– - ç²¾éˆå¬å–šï¼šäº¡é­‚');
INSERT INTO `skill_index` VALUES (708, 3, 237, 'å¼·åŒ– - ç²¾éˆå¬å–šï¼šæ¥µå…‰');
INSERT INTO `skill_index` VALUES (709, 3, 238, 'å¼·åŒ– - ç²¾éˆå¬å–šï¼šå†°å½±');
INSERT INTO `skill_index` VALUES (710, 3, 239, 'å¼·åŒ– - ç²¾éˆå¬å–šï¼šç«ç„°');
INSERT INTO `skill_index` VALUES (711, 3, 240, 'å¼·åŒ– - å¥‘ç´„å¬å–šï¼šå¼—åˆ©');
INSERT INTO `skill_index` VALUES (712, 3, 241, 'å¼·åŒ– - å¥‘ç´„å¬å–šï¼šé»‘é¨Ž');
INSERT INTO `skill_index` VALUES (713, 4, 1, 'ç©ºæ–¬æ‰“');
INSERT INTO `skill_index` VALUES (714, 4, 2, 'ä¿¯è¡');
INSERT INTO `skill_index` VALUES (715, 4, 3, 'æ“ºå‹•');
INSERT INTO `skill_index` VALUES (716, 4, 4, 'æ¥µé€Ÿé¢¶é¢¨æ‹³');
INSERT INTO `skill_index` VALUES (717, 4, 5, 'ç–¾ç©ºæ—‹é¢¨ç ´');
INSERT INTO `skill_index` VALUES (718, 4, 7, 'æ­¦å™¨ç¥ç¦');
INSERT INTO `skill_index` VALUES (719, 4, 8, 'è™Žè¥²');
INSERT INTO `skill_index` VALUES (720, 4, 10, 'åŒ–é­”');
INSERT INTO `skill_index` VALUES (721, 4, 11, 'è½é³³éŒ˜');
INSERT INTO `skill_index` VALUES (722, 4, 13, 'æ„å¿µé©…å‹•');
INSERT INTO `skill_index` VALUES (723, 4, 14, 'æŠ€å·§ç²¾é€š');
INSERT INTO `skill_index` VALUES (724, 4, 15, 'æˆ°ç’°ç²¾é€š');
INSERT INTO `skill_index` VALUES (725, 4, 16, 'æ‹³æŠ€ç²¾é€š');
INSERT INTO `skill_index` VALUES (726, 4, 17, 'çµ„åˆç²¾é€š');
INSERT INTO `skill_index` VALUES (727, 4, 18, 'ç¡¬æ‹³ç²¾é€š');
INSERT INTO `skill_index` VALUES (728, 4, 19, 'å¤©ç±Ÿä¹‹éŸ³');
INSERT INTO `skill_index` VALUES (729, 4, 20, 'å®ˆè­·å¾½ç« ');
INSERT INTO `skill_index` VALUES (730, 4, 21, 'ç”Ÿå‘½æ³‰æº');
INSERT INTO `skill_index` VALUES (731, 4, 22, 'è–å…‰å®ˆè­·');
INSERT INTO `skill_index` VALUES (732, 4, 23, 'å…‰ä¹‹å¾©ä»‡');
INSERT INTO `skill_index` VALUES (733, 4, 24, 'å¤©å ‚è«§éŸ³');
INSERT INTO `skill_index` VALUES (734, 4, 25, 'éˆé­‚çŠ§ç‰²');
INSERT INTO `skill_index` VALUES (735, 4, 26, 'è–ç™’ä¹‹é¢¨');
INSERT INTO `skill_index` VALUES (736, 4, 27, 'è–å…‰æ²ç›¾');
INSERT INTO `skill_index` VALUES (737, 4, 28, 'è–å…‰çƒ');
INSERT INTO `skill_index` VALUES (738, 4, 29, 'æ‹³æ°£');
INSERT INTO `skill_index` VALUES (739, 4, 30, 'ç¥žè–åæ“Š');
INSERT INTO `skill_index` VALUES (740, 4, 31, 'è–æ‹³é€£æ“Š');
INSERT INTO `skill_index` VALUES (741, 4, 33, 'ç ´ç¢Žä¹‹æ¶');
INSERT INTO `skill_index` VALUES (742, 4, 34, 'è–é¨Žå£«æ¿ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (743, 4, 35, 'å¹»å½±åŒ–èº«');
INSERT INTO `skill_index` VALUES (744, 4, 36, 'é›™é‡å¹»å½±');
INSERT INTO `skill_index` VALUES (745, 4, 37, 'å¤©è­´é¢¶é¢¨');
INSERT INTO `skill_index` VALUES (746, 4, 38, 'ç ´é­”ç¬¦');
INSERT INTO `skill_index` VALUES (747, 4, 39, 'å£“åˆ¶ç¬¦');
INSERT INTO `skill_index` VALUES (748, 4, 40, 'è½é›·ç¬¦');
INSERT INTO `skill_index` VALUES (749, 4, 41, 'æ˜Ÿè½æ‰“');
INSERT INTO `skill_index` VALUES (750, 4, 42, 'æ€¥é€Ÿé–ƒé¿');
INSERT INTO `skill_index` VALUES (751, 4, 43, 'å…‰ä¹‹æ‹³åˆƒ');
INSERT INTO `skill_index` VALUES (752, 4, 45, 'æ¦®è­½ç¥ç¦');
INSERT INTO `skill_index` VALUES (753, 4, 47, 'è„ˆè¼ª : çƒˆç„°');
INSERT INTO `skill_index` VALUES (754, 4, 48, 'è„ˆè¼ª : æ›œæ—¥');
INSERT INTO `skill_index` VALUES (755, 4, 49, 'ç‹‚äº‚éŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (756, 4, 50, 'å·¨æ—‹é¢¨');
INSERT INTO `skill_index` VALUES (757, 4, 51, 'ç·©æ…¢ç™’åˆ');
INSERT INTO `skill_index` VALUES (758, 4, 52, 'æ·¨åŒ–');
INSERT INTO `skill_index` VALUES (759, 4, 53, 'å¤©ä½¿ç¥ç¦');
INSERT INTO `skill_index` VALUES (760, 4, 54, 'ç¥žçš„æ©è³œ');
INSERT INTO `skill_index` VALUES (761, 4, 55, 'å¿«é€Ÿç™’åˆ');
INSERT INTO `skill_index` VALUES (762, 4, 56, 'ä¿¯è¡ç›´æ‹³');
INSERT INTO `skill_index` VALUES (763, 4, 57, 'ä¿¯è¡è…¹æ‹³');
INSERT INTO `skill_index` VALUES (764, 4, 58, 'ä¿¯è¡ç¿”æ‹³');
INSERT INTO `skill_index` VALUES (765, 4, 61, 'ç›´æ‹³è¡æ“Š');
INSERT INTO `skill_index` VALUES (766, 4, 63, 'å‹¾æ‹³è¿½æ“Š');
INSERT INTO `skill_index` VALUES (767, 4, 64, 'æƒ¡é­”ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (768, 4, 65, 'å¼·åˆ¶ - æƒ¡é­”ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (769, 4, 66, 'æ½›é¾');
INSERT INTO `skill_index` VALUES (770, 4, 67, 'é©…é­”éœ‡æ‡¾');
INSERT INTO `skill_index` VALUES (771, 4, 68, 'é©…é­”å¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (772, 4, 69, 'å¼ç¥ž : çŽ„æ­¦');
INSERT INTO `skill_index` VALUES (773, 4, 70, 'å¼ç¥ž : ç™½è™Ž');
INSERT INTO `skill_index` VALUES (774, 4, 73, 'å‹åˆ©ä¹‹çŸ›');
INSERT INTO `skill_index` VALUES (775, 4, 74, 'æ‡ºæ‚”ä¹‹éŽš');
INSERT INTO `skill_index` VALUES (776, 4, 75, 'ç¥žè–çµ„åˆæ‹³');
INSERT INTO `skill_index` VALUES (777, 4, 76, 'è–æ‹³æ¶æ“Š');
INSERT INTO `skill_index` VALUES (778, 4, 77, 'çž¬æ‹³');
INSERT INTO `skill_index` VALUES (779, 4, 78, 'åˆºæ‹³çŒ›æ“Š');
INSERT INTO `skill_index` VALUES (780, 4, 81, 'æ­£ç¾©å¯©åˆ¤');
INSERT INTO `skill_index` VALUES (781, 4, 82, 'å·¨å…µç²¾é€š');
INSERT INTO `skill_index` VALUES (782, 4, 83, 'æˆ°æ–§ç²¾é€š');
INSERT INTO `skill_index` VALUES (783, 4, 84, 'å¤©å•Ÿä¹‹ç ');
INSERT INTO `skill_index` VALUES (784, 4, 85, 'ç–¾é¢¨æ‰“');
INSERT INTO `skill_index` VALUES (785, 4, 86, 'ä¿¡å¿µå…‰ç’°');
INSERT INTO `skill_index` VALUES (786, 4, 87, 'æ¥µé™ç‡ƒç‡’');
INSERT INTO `skill_index` VALUES (787, 4, 88, 'ç„¡é›™æ“Š');
INSERT INTO `skill_index` VALUES (788, 4, 89, 'é¬¥å¿—æ•£ç™¼');
INSERT INTO `skill_index` VALUES (789, 4, 90, 'æ³¯æ»…ç¥žæ“Š');
INSERT INTO `skill_index` VALUES (790, 4, 91, 'è—æ‹³è–ä½¿çš„è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (791, 4, 92, 'é©…é­”å¸«æ¿ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (792, 4, 93, 'è’¼é¾æ“Š');
INSERT INTO `skill_index` VALUES (793, 4, 96, 'é©…é­”å¸«é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (794, 4, 97, 'å‹‡æ°£æ©å¯µ');
INSERT INTO `skill_index` VALUES (795, 4, 98, 'å®ˆè­·æ©è³œ');
INSERT INTO `skill_index` VALUES (796, 4, 99, 'å‡å¤©é™£');
INSERT INTO `skill_index` VALUES (797, 4, 100, 'é»‘æš—åˆ‡å‰²');
INSERT INTO `skill_index` VALUES (798, 4, 101, 'å¼ç¥žï¼šæ®¤');
INSERT INTO `skill_index` VALUES (799, 4, 103, 'åˆºæ‹³ç‹‚æ“Š');
INSERT INTO `skill_index` VALUES (800, 4, 104, 'ç ´é­‚çµ„åˆæ‹³');
INSERT INTO `skill_index` VALUES (801, 4, 105, 'ç‹‚æš´éŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (802, 4, 106, 'æœ±é›€ç¬¦');
INSERT INTO `skill_index` VALUES (803, 4, 107, 'è–å…‰åå­—');
INSERT INTO `skill_index` VALUES (804, 4, 108, 'è–å…‰ç‰ç’ƒç¢Ž');
INSERT INTO `skill_index` VALUES (805, 4, 109, 'é›™å­æ²ç›¾');
INSERT INTO `skill_index` VALUES (806, 4, 110, 'å¼ç¥ž : çœŸçŽ„æ­¦');
INSERT INTO `skill_index` VALUES (807, 4, 111, 'æ–·ç©ºéŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (808, 4, 113, 'è¿´æ—‹é£›é®');
INSERT INTO `skill_index` VALUES (809, 4, 114, 'é®åˆ€ç²¾é€š');
INSERT INTO `skill_index` VALUES (810, 4, 115, 'åŽ„é‹ä¹‹è¼ª');
INSERT INTO `skill_index` VALUES (811, 4, 116, 'å¾©ä»‡ä¹‹åˆº');
INSERT INTO `skill_index` VALUES (812, 4, 117, 'é»‘æš—ä¹‹è§¸');
INSERT INTO `skill_index` VALUES (813, 4, 118, 'è£‚åœ°æ¶');
INSERT INTO `skill_index` VALUES (814, 4, 119, 'é­”åŒ– : æœ«æ—¥å¯©åˆ¤è€…');
INSERT INTO `skill_index` VALUES (815, 4, 120, 'è™•åˆ‘');
INSERT INTO `skill_index` VALUES (816, 4, 121, 'æƒ¡é­”è©›å’’');
INSERT INTO `skill_index` VALUES (817, 4, 122, 'æƒ¡é­”å–šé†’');
INSERT INTO `skill_index` VALUES (818, 4, 123, 'æƒ¡é­”ä¹‹åŠ›');
INSERT INTO `skill_index` VALUES (819, 4, 124, 'æ­»äº¡åˆ‡å‰²');
INSERT INTO `skill_index` VALUES (820, 4, 125, 'é»‘æš—æ¬Šèƒ½');
INSERT INTO `skill_index` VALUES (821, 4, 126, 'å¾©ä»‡è€…é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (822, 4, 131, 'å¢®è½ä¹‹é­‚');
INSERT INTO `skill_index` VALUES (823, 4, 133, 'åœ°ç„ä¹‹é–€');
INSERT INTO `skill_index` VALUES (824, 4, 134, 'æœ«æ—¥æµ©åŠ«');
INSERT INTO `skill_index` VALUES (825, 4, 140, 'å¼·åŒ– - ç·©æ…¢ç™’åˆ');
INSERT INTO `skill_index` VALUES (826, 4, 141, 'å¼·åŒ– - ç›´æ‹³è¡æ“Š');
INSERT INTO `skill_index` VALUES (827, 4, 142, 'å¼·åŒ– - è½é³³éŒ˜');
INSERT INTO `skill_index` VALUES (828, 4, 143, 'å¼·åŒ– - æƒ¡é­”ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (829, 4, 144, 'å¼·åŒ– - å‹åˆ©ä¹‹çŸ›');
INSERT INTO `skill_index` VALUES (830, 4, 145, 'å¼·åŒ– - å…‰ä¹‹å¾©ä»‡');
INSERT INTO `skill_index` VALUES (831, 4, 146, 'å¼·åŒ– - ä¿¯è¡ç›´æ‹³');
INSERT INTO `skill_index` VALUES (832, 4, 147, 'å¼·åŒ– - æ„å¿µé©…å‹•');
INSERT INTO `skill_index` VALUES (833, 4, 148, 'å¼·åŒ– - å£“åˆ¶ç¬¦');
INSERT INTO `skill_index` VALUES (834, 4, 149, 'å¼·åŒ– - å·¨æ—‹é¢¨');
INSERT INTO `skill_index` VALUES (835, 4, 150, 'å¼·åŒ– - è–æ‹³é€£æ“Š');
INSERT INTO `skill_index` VALUES (836, 4, 151, 'å¼·åŒ– - æ·¨åŒ–');
INSERT INTO `skill_index` VALUES (837, 4, 152, 'å¼·åŒ– - æ‡ºæ‚”ä¹‹æ§Œ');
INSERT INTO `skill_index` VALUES (838, 4, 153, 'å¼·åŒ– - ä¿¯è¡è…¹æ‹³');
INSERT INTO `skill_index` VALUES (839, 4, 154, 'å¼·åŒ– - å¤©è­´é¢¶é¢¨');
INSERT INTO `skill_index` VALUES (840, 4, 155, 'å¼·åŒ– - å‡å¤©é™£');
INSERT INTO `skill_index` VALUES (841, 4, 156, 'å¼·åŒ– - ç–¾ç©ºæ—‹é¢¨ç ´');
INSERT INTO `skill_index` VALUES (842, 4, 157, 'å¼·åŒ– - ç–¾é¢¨æ‰“');
INSERT INTO `skill_index` VALUES (843, 4, 158, 'å¼·åŒ– - å¼ç¥ž : ç™½è™Ž');
INSERT INTO `skill_index` VALUES (844, 4, 159, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (845, 4, 160, 'å¼·åŒ– - ç ´é­”ç¬¦');
INSERT INTO `skill_index` VALUES (846, 4, 161, 'å¼·åŒ– - æ­»äº¡åˆ‡å‰²');
INSERT INTO `skill_index` VALUES (847, 4, 162, 'å¼·åŒ– - æƒ¡é­”ä¹‹åŠ›');
INSERT INTO `skill_index` VALUES (848, 4, 163, 'å¼·åŒ– - è£‚åœ°æ¶');
INSERT INTO `skill_index` VALUES (849, 4, 164, 'å¼·åŒ– - åŽ„é‹ä¹‹è¼ª');
INSERT INTO `skill_index` VALUES (850, 4, 165, 'å¼·åŒ– - é»‘æš—ä¹‹è§¸');
INSERT INTO `skill_index` VALUES (851, 4, 166, 'å¼·åŒ– - è–å…‰çƒ');
INSERT INTO `skill_index` VALUES (852, 4, 167, 'å¼·åŒ– - è–å…‰åå­—');
INSERT INTO `skill_index` VALUES (853, 4, 168, 'å¼·åŒ– - çž¬æ‹³');
INSERT INTO `skill_index` VALUES (854, 4, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (855, 4, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (856, 4, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (857, 4, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (858, 4, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (859, 4, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (860, 4, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (861, 4, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (862, 4, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (863, 4, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (864, 4, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (865, 4, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (866, 4, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (867, 4, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (868, 4, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (869, 4, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (870, 4, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (871, 4, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (872, 4, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (873, 4, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (874, 4, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (875, 4, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (876, 4, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (877, 4, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (878, 4, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (879, 4, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (880, 4, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (881, 4, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (882, 4, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (883, 4, 210, 'å¼·åŒ– - ç©ºæ–¬æ‰“');
INSERT INTO `skill_index` VALUES (884, 4, 211, 'å¼·åŒ– - è™Žè¥²');
INSERT INTO `skill_index` VALUES (885, 4, 212, 'å¼·åŒ– - å‹¾æ‹³è¿½æ“Š');
INSERT INTO `skill_index` VALUES (886, 4, 213, 'å¼·åŒ– - å…‰ä¹‹æ‹³åˆƒ');
INSERT INTO `skill_index` VALUES (887, 4, 214, 'å¼·åŒ– - è–å…‰æ²ç›¾ ');
INSERT INTO `skill_index` VALUES (888, 4, 215, 'å¼·åŒ– - æ­£ç¾©å¯©åˆ¤');
INSERT INTO `skill_index` VALUES (889, 4, 216, 'å¼·åŒ– - æ–·ç©ºéŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (890, 4, 217, 'å¼·åŒ– - é»‘æš—åˆ‡å‰²');
INSERT INTO `skill_index` VALUES (891, 4, 218, 'å¼·åŒ– - å¼ç¥žï¼šæ®¤');
INSERT INTO `skill_index` VALUES (892, 4, 219, 'å¼·åŒ– - æ˜Ÿè½æ‰“');
INSERT INTO `skill_index` VALUES (893, 4, 220, 'å¼·åŒ– - æœ±é›€ç¬¦');
INSERT INTO `skill_index` VALUES (894, 4, 221, 'å¼·åŒ– - ç‹‚äº‚éŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (895, 4, 223, 'å¼·åŒ– - ç„¡é›™æ“Š');
INSERT INTO `skill_index` VALUES (896, 4, 224, 'å¼·åŒ– - è–æ‹³æ¶æ“Š');
INSERT INTO `skill_index` VALUES (897, 4, 225, 'å¼·åŒ– - ä¿¯è¡ç¿”æ‹³');
INSERT INTO `skill_index` VALUES (898, 4, 227, 'å¼·åŒ– - ç¥žè–åæ“Š');
INSERT INTO `skill_index` VALUES (899, 4, 228, 'å¼·åŒ– - ç ´ç¢Žä¹‹æ¶');
INSERT INTO `skill_index` VALUES (900, 4, 229, 'å¼·åŒ– - åˆºæ‹³çŒ›æ“Š');
INSERT INTO `skill_index` VALUES (901, 4, 230, 'å¼·åŒ– - ç¥žè–çµ„åˆæ‹³');
INSERT INTO `skill_index` VALUES (902, 4, 231, 'å¼·åŒ– - æ¥µé€Ÿé¢¶é¢¨æ‹³');
INSERT INTO `skill_index` VALUES (903, 4, 232, 'å¼·åŒ– - è¿´æ—‹é£›é®');
INSERT INTO `skill_index` VALUES (904, 4, 233, 'å¼·åŒ– - å¾©ä»‡ä¹‹åˆº');
INSERT INTO `skill_index` VALUES (905, 4, 234, 'å¼·åŒ– - é»‘æš—æ¬Šèƒ½');
INSERT INTO `skill_index` VALUES (906, 4, 235, 'å¼·åŒ– - å¼ç¥žï¼šçŽ„æ­¦');
INSERT INTO `skill_index` VALUES (907, 4, 236, 'å¼·åŒ– - è½é›·ç¬¦');
INSERT INTO `skill_index` VALUES (908, 5, 1, 'çˆ†ç‚Žå½ˆ');
INSERT INTO `skill_index` VALUES (909, 5, 2, 'å†°å‡å½ˆ');
INSERT INTO `skill_index` VALUES (910, 5, 3, 'ä¸Šæ—‹è¸¢');
INSERT INTO `skill_index` VALUES (911, 5, 4, 'ç‘ªéº—è“®çŽ«ç‘°');
INSERT INTO `skill_index` VALUES (912, 5, 5, 'çˆ†é ­ä¸€æ“Š');
INSERT INTO `skill_index` VALUES (913, 5, 6, 'é‡˜åˆºå°„');
INSERT INTO `skill_index` VALUES (914, 5, 7, 'åˆºè¸¢');
INSERT INTO `skill_index` VALUES (915, 5, 8, 'èµ·èº«ä¸Šæ—‹è¸¢');
INSERT INTO `skill_index` VALUES (916, 5, 9, 'æ§èˆž');
INSERT INTO `skill_index` VALUES (917, 5, 10, 'é ç¨‹æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (918, 5, 11, 'å¿«é€Ÿæ‹”æ§');
INSERT INTO `skill_index` VALUES (919, 5, 12, 'M-137æ ¼æž—æ©Ÿæ§');
INSERT INTO `skill_index` VALUES (920, 5, 13, 'M-3å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (921, 5, 14, 'BBQ');
INSERT INTO `skill_index` VALUES (922, 5, 15, 'ç§»å‹•å°„æ“Š');
INSERT INTO `skill_index` VALUES (923, 5, 20, 'å›žé ­ä¸€æ“Š');
INSERT INTO `skill_index` VALUES (924, 5, 21, 'é‡ç«å™¨ç²¾é€š');
INSERT INTO `skill_index` VALUES (925, 5, 22, 'å·¦è¼ªç²¾é€š');
INSERT INTO `skill_index` VALUES (926, 5, 23, 'å¿«é€Ÿå¡«è£');
INSERT INTO `skill_index` VALUES (927, 5, 26, 'å¾©ä»‡åæ“Š');
INSERT INTO `skill_index` VALUES (928, 5, 27, 'RX-78è¿½æ“Šè€…');
INSERT INTO `skill_index` VALUES (929, 5, 28, 'Ez-8è‡ªçˆ†è€…');
INSERT INTO `skill_index` VALUES (930, 5, 29, 'Ex-Sæ¯’è›‡ç‚®');
INSERT INTO `skill_index` VALUES (931, 5, 30, 'éŠ€å½ˆ');
INSERT INTO `skill_index` VALUES (932, 5, 31, 'å½ˆè—¥æ”¹è‰¯');
INSERT INTO `skill_index` VALUES (933, 5, 32, 'ä¸‰é‡æŽ§åˆ¶');
INSERT INTO `skill_index` VALUES (934, 5, 33, 'ç©ºä¸­å°„æ“Š');
INSERT INTO `skill_index` VALUES (935, 5, 34, 'é‡ç«å™¨æ‹”æ“Š');
INSERT INTO `skill_index` VALUES (936, 5, 35, 'éŸ³é€Ÿæˆªæ“Š');
INSERT INTO `skill_index` VALUES (937, 5, 36, 'èšç„¦å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (938, 5, 37, 'æµ®ç©ºéŸ');
INSERT INTO `skill_index` VALUES (939, 5, 38, 'FM-31æ¦´å½ˆç™¼å°„å™¨');
INSERT INTO `skill_index` VALUES (940, 5, 39, 'é³å°„ç‚®');
INSERT INTO `skill_index` VALUES (941, 5, 40, 'åå¦å…‹ç‚®');
INSERT INTO `skill_index` VALUES (942, 5, 41, 'è“„é›»é³å°„ç‚®');
INSERT INTO `skill_index` VALUES (943, 5, 42, 'å—œæˆ°è¿½æ“Šè€…');
INSERT INTO `skill_index` VALUES (944, 5, 43, 'å½è£');
INSERT INTO `skill_index` VALUES (945, 5, 44, 'é‡ç«å™¨å¥§ç¾©');
INSERT INTO `skill_index` VALUES (946, 5, 45, 'é‡å­çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (947, 5, 46, 'æ©Ÿæ¢°æ”¹è‰¯');
INSERT INTO `skill_index` VALUES (948, 5, 47, 'æµ®ç©ºå½ˆ');
INSERT INTO `skill_index` VALUES (949, 5, 48, 'äº¤å‰å°„æ“Š');
INSERT INTO `skill_index` VALUES (950, 5, 49, 'å½ˆåŒ£æ“´å……');
INSERT INTO `skill_index` VALUES (951, 5, 50, 'æ©Ÿæ¢°å¼•çˆ†');
INSERT INTO `skill_index` VALUES (952, 5, 51, 'é›™é·¹è¿´æ—‹');
INSERT INTO `skill_index` VALUES (953, 5, 52, 'ç ´ç”²å½ˆ');
INSERT INTO `skill_index` VALUES (954, 5, 53, 'å…‰å­çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (955, 5, 55, 'éŠä¿ çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (956, 5, 56, 'G-14 æ‰‹é›·');
INSERT INTO `skill_index` VALUES (957, 5, 57, 'G-35L æ„Ÿé›»æ‰‹é›·');
INSERT INTO `skill_index` VALUES (958, 5, 58, 'G-18C å†°å‡æ‰‹é›·');
INSERT INTO `skill_index` VALUES (959, 5, 59, 'ç©ºæŠ•æ”¯æ´');
INSERT INTO `skill_index` VALUES (960, 5, 60, 'æ­»äº¡å·¦è¼ª');
INSERT INTO `skill_index` VALUES (961, 5, 61, 'é­”å½ˆå°„æ‰‹çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (962, 5, 62, 'æ½›èƒ½çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (963, 5, 63, 'ç©ºæˆ°æ©Ÿæ¢° : ç‹‚é¢¨');
INSERT INTO `skill_index` VALUES (964, 5, 71, 'X-1 å£“ç¸®é‡å­ç‚®');
INSERT INTO `skill_index` VALUES (965, 5, 72, 'å¤šé‡çˆ†é ­');
INSERT INTO `skill_index` VALUES (966, 5, 73, 'åŠ è¾²ç‚®');
INSERT INTO `skill_index` VALUES (967, 5, 74, 'å¼·åˆ¶ - åŠ è¾²ç‚®');
INSERT INTO `skill_index` VALUES (968, 5, 75, 'FM-92 mk2æ¦´å½ˆ');
INSERT INTO `skill_index` VALUES (969, 5, 76, 'é–ƒæ“Šåœ°é›·');
INSERT INTO `skill_index` VALUES (970, 5, 77, 'C4é ç«¯ç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (971, 5, 78, 'å°¼çˆ¾ç‹™æ“Š');
INSERT INTO `skill_index` VALUES (972, 5, 79, 'G-1æŸ¯æ´›ç´');
INSERT INTO `skill_index` VALUES (973, 5, 80, 'æ”¹è£ï¼š G-2 æ—‹é›·');
INSERT INTO `skill_index` VALUES (974, 5, 81, 'æ”¹è£ï¼šG-3 çŒ›ç¦½');
INSERT INTO `skill_index` VALUES (975, 5, 82, 'å½ˆè—¥æ”¯æ´');
INSERT INTO `skill_index` VALUES (976, 5, 83, 'æ””æˆªæ©Ÿå·¥å» ');
INSERT INTO `skill_index` VALUES (977, 5, 91, 'æ©Ÿæ¢°å¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (978, 5, 92, 'é‡ç‚®æ‰‹é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (979, 5, 93, 'é‡ç«å™¨éŽè¼‰');
INSERT INTO `skill_index` VALUES (980, 5, 94, 'éš±æ™¦ä¹‹åˆƒ');
INSERT INTO `skill_index` VALUES (981, 5, 95, 'Gç³»æ“´å¼µ');
INSERT INTO `skill_index` VALUES (982, 5, 96, 'æ”¹è£ : G-0æˆ°çˆ­é ˜ä¸»');
INSERT INTO `skill_index` VALUES (983, 5, 97, 'é å¤ç²’å­ç‚®');
INSERT INTO `skill_index` VALUES (984, 5, 98, 'EMPç£æš´');
INSERT INTO `skill_index` VALUES (985, 5, 99, 'å½ˆè—¥å¼·åŒ–');
INSERT INTO `skill_index` VALUES (986, 5, 100, 'é›™æ§æ¥µèˆžåˆƒ');
INSERT INTO `skill_index` VALUES (987, 5, 101, 'ç†¾ç„°æˆªæ“Š');
INSERT INTO `skill_index` VALUES (988, 5, 102, 'C4é£›é€Ÿç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (989, 5, 103, 'M-61åœ°é›·');
INSERT INTO `skill_index` VALUES (990, 5, 104, 'æ¥µé™å¤šé‡çˆ†é ­');
INSERT INTO `skill_index` VALUES (991, 5, 105, 'Ez-10åæ“Šè€…');
INSERT INTO `skill_index` VALUES (992, 5, 106, 'Ex-S Zeroæ¯’è›‡ç‚®');
INSERT INTO `skill_index` VALUES (993, 5, 107, 'èšç„¦å¯’å†°å™´å°„å™¨');
INSERT INTO `skill_index` VALUES (994, 5, 108, 'FM-92 mk2 SWæ¦´å½ˆ');
INSERT INTO `skill_index` VALUES (995, 5, 109, 'ç ´è£‚å°„æ“Š');
INSERT INTO `skill_index` VALUES (996, 5, 110, 'æ­¥æ§ç²¾é€š');
INSERT INTO `skill_index` VALUES (997, 5, 140, 'å¼·åŒ– - çˆ†é ­ä¸€æ“Š');
INSERT INTO `skill_index` VALUES (998, 5, 141, 'å¼·åŒ– - BBQ');
INSERT INTO `skill_index` VALUES (999, 5, 142, 'å¼·åŒ– - RX-78è¿½æ“Šè€…');
INSERT INTO `skill_index` VALUES (1000, 5, 143, 'å¼·åŒ– - éŠ€å½ˆ');
INSERT INTO `skill_index` VALUES (1001, 5, 144, 'å¼·åŒ– - é ç¨‹æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (1002, 5, 145, 'å¼·åŒ– - é‡˜åˆºå°„');
INSERT INTO `skill_index` VALUES (1003, 5, 146, 'å¼·åŒ– - M-3å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (1004, 5, 147, 'å¼·åŒ– - åå¦å…‹ç‚®');
INSERT INTO `skill_index` VALUES (1005, 5, 148, 'å¼·åŒ– - æ©Ÿæ¢°å¼•çˆ†');
INSERT INTO `skill_index` VALUES (1006, 5, 149, 'å¼·åŒ– - G-1æŸ¯æ´›ç´');
INSERT INTO `skill_index` VALUES (1007, 5, 150, 'å¼·åŒ– - äº¤å‰å°„æ“Š');
INSERT INTO `skill_index` VALUES (1008, 5, 151, 'å¼·åŒ– - å½ˆåŒ£æ“´å……');
INSERT INTO `skill_index` VALUES (1009, 5, 152, 'é­”æ”»è½‰æ›');
INSERT INTO `skill_index` VALUES (1010, 5, 153, 'å¼·åŒ– - åˆºè¸¢');
INSERT INTO `skill_index` VALUES (1011, 5, 154, 'å¼·åŒ– - æ§èˆž');
INSERT INTO `skill_index` VALUES (1012, 5, 155, 'å¼·åŒ– - G-14æ‰‹é›·');
INSERT INTO `skill_index` VALUES (1013, 5, 156, 'å¼·åŒ– - å…‰å­çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (1014, 5, 157, 'å¼·åŒ– - Ez-8è‡ªçˆ†è€…');
INSERT INTO `skill_index` VALUES (1015, 5, 158, 'å¼·åŒ– - æ””æˆªæ©Ÿå·¥å» ');
INSERT INTO `skill_index` VALUES (1016, 5, 159, 'å¼·åŒ– - M-137æ ¼æž—æ©Ÿæ§');
INSERT INTO `skill_index` VALUES (1017, 5, 160, 'å¼·åŒ– - FM-92 mk2æ¦´å½ˆ');
INSERT INTO `skill_index` VALUES (1018, 5, 161, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1019, 5, 162, 'å¼·åŒ– - çˆ†ç‚Žå½ˆ');
INSERT INTO `skill_index` VALUES (1020, 5, 163, 'å¼·åŒ– - å†°å‡å½ˆ');
INSERT INTO `skill_index` VALUES (1021, 5, 164, 'å¼·åŒ– - å¾©ä»‡åæ“Š');
INSERT INTO `skill_index` VALUES (1022, 5, 166, 'å¼·åŒ– - ä¸Šæ—‹è¸¢');
INSERT INTO `skill_index` VALUES (1023, 5, 167, 'å¼·åŒ– - æµ®ç©ºå½ˆ');
INSERT INTO `skill_index` VALUES (1024, 5, 168, 'å¼·åŒ– - ç‘ªéº—è“®çŽ«ç‘°');
INSERT INTO `skill_index` VALUES (1025, 5, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (1026, 5, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1027, 5, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1028, 5, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1029, 5, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (1030, 5, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (1031, 5, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1032, 5, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1033, 5, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (1034, 5, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (1035, 5, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (1036, 5, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (1037, 5, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (1038, 5, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (1039, 5, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1040, 5, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (1041, 5, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1042, 5, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (1043, 5, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1044, 5, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (1045, 5, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (1046, 5, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (1047, 5, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (1048, 5, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (1049, 5, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (1050, 5, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1051, 5, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (1052, 5, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (1053, 5, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (1054, 5, 211, 'å¼·åŒ– - éŸ³é€Ÿæˆªæ“Š');
INSERT INTO `skill_index` VALUES (1055, 5, 212, 'å¼·åŒ– - ç§»å‹•å°„æ“Š');
INSERT INTO `skill_index` VALUES (1056, 5, 213, 'å¼·åŒ– - é›™é·¹è¿´æ—‹');
INSERT INTO `skill_index` VALUES (1057, 5, 214, 'å¼·åŒ– - å¤šé‡çˆ†é ­');
INSERT INTO `skill_index` VALUES (1058, 5, 215, 'å¼·åŒ– - é³å°„ç‚®');
INSERT INTO `skill_index` VALUES (1059, 5, 216, 'å¼·åŒ– - X-1 å£“ç¸®é‡å­ç‚®');
INSERT INTO `skill_index` VALUES (1060, 5, 217, 'å¼·åŒ– - åŠ è¾²ç‚®');
INSERT INTO `skill_index` VALUES (1061, 5, 218, 'å¼·åŒ– - èšç„¦å™´ç«å™¨');
INSERT INTO `skill_index` VALUES (1062, 5, 219, 'å¼·åŒ– - æ”¹è£ï¼šG-2 æ—‹é›·');
INSERT INTO `skill_index` VALUES (1063, 5, 220, 'å¼·åŒ– - æ”¹è£ï¼šG-3 çŒ›ç¦½');
INSERT INTO `skill_index` VALUES (1064, 5, 221, 'å¼·åŒ– - é‡å­çˆ†å½ˆ');
INSERT INTO `skill_index` VALUES (1065, 5, 222, 'å¼·åŒ– - ç©ºæˆ°æ©Ÿæ¢° : ç‹‚é¢¨');
INSERT INTO `skill_index` VALUES (1066, 5, 223, 'å¼·åŒ– - G35L æ„Ÿé›»æ‰‹é›·');
INSERT INTO `skill_index` VALUES (1067, 5, 224, 'å¼·åŒ– - G18C å†°å‡æ‰‹é›·');
INSERT INTO `skill_index` VALUES (1068, 5, 225, 'å¼·åŒ– - ç ´ç”²å½ˆ');
INSERT INTO `skill_index` VALUES (1069, 5, 226, 'å¼·åŒ– - ç ´è£‚å°„æ“Š');
INSERT INTO `skill_index` VALUES (1070, 5, 227, 'å¼·åŒ– - é–ƒæ“Šåœ°é›·');
INSERT INTO `skill_index` VALUES (1071, 5, 228, 'å¼·åŒ– - C4 é ç«¯ç‚¸å½ˆ');
INSERT INTO `skill_index` VALUES (1072, 5, 229, 'å¼·åŒ– - å°¼çˆ¾ç‹™æ“Š');
INSERT INTO `skill_index` VALUES (1073, 5, 230, 'å¼·åŒ– - Ex-S æ¯’è›‡ç‚®');
INSERT INTO `skill_index` VALUES (1074, 5, 231, 'å¼·åŒ– - ç©ºæŠ•æ”¯æ´');
INSERT INTO `skill_index` VALUES (1075, 6, 1, 'ç¿”æ“Š');
INSERT INTO `skill_index` VALUES (1076, 6, 2, 'åˆ‡å‰²');
INSERT INTO `skill_index` VALUES (1077, 6, 3, 'å¼§å…‰é–ƒ');
INSERT INTO `skill_index` VALUES (1078, 6, 4, 'ç–¾ç©ºè¸');
INSERT INTO `skill_index` VALUES (1079, 6, 5, 'ç„°åˆƒ');
INSERT INTO `skill_index` VALUES (1080, 6, 6, 'å¿æ³• : é£›é¼ ');
INSERT INTO `skill_index` VALUES (1081, 6, 7, 'å½±è¥²');
INSERT INTO `skill_index` VALUES (1082, 6, 8, 'å¤©èª…');
INSERT INTO `skill_index` VALUES (1083, 6, 9, 'çµ‚çµè¿½æ“Š');
INSERT INTO `skill_index` VALUES (1084, 6, 16, 'çµ•æ®ºæ–¬');
INSERT INTO `skill_index` VALUES (1085, 6, 18, 'ç©ºèº');
INSERT INTO `skill_index` VALUES (1086, 6, 19, 'ç–¾é¦³');
INSERT INTO `skill_index` VALUES (1087, 6, 21, 'æš—é­‚æ³¢');
INSERT INTO `skill_index` VALUES (1088, 6, 22, 'éª¨ç›¾');
INSERT INTO `skill_index` VALUES (1089, 6, 23, 'è©›å’’ä¹‹ç®­');
INSERT INTO `skill_index` VALUES (1090, 6, 24, 'æ‰‹è£¡åŠ');
INSERT INTO `skill_index` VALUES (1091, 6, 25, 'å¿æ³• : å½±åˆ†èº«');
INSERT INTO `skill_index` VALUES (1092, 6, 26, 'ç¢Žè¸');
INSERT INTO `skill_index` VALUES (1093, 6, 27, 'é›™åˆƒç©¿åˆº');
INSERT INTO `skill_index` VALUES (1094, 6, 29, 'åŒ•é¦–ç²¾é€š');
INSERT INTO `skill_index` VALUES (1095, 6, 30, 'é›™åŠç²¾é€š');
INSERT INTO `skill_index` VALUES (1096, 6, 31, 'åŠåˆƒé¢¨æš´');
INSERT INTO `skill_index` VALUES (1097, 6, 33, 'èžºæ—‹ç©¿åˆº');
INSERT INTO `skill_index` VALUES (1098, 6, 34, 'ç–¾é¢¨äº‚èˆž');
INSERT INTO `skill_index` VALUES (1099, 6, 35, 'æ­»äº¡ä¹‹çˆª');
INSERT INTO `skill_index` VALUES (1100, 6, 36, 'ç™¾é¬¼å¤œè¡Œ');
INSERT INTO `skill_index` VALUES (1101, 6, 37, 'é™è‡¨ : æš´å›å·´æ‹‰å…‹');
INSERT INTO `skill_index` VALUES (1102, 6, 38, 'æš—é­‚æ³¢');
INSERT INTO `skill_index` VALUES (1103, 6, 39, 'å·´æ‹‰å…‹çš„é‡Žå¿ƒ');
INSERT INTO `skill_index` VALUES (1104, 6, 40, 'å·´æ‹‰å…‹çš„æ†¤æ€’');
INSERT INTO `skill_index` VALUES (1105, 6, 41, 'æ—‹åˆƒ');
INSERT INTO `skill_index` VALUES (1106, 6, 43, 'å¼§å…‰é€£é–ƒ');
INSERT INTO `skill_index` VALUES (1107, 6, 44, 'å´æ­¥');
INSERT INTO `skill_index` VALUES (1108, 6, 45, 'é›·å…‰åˆƒå½±');
INSERT INTO `skill_index` VALUES (1109, 6, 47, 'çµ•å‘½çž¬ç„æ®º');
INSERT INTO `skill_index` VALUES (1110, 6, 49, 'æ­»éˆä¹‹æ€¨');
INSERT INTO `skill_index` VALUES (1111, 6, 50, 'æš—é»‘å„€å¼');
INSERT INTO `skill_index` VALUES (1112, 6, 51, 'é™è‡¨ : å°¼å¤æ‹‰æ–¯');
INSERT INTO `skill_index` VALUES (1113, 6, 52, 'é©…ä½¿åƒµå±');
INSERT INTO `skill_index` VALUES (1114, 6, 53, 'æš—å½±è››çµ²é™£');
INSERT INTO `skill_index` VALUES (1115, 6, 54, 'æœå¾ž');
INSERT INTO `skill_index` VALUES (1116, 6, 55, 'å¸é­‚æš—å‹æ³¢');
INSERT INTO `skill_index` VALUES (1117, 6, 56, 'æœˆå¼§');
INSERT INTO `skill_index` VALUES (1118, 6, 57, 'æœˆè¼ªèˆž');
INSERT INTO `skill_index` VALUES (1119, 6, 58, 'å± æˆ®ä¹‹æ‡¼');
INSERT INTO `skill_index` VALUES (1120, 6, 59, 'åƒé­‚ç¥­');
INSERT INTO `skill_index` VALUES (1121, 6, 60, 'ç›œè³Šçš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1122, 6, 61, 'åˆºå®¢çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1123, 6, 62, 'æ­»éˆè¡“å£«è¼•ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1124, 6, 63, 'å¿è€…å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1125, 6, 64, 'å½±æ­¦è€…çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1126, 6, 74, 'æ­»éˆä¹‹ç¸›');
INSERT INTO `skill_index` VALUES (1127, 6, 75, 'éš•è½èžºæ—‹åˆº');
INSERT INTO `skill_index` VALUES (1128, 6, 76, 'æ—‹åˆƒè¡æ“Š');
INSERT INTO `skill_index` VALUES (1129, 6, 77, 'é‡‹é­‚æš—å‹æ³¢');
INSERT INTO `skill_index` VALUES (1130, 6, 140, 'å¼·åŒ– - æ‰‹è£¡åŠ');
INSERT INTO `skill_index` VALUES (1131, 6, 141, 'å¼·åŒ– - è©›å’’ä¹‹ç®­');
INSERT INTO `skill_index` VALUES (1132, 6, 142, 'å¼·åŒ– - å¤©èª…');
INSERT INTO `skill_index` VALUES (1133, 6, 143, 'å¼·åŒ– - ç–¾ç©ºè¸');
INSERT INTO `skill_index` VALUES (1134, 6, 144, 'å¼·åŒ– - åŠåˆƒé¢¨æš´');
INSERT INTO `skill_index` VALUES (1135, 6, 145, 'å¼·åŒ– - çµ‚çµè¿½æ“Š');
INSERT INTO `skill_index` VALUES (1136, 6, 146, 'å¼·åŒ– - ç™¾é¬¼å¤œè¡Œ');
INSERT INTO `skill_index` VALUES (1137, 6, 147, 'å¼·åŒ– - æš—å½±è››çµ²é™£');
INSERT INTO `skill_index` VALUES (1138, 6, 148, 'å¼·åŒ– - å¼§å…‰é–ƒ');
INSERT INTO `skill_index` VALUES (1139, 6, 149, 'å¼·åŒ– - ç–¾é¢¨äº‚èˆž');
INSERT INTO `skill_index` VALUES (1140, 6, 150, 'å¼·åŒ– - æš—é­‚æ³¢');
INSERT INTO `skill_index` VALUES (1141, 6, 151, 'å¼·åŒ– - é™è‡¨ : æš´å›å·´æ‹‰');
INSERT INTO `skill_index` VALUES (1142, 6, 152, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1143, 6, 153, 'å¼·åŒ– - ç¿”æ“Š');
INSERT INTO `skill_index` VALUES (1144, 6, 154, 'å¼·åŒ– - åˆ‡å‰²');
INSERT INTO `skill_index` VALUES (1145, 6, 155, 'å¼·åŒ– - ç„°åˆƒ');
INSERT INTO `skill_index` VALUES (1146, 6, 156, 'å¼·åŒ– - å½±è¥²');
INSERT INTO `skill_index` VALUES (1147, 6, 157, 'å¼·åŒ– - éª¨ç›¾');
INSERT INTO `skill_index` VALUES (1148, 6, 158, 'å¼·åŒ– - ç¢Žè¸');
INSERT INTO `skill_index` VALUES (1149, 6, 159, 'å¼·åŒ– - å¿æ³•ï¼šé£›é¼ ');
INSERT INTO `skill_index` VALUES (1150, 6, 160, 'å¼·åŒ– - çµ•å‘½çž¬ç„æ®º');
INSERT INTO `skill_index` VALUES (1151, 6, 161, 'å¼·åŒ– - èžºæ—‹ç©¿åˆº');
INSERT INTO `skill_index` VALUES (1152, 6, 162, 'å¼·åŒ– - é›·å…‰åˆƒå½±');
INSERT INTO `skill_index` VALUES (1153, 6, 163, 'å¼·åŒ– - æ—‹åˆƒ');
INSERT INTO `skill_index` VALUES (1154, 6, 164, 'å¼·åŒ– - é›™åˆƒç©¿åˆº');
INSERT INTO `skill_index` VALUES (1155, 6, 165, 'å¼·åŒ– - çµ•æ®ºæ–¬');
INSERT INTO `skill_index` VALUES (1156, 6, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (1157, 6, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1158, 6, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1159, 6, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1160, 6, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (1161, 6, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (1162, 6, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1163, 6, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1164, 6, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (1165, 6, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (1166, 6, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (1167, 6, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (1168, 6, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (1169, 6, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (1170, 6, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1171, 6, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (1172, 6, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1173, 6, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (1174, 6, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1175, 6, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (1176, 6, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (1177, 6, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (1178, 6, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (1179, 6, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (1180, 6, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (1181, 6, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1182, 6, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (1183, 6, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (1184, 6, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (1185, 6, 210, 'å¼·åŒ– - é™è‡¨ï¼šå°¼å¤æ‹‰æ–¯');
INSERT INTO `skill_index` VALUES (1186, 6, 211, 'å¼·åŒ– - æ­»äº¡ä¹‹çˆª');
INSERT INTO `skill_index` VALUES (1187, 6, 212, 'å¼·åŒ– - æ­»éˆä¹‹æ€¨');
INSERT INTO `skill_index` VALUES (1188, 6, 213, 'å¼·åŒ– - å·´æ‹‰å…‹çš„é‡Žå¿ƒ');
INSERT INTO `skill_index` VALUES (1189, 6, 214, 'å¼·åŒ– - å¸é­‚æš—å‹æ³¢');
INSERT INTO `skill_index` VALUES (1190, 6, 215, 'å¼·åŒ– - å·´æ‹‰å…‹çš„æ†¤æ€’');
INSERT INTO `skill_index` VALUES (1191, 6, 216, 'å¼·åŒ– - é©…ä½¿æ®­å±');
INSERT INTO `skill_index` VALUES (1192, 6, 217, 'å¼·åŒ– - å¿æ³•ï¼šå½±åˆ†èº«');
INSERT INTO `skill_index` VALUES (1193, 6, 218, 'å±¬æ€§æ”»æ“Šç²¾é€š');
INSERT INTO `skill_index` VALUES (1194, 6, 219, 'å±¬æ€§æŠ—æ€§ç²¾é€š');
INSERT INTO `skill_index` VALUES (1195, 7, 1, 'éµå±±é ');
INSERT INTO `skill_index` VALUES (1196, 7, 2, 'è¹²ä¼');
INSERT INTO `skill_index` VALUES (1197, 7, 3, 'æ“’æœˆç‚Ž');
INSERT INTO `skill_index` VALUES (1198, 7, 4, 'ç¢Žéª¨');
INSERT INTO `skill_index` VALUES (1199, 7, 5, 'å¾Œè¸¢');
INSERT INTO `skill_index` VALUES (1200, 7, 6, 'ä¸‹æ®µè¸¢');
INSERT INTO `skill_index` VALUES (1201, 7, 7, 'é‹¼ç­‹éµéª¨');
INSERT INTO `skill_index` VALUES (1202, 7, 8, 'åˆ†èº«');
INSERT INTO `skill_index` VALUES (1203, 7, 9, 'è†æ“Š');
INSERT INTO `skill_index` VALUES (1204, 7, 10, 'è†æ“Šå¼·åŒ–');
INSERT INTO `skill_index` VALUES (1205, 7, 11, 'é›·éœ†è†æ“Š');
INSERT INTO `skill_index` VALUES (1206, 7, 12, 'å¿µæ°£æ³¢');
INSERT INTO `skill_index` VALUES (1207, 7, 13, 'æ‹‹æ²™');
INSERT INTO `skill_index` VALUES (1208, 7, 14, 'ä¼è™Žéœ¸çŽ‹æ‹³');
INSERT INTO `skill_index` VALUES (1209, 7, 15, 'ç…å­å¼');
INSERT INTO `skill_index` VALUES (1210, 7, 16, 'èžºæ—‹å¿µæ°£å ´');
INSERT INTO `skill_index` VALUES (1211, 7, 17, 'é·¹è¸');
INSERT INTO `skill_index` VALUES (1212, 7, 18, 'æµ®ç©ºæ·©é›²è¸¢');
INSERT INTO `skill_index` VALUES (1213, 7, 19, 'è¡è†');
INSERT INTO `skill_index` VALUES (1214, 7, 20, 'éœ¸é«”è­·ç”²');
INSERT INTO `skill_index` VALUES (1215, 7, 21, 'å¼·åˆ¶ - å¿µæ°£æ³¢');
INSERT INTO `skill_index` VALUES (1216, 7, 22, 'æ‘”æŠ€å¼·åŒ–');
INSERT INTO `skill_index` VALUES (1217, 7, 29, 'å…‰ä¹‹è¦ªå’Œ');
INSERT INTO `skill_index` VALUES (1218, 7, 30, 'å…‰ä¹‹å…µåˆƒ');
INSERT INTO `skill_index` VALUES (1219, 7, 31, 'é¢¨ä¹‹æ°£æ¯');
INSERT INTO `skill_index` VALUES (1220, 7, 32, 'åŠ‡æ¯’æŠµæŠ—');
INSERT INTO `skill_index` VALUES (1221, 7, 33, 'èµ°ç«å…¥é­”');
INSERT INTO `skill_index` VALUES (1222, 7, 34, 'æ‹³å¥—æŽŒæ¡');
INSERT INTO `skill_index` VALUES (1223, 7, 35, 'å¿µæ°£æ„ŸçŸ¥');
INSERT INTO `skill_index` VALUES (1224, 7, 36, 'çƒˆæ—¥å…‰è¼');
INSERT INTO `skill_index` VALUES (1225, 7, 37, 'å¼·æ‹³');
INSERT INTO `skill_index` VALUES (1226, 7, 38, 'æ¯’ç“¶æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1227, 7, 39, 'å¼±é»žæ„ŸçŸ¥');
INSERT INTO `skill_index` VALUES (1228, 7, 40, 'å¿µæ°£ç’°ç¹ž');
INSERT INTO `skill_index` VALUES (1229, 7, 41, 'çƒˆç„°ç„šæ­¥');
INSERT INTO `skill_index` VALUES (1230, 7, 42, 'å¿µæ°£ç½©');
INSERT INTO `skill_index` VALUES (1231, 7, 43, 'é›™é‡æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1232, 7, 44, 'æŒ‘é‡');
INSERT INTO `skill_index` VALUES (1233, 7, 45, 'çˆªç²¾é€š');
INSERT INTO `skill_index` VALUES (1234, 7, 46, 'å‰è¸¢');
INSERT INTO `skill_index` VALUES (1235, 7, 49, 'æ‹‹æŠ•');
INSERT INTO `skill_index` VALUES (1236, 7, 50, 'æš´åŠ›æŠ“å–');
INSERT INTO `skill_index` VALUES (1237, 7, 51, 'æ»‘è¡ŒæŠ“å–');
INSERT INTO `skill_index` VALUES (1238, 7, 52, 'ç¾…ç¶²æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1239, 7, 54, 'é‡Žè »è¡æ’ž');
INSERT INTO `skill_index` VALUES (1240, 7, 55, 'æŠ“è½Ÿç‚®');
INSERT INTO `skill_index` VALUES (1241, 7, 56, 'æ­¦é¬¥è¼•ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1242, 7, 57, 'æŸ”é“å®¶å®¶è¼•ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1243, 7, 58, 'æ—‹é¢¨è…¿');
INSERT INTO `skill_index` VALUES (1244, 7, 60, 'ç£šå¡ŠæŠ•æ“²');
INSERT INTO `skill_index` VALUES (1245, 7, 61, 'å¼·åˆ¶ - æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1246, 7, 62, 'ç©ºçµžéŒ˜');
INSERT INTO `skill_index` VALUES (1247, 7, 63, 'æ­»äº¡æ—‹å¾‹');
INSERT INTO `skill_index` VALUES (1248, 7, 65, 'çƒˆç„°ç‡ƒç‡’');
INSERT INTO `skill_index` VALUES (1249, 7, 67, 'å¿µç¸ : å¯©åˆ¤ä¹‹é‡‘é›·è™Ž');
INSERT INTO `skill_index` VALUES (1250, 7, 68, 'é–ƒé›»ä¹‹èˆž');
INSERT INTO `skill_index` VALUES (1251, 7, 69, 'å¹»å½±çˆ†ç¢Ž');
INSERT INTO `skill_index` VALUES (1252, 7, 73, 'è¡—éœ¸é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1253, 7, 74, 'ç‹‚ Â· éœ¸çŽ‹æ‹³');
INSERT INTO `skill_index` VALUES (1254, 7, 75, 'æ¯’é‡æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1255, 7, 76, 'æ¯’é›·å¼•çˆ†');
INSERT INTO `skill_index` VALUES (1256, 7, 77, 'è¡€è‰²é¢¨æš´');
INSERT INTO `skill_index` VALUES (1257, 7, 78, 'è“„å¿µç‚®');
INSERT INTO `skill_index` VALUES (1258, 7, 79, 'å¿µç¸ : é¾è™Žå˜¯');
INSERT INTO `skill_index` VALUES (1259, 7, 80, 'è‚˜æ“Š');
INSERT INTO `skill_index` VALUES (1260, 7, 81, 'æŠ˜é ¸');
INSERT INTO `skill_index` VALUES (1261, 7, 82, 'çž¬å½±é€£ç’°è¸¢');
INSERT INTO `skill_index` VALUES (1262, 7, 83, 'ç†¾ç„°æ—‹é¢¨è…¿');
INSERT INTO `skill_index` VALUES (1263, 7, 84, 'ç–¾é¢¨è¿½æ“Š');
INSERT INTO `skill_index` VALUES (1264, 7, 85, 'ç–¾é¢¨é€£æ“Š');
INSERT INTO `skill_index` VALUES (1265, 7, 86, 'é‡‘å‰›ç¢Ž');
INSERT INTO `skill_index` VALUES (1266, 7, 87, 'éœ¹é‚æ—‹è¸¢');
INSERT INTO `skill_index` VALUES (1267, 7, 88, 'è£‚çŸ³ç ´å¤©');
INSERT INTO `skill_index` VALUES (1268, 7, 89, 'åœ°ç„é¢¨ç«è¼ª');
INSERT INTO `skill_index` VALUES (1269, 7, 90, 'å¿µç¸ : çŒ›è™Žéœ‡åœ°');
INSERT INTO `skill_index` VALUES (1270, 7, 91, 'æŸ”åŒ–è‚Œè‚‰');
INSERT INTO `skill_index` VALUES (1271, 7, 97, 'é¬¥æ°£å¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1272, 7, 105, 'å¤©å´©åœ°è£‚');
INSERT INTO `skill_index` VALUES (1273, 7, 106, 'èžºæ—‹æ»‘éŸ');
INSERT INTO `skill_index` VALUES (1274, 7, 108, 'çž¬æ­¥');
INSERT INTO `skill_index` VALUES (1275, 7, 109, 'æŠ•æ“²å¼·åŒ–');
INSERT INTO `skill_index` VALUES (1276, 7, 110, 'è‡ªå‹•å¡«å……');
INSERT INTO `skill_index` VALUES (1277, 7, 111, 'å¿µæ°£ç’°ç¹ž : è¥²');
INSERT INTO `skill_index` VALUES (1278, 7, 112, 'å¿µæ°£ç’°ç¹ž : ç¦¦');
INSERT INTO `skill_index` VALUES (1279, 7, 114, 'å¿µä¹‹å¥§ç¾©');
INSERT INTO `skill_index` VALUES (1280, 7, 115, 'åŠ›ä¹‹å¥§ç¾©');
INSERT INTO `skill_index` VALUES (1281, 7, 116, 'åƒæ‰‹å¥§ç¾©');
INSERT INTO `skill_index` VALUES (1282, 7, 117, 'å¿µä¹‹æˆ°çŸ›');
INSERT INTO `skill_index` VALUES (1283, 7, 118, 'å½—æ˜Ÿè¡æ“Š');
INSERT INTO `skill_index` VALUES (1284, 7, 119, 'çˆ†ç ´é»çƒ');
INSERT INTO `skill_index` VALUES (1285, 7, 120, 'è¡é›²å¿µæ°£å ´');
INSERT INTO `skill_index` VALUES (1286, 7, 121, 'æ­¦è“®è¯');
INSERT INTO `skill_index` VALUES (1287, 7, 122, 'æ—‹é¢¨ç¢Žå¿ƒè¸¢');
INSERT INTO `skill_index` VALUES (1288, 7, 123, 'åƒçµ²äº‚èˆž');
INSERT INTO `skill_index` VALUES (1289, 7, 124, 'éœ¹é‚ä¸‰é‡è¸¢');
INSERT INTO `skill_index` VALUES (1290, 7, 125, 'å¼·åŒ– - é‡‘å‰›ç¢Ž');
INSERT INTO `skill_index` VALUES (1291, 7, 126, 'å¼·åŒ– - è†æ“Š');
INSERT INTO `skill_index` VALUES (1292, 7, 127, 'å¼·åŒ– - å¿µæ°£æ³¢');
INSERT INTO `skill_index` VALUES (1293, 7, 128, 'å¼·åŒ– - é‹¼ç­‹éµéª¨');
INSERT INTO `skill_index` VALUES (1294, 7, 129, 'å¼·åŒ– - æ—‹é¢¨è…¿');
INSERT INTO `skill_index` VALUES (1295, 7, 130, 'å¼·åŒ– - ä¸‹æ®µè¸¢');
INSERT INTO `skill_index` VALUES (1296, 7, 131, 'å¼·åŒ– - è¹²ä¼');
INSERT INTO `skill_index` VALUES (1297, 7, 132, 'å¼·åŒ– - æ‹‹æ²™');
INSERT INTO `skill_index` VALUES (1298, 7, 133, 'å¼·åŒ– - èžºæ—‹å¿µæ°£å ´');
INSERT INTO `skill_index` VALUES (1299, 7, 134, 'å¼·åŒ– - é›·éœ†è†æ“Š');
INSERT INTO `skill_index` VALUES (1300, 7, 135, 'å¼·åŒ– - çž¬å½±é€£ç’°è¸¢');
INSERT INTO `skill_index` VALUES (1301, 7, 136, 'å¼·åŒ– - å¿µç¸ : é¾è™Žå˜¯');
INSERT INTO `skill_index` VALUES (1302, 7, 137, 'å¼·åŒ– - ç¢Žéª¨');
INSERT INTO `skill_index` VALUES (1303, 7, 138, 'å¼·åŒ– - èžºæ—‹æ»‘éŸ');
INSERT INTO `skill_index` VALUES (1304, 7, 139, 'å¼·åŒ– - é–ƒé›»ä¹‹èˆž');
INSERT INTO `skill_index` VALUES (1305, 7, 140, 'å¼·åŒ– - ç†¾ç„°æ—‹é¢¨è…¿');
INSERT INTO `skill_index` VALUES (1306, 7, 141, 'å¼·åŒ– - ç¾…ç¶²æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1307, 7, 142, 'å¼·åŒ– - æŒ‘é‡');
INSERT INTO `skill_index` VALUES (1308, 7, 143, 'å¼·åŒ– - æ¯’é›·å¼•çˆ†');
INSERT INTO `skill_index` VALUES (1309, 7, 144, 'å¼·åŒ– - è¡€è‰²é¢¨æš´');
INSERT INTO `skill_index` VALUES (1310, 7, 145, 'å¼·åŒ– - æŠ˜é ¸');
INSERT INTO `skill_index` VALUES (1311, 7, 146, 'å¼·åŒ– - é‡Žè »è¡æ’ž');
INSERT INTO `skill_index` VALUES (1312, 7, 147, 'å¼·åŒ– - åœ°ç„é¢¨ç«è¼ª');
INSERT INTO `skill_index` VALUES (1313, 7, 148, 'å¼·åŒ– - æµ®ç©ºæ·©é›²è¸¢');
INSERT INTO `skill_index` VALUES (1314, 7, 149, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1315, 7, 150, 'å¼·åŒ– - å¾Œè¸¢');
INSERT INTO `skill_index` VALUES (1316, 7, 151, 'å¼·åŒ– - å‰è¸¢');
INSERT INTO `skill_index` VALUES (1317, 7, 152, 'å¼·åŒ– - åˆ†èº«');
INSERT INTO `skill_index` VALUES (1318, 7, 153, 'å¼·åŒ– - é·¹è¸');
INSERT INTO `skill_index` VALUES (1319, 7, 154, 'å¼·åŒ– - å¿µæ°£ç½©');
INSERT INTO `skill_index` VALUES (1320, 7, 155, 'å¼·åŒ– - å¹»å½±çˆ†ç¢Ž');
INSERT INTO `skill_index` VALUES (1321, 7, 156, 'å¼·åŒ– - ç…å­å¼');
INSERT INTO `skill_index` VALUES (1322, 7, 157, 'å¼·åŒ– - å¿µç¸ï¼šçŒ›è™Žéœ‡åœ°');
INSERT INTO `skill_index` VALUES (1323, 7, 158, 'å¼·åŒ– - å¿µæ°£ç’°ç¹žï¼šè¥²');
INSERT INTO `skill_index` VALUES (1324, 7, 159, 'å¼·åŒ– - å¿µæ°£ç’°ç¹žï¼šç¦¦');
INSERT INTO `skill_index` VALUES (1325, 7, 160, 'å¼·åŒ– - è‚˜æ“Š');
INSERT INTO `skill_index` VALUES (1326, 7, 161, 'å¼·åŒ– - è¡è†');
INSERT INTO `skill_index` VALUES (1327, 7, 162, 'å¼·åŒ– - éµå±±é ');
INSERT INTO `skill_index` VALUES (1328, 7, 163, 'å¼·åŒ– - æ“’æœˆç‚Ž');
INSERT INTO `skill_index` VALUES (1329, 7, 164, 'å¼·åŒ– - æ¯’é‡æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1330, 7, 165, 'å¼·åŒ– - æ¯’ç“¶æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1331, 7, 166, 'å¼·åŒ– - æ‹‹æŠ•');
INSERT INTO `skill_index` VALUES (1332, 7, 167, 'å¼·åŒ– - ç©ºçµžéŒ˜');
INSERT INTO `skill_index` VALUES (1333, 7, 168, 'å¼·åŒ– - éœ¹é‚æ—‹è¸¢');
INSERT INTO `skill_index` VALUES (1334, 7, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (1335, 7, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1336, 7, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1337, 7, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1338, 7, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (1339, 7, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (1340, 7, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1341, 7, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1342, 7, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (1343, 7, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (1344, 7, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (1345, 7, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (1346, 7, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (1347, 7, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (1348, 7, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1349, 7, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (1350, 7, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1351, 7, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (1352, 7, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1353, 7, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (1354, 7, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (1355, 7, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (1356, 7, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (1357, 7, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (1358, 7, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (1359, 7, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1360, 7, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (1361, 7, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (1362, 7, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (1363, 7, 210, 'å¼·åŒ– - æš´åŠ›æŠ“å–');
INSERT INTO `skill_index` VALUES (1364, 7, 211, 'å¼·åŒ– - è£‚çŸ³ç ´å¤©');
INSERT INTO `skill_index` VALUES (1365, 7, 212, 'æ™ºåŠ›ä¹‹æº');
INSERT INTO `skill_index` VALUES (1366, 7, 213, 'ç²¾ç¥žä¹‹æº');
INSERT INTO `skill_index` VALUES (1367, 7, 214, 'å‘½ä¸­ç²¾é€š');
INSERT INTO `skill_index` VALUES (1368, 7, 215, 'å›žé¿ç²¾é€š');
INSERT INTO `skill_index` VALUES (1369, 7, 216, 'HPæ¢å¾©ç²¾é€š');
INSERT INTO `skill_index` VALUES (1370, 7, 217, 'MPæ¢å¾©ç²¾é€š');
INSERT INTO `skill_index` VALUES (1371, 7, 218, 'å±¬æ€§æ”»æ“Šç²¾é€š');
INSERT INTO `skill_index` VALUES (1372, 7, 219, 'å±¬æ€§æŠ—æ€§ç²¾é€š');
INSERT INTO `skill_index` VALUES (1373, 8, 1, 'é­”æ³•æ—‹é¢¨');
INSERT INTO `skill_index` VALUES (1374, 8, 2, 'é›·å…‰éˆ');
INSERT INTO `skill_index` VALUES (1375, 8, 3, 'å†°æ™¶å¢œ');
INSERT INTO `skill_index` VALUES (1376, 8, 4, 'æš—åŸŸæ“´å¼µ');
INSERT INTO `skill_index` VALUES (1377, 8, 5, 'å±¬æ€§è®Šæ›');
INSERT INTO `skill_index` VALUES (1378, 8, 6, 'åœ°ç‚Ž');
INSERT INTO `skill_index` VALUES (1379, 8, 7, 'å†°éœœä¹‹å¾‘');
INSERT INTO `skill_index` VALUES (1380, 8, 8, 'å†°é­„åŠ');
INSERT INTO `skill_index` VALUES (1381, 8, 9, 'å¹½å†¥ç«');
INSERT INTO `skill_index` VALUES (1382, 8, 10, 'ç ´å†°é£›åˆƒ');
INSERT INTO `skill_index` VALUES (1383, 8, 11, 'æ—‹ç‚Žç ´');
INSERT INTO `skill_index` VALUES (1384, 8, 12, 'å†°é­„éŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (1385, 8, 13, 'å†°é¾æ—‹èˆž');
INSERT INTO `skill_index` VALUES (1386, 8, 14, 'å†°æ™¶ä¹‹æµ´');
INSERT INTO `skill_index` VALUES (1387, 8, 15, 'æ—‹å†°ç©¿åˆº');
INSERT INTO `skill_index` VALUES (1388, 8, 16, 'å†°é­„ä¹‹å¼“');
INSERT INTO `skill_index` VALUES (1389, 8, 17, 'æ“’æ‹¿æŽŒ');
INSERT INTO `skill_index` VALUES (1390, 8, 18, 'é­”æ³•ç‚®');
INSERT INTO `skill_index` VALUES (1391, 8, 19, 'å…ƒç´ ç’°ç¹ž');
INSERT INTO `skill_index` VALUES (1392, 8, 20, 'çž¬ç§»');
INSERT INTO `skill_index` VALUES (1393, 8, 21, 'å¯’å†°é€£æ§');
INSERT INTO `skill_index` VALUES (1394, 8, 22, 'ç™¼ç¾');
INSERT INTO `skill_index` VALUES (1395, 8, 23, 'å†°é­„æ—‹æ§');
INSERT INTO `skill_index` VALUES (1396, 8, 24, 'é»‘æš—ç¦åŸŸ');
INSERT INTO `skill_index` VALUES (1397, 8, 25, 'é­”çƒé€£å°„');
INSERT INTO `skill_index` VALUES (1398, 8, 26, 'é­”æ³•å†°çƒ');
INSERT INTO `skill_index` VALUES (1399, 8, 27, 'æ—‹ç«ç›¾');
INSERT INTO `skill_index` VALUES (1400, 8, 28, 'é­”åŠ›ç‡ƒç‡’');
INSERT INTO `skill_index` VALUES (1401, 8, 29, 'é›·å…‰å±éšœ');
INSERT INTO `skill_index` VALUES (1402, 8, 30, 'å…ƒç´ è½Ÿç‚¸');
INSERT INTO `skill_index` VALUES (1403, 8, 31, 'å¯’å†°ä¹‹å¢ƒ');
INSERT INTO `skill_index` VALUES (1404, 8, 32, 'æ¥µå†°ç¶»æ”¾');
INSERT INTO `skill_index` VALUES (1405, 8, 33, 'ä¸æ­»ä¹‹èº«');
INSERT INTO `skill_index` VALUES (1406, 8, 34, 'å±¬æ€§ä¿è­·');
INSERT INTO `skill_index` VALUES (1407, 8, 35, 'å†°ä¹‹å°');
INSERT INTO `skill_index` VALUES (1408, 8, 36, 'å…ƒç´ çˆ†ç ´å¸«å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1409, 8, 37, 'å†°çµå¸«çš®ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1410, 8, 48, 'åƒæ—‹å†°è¼ªç ´');
INSERT INTO `skill_index` VALUES (1411, 8, 49, 'å¹»é­”å››é‡å¥');
INSERT INTO `skill_index` VALUES (1412, 8, 50, 'å†°å°å¥§ç¾©');
INSERT INTO `skill_index` VALUES (1413, 8, 51, 'å…ƒç´ å–šé†’');
INSERT INTO `skill_index` VALUES (1414, 8, 60, 'å†°æ·©ç ´');
INSERT INTO `skill_index` VALUES (1415, 8, 61, 'å…ƒç´ æ¿ƒç¸®çƒ');
INSERT INTO `skill_index` VALUES (1416, 8, 62, 'å…ƒç´ å¹»æ»…');
INSERT INTO `skill_index` VALUES (1417, 8, 63, 'åƒé‡Œå†°å°');
INSERT INTO `skill_index` VALUES (1418, 8, 91, 'æŽƒæŠŠæŽŒæ¡');
INSERT INTO `skill_index` VALUES (1419, 8, 92, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1420, 8, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (1421, 8, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1422, 8, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1423, 8, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1424, 8, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (1425, 8, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (1426, 8, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1427, 8, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1428, 8, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (1429, 8, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (1430, 8, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (1431, 8, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (1432, 8, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (1433, 8, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (1434, 8, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1435, 8, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (1436, 8, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1437, 8, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (1438, 8, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1439, 8, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (1440, 8, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (1441, 8, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (1442, 8, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (1443, 8, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (1444, 8, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (1445, 8, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1446, 8, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (1447, 8, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (1448, 8, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (1449, 8, 211, 'å¼·åŒ– - é­”æ³•æ—‹é¢¨');
INSERT INTO `skill_index` VALUES (1450, 8, 212, 'å¼·åŒ– - é›·å…‰éˆ');
INSERT INTO `skill_index` VALUES (1451, 8, 213, 'å¼·åŒ– - å†°æ™¶å¢œ');
INSERT INTO `skill_index` VALUES (1452, 8, 214, 'å¼·åŒ– - æš—åŸŸæ“´å¼µ');
INSERT INTO `skill_index` VALUES (1453, 8, 216, 'å¼·åŒ– - åœ°ç‚Ž');
INSERT INTO `skill_index` VALUES (1454, 8, 217, 'å¼·åŒ– - å†°éœœä¹‹å¾‘');
INSERT INTO `skill_index` VALUES (1455, 8, 218, 'å¼·åŒ– - å†°é­„åŠ');
INSERT INTO `skill_index` VALUES (1456, 8, 219, 'å¼·åŒ– - å¹½å†¥ç«');
INSERT INTO `skill_index` VALUES (1457, 8, 220, 'å¼·åŒ– - ç ´å†°é£›åˆƒ');
INSERT INTO `skill_index` VALUES (1458, 8, 221, 'å¼·åŒ– - æ—‹ç‚Žç ´');
INSERT INTO `skill_index` VALUES (1459, 8, 222, 'å¼·åŒ– - å†°é­„éŒ˜æ“Š');
INSERT INTO `skill_index` VALUES (1460, 8, 223, 'å¼·åŒ– - å†°é¾æ—‹èˆž');
INSERT INTO `skill_index` VALUES (1461, 8, 224, 'å¼·åŒ– - å†°æ™¶ä¹‹æµ´');
INSERT INTO `skill_index` VALUES (1462, 8, 225, 'å¼·åŒ– - æ—‹å†°ç©¿åˆº');
INSERT INTO `skill_index` VALUES (1463, 8, 226, 'å¼·åŒ– - å†°é­„ä¹‹å¼“');
INSERT INTO `skill_index` VALUES (1464, 8, 227, 'å¼·åŒ– - æ“’æ‹¿æŽŒ');
INSERT INTO `skill_index` VALUES (1465, 8, 228, 'å¼·åŒ– - é­”æ³•ç‚®');
INSERT INTO `skill_index` VALUES (1466, 8, 229, 'å¼·åŒ– - å…ƒç´ ç’°ç¹ž');
INSERT INTO `skill_index` VALUES (1467, 8, 231, 'å¼·åŒ– - å¯’å†°é€£æ§');
INSERT INTO `skill_index` VALUES (1468, 8, 233, 'å¼·åŒ– - å†°é­„æ—‹æ§');
INSERT INTO `skill_index` VALUES (1469, 8, 234, 'å¼·åŒ– - é»‘æš—ç¦åŸŸ');
INSERT INTO `skill_index` VALUES (1470, 8, 235, 'å¼·åŒ– - é­”çƒé€£å°„');
INSERT INTO `skill_index` VALUES (1471, 8, 236, 'å¼·åŒ– - é­”æ³•å†°çƒ');
INSERT INTO `skill_index` VALUES (1472, 8, 237, 'å¼·åŒ– - æ—‹ç«ç›¾');
INSERT INTO `skill_index` VALUES (1473, 8, 239, 'å¼·åŒ– - é›·å…‰å±éšœ');
INSERT INTO `skill_index` VALUES (1474, 8, 240, 'å¼·åŒ– - å…ƒç´ è½Ÿç‚¸');
INSERT INTO `skill_index` VALUES (1475, 8, 241, 'å¼·åŒ– - å¯’å†°ä¹‹å¢ƒ');
INSERT INTO `skill_index` VALUES (1476, 8, 242, 'å¼·åŒ– - æ¥µå†°ç¶»æ”¾');
INSERT INTO `skill_index` VALUES (1477, 9, 1, 'æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (1478, 9, 2, 'å†¥ç‚Ž');
INSERT INTO `skill_index` VALUES (1479, 9, 3, 'è‡ªå‹•æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (1480, 9, 4, 'é»‘æš—å…‰åŠç²¾é€š');
INSERT INTO `skill_index` VALUES (1481, 9, 5, 'é¬¼æ–¬');
INSERT INTO `skill_index` VALUES (1482, 9, 6, 'å™¬éˆé¬¼æ–¬');
INSERT INTO `skill_index` VALUES (1483, 9, 7, 'é€†è½‰åæ“Š');
INSERT INTO `skill_index` VALUES (1484, 9, 8, 'è¿…æ·ä¹‹åˆ‡');
INSERT INTO `skill_index` VALUES (1485, 9, 9, 'æ‹–å¼•ä¹‹åŠ');
INSERT INTO `skill_index` VALUES (1486, 9, 10, 'å¼·åˆ¶ - æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (1487, 9, 11, 'é€£çªåˆº');
INSERT INTO `skill_index` VALUES (1488, 9, 12, 'æš—å½±åŠç²¾é€š');
INSERT INTO `skill_index` VALUES (1489, 9, 13, 'é»‘æš—ä¹‹åˆ€ç²¾é€š');
INSERT INTO `skill_index` VALUES (1490, 9, 14, 'é»‘æš—å¤§åˆ€ç²¾é€š');
INSERT INTO `skill_index` VALUES (1491, 9, 15, 'é»‘æš—éˆå™¨ç²¾é€š');
INSERT INTO `skill_index` VALUES (1492, 9, 16, 'éŠ€å…‰è½åˆƒ');
INSERT INTO `skill_index` VALUES (1493, 9, 17, 'ç©ºä¸­é€£æ–¬');
INSERT INTO `skill_index` VALUES (1494, 9, 18, 'æ†‘ä¾');
INSERT INTO `skill_index` VALUES (1495, 9, 19, 'è¡€æ°£å–šé†’');
INSERT INTO `skill_index` VALUES (1496, 9, 20, 'æ³¢æµª');
INSERT INTO `skill_index` VALUES (1497, 9, 21, 'å†°åˆƒ Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (1498, 9, 22, 'çˆ†ç‚Ž Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (1499, 9, 23, 'å—œè¡€');
INSERT INTO `skill_index` VALUES (1500, 9, 24, 'é—‡å½±çˆ†ç‚¸');
INSERT INTO `skill_index` VALUES (1501, 9, 25, 'é¬¼ç¥žâ€§å¡è´Š');
INSERT INTO `skill_index` VALUES (1502, 9, 26, 'å¼·åˆ¶ - ä¸‰æ®µæ–¬');
INSERT INTO `skill_index` VALUES (1503, 9, 27, 'æ­¦å™¨å¥§ç¾©');
INSERT INTO `skill_index` VALUES (1504, 9, 28, 'å–æ¶ˆ - é¬¼æ–¬');
INSERT INTO `skill_index` VALUES (1505, 9, 29, 'æš—ä¹‹è¦ªå’Œ');
INSERT INTO `skill_index` VALUES (1506, 9, 30, 'æš—æœˆé™è‡¨');
INSERT INTO `skill_index` VALUES (1507, 9, 31, 'æš—ä¹‹è¡åˆº');
INSERT INTO `skill_index` VALUES (1508, 9, 32, 'æ³¢å‹•çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (1509, 9, 33, 'å…‰åŠæŽŒæ¡');
INSERT INTO `skill_index` VALUES (1510, 9, 34, 'æ­»äº¡æŠ—æ‹’');
INSERT INTO `skill_index` VALUES (1511, 9, 35, 'å°å°è§£é™¤');
INSERT INTO `skill_index` VALUES (1512, 9, 36, 'é¬¼ç¥žâ€§å†°éœœè–©äºž');
INSERT INTO `skill_index` VALUES (1513, 9, 37, 'ç–¾å½±æ‰‹');
INSERT INTO `skill_index` VALUES (1514, 9, 38, 'ç ´æ¥µå…µåˆƒ');
INSERT INTO `skill_index` VALUES (1515, 9, 39, 'æ­¦å™¨ç¯€åˆ¶');
INSERT INTO `skill_index` VALUES (1516, 9, 40, 'æš´èµ°');
INSERT INTO `skill_index` VALUES (1517, 9, 41, 'é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾è’™');
INSERT INTO `skill_index` VALUES (1518, 9, 42, 'é¬¼é£Ÿ');
INSERT INTO `skill_index` VALUES (1519, 9, 43, 'è‰ä¸Šé£›');
INSERT INTO `skill_index` VALUES (1520, 9, 44, 'é»‘æš—é™è‡¨');
INSERT INTO `skill_index` VALUES (1521, 9, 45, 'å¼·åˆ¶ - æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (1522, 9, 46, 'ä¸Šå‡');
INSERT INTO `skill_index` VALUES (1523, 9, 47, 'æ³¢å‹•åˆ»å°');
INSERT INTO `skill_index` VALUES (1524, 9, 48, 'å¼·åˆ¶ - ä¸ŠæŒ‘');
INSERT INTO `skill_index` VALUES (1525, 9, 49, 'å¾Œè·³æ–¬');
INSERT INTO `skill_index` VALUES (1526, 9, 50, 'å·¨å¤§æ³¢æµª');
INSERT INTO `skill_index` VALUES (1527, 9, 51, 'ä¿®ç¾…é‚ªå…‰æ–¬');
INSERT INTO `skill_index` VALUES (1528, 9, 52, 'æ®ºæ„æ³¢å‹•');
INSERT INTO `skill_index` VALUES (1529, 9, 53, 'æŒ«æŠ˜æ„å¿—');
INSERT INTO `skill_index` VALUES (1530, 9, 54, 'å–æ¶ˆ - å—œé­‚ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (1531, 9, 55, 'æ®ºæ°£æ„ŸçŸ¥');
INSERT INTO `skill_index` VALUES (1532, 9, 56, 'ç‹‚æˆ°å£«é‡ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1533, 9, 57, 'éœ‡å‹•æ³¢');
INSERT INTO `skill_index` VALUES (1534, 9, 58, 'ç¾½ç¿¼çŒ›æ“Š');
INSERT INTO `skill_index` VALUES (1535, 9, 59, 'å¼·åˆ¶ - è£‚æ³¢æ–¬');
INSERT INTO `skill_index` VALUES (1536, 9, 60, 'çž¬é–“ç æ“Š');
INSERT INTO `skill_index` VALUES (1537, 9, 61, 'é˜¿ä¿®ç¾…æ¿ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1538, 9, 62, 'ç„¡é›™æ³¢');
INSERT INTO `skill_index` VALUES (1539, 9, 63, 'è¡€æ°£æ—ºç››');
INSERT INTO `skill_index` VALUES (1540, 9, 64, 'æš—åå­—');
INSERT INTO `skill_index` VALUES (1541, 9, 65, 'è·³èºç²‰ç¢Ž');
INSERT INTO `skill_index` VALUES (1542, 9, 66, 'å¼·åˆ¶ - å´©å±±æ“Š');
INSERT INTO `skill_index` VALUES (1543, 9, 67, 'è£â€§é¬¼åŠè¡“');
INSERT INTO `skill_index` VALUES (1544, 9, 68, 'é—‡å½±çŒ›æ“Š');
INSERT INTO `skill_index` VALUES (1545, 9, 69, 'å¼·åˆ¶ - ç ´è»å‡é¾æ“Š');
INSERT INTO `skill_index` VALUES (1546, 9, 70, 'å¼·åˆ¶ - æ€’æ°£çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (1547, 9, 71, 'å¼·åˆ¶ - é¬¼å°ç ');
INSERT INTO `skill_index` VALUES (1548, 9, 72, 'çž¬å½±æ–¬');
INSERT INTO `skill_index` VALUES (1549, 9, 73, 'å¹»ä¹‹æ“Š');
INSERT INTO `skill_index` VALUES (1550, 9, 74, 'æ—‹æ³¢');
INSERT INTO `skill_index` VALUES (1551, 9, 75, 'é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž');
INSERT INTO `skill_index` VALUES (1552, 9, 76, 'è¡€ä¹‹ç‹‚æš´');
INSERT INTO `skill_index` VALUES (1553, 9, 77, 'æ—‹è½‰ä¹‹æ“Š');
INSERT INTO `skill_index` VALUES (1554, 9, 78, 'å¼·åˆ¶ - åå­—æ–¬');
INSERT INTO `skill_index` VALUES (1555, 9, 79, 'é—‡å½±ç‹‚å˜¯');
INSERT INTO `skill_index` VALUES (1556, 9, 80, 'æ»¿æœˆæ–¬');
INSERT INTO `skill_index` VALUES (1557, 9, 81, 'é—‡å½±è£‚åœ°æ–¬');
INSERT INTO `skill_index` VALUES (1558, 9, 82, 'é»‘è‰²ç«ç„°ä¹‹åŠ');
INSERT INTO `skill_index` VALUES (1559, 9, 83, 'å¼·åˆ¶ - æœˆå…‰æ–¬');
INSERT INTO `skill_index` VALUES (1560, 9, 84, 'é¬¼ç¥žâ€§æ®˜å½±å‡±è³ˆ');
INSERT INTO `skill_index` VALUES (1561, 9, 85, 'é­”ç„è¡€å‰Ž');
INSERT INTO `skill_index` VALUES (1562, 9, 86, 'æ¥µ Â· é¬¼åŠè¡“ (æš´é¢¨å¼)');
INSERT INTO `skill_index` VALUES (1563, 9, 87, 'æ€–æ‹‰ä¿®');
INSERT INTO `skill_index` VALUES (1564, 9, 88, 'æ³¢å‹•çœ¼:çµ‚çµæŠ€');
INSERT INTO `skill_index` VALUES (1565, 9, 89, 'ææ‡¼å…‰ç’°');
INSERT INTO `skill_index` VALUES (1566, 9, 90, 'é®®è¡€ä¹‹æ†¶');
INSERT INTO `skill_index` VALUES (1567, 9, 91, 'æ¥µ Â· é¬¼åŠè¡“ (æ–¬éµå¼)');
INSERT INTO `skill_index` VALUES (1568, 9, 92, 'å¿ƒçœ¼');
INSERT INTO `skill_index` VALUES (1569, 9, 93, 'å™¬é­‚è€…å¸ƒç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1570, 9, 94, 'åŠé­‚è¼•ç”²å°ˆç²¾');
INSERT INTO `skill_index` VALUES (1571, 9, 95, 'å¢“ç¢‘ä¸‰çµ•é™£');
INSERT INTO `skill_index` VALUES (1572, 9, 96, 'é¬¼ç¥žâ€§å†°æ™¶è–©äºž');
INSERT INTO `skill_index` VALUES (1573, 9, 97, 'ç ´ç©ºæ‹”åˆ€æ–¬');
INSERT INTO `skill_index` VALUES (1574, 9, 98, 'ç ´è»æ–¬é¾æ“Š');
INSERT INTO `skill_index` VALUES (1575, 9, 99, 'æ¥µç‚Ž Â· è£‚æ³¢åŠ');
INSERT INTO `skill_index` VALUES (1576, 9, 100, 'æ¥µå†° Â· è£‚æ³¢åŠ');
INSERT INTO `skill_index` VALUES (1577, 9, 101, 'è¡€æ°£çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (1578, 9, 102, 'æ»…é­‚ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (1579, 9, 103, 'é»‘æš—ä¹‹åŠ');
INSERT INTO `skill_index` VALUES (1580, 9, 104, 'å¼·åˆ¶ - è¡€æ°£ä¹‹åˆƒ');
INSERT INTO `skill_index` VALUES (1581, 9, 105, 'æµå¿ƒ');
INSERT INTO `skill_index` VALUES (1582, 9, 106, 'å¼·åˆ¶ - æµå¿ƒ');
INSERT INTO `skill_index` VALUES (1583, 9, 107, 'ç©¿åˆºæ”»æ“Š');
INSERT INTO `skill_index` VALUES (1584, 9, 108, 'åå½ˆçˆ†è£‚');
INSERT INTO `skill_index` VALUES (1585, 9, 109, 'æµå¿ƒ : å‡');
INSERT INTO `skill_index` VALUES (1586, 9, 110, 'æµå¿ƒ : ç‹‚');
INSERT INTO `skill_index` VALUES (1587, 9, 111, 'éž­æ“Š');
INSERT INTO `skill_index` VALUES (1588, 9, 112, 'ä¸‰é‡åˆºæ“Š');
INSERT INTO `skill_index` VALUES (1589, 9, 113, 'å¼·åˆ¶ - é¬¼å½±éž­');
INSERT INTO `skill_index` VALUES (1590, 9, 114, 'å¼·åˆ¶ - é¬¼å½±ä¸‰æ“ŠåŠ');
INSERT INTO `skill_index` VALUES (1591, 9, 115, 'å¼·åŒ– - é¬¼åŠéž­');
INSERT INTO `skill_index` VALUES (1592, 9, 116, 'å¼·åŒ– - é¬¼å½±ä¸‰æ“ŠåŠ');
INSERT INTO `skill_index` VALUES (1593, 9, 117, 'é»‘æš—æ³¢æµª');
INSERT INTO `skill_index` VALUES (1594, 9, 118, 'å·çˆ¾æ’¢0');
INSERT INTO `skill_index` VALUES (1595, 9, 119, 'å·çˆ¾æ’¢1');
INSERT INTO `skill_index` VALUES (1596, 9, 120, 'å·çˆ¾æ’¢2');
INSERT INTO `skill_index` VALUES (1597, 9, 121, 'å·çˆ¾æ’¢3');
INSERT INTO `skill_index` VALUES (1598, 9, 122, 'å·çˆ¾æ’¢4');
INSERT INTO `skill_index` VALUES (1599, 9, 123, 'å·çˆ¾æ’¢5');
INSERT INTO `skill_index` VALUES (1600, 9, 139, 'å¼·åŒ– - è¡€æ°£å–šé†’');
INSERT INTO `skill_index` VALUES (1601, 9, 140, 'å¼·åŒ– - åœ°è£‚ Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (1602, 9, 141, 'å¼·åŒ– - åå­—æ–¬');
INSERT INTO `skill_index` VALUES (1603, 9, 142, 'å¼·åŒ– - é¬¼æ–¬');
INSERT INTO `skill_index` VALUES (1604, 9, 143, 'å¼·åŒ– - ä¸‰æ®µæ–¬');
INSERT INTO `skill_index` VALUES (1605, 9, 144, 'å¼·åŒ– - é€†è½‰åæ“Š');
INSERT INTO `skill_index` VALUES (1606, 9, 145, 'å¼·åŒ– - è‡ªå‹•æ ¼æ“‹');
INSERT INTO `skill_index` VALUES (1607, 9, 146, 'å¼·åŒ– - é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾');
INSERT INTO `skill_index` VALUES (1608, 9, 147, 'å¼·åŒ– - æ†‘ä¾');
INSERT INTO `skill_index` VALUES (1609, 9, 148, 'å¼·åŒ– - æ­»äº¡æŠ—æ‹’');
INSERT INTO `skill_index` VALUES (1610, 9, 149, 'å¼·åŒ– - æš´èµ°');
INSERT INTO `skill_index` VALUES (1611, 9, 150, 'å¼·åŒ– - æ®ºæ„æ³¢å‹•');
INSERT INTO `skill_index` VALUES (1612, 9, 151, 'å¼·åŒ– - æ³¢å‹•åˆ»å°');
INSERT INTO `skill_index` VALUES (1613, 9, 152, 'å¼·åŒ– - çŒ›é¾æ–·ç©ºæ–¬');
INSERT INTO `skill_index` VALUES (1614, 9, 153, 'å¼·åŒ– - éŠ€å…‰è½åˆƒ');
INSERT INTO `skill_index` VALUES (1615, 9, 154, 'å¼·åŒ– - æ‹”åˆ€æ–¬');
INSERT INTO `skill_index` VALUES (1616, 9, 155, 'å¼·åŒ– - æœˆå…‰æ–¬');
INSERT INTO `skill_index` VALUES (1617, 9, 156, 'å¼·åŒ– - é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž');
INSERT INTO `skill_index` VALUES (1618, 9, 157, 'å¼·åŒ– - å´©å±±æ“Š');
INSERT INTO `skill_index` VALUES (1619, 9, 158, 'å¼·åŒ– - å—œé­‚å°é­”æ–¬');
INSERT INTO `skill_index` VALUES (1620, 9, 159, 'å¼·åŒ– - è£‚æ³¢æ–¬');
INSERT INTO `skill_index` VALUES (1621, 9, 160, 'å¼·åŒ– - é¬¼å°ç ');
INSERT INTO `skill_index` VALUES (1622, 9, 161, 'å¼·åŒ– - åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1623, 9, 162, 'å¼·åŒ– - é€£çªåˆº');
INSERT INTO `skill_index` VALUES (1624, 9, 163, 'å¼·åŒ– - æ ¼æª”');
INSERT INTO `skill_index` VALUES (1625, 9, 164, 'å¼·åŒ– - é¬¼ç¥žâ€§å¡è´Š');
INSERT INTO `skill_index` VALUES (1626, 9, 165, 'å¼·åŒ– - å—œé­‚ä¹‹æ‰‹');
INSERT INTO `skill_index` VALUES (1627, 9, 166, 'å¼·åŒ– - æ€’æ°£çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (1628, 9, 167, 'å¼·åŒ– - å´©å±±è£‚åœ°æ–¬');
INSERT INTO `skill_index` VALUES (1629, 9, 168, 'å¼·åŒ– - è¡€æ°£ä¹‹åˆƒ');
INSERT INTO `skill_index` VALUES (1630, 9, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (1631, 9, 170, 'å–æ¶ˆ - å¾Œè·³');
INSERT INTO `skill_index` VALUES (1632, 9, 171, 'å–æ¶ˆ - æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1633, 9, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1634, 9, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1635, 9, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1636, 9, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (1637, 9, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (1638, 9, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1639, 9, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1640, 9, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (1641, 9, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (1642, 9, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (1643, 9, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (1644, 9, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (1645, 9, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (1646, 9, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1647, 9, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (1648, 9, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1649, 9, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (1650, 9, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1651, 9, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (1652, 9, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (1653, 9, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (1654, 9, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (1655, 9, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (1656, 9, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (1657, 9, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1658, 9, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (1659, 9, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (1660, 9, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (1661, 9, 210, 'å¼·åŒ– - æ³¢å‹•çˆ†ç™¼');
INSERT INTO `skill_index` VALUES (1662, 9, 211, 'å¼·åŒ– - é‚ªå…‰æ–¬');
INSERT INTO `skill_index` VALUES (1663, 9, 212, 'å¼·åŒ– - çˆ†ç‚Žæ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (1664, 9, 213, 'å¼·åŒ– - ç„¡é›™æ³¢');
INSERT INTO `skill_index` VALUES (1665, 9, 214, 'å¼·åŒ– - ä¸å‹•æ˜ŽçŽ‹é™£');
INSERT INTO `skill_index` VALUES (1666, 9, 215, 'å¼·åŒ– - ä¸ŠæŒ‘');
INSERT INTO `skill_index` VALUES (1667, 9, 216, 'å†°åˆƒ Â· æ³¢å‹•åŠ');
INSERT INTO `skill_index` VALUES (1668, 9, 217, 'å¼·åŒ– - å¹»å½±åŠèˆž');
INSERT INTO `skill_index` VALUES (1669, 9, 218, 'å¼·åŒ– - ç ´è»å‡é¾æ“Š');
INSERT INTO `skill_index` VALUES (1670, 9, 219, 'å¼·åŒ– - æµå¿ƒï¼šåˆº');
INSERT INTO `skill_index` VALUES (1671, 9, 220, 'å¼·åŒ– - æµå¿ƒï¼šèº');
INSERT INTO `skill_index` VALUES (1672, 9, 221, 'å¼·åŒ– - æµå¿ƒï¼šå‡');
INSERT INTO `skill_index` VALUES (1673, 9, 224, 'å¼·åŒ– - é¬¼ç¥žâ€§å†°éœœè–©äºž');
INSERT INTO `skill_index` VALUES (1674, 9, 225, 'å¼·åŒ– - æ­»äº¡å¢“ç¢‘');
INSERT INTO `skill_index` VALUES (1675, 9, 226, 'å¼·åŒ– - é¬¼å½±é–ƒ');
INSERT INTO `skill_index` VALUES (1676, 9, 227, 'å¼·åŒ– - é¬¼ç¥žâ€§å†¥ç‚Žé¬¼ç¥ž');
INSERT INTO `skill_index` VALUES (1677, 9, 228, 'å¼·åŒ– - é¬¼å°ç ');
INSERT INTO `skill_index` VALUES (1678, 10, 91, 'æŽƒæŠŠæŽŒæ¡');
INSERT INTO `skill_index` VALUES (1679, 10, 131, 'é˜²ç«ç‰†');
INSERT INTO `skill_index` VALUES (1680, 10, 132, 'ç«ç„°æš´é¢¨');
INSERT INTO `skill_index` VALUES (1681, 10, 133, 'éš•çŸ³è½ä¸‹');
INSERT INTO `skill_index` VALUES (1682, 10, 134, 'å†°ä¹‹çŸ³');
INSERT INTO `skill_index` VALUES (1683, 10, 135, 'å†°ä¹‹ç›¾');
INSERT INTO `skill_index` VALUES (1684, 10, 136, 'å†°æ¿');
INSERT INTO `skill_index` VALUES (1685, 10, 137, 'ä¸Ÿæ“²');
INSERT INTO `skill_index` VALUES (1686, 10, 138, 'æ¨¹æž—ç±¬ç¬†');
INSERT INTO `skill_index` VALUES (1687, 10, 169, 'å¾Œè·³');
INSERT INTO `skill_index` VALUES (1688, 10, 170, 'å–æ¶ˆ - å¾Œè·³');
INSERT INTO `skill_index` VALUES (1689, 10, 171, 'å–æ¶ˆ - æŠ•æ“²');
INSERT INTO `skill_index` VALUES (1690, 10, 172, 'è¼•ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1691, 10, 173, 'é‡ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1692, 10, 174, 'åŸºç¤Žç²¾é€š');
INSERT INTO `skill_index` VALUES (1693, 10, 175, 'èºç¿”');
INSERT INTO `skill_index` VALUES (1694, 10, 176, 'é å¤è¨˜æ†¶');
INSERT INTO `skill_index` VALUES (1695, 10, 177, 'æŠ•æ“²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1696, 10, 178, 'ç‰©ç†èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1697, 10, 179, 'ç‰©å“åˆ†è§£');
INSERT INTO `skill_index` VALUES (1698, 10, 180, 'ä¸å±ˆæ„å¿—');
INSERT INTO `skill_index` VALUES (1699, 10, 181, 'ç²¾å·¥');
INSERT INTO `skill_index` VALUES (1700, 10, 182, 'ç´¡ç¹”');
INSERT INTO `skill_index` VALUES (1701, 10, 183, 'æ©Ÿæ¢°');
INSERT INTO `skill_index` VALUES (1702, 10, 184, 'ç…‰é‡‘');
INSERT INTO `skill_index` VALUES (1703, 10, 185, 'çš®ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1704, 10, 186, 'ç‰©ç†æš´æ“Š');
INSERT INTO `skill_index` VALUES (1705, 10, 187, 'å¸ƒç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1706, 10, 188, 'é­”æ³•æš´æ“Š');
INSERT INTO `skill_index` VALUES (1707, 10, 189, 'é­”æ³•èƒŒæ“Š');
INSERT INTO `skill_index` VALUES (1708, 10, 190, 'å—èº«è¹²ä¼');
INSERT INTO `skill_index` VALUES (1709, 10, 191, 'é­”æ³•è³¦äºˆ');
INSERT INTO `skill_index` VALUES (1710, 10, 192, 'è£½ä½œå¬å–šäººå¶');
INSERT INTO `skill_index` VALUES (1711, 10, 193, 'éŠé‡‘è¡“');
INSERT INTO `skill_index` VALUES (1712, 10, 194, 'é–‹å•Ÿåˆ†è§£å•†åº—');
INSERT INTO `skill_index` VALUES (1713, 10, 195, 'ç”Ÿå‘½ä¹‹æº');
INSERT INTO `skill_index` VALUES (1714, 10, 196, 'æ¿ç”²ç²¾é€š');
INSERT INTO `skill_index` VALUES (1715, 10, 197, 'æ”»æ“Šé¡žåž‹è½‰æ›');
INSERT INTO `skill_index` VALUES (1716, 10, 200, 'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§');
INSERT INTO `skill_index` VALUES (1717, 10, 201, 'æ¥µé€Ÿæˆé•·');
INSERT INTO `skill_index` VALUES (1718, 10, 248, 'é¢¨ä¹‹å™¬');
INSERT INTO `skill_index` VALUES (1719, 10, 249, 'é¢¨ä¹‹æš´é¢¨');
INSERT INTO `skill_index` VALUES (1720, 10, 250, 'ç«ç„°');
INSERT INTO `skill_index` VALUES (1721, 10, 251, 'å†·æ°£');
INSERT INTO `skill_index` VALUES (1722, 10, 252, 'å¦¨ç¤™');
INSERT INTO `skill_index` VALUES (1723, 10, 253, 'å®ˆè­·');
INSERT INTO `skill_index` VALUES (1724, 10, 254, 'é¢¨');
COMMIT;

-- ----------------------------
-- Table structure for skill_lethe
-- ----------------------------
DROP TABLE IF EXISTS `skill_lethe`;
CREATE TABLE `skill_lethe` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `skill_slot` blob NOT NULL,
  `flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`charac_no`),
  KEY `indx` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_lethe
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `charac_no` int(11) NOT NULL default '0',
  `store` blob NOT NULL,
  `use_doll` tinyint(1) default '0',
  PRIMARY KEY  (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tmp_charac
-- ----------------------------
DROP TABLE IF EXISTS `tmp_charac`;
CREATE TABLE `tmp_charac` (
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_charac
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_items
-- ----------------------------
DROP TABLE IF EXISTS `user_items`;
CREATE TABLE `user_items` (
  `ui_id` int(11) NOT NULL auto_increment,
  `charac_no` int(11) NOT NULL default '0',
  `slot` int(11) NOT NULL default '0',
  `it_id` int(11) NOT NULL default '0',
  `expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `obtain_from` tinyint(4) default NULL,
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL default '',
  `ability_no` tinyint(4) NOT NULL default '0',
  `stat` tinyint(3) unsigned NOT NULL default '0',
  `clear_avatar_id` int(11) NOT NULL default '0',
  `jewel_socket` blob NOT NULL,
  `item_lock_key` tinyint(3) unsigned NOT NULL default '0',
  `to_ipg_agency_no` varchar(32) NOT NULL default '',
  `m_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `hidden_option` smallint(5) unsigned NOT NULL default '0',
  `emblem_endurance` smallint(5) unsigned NOT NULL default '0',
  `color1` int(11) default '0',
  `color2` int(11) default '0',
  `trade_restrict` int(11) default '0',
  PRIMARY KEY  (`ui_id`),
  KEY `idxm_id` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_items
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_items_20130502
-- ----------------------------
DROP TABLE IF EXISTS `user_items_20130502`;
CREATE TABLE `user_items_20130502` (
  `ui_id` int(11) NOT NULL auto_increment,
  `charac_no` int(11) NOT NULL default '0',
  `slot` int(11) NOT NULL default '0',
  `it_id` int(11) NOT NULL default '0',
  `expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `obtain_from` tinyint(4) default NULL,
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL default '',
  `ability_no` tinyint(4) NOT NULL default '0',
  `stat` tinyint(3) unsigned NOT NULL default '0',
  `clear_avatar_id` int(11) NOT NULL default '0',
  `jewel_socket` blob NOT NULL,
  `item_lock_key` tinyint(3) unsigned NOT NULL default '0',
  `to_ipg_agency_no` varchar(32) NOT NULL default '',
  `m_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `hidden_option` smallint(5) unsigned NOT NULL default '0',
  `emblem_endurance` smallint(5) unsigned NOT NULL default '0',
  `color1` int(11) default '0',
  `color2` int(11) default '0',
  `trade_restrict` int(11) default '0',
  PRIMARY KEY  (`ui_id`),
  KEY `idxm_id` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_items_20130502
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_items_del
-- ----------------------------
DROP TABLE IF EXISTS `user_items_del`;
CREATE TABLE `user_items_del` (
  `sdate` date NOT NULL default '2021-11-19',
  `ui_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `slot` int(11) NOT NULL default '0',
  `it_id` int(11) NOT NULL default '0',
  `expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `obtain_from` tinyint(4) default NULL,
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL default '',
  `ability_no` tinyint(4) NOT NULL default '0',
  `stat` tinyint(3) unsigned NOT NULL default '0',
  `clear_avatar_id` int(11) NOT NULL default '0',
  `jewel_socket` varbinary(30) NOT NULL default '',
  `item_lock_key` tinyint(4) NOT NULL default '0',
  `to_ipg_agency_no` varchar(32) NOT NULL default '',
  `m_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `hidden_option` smallint(5) unsigned NOT NULL default '0',
  `emblem_endurance` smallint(5) unsigned NOT NULL default '0',
  `color1` smallint(5) unsigned NOT NULL default '0',
  `color2` smallint(5) unsigned NOT NULL default '0',
  `trade_restrict` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`sdate`,`ui_id`),
  KEY `idxm_id` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_items_del
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_items_history
-- ----------------------------
DROP TABLE IF EXISTS `user_items_history`;
CREATE TABLE `user_items_history` (
  `ui_id` int(11) NOT NULL auto_increment,
  `charac_no` int(11) NOT NULL default '0',
  `slot` int(11) NOT NULL default '0',
  `it_id` int(11) NOT NULL default '0',
  `expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `obtain_from` tinyint(4) default NULL,
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL default '',
  `ability_no` tinyint(4) NOT NULL default '0',
  `stat` tinyint(3) unsigned NOT NULL default '0',
  `clear_avatar_id` int(11) NOT NULL default '0',
  `jewel_socket` blob NOT NULL,
  `item_lock_key` tinyint(3) unsigned NOT NULL default '0',
  `to_ipg_agency_no` varchar(32) NOT NULL default '',
  `m_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `hidden_option` smallint(5) unsigned NOT NULL default '0',
  `emblem_endurance` smallint(5) unsigned NOT NULL default '0',
  `color1` int(11) default '0',
  `color2` int(11) default '0',
  `trade_restrict` int(11) default '0',
  PRIMARY KEY  (`ui_id`),
  KEY `idxm_id` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_items_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_items_work
-- ----------------------------
DROP TABLE IF EXISTS `user_items_work`;
CREATE TABLE `user_items_work` (
  `ui_id` int(11) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `slot` int(11) NOT NULL default '0',
  `it_id` int(11) NOT NULL default '0',
  `expire_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `obtain_from` tinyint(4) default NULL,
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL default '',
  `ability_no` tinyint(4) NOT NULL default '0',
  `stat` tinyint(3) unsigned NOT NULL default '0',
  `clear_avatar_id` int(11) NOT NULL default '0',
  `jewel_socket` blob NOT NULL,
  `item_lock_key` tinyint(3) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_items_work
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for village_attack_dungeon
-- ----------------------------
DROP TABLE IF EXISTS `village_attack_dungeon`;
CREATE TABLE `village_attack_dungeon` (
  `occ_date` date NOT NULL default '2021-11-19',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `attack_count` tinyint(3) unsigned NOT NULL default '0',
  `revenge_dungeon` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`occ_date`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of village_attack_dungeon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for village_ticket
-- ----------------------------
DROP TABLE IF EXISTS `village_ticket`;
CREATE TABLE `village_ticket` (
  `charac_no` int(10) unsigned NOT NULL default '0',
  `village` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`charac_no`,`village`),
  KEY `idx_village_charac` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of village_ticket
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
