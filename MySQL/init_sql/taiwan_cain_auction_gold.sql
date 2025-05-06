/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_cain_auction_gold

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:38:06
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
INSERT INTO `auction_average_price` VALUES (1090, 0, 5000000, 0);
INSERT INTO `auction_average_price` VALUES (3027, 0, 2000, 0);
INSERT INTO `auction_average_price` VALUES (3033, 0, 999, 0);
INSERT INTO `auction_average_price` VALUES (3034, 0, 1300, 0);
INSERT INTO `auction_average_price` VALUES (3035, 0, 1300, 0);
INSERT INTO `auction_average_price` VALUES (3036, 0, 999, 0);
INSERT INTO `auction_average_price` VALUES (3037, 0, 233, 0);
INSERT INTO `auction_average_price` VALUES (3108, 0, 3593, 0);
INSERT INTO `auction_average_price` VALUES (3109, 0, 4444, 0);
INSERT INTO `auction_average_price` VALUES (3112, 0, 5555, 0);
INSERT INTO `auction_average_price` VALUES (3113, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3114, 0, 5312, 0);
INSERT INTO `auction_average_price` VALUES (3115, 0, 5000, 0);
INSERT INTO `auction_average_price` VALUES (3116, 0, 2000, 0);
INSERT INTO `auction_average_price` VALUES (3151, 0, 4000, 0);
INSERT INTO `auction_average_price` VALUES (3170, 0, 1500, 0);
INSERT INTO `auction_average_price` VALUES (3187, 0, 122222, 0);
INSERT INTO `auction_average_price` VALUES (3203, 0, 6666, 0);
INSERT INTO `auction_average_price` VALUES (3205, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3210, 0, 50000, 0);
INSERT INTO `auction_average_price` VALUES (3211, 0, 2510, 0);
INSERT INTO `auction_average_price` VALUES (3212, 0, 6666, 0);
INSERT INTO `auction_average_price` VALUES (3217, 0, 5555, 0);
INSERT INTO `auction_average_price` VALUES (3218, 0, 2333, 0);
INSERT INTO `auction_average_price` VALUES (3227, 0, 23000000, 0);
INSERT INTO `auction_average_price` VALUES (3230, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3249, 0, 6666, 0);
INSERT INTO `auction_average_price` VALUES (3266, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3269, 0, 2000, 0);
INSERT INTO `auction_average_price` VALUES (3270, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3271, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3272, 0, 2000, 0);
INSERT INTO `auction_average_price` VALUES (3273, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3274, 0, 5000, 0);
INSERT INTO `auction_average_price` VALUES (3275, 0, 5000, 0);
INSERT INTO `auction_average_price` VALUES (3276, 0, 2000, 0);
INSERT INTO `auction_average_price` VALUES (3278, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3279, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3294, 0, 9999, 0);
INSERT INTO `auction_average_price` VALUES (3295, 0, 23333, 0);
INSERT INTO `auction_average_price` VALUES (3298, 0, 22222, 0);
INSERT INTO `auction_average_price` VALUES (3299, 0, 25000, 0);
INSERT INTO `auction_average_price` VALUES (3308, 0, 8888, 0);
INSERT INTO `auction_average_price` VALUES (3309, 0, 2000, 0);
INSERT INTO `auction_average_price` VALUES (3310, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (3331, 0, 3000000, 0);
INSERT INTO `auction_average_price` VALUES (3614, 0, 13000000, 0);
INSERT INTO `auction_average_price` VALUES (3619, 0, 2000000, 0);
INSERT INTO `auction_average_price` VALUES (3620, 0, 25000000, 0);
INSERT INTO `auction_average_price` VALUES (3621, 0, 2000000, 0);
INSERT INTO `auction_average_price` VALUES (3624, 0, 2000000, 0);
INSERT INTO `auction_average_price` VALUES (3625, 0, 25000000, 0);
INSERT INTO `auction_average_price` VALUES (3626, 0, 2187500, 0);
INSERT INTO `auction_average_price` VALUES (3627, 0, 13000000, 0);
INSERT INTO `auction_average_price` VALUES (3629, 0, 4000000, 0);
INSERT INTO `auction_average_price` VALUES (3663, 0, 13000000, 0);
INSERT INTO `auction_average_price` VALUES (4084, 0, 50000, 0);
INSERT INTO `auction_average_price` VALUES (10082, 0, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (10164, 0, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (10165, 0, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (10489, 6, 500000, 0);
INSERT INTO `auction_average_price` VALUES (11328, 0, 30000000, 0);
INSERT INTO `auction_average_price` VALUES (11329, 0, 200000000, 0);
INSERT INTO `auction_average_price` VALUES (13328, 0, 200000000, 0);
INSERT INTO `auction_average_price` VALUES (14146, 2, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (15315, 0, 1000000, 0);
INSERT INTO `auction_average_price` VALUES (15318, 0, 200000000, 0);
INSERT INTO `auction_average_price` VALUES (16405, 0, 700000, 0);
INSERT INTO `auction_average_price` VALUES (17310, 4, 1000000, 0);
INSERT INTO `auction_average_price` VALUES (17313, 0, 20000000, 0);
INSERT INTO `auction_average_price` VALUES (17313, 4, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (17313, 5, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (18146, 0, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (19310, 0, 10000, 0);
INSERT INTO `auction_average_price` VALUES (19320, 0, 200000000, 0);
INSERT INTO `auction_average_price` VALUES (22092, 0, 1500000, 0);
INSERT INTO `auction_average_price` VALUES (22142, 0, 100000, 0);
INSERT INTO `auction_average_price` VALUES (26243, 0, 21000000, 0);
INSERT INTO `auction_average_price` VALUES (26244, 0, 20000000, 0);
INSERT INTO `auction_average_price` VALUES (26807, 0, 1000000, 0);
INSERT INTO `auction_average_price` VALUES (27129, 0, 50000000, 0);
INSERT INTO `auction_average_price` VALUES (27600, 0, 22222, 0);
INSERT INTO `auction_average_price` VALUES (27602, 0, 22222, 0);
INSERT INTO `auction_average_price` VALUES (27671, 0, 10000, 0);
INSERT INTO `auction_average_price` VALUES (27675, 0, 99999999, 0);
INSERT INTO `auction_average_price` VALUES (27967, 0, 1999999, 0);
INSERT INTO `auction_average_price` VALUES (31367, 0, 12000, 0);
INSERT INTO `auction_average_price` VALUES (63013, 0, 100000, 0);
INSERT INTO `auction_average_price` VALUES (63014, 0, 100000, 0);
INSERT INTO `auction_average_price` VALUES (63069, 0, 968750, 0);
INSERT INTO `auction_average_price` VALUES (63117, 0, 50000, 0);
INSERT INTO `auction_average_price` VALUES (440045, 0, 500000, 0);
INSERT INTO `auction_average_price` VALUES (450010, 0, 2222222, 0);
INSERT INTO `auction_average_price` VALUES (2600014, 0, 5000, 0);
INSERT INTO `auction_average_price` VALUES (2600018, 0, 10000, 0);
INSERT INTO `auction_average_price` VALUES (2600021, 0, 15000, 0);
INSERT INTO `auction_average_price` VALUES (2600026, 0, 206250, 0);
INSERT INTO `auction_average_price` VALUES (2600068, 0, 100000, 0);
INSERT INTO `auction_average_price` VALUES (2600075, 0, 50000, 0);
INSERT INTO `auction_average_price` VALUES (2600081, 0, 100000, 0);
INSERT INTO `auction_average_price` VALUES (2675336, 0, 1000, 0);
INSERT INTO `auction_average_price` VALUES (2675345, 0, 500, 0);
INSERT INTO `auction_average_price` VALUES (2675347, 0, 50, 0);
INSERT INTO `auction_average_price` VALUES (600330007, 0, 11025000, 0);
INSERT INTO `auction_average_price` VALUES (600330008, 0, 10000000, 0);
INSERT INTO `auction_average_price` VALUES (600330010, 0, 49999999, 0);
INSERT INTO `auction_average_price` VALUES (600330012, 0, 50000000, 0);
INSERT INTO `auction_average_price` VALUES (690000280, 0, 100, 0);
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
  KEY `idx_auction_id` USING BTREE (`auction_id`),
  KEY `idx_buyer_id` USING BTREE (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history_buyer_201604
-- ----------------------------
BEGIN;
INSERT INTO `auction_history_buyer_201604` VALUES (9, '2016-04-17 23:34:10', -1, 1, -1, 22222, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (14, '2016-04-18 21:59:05', -1, 37, 0, 4444, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (20, '2016-04-19 00:15:02', -1, 28, -1, 3000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (34, '2016-04-19 04:27:38', -1, 1, -1, 22222, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (13, '2016-04-19 11:26:38', -1, 5, 0, 49995, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (12, '2016-04-19 11:27:09', -1, 5, 0, 35000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (12, '2016-04-19 14:52:15', -1, 23, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (40, '2016-04-19 15:13:22', -1, 37, 0, 35000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (41, '2016-04-19 15:13:27', -1, 37, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (18, '2016-04-19 16:06:37', -1, 28, 0, 53328, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (46, '2016-04-19 16:19:55', -1, 24, -1, 21000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (47, '2016-04-19 17:17:18', -1, 28, 6666, 7665, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (40, '2016-04-19 19:04:03', -1, 27, 0, 35000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (49, '2016-04-19 21:05:50', -1, 48, 0, 72215, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (40, '2016-04-19 21:06:59', -1, 48, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (41, '2016-04-20 10:37:12', -1, 23, 0, 90000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (56, '2016-04-20 12:03:12', -1, 23, 0, 66660, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (57, '2016-04-20 18:47:59', -1, 57, 0, 27000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (59, '2016-04-20 21:39:22', -1, 7, 0, 90000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (61, '2016-04-20 21:40:34', -1, 7, 0, 231000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (59, '2016-04-20 22:01:45', -1, 5, 0, 50000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (61, '2016-04-20 22:15:33', -1, 16, 0, 87500, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (59, '2016-04-20 22:16:14', -1, 16, 0, 160000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (77, '2016-04-20 23:21:18', -1, 55, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (77, '2016-04-21 08:55:21', -1, 52, 0, 185000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (60, '2016-04-21 09:21:56', -1, 7, 0, 132000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (77, '2016-04-21 09:23:41', -1, 41, 0, 65000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (71, '2016-04-21 09:23:54', -1, 41, 0, 83325, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (79, '2016-04-21 09:24:01', -1, 41, 0, 13332, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (63, '2016-04-21 09:24:07', -1, 41, 0, 53655, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (65, '2016-04-21 09:24:43', -1, 41, 0, 191306, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (78, '2016-04-21 10:09:29', -1, 41, 0, 125000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (113, '2016-04-21 14:00:58', -1, 41, 0, 75000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (111, '2016-04-21 14:08:19', -1, 41, 0, 5040, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (66, '2016-04-21 14:08:28', -1, 41, 0, 77770, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (123, '2016-04-21 20:59:10', -1, 86, -1, 12000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (113, '2016-04-21 21:18:00', -1, 6, 0, 100000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (122, '2016-04-21 23:52:02', -1, 37, 0, 25550, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (122, '2016-04-21 23:52:56', -1, 37, 0, 114975, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (144, '2016-04-22 12:50:19', -1, 85, 0, 80000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (152, '2016-04-22 20:28:56', -1, 102, 0, 3000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (153, '2016-04-22 20:29:13', -1, 102, 0, 3000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (154, '2016-04-22 20:29:22', -1, 102, 0, 3000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (155, '2016-04-22 20:29:30', -1, 102, 0, 3000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (156, '2016-04-22 20:29:39', -1, 102, 0, 3000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (157, '2016-04-22 20:29:47', -1, 102, 0, 3000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (141, '2016-04-22 22:22:40', -1, 109, -1, 50000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (158, '2016-04-22 22:45:09', -1, 28, 0, 86658, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (150, '2016-04-22 22:46:53', -1, 56, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (143, '2016-04-22 23:06:34', -1, 48, 0, 20000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (165, '2016-04-22 23:10:57', -1, 86, -1, 50000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (162, '2016-04-22 23:31:32', -1, 41, 0, 145000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (139, '2016-04-22 23:46:31', -1, 41, 0, 90000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (136, '2016-04-22 23:46:34', -1, 41, 0, 225000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (161, '2016-04-22 23:46:40', -1, 41, 0, 150000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (168, '2016-04-23 11:23:45', -1, 48, 0, 5555, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (143, '2016-04-23 11:29:34', -1, 64, 0, 40000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (168, '2016-04-23 11:31:51', -1, 64, 0, 55550, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (150, '2016-04-23 11:37:42', -1, 64, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (159, '2016-04-23 11:37:49', -1, 64, 0, 60000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (172, '2016-04-23 12:08:46', -1, 41, 0, 99990, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (173, '2016-04-23 14:08:40', -1, 69, 0, 23000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (174, '2016-04-23 14:09:57', -1, 70, 0, 23000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (185, '2016-04-23 19:08:11', -1, 55, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (185, '2016-04-23 21:34:38', -1, 48, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (188, '2016-04-23 22:09:35', -1, 16, 0, 77000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (182, '2016-04-24 00:23:20', -1, 86, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (197, '2016-04-24 01:50:58', -1, 28, 0, 79992, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (239, '2016-04-24 10:25:26', -1, 55, -1, 1000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (240, '2016-04-24 10:33:40', -1, 124, -1, 1000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (228, '2016-04-24 10:33:50', -1, 41, 0, 1550000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (230, '2016-04-24 10:33:54', -1, 41, 0, 300000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (225, '2016-04-24 10:42:41', -1, 41, 0, 70000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (220, '2016-04-24 13:44:21', -1, 86, 0, 15000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (180, '2016-04-24 14:28:15', -1, 42, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (200, '2016-04-24 14:30:27', -1, 42, 0, 124000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (197, '2016-04-24 14:33:30', -1, 42, 0, 26664, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (199, '2016-04-24 14:34:42', -1, 42, 0, 72215, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (220, '2016-04-24 14:38:54', -1, 42, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (182, '2016-04-24 14:43:23', -1, 42, 0, 95000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (179, '2016-04-24 14:43:27', -1, 42, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (219, '2016-04-24 14:50:18', -1, 86, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (219, '2016-04-24 14:50:27', -1, 42, 0, 15000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (192, '2016-04-24 14:52:04', -1, 86, 0, 32000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (238, '2016-04-24 14:56:41', -1, 42, -1, 1000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (260, '2016-04-24 15:28:43', -1, 42, 0, 11110, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (261, '2016-04-24 16:20:11', -1, 55, 0, 70000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (204, '2016-04-24 16:20:20', -1, 55, 0, 4666, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (226, '2016-04-24 16:33:27', -1, 42, 0, 45000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (218, '2016-04-24 16:33:40', -1, 42, 0, 70000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (268, '2016-04-24 16:38:40', -1, 55, 0, 16000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (201, '2016-04-24 16:38:51', -1, 55, 0, 93324, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (278, '2016-04-24 17:50:52', -1, 96, 0, 360000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (265, '2016-04-24 17:52:12', -1, 96, 0, 3000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (219, '2016-04-24 18:06:02', -1, 96, 0, 120000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (279, '2016-04-24 18:11:19', -1, 69, 0, 5000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (280, '2016-04-24 18:13:41', -1, 70, 0, 5000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (277, '2016-04-24 18:56:30', -1, 42, 0, 119000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (274, '2016-04-24 20:11:34', -1, 64, 0, 73326, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (263, '2016-04-24 21:32:23', -1, 41, 0, 500000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (294, '2016-04-24 23:33:50', -1, 28, 0, 399996, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (285, '2016-04-25 00:43:14', -1, 18, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (307, '2016-04-25 10:23:36', -1, 69, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (308, '2016-04-25 10:25:01', -1, 70, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (303, '2016-04-25 11:42:52', -1, 56, 0, 4000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (258, '2016-04-25 12:00:34', -1, 64, 0, 30000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (259, '2016-04-25 12:04:19', -1, 64, 0, 19998, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (310, '2016-04-25 12:42:56', -1, 56, 0, 35000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (277, '2016-04-25 14:19:22', -1, 26, 0, 140000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (327, '2016-04-25 16:04:33', -1, 42, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (319, '2016-04-25 16:09:39', -1, 42, 0, 120000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (328, '2016-04-25 16:10:23', -1, 42, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (310, '2016-04-25 18:45:20', -1, 96, 0, 150000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (313, '2016-04-25 20:39:49', -1, 31, 0, 25820, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (347, '2016-04-25 21:29:47', -1, 6, 0, 4000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (340, '2016-04-25 22:43:08', -1, 28, 0, 750000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (337, '2016-04-25 22:47:12', -1, 40, 0, 175000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (302, '2016-04-25 22:59:59', -1, 55, 0, 6000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (317, '2016-04-26 00:16:18', -1, 40, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (309, '2016-04-26 00:20:57', -1, 40, 0, 60000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (366, '2016-04-26 08:28:01', -1, 69, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (367, '2016-04-26 08:29:34', -1, 70, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (311, '2016-04-26 10:06:01', -1, 64, 0, 6666, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (342, '2016-04-26 10:15:01', -1, 42, 0, 1300000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (343, '2016-04-26 10:15:05', -1, 42, 0, 1300000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (359, '2016-04-26 10:21:24', -1, 42, -1, 1500000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (356, '2016-04-26 10:24:51', -1, 18, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (325, '2016-04-26 11:33:41', -1, 41, 0, 33330, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (326, '2016-04-26 14:04:24', -1, 34, 0, 116500, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (329, '2016-04-26 14:04:28', -1, 34, 0, 116500, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (324, '2016-04-26 14:13:41', -1, 26, 0, 9332, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (340, '2016-04-26 15:02:44', -1, 28, 0, 375000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (338, '2016-04-26 15:02:57', -1, 28, 0, 399960, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (339, '2016-04-26 15:03:09', -1, 28, 0, 349995, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (401, '2016-04-26 21:01:09', -1, 6, 0, 42000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (365, '2016-04-26 22:51:29', -1, 56, -1, 21000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (415, '2016-04-27 12:45:57', -1, 72, 0, 196000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (421, '2016-04-27 15:50:03', -1, 51, 0, 150000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (420, '2016-04-27 15:55:41', -1, 51, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (420, '2016-04-27 15:57:21', -1, 51, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (408, '2016-04-27 16:09:19', -1, 51, 0, 116500, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (409, '2016-04-27 17:56:49', -1, 121, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (434, '2016-04-27 19:56:34', -1, 16, 0, 100000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (408, '2016-04-27 20:21:35', -1, 34, 0, 349500, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (415, '2016-04-27 20:32:58', -1, 98, 0, 91000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (421, '2016-04-27 20:33:01', -1, 98, 0, 55000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (441, '2016-04-27 23:11:16', -1, 86, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (442, '2016-04-27 23:11:22', -1, 86, 0, 233000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (442, '2016-04-27 23:12:15', -1, 86, 0, 233000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (423, '2016-04-27 23:27:29', -1, 31, 0, 39661, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (420, '2016-04-27 23:48:14', -1, 40, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (456, '2016-04-28 00:33:30', -1, 55, 0, 11000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (454, '2016-04-28 00:33:44', -1, 55, 0, 4000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (477, '2016-04-28 05:27:18', -1, 165, -1, 700000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (422, '2016-04-28 08:33:59', -1, 72, 0, 15492, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (479, '2016-04-28 11:05:31', -1, 69, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (480, '2016-04-28 11:07:16', -1, 70, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (472, '2016-04-28 14:59:29', -1, 42, 0, 1000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (492, '2016-04-28 15:46:35', -1, 51, 0, 9000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (485, '2016-04-28 16:03:58', -1, 51, 0, 25820, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (471, '2016-04-28 16:46:45', -1, 42, 0, 17000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (466, '2016-04-28 17:23:35', -1, 42, 0, 9000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (476, '2016-04-28 18:38:29', -1, 156, 0, 30000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (478, '2016-04-28 19:08:58', -1, 86, -1, 1400000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (458, '2016-04-28 19:54:53', -1, 64, 0, 6000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (464, '2016-04-28 19:55:46', -1, 64, 0, 3000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (473, '2016-04-28 22:00:50', -1, 96, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (495, '2016-04-28 22:02:37', -1, 96, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (496, '2016-04-28 22:04:48', -1, 96, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (503, '2016-04-28 22:05:52', -1, 96, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (504, '2016-04-28 22:07:10', -1, 96, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (472, '2016-04-28 22:16:12', -1, 86, 0, 1000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (474, '2016-04-28 22:28:25', -1, 56, 0, 1000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (505, '2016-04-28 23:12:17', -1, 18, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (511, '2016-04-29 10:09:06', -1, 134, 0, 130000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (511, '2016-04-29 10:09:54', -1, 134, 0, 130000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (510, '2016-04-29 14:25:01', -1, 69, 0, 99900, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (512, '2016-04-29 14:25:05', -1, 69, 0, 99900, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (511, '2016-04-29 14:25:09', -1, 69, 0, 130000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (511, '2016-04-29 15:55:07', -1, 128, 0, 9100, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (511, '2016-04-29 15:56:20', -1, 128, 0, 130000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (525, '2016-04-29 16:44:49', -1, 69, 0, 5000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (526, '2016-04-29 16:46:24', -1, 70, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (522, '2016-04-29 16:47:33', -1, 186, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (523, '2016-04-29 16:48:39', -1, 188, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (524, '2016-04-29 16:49:58', -1, 189, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (509, '2016-04-29 16:58:11', -1, 6, 0, 1250000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (536, '2016-04-29 17:59:00', -1, 51, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (506, '2016-04-29 19:42:37', -1, 110, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (521, '2016-04-29 20:51:07', -1, 172, 0, 25820, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (508, '2016-04-29 21:44:01', -1, 181, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (527, '2016-04-29 23:22:48', -1, 6, 0, 500000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (527, '2016-04-29 23:23:56', -1, 6, 0, 2500000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (547, '2016-04-29 23:40:44', -1, 151, 0, 20000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (547, '2016-04-29 23:40:59', -1, 18, 0, 40000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (547, '2016-04-29 23:41:35', -1, 181, 0, 4000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (534, '2016-04-30 01:31:16', -1, 51, 0, 55550, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (535, '2016-04-30 01:31:28', -1, 51, 0, 23330, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (548, '2016-04-30 02:05:49', -1, 51, 0, 698301, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (549, '2016-04-30 02:06:16', -1, 51, 0, 949050, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (521, '2016-04-30 06:49:57', -1, 174, 0, 25820, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (544, '2016-04-30 10:29:29', -1, 64, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (548, '2016-04-30 10:35:56', -1, 161, 0, 300699, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (547, '2016-04-30 10:37:32', -1, 161, 0, 136000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (521, '2016-04-30 10:45:03', -1, 110, 0, 25820, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (549, '2016-04-30 10:52:21', -1, 64, 0, 49950, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (528, '2016-04-30 10:53:22', -1, 64, 0, 215800, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (528, '2016-04-30 10:54:51', -1, 64, 0, 390000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (528, '2016-04-30 10:56:26', -1, 64, 0, 694200, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (569, '2016-04-30 11:10:38', -1, 110, 0, 177776, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (572, '2016-04-30 11:28:06', -1, 185, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (550, '2016-04-30 11:56:34', -1, 161, 0, 99900, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (551, '2016-04-30 11:56:38', -1, 161, 0, 99900, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (573, '2016-04-30 11:56:45', -1, 161, 0, 111100, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (575, '2016-04-30 11:57:12', -1, 161, 0, 111100, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (577, '2016-04-30 12:05:20', -1, 11, 0, 6400, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (551, '2016-04-30 13:31:30', -1, 156, 0, 96903, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (536, '2016-04-30 15:32:17', -1, 97, 0, 85000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (570, '2016-04-30 15:40:52', -1, 51, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (540, '2016-04-30 15:40:56', -1, 51, 0, 3000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (535, '2016-04-30 17:10:53', -1, 172, 0, 53659, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (542, '2016-04-30 18:49:21', -1, 28, -1, 2222222, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (623, '2016-04-30 19:07:55', -1, 109, 0, 100000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (572, '2016-04-30 19:19:13', -1, 167, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (562, '2016-04-30 19:44:59', -1, 195, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (572, '2016-04-30 19:46:18', -1, 125, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (602, '2016-04-30 19:47:06', -1, 125, 0, 4000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (555, '2016-04-30 19:48:40', -1, 167, 0, 95000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (602, '2016-04-30 20:11:10', -1, 54, 0, 36000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (566, '2016-04-30 20:11:24', -1, 54, 0, 6000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (572, '2016-04-30 20:11:59', -1, 54, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (579, '2016-04-30 20:45:34', -1, 16, 0, 50000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (607, '2016-04-30 21:01:07', -1, 34, 0, 6000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (617, '2016-04-30 21:01:25', -1, 34, 0, 18000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (619, '2016-04-30 21:01:36', -1, 34, 0, 38000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (621, '2016-04-30 21:01:41', -1, 34, 0, 36000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (590, '2016-04-30 21:02:22', -1, 34, 0, 270000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (566, '2016-04-30 21:35:39', -1, 195, 0, 4000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (628, '2016-04-30 21:36:10', -1, 195, 0, 135000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (572, '2016-04-30 21:46:29', -1, 195, 0, 1000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (575, '2016-04-30 21:52:15', -1, 23, 0, 999900, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (572, '2016-04-30 21:52:41', -1, 128, 0, 51000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (632, '2016-04-30 21:52:55', -1, 195, 0, 50000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (573, '2016-04-30 21:53:08', -1, 23, 0, 999900, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (631, '2016-04-30 21:53:32', -1, 195, 0, 35000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (632, '2016-04-30 21:54:29', -1, 195, 0, 30000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (633, '2016-04-30 21:54:44', -1, 54, 0, 195000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (631, '2016-04-30 21:54:47', -1, 54, 0, 105000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (574, '2016-04-30 22:00:55', -1, 147, 0, 1111000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (641, '2016-04-30 22:39:13', -1, 195, 0, 3000, 0);
INSERT INTO `auction_history_buyer_201604` VALUES (552, '2016-04-30 23:26:31', -1, 167, 0, 466000, 0);
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
  KEY `idx_auction_id` USING BTREE (`auction_id`),
  KEY `idx_buyer_id` USING BTREE (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_history_buyer_201605
-- ----------------------------
BEGIN;
INSERT INTO `auction_history_buyer_201605` VALUES (620, '2016-05-01 06:37:26', -1, 172, 0, 19000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (582, '2016-05-01 09:03:37', -1, 167, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (620, '2016-05-01 09:57:50', -1, 64, 0, 12000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (598, '2016-05-01 10:00:42', -1, 125, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (583, '2016-05-01 10:06:56', -1, 110, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (585, '2016-05-01 12:57:37', -1, 96, 0, 97768, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (584, '2016-05-01 12:58:48', -1, 96, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (646, '2016-05-01 13:00:05', -1, 96, 0, 466000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (609, '2016-05-01 13:10:03', -1, 51, 0, 56000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (667, '2016-05-01 15:12:32', -1, 69, 0, 25000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (642, '2016-05-01 15:13:26', -1, 181, 0, 95000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (641, '2016-05-01 15:13:34', -1, 181, 0, 4000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (668, '2016-05-01 15:14:27', -1, 70, 0, 25000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (670, '2016-05-01 15:16:07', -1, 186, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (669, '2016-05-01 15:17:57', -1, 188, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (669, '2016-05-01 15:22:29', -1, 189, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (651, '2016-05-01 15:46:57', -1, 150, 0, 999900, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (650, '2016-05-01 15:47:09', -1, 150, 0, 666600, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (672, '2016-05-01 16:58:36', -1, 167, 0, 30000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (672, '2016-05-01 17:00:35', -1, 167, 0, 70000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (650, '2016-05-01 17:11:54', -1, 212, 0, 16665, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (643, '2016-05-01 17:55:06', -1, 56, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (612, '2016-05-01 18:11:52', -1, 51, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (611, '2016-05-01 18:42:37', -1, 56, 0, 9000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (618, '2016-05-01 18:42:47', -1, 56, 0, 1000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (678, '2016-05-01 18:56:47', -1, 67, 0, 155400, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (624, '2016-05-01 19:14:35', -1, 55, -1, 2222222, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (706, '2016-05-01 20:40:43', -1, 85, 0, 200000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (643, '2016-05-01 20:55:15', -1, 179, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (671, '2016-05-01 20:59:23', -1, 167, 0, 19980, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (671, '2016-05-01 21:10:25', -1, 124, 0, 19980, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (671, '2016-05-01 21:35:23', -1, 181, 0, 19980, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (640, '2016-05-01 22:02:44', -1, 181, 0, 66660, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (699, '2016-05-01 22:13:39', -1, 26, 0, 60000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (696, '2016-05-01 22:14:41', -1, 26, 0, 26664, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (677, '2016-05-01 22:38:10', -1, 110, 0, 200000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (677, '2016-05-01 22:39:33', -1, 110, 0, 300000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (643, '2016-05-01 22:47:10', -1, 115, 0, 20000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (711, '2016-05-02 07:42:39', -1, 42, 0, 20000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (665, '2016-05-02 08:19:02', -1, 42, 0, 150000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (680, '2016-05-02 08:43:35', -1, 172, 0, 1275000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (680, '2016-05-02 08:45:18', -1, 172, 0, 50000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (680, '2016-05-02 08:49:11', -1, 42, 0, 975000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (680, '2016-05-02 08:50:06', -1, 42, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (693, '2016-05-02 09:42:37', -1, 42, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (666, '2016-05-02 09:43:50', -1, 42, 0, 20000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (689, '2016-05-02 09:44:03', -1, 42, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (664, '2016-05-02 09:44:59', -1, 42, 0, 80000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (692, '2016-05-02 09:45:17', -1, 42, 0, 2000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (688, '2016-05-02 09:45:34', -1, 42, 0, 112000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (665, '2016-05-02 09:45:44', -1, 42, 0, 60000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (695, '2016-05-02 09:45:56', -1, 42, 0, 115000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (713, '2016-05-02 09:46:05', -1, 42, 0, 225000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (671, '2016-05-02 10:57:50', -1, 194, 0, 19980, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (698, '2016-05-02 12:21:11', -1, 115, 0, 12000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (698, '2016-05-02 12:32:21', -1, 115, 0, 16000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (673, '2016-05-02 12:32:38', -1, 115, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (725, '2016-05-02 12:32:53', -1, 115, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (673, '2016-05-02 12:39:06', -1, 115, 0, 25000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (702, '2016-05-02 13:00:26', -1, 115, 0, 15000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (733, '2016-05-02 13:33:30', -1, 222, -1, 1500000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (704, '2016-05-02 14:02:08', -1, 115, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (725, '2016-05-02 14:19:49', -1, 115, 0, 165000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (730, '2016-05-02 14:19:53', -1, 115, 0, 50000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (740, '2016-05-02 14:19:57', -1, 115, 0, 80000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (720, '2016-05-02 14:32:54', -1, 86, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (697, '2016-05-02 15:03:27', -1, 115, 0, 8000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (672, '2016-05-02 15:03:32', -1, 115, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (680, '2016-05-02 15:57:40', -1, 57, 0, 375000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (680, '2016-05-02 16:17:04', -1, 57, 0, 300000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (681, '2016-05-02 16:19:49', -1, 169, 0, 111100, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (712, '2016-05-02 17:28:23', -1, 86, 0, 65000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (746, '2016-05-02 17:29:38', -1, 86, 0, 26000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (690, '2016-05-02 17:30:09', -1, 86, 0, 16000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (732, '2016-05-02 17:30:13', -1, 86, 0, 12000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (707, '2016-05-02 17:33:25', -1, 167, 0, 200000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (708, '2016-05-02 17:33:50', -1, 195, 0, 250000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (755, '2016-05-02 17:41:51', -1, 156, 0, 33330, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (753, '2016-05-02 18:06:35', -1, 195, 0, 25450, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (773, '2016-05-02 19:49:38', -1, 194, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (747, '2016-05-02 21:33:49', -1, 96, 0, 27775, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (762, '2016-05-03 07:17:48', -1, 172, 0, 45000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (763, '2016-05-03 07:17:53', -1, 172, 0, 72000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (781, '2016-05-03 11:50:58', -1, 219, 0, 14000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (758, '2016-05-03 15:07:13', -1, 181, 0, 25663, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (793, '2016-05-03 15:47:40', -1, 234, 0, 300000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (785, '2016-05-03 17:16:43', -1, 181, 0, 20000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (784, '2016-05-03 18:16:45', -1, 195, 0, 10000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (844, '2016-05-03 18:16:56', -1, 195, 0, 3000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (815, '2016-05-03 18:18:06', -1, 195, 0, 199800, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (818, '2016-05-03 18:18:51', -1, 195, 0, 222200, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (834, '2016-05-03 18:22:28', -1, 219, 0, 69056, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (854, '2016-05-03 19:23:58', -1, 230, -1, 500000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (847, '2016-05-03 19:36:43', -1, 212, 0, 53328, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (850, '2016-05-03 19:39:05', -1, 212, 0, 170000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (822, '2016-05-03 20:15:52', -1, 167, 0, 250000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (823, '2016-05-03 20:16:08', -1, 195, 0, 300000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (817, '2016-05-03 21:00:14', -1, 108, 0, 111100, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (835, '2016-05-03 21:02:38', -1, 108, 0, 20000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (846, '2016-05-03 21:02:51', -1, 108, 0, 5000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (873, '2016-05-03 21:32:02', -1, 86, -1, 5000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (868, '2016-05-03 21:40:13', -1, 148, 0, 4248, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (852, '2016-05-03 22:00:18', -1, 52, 0, 65000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (876, '2016-05-03 22:07:32', -1, 69, 0, 8000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (876, '2016-05-03 22:09:11', -1, 70, 0, 4000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (875, '2016-05-03 22:12:31', -1, 186, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (875, '2016-05-03 22:14:18', -1, 188, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (875, '2016-05-03 22:16:08', -1, 189, 0, 13000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (843, '2016-05-03 22:28:47', -1, 16, 0, 100000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (872, '2016-05-03 22:37:24', -1, 195, -1, 15000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (879, '2016-05-03 22:54:57', -1, 167, 0, 500000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (885, '2016-05-04 00:03:24', -1, 42, -1, 500000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (889, '2016-05-04 00:42:51', -1, 231, 0, 2000000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (892, '2016-05-04 00:44:34', -1, 42, 0, 199800, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (831, '2016-05-04 00:56:40', -1, 42, 0, 26000, 0);
INSERT INTO `auction_history_buyer_201605` VALUES (824, '2016-05-04 01:40:32', -1, 42, 0, 345000, 0);
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
  `random_option` varbinary(14) NOT NULL default '',
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_roi_average_price
-- ----------------------------
BEGIN;
INSERT INTO `auction_roi_average_price` VALUES (1, 2675347, 0, 256, 256, 0, 0, 0, 123, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (2, 2675336, 0, 3759432703752024096, 807415840, 0, 0, 0, 5000, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (3, 2675347, 0, 109655883776, 0, 0, 0, 0, 50, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (4, 2675347, 0, 4324786632, 808466481, 0, 0, 0, 100, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (5, 2675347, 0, 33536, 58982400, 0, 0, 0, 100, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (6, 2675345, 0, 0, 16777216, 0, 0, 0, 250, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (7, 2675345, 0, 3184080327621484592, 540024884, 0, 0, 0, 250, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (8, 2675345, 0, 0, 805306368, 0, 0, 0, 250, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (9, 2675347, 0, 4294967295, 808466481, 0, 0, 0, 50, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (10, 2675347, 0, 4331013236, 808466481, 0, 0, 0, 50, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (11, 2675347, 0, 3184744437224583548, 847000113, 0, 0, 0, 50, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (12, 2223102, 0, 128850984990000, 0, 0, 0, 0, 22222, 1, 0);
INSERT INTO `auction_roi_average_price` VALUES (13, 2263106, 0, 128850984990000, 0, 0, 0, 0, 3000, 1, 0);
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
