/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : d_channel

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:35:30
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ch_dungeon_data
-- ----------------------------
DROP TABLE IF EXISTS `ch_dungeon_data`;
CREATE TABLE `ch_dungeon_data` (
  `kind_name` varchar(20) NOT NULL default '',
  `dungeon_name` varchar(30) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_dungeon_data
-- ----------------------------
BEGIN;
INSERT INTO `ch_dungeon_data` VALUES ('`[Alfhlyra]`', '<4::channel_info_dname_4>');
INSERT INTO `ch_dungeon_data` VALUES ('`[ancient]`', '<4::channel_info_dname_8>');
INSERT INTO `ch_dungeon_data` VALUES ('`[Antwer]`', '<4::channel_info_dname_11>');
INSERT INTO `ch_dungeon_data` VALUES ('`[behemoth]`', '<4::channel_info_dname_3>');
INSERT INTO `ch_dungeon_data` VALUES ('`[deathtower]`', '<4::channel_info_dname_7>');
INSERT INTO `ch_dungeon_data` VALUES ('`[elven_guard]`', '<4::channel_info_dname_0>');
INSERT INTO `ch_dungeon_data` VALUES ('`[Fortress]`', '<4::channel_info_dname_9>');
INSERT INTO `ch_dungeon_data` VALUES ('`[granfloris]`', '<4::channel_info_dname_1>');
INSERT INTO `ch_dungeon_data` VALUES ('`[impossible]`', '<4::channel_info_dname_12>');
INSERT INTO `ch_dungeon_data` VALUES ('`[north_myre]`', '<4::channel_info_dname_5>');
INSERT INTO `ch_dungeon_data` VALUES ('`[seatrain]`', '<4::channel_info_dname_13>');
INSERT INTO `ch_dungeon_data` VALUES ('`[sky_catle]`', '<4::channel_info_dname_2>');
INSERT INTO `ch_dungeon_data` VALUES ('`[stormpass]`', '<4::channel_info_dname_6>');
INSERT INTO `ch_dungeon_data` VALUES ('`[dragonroad]`', '<4::channel_info_dname_14>');
INSERT INTO `ch_dungeon_data` VALUES ('`[timedoor]`', '<4::channel_info_dname_15>');
INSERT INTO `ch_dungeon_data` VALUES ('`[powerstation]`', '<4::channel_info_dname_16>');
COMMIT;

-- ----------------------------
-- Table structure for ch_dungeon_data_old
-- ----------------------------
DROP TABLE IF EXISTS `ch_dungeon_data_old`;
CREATE TABLE `ch_dungeon_data_old` (
  `kind_name` varchar(20) character set sjis NOT NULL default '',
  `dungeon_name` varchar(30) character set sjis NOT NULL default '',
  PRIMARY KEY  (`kind_name`,`dungeon_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_dungeon_data_old
-- ----------------------------
BEGIN;
INSERT INTO `ch_dungeon_data_old` VALUES ('`[Alfhlyra]`', '<4::channel_info_dname_4>');
INSERT INTO `ch_dungeon_data_old` VALUES ('`[behemoth]`', '<4::channel_info_dname_3>');
INSERT INTO `ch_dungeon_data_old` VALUES ('`[elven_guard]`', '<4::channel_info_dname_0>');
INSERT INTO `ch_dungeon_data_old` VALUES ('`[granfloris]`', '<4::channel_info_dname_1>');
INSERT INTO `ch_dungeon_data_old` VALUES ('`[north_myre]`', '<4::channel_info_dname_5>');
INSERT INTO `ch_dungeon_data_old` VALUES ('`[sky_catle]`', '<4::channel_info_dname_2>');
COMMIT;

-- ----------------------------
-- Table structure for ch_dungeon_list
-- ----------------------------
DROP TABLE IF EXISTS `ch_dungeon_list`;
CREATE TABLE `ch_dungeon_list` (
  `kind_name` varchar(20) NOT NULL default '',
  `dungeon_id` smallint(5) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_dungeon_list
-- ----------------------------
BEGIN;
INSERT INTO `ch_dungeon_list` VALUES ('`[elven_guard]`', 1);
INSERT INTO `ch_dungeon_list` VALUES ('`[elven_guard]`', 2);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 3);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 4);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 5);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 6);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 7);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 8);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 9);
INSERT INTO `ch_dungeon_list` VALUES ('`[sky_catle]`', 11);
INSERT INTO `ch_dungeon_list` VALUES ('`[sky_catle]`', 12);
INSERT INTO `ch_dungeon_list` VALUES ('`[sky_catle]`', 13);
INSERT INTO `ch_dungeon_list` VALUES ('`[sky_catle]`', 14);
INSERT INTO `ch_dungeon_list` VALUES ('`[sky_catle]`', 15);
INSERT INTO `ch_dungeon_list` VALUES ('`[sky_catle]`', 16);
INSERT INTO `ch_dungeon_list` VALUES ('`[sky_catle]`', 17);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 21);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 22);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 23);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 24);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 25);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 26);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 31);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 32);
INSERT INTO `ch_dungeon_list` VALUES ('`[Fortress]`', 110);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 34);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 35);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 32);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 31);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 50);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 1000);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 27);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 40);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 41);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 35);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 36);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 50);
INSERT INTO `ch_dungeon_list` VALUES ('`[Fortress]`', 61);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 34);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 36);
INSERT INTO `ch_dungeon_list` VALUES ('`[Fortress]`', 60);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 37);
INSERT INTO `ch_dungeon_list` VALUES ('`[Alfhlyra]`', 51);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 37);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 51);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 42);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 43);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 44);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 45);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 80);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 81);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 82);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 2);
INSERT INTO `ch_dungeon_list` VALUES ('`[granfloris]`', 1);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 141);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 91);
INSERT INTO `ch_dungeon_list` VALUES ('`[ancient]`', 1506);
INSERT INTO `ch_dungeon_list` VALUES ('`[deathtower]`', 11000);
INSERT INTO `ch_dungeon_list` VALUES ('`[ancient]`', 33);
INSERT INTO `ch_dungeon_list` VALUES ('`[ancient]`', 1500);
INSERT INTO `ch_dungeon_list` VALUES ('`[ancient]`', 1501);
INSERT INTO `ch_dungeon_list` VALUES ('`[ancient]`', 1502);
INSERT INTO `ch_dungeon_list` VALUES ('`[Fortress]`', 111);
INSERT INTO `ch_dungeon_list` VALUES ('`[Fortress]`', 112);
INSERT INTO `ch_dungeon_list` VALUES ('`[seatrain]`', 86);
INSERT INTO `ch_dungeon_list` VALUES ('`[seatrain]`', 87);
INSERT INTO `ch_dungeon_list` VALUES ('`[seatrain]`', 1504);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 52);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 53);
INSERT INTO `ch_dungeon_list` VALUES ('`[north_myre]`', 1506);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 83);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 84);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 85);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 86);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 87);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 88);
INSERT INTO `ch_dungeon_list` VALUES ('`[Antwer]`', 89);
INSERT INTO `ch_dungeon_list` VALUES ('`[behemoth]`', 90);
INSERT INTO `ch_dungeon_list` VALUES ('`[stormpass]`', 140);
INSERT INTO `ch_dungeon_list` VALUES ('`[seatrain]`', 92);
INSERT INTO `ch_dungeon_list` VALUES ('`[seatrain]`', 93);
INSERT INTO `ch_dungeon_list` VALUES ('`[impossible]`', 62);
INSERT INTO `ch_dungeon_list` VALUES ('`[impossible]`', 63);
INSERT INTO `ch_dungeon_list` VALUES ('`[impossible]`', 64);
INSERT INTO `ch_dungeon_list` VALUES ('`[impossible]`', 1500);
INSERT INTO `ch_dungeon_list` VALUES ('`[impossible]`', 1501);
INSERT INTO `ch_dungeon_list` VALUES ('`[impossible]`', 1502);
INSERT INTO `ch_dungeon_list` VALUES ('`[impossible]`', 33);
INSERT INTO `ch_dungeon_list` VALUES ('`[ancient]`', 1504);
INSERT INTO `ch_dungeon_list` VALUES ('`[timedoor]`', 94);
INSERT INTO `ch_dungeon_list` VALUES ('`[powerstation]`', 95);
COMMIT;

-- ----------------------------
-- Table structure for ch_dungeon_list_old
-- ----------------------------
DROP TABLE IF EXISTS `ch_dungeon_list_old`;
CREATE TABLE `ch_dungeon_list_old` (
  `kind_name` varchar(20) character set sjis NOT NULL default '',
  `dungeon_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`dungeon_id`),
  KEY `idx_kind_name` USING BTREE (`kind_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_dungeon_list_old
-- ----------------------------
BEGIN;
INSERT INTO `ch_dungeon_list_old` VALUES ('`[Alfhlyra]`', 31);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[Alfhlyra]`', 32);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[Alfhlyra]`', 33);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[Alfhlyra]`', 34);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[Alfhlyra]`', 80);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[Alfhlyra]`', 1500);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[behemoth]`', 21);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[behemoth]`', 22);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[behemoth]`', 23);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[behemoth]`', 24);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[behemoth]`', 25);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[behemoth]`', 26);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[elven_guard]`', 1);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[elven_guard]`', 2);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[granfloris]`', 3);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[granfloris]`', 4);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[granfloris]`', 5);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[granfloris]`', 6);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[granfloris]`', 7);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[granfloris]`', 8);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[granfloris]`', 9);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[north_myre]`', 35);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[north_myre]`', 40);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[north_myre]`', 41);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[north_myre]`', 50);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[sky_catle]`', 11);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[sky_catle]`', 12);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[sky_catle]`', 13);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[sky_catle]`', 14);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[sky_catle]`', 15);
INSERT INTO `ch_dungeon_list_old` VALUES ('`[sky_catle]`', 17);
COMMIT;

-- ----------------------------
-- Table structure for ch_gc_info
-- ----------------------------
DROP TABLE IF EXISTS `ch_gc_info`;
CREATE TABLE `ch_gc_info` (
  `group_name` varchar(20) NOT NULL default '',
  `group_gc_no` varchar(10) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_gc_info
-- ----------------------------
BEGIN;
INSERT INTO `ch_gc_info` VALUES ('ruke', '8000');
INSERT INTO `ch_gc_info` VALUES ('hilder', '7000');
INSERT INTO `ch_gc_info` VALUES ('casillas', '6000');
INSERT INTO `ch_gc_info` VALUES ('siroco', '4000');
INSERT INTO `ch_gc_info` VALUES ('prey', '5000');
INSERT INTO `ch_gc_info` VALUES ('diregie', '3000');
INSERT INTO `ch_gc_info` VALUES ('cain', '2000');
INSERT INTO `ch_gc_info` VALUES ('first', '100000');
INSERT INTO `ch_gc_info` VALUES ('seria', '9000');
INSERT INTO `ch_gc_info` VALUES ('anton', '10000');
COMMIT;

-- ----------------------------
-- Table structure for ch_script_version
-- ----------------------------
DROP TABLE IF EXISTS `ch_script_version`;
CREATE TABLE `ch_script_version` (
  `script_version` varchar(10) character set sjis NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_script_version
-- ----------------------------
BEGIN;
INSERT INTO `ch_script_version` VALUES ('59');
COMMIT;

-- ----------------------------
-- Table structure for ch_server_data
-- ----------------------------
DROP TABLE IF EXISTS `ch_server_data`;
CREATE TABLE `ch_server_data` (
  `id` int(11) NOT NULL auto_increment,
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `is_use` tinyint(4) NOT NULL default '0',
  `channel_number` smallint(5) unsigned NOT NULL default '0',
  `channel_name` varchar(30) NOT NULL default '',
  `channel_kind` tinyint(3) unsigned NOT NULL default '0',
  `kind_name` varchar(20) NOT NULL default '',
  `exp_rate` float NOT NULL default '0',
  `exp_1` float NOT NULL default '0',
  `exp_2` float NOT NULL default '0',
  `exp_3` float NOT NULL default '0',
  `exp_4` float NOT NULL default '0',
  `exp_5` float NOT NULL default '0',
  `exp_6` float NOT NULL default '0',
  `exp_7` float NOT NULL default '0',
  `exp_8` float NOT NULL default '0',
  `exp_9` float NOT NULL default '0',
  `exp_10` float NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `server_id` USING BTREE (`server_id`,`channel_number`),
  KEY `idx_channel_number` USING BTREE (`channel_number`),
  KEY `idx_is_use` USING BTREE (`is_use`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ch_server_data
-- ----------------------------
BEGIN;
INSERT INTO `ch_server_data` VALUES (1, 1, 1, 1, '<4::channel_info_cname_508>', 11, 'deathtower', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (2, 1, 1, 6, '<4::channel_info_cname_6>', 3, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (3, 1, 1, 7, '<4::channel_info_cname_7>', 3, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (4, 1, 1, 11, '<4::channel_info_cname_11>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (5, 1, 1, 12, '<4::channel_info_cname_12>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (6, 1, 1, 13, '<4::channel_info_cname_13>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (7, 1, 1, 14, '<4::channel_info_cname_14>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (8, 1, 1, 15, '<4::channel_info_cname_15>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (9, 1, 1, 16, '<4::channel_info_cname_21>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (10, 1, 1, 17, '<4::channel_info_cname_22>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (11, 1, 1, 18, '<4::channel_info_cname_23>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (12, 1, 1, 19, '<4::channel_info_cname_24>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (13, 1, 1, 20, '<4::channel_info_cname_31>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (14, 1, 1, 21, '<4::channel_info_cname_32>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (15, 1, 1, 22, '<4::channel_info_cname_33>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (16, 1, 1, 23, '<4::channel_info_cname_34>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (17, 1, 1, 24, '<4::channel_info_cname_41>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (18, 1, 1, 25, '<4::channel_info_cname_42>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (19, 1, 1, 26, '<4::channel_info_cname_43>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (20, 1, 1, 27, '<4::channel_info_cname_61>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (21, 1, 1, 28, '<4::channel_info_cname_62>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (22, 1, 1, 29, '<4::channel_info_cname_63>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (23, 1, 1, 30, '<4::channel_info_cname_71>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (24, 1, 1, 31, '<4::channel_info_cname_72>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (25, 1, 1, 32, '<4::channel_info_cname_73>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (26, 1, 1, 33, '<4::channel_info_cname_51>', 0, 'north_myre', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (27, 1, 1, 34, '<4::channel_info_cname_52>', 0, 'north_myre', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (28, 1, 1, 35, '<4::channel_info_cname_91>', 0, 'Antwer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (29, 1, 1, 36, '<4::channel_info_cname_92>', 0, 'Antwer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (30, 1, 1, 37, '<4::channel_info_cname_111>', 0, 'seatrain', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (31, 1, 1, 38, '<4::channel_info_cname_112>', 0, 'seatrain', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (32, 1, 1, 39, '<4::channel_info_cname_121>', 0, 'ancient', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (33, 2, 1, 1, '<4::channel_info_cname_508>', 11, 'deathtower', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (34, 2, 1, 6, '<4::channel_info_cname_6>', 3, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (35, 2, 1, 7, '<4::channel_info_cname_7>', 3, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (36, 2, 1, 11, '<4::channel_info_cname_11>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (37, 2, 1, 12, '<4::channel_info_cname_12>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (38, 2, 1, 13, '<4::channel_info_cname_13>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (39, 2, 1, 14, '<4::channel_info_cname_14>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (40, 2, 1, 15, '<4::channel_info_cname_15>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (41, 2, 1, 16, '<4::channel_info_cname_21>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (42, 2, 1, 17, '<4::channel_info_cname_22>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (43, 2, 1, 18, '<4::channel_info_cname_23>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (44, 2, 1, 19, '<4::channel_info_cname_24>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (45, 2, 1, 20, '<4::channel_info_cname_31>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (46, 2, 1, 21, '<4::channel_info_cname_32>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (47, 2, 1, 22, '<4::channel_info_cname_33>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (48, 2, 1, 23, '<4::channel_info_cname_34>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (49, 2, 1, 24, '<4::channel_info_cname_41>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (50, 2, 1, 25, '<4::channel_info_cname_42>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (51, 2, 1, 26, '<4::channel_info_cname_43>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (52, 2, 1, 27, '<4::channel_info_cname_61>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (53, 2, 1, 28, '<4::channel_info_cname_62>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (54, 2, 1, 29, '<4::channel_info_cname_63>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (55, 2, 1, 30, '<4::channel_info_cname_71>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (56, 2, 1, 31, '<4::channel_info_cname_72>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (57, 2, 1, 32, '<4::channel_info_cname_73>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (58, 2, 1, 33, '<4::channel_info_cname_51>', 0, 'north_myre', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (59, 2, 1, 34, '<4::channel_info_cname_52>', 0, 'north_myre', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (60, 2, 1, 35, '<4::channel_info_cname_91>', 0, 'Antwer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (61, 2, 1, 36, '<4::channel_info_cname_92>', 0, 'Antwer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (62, 2, 1, 37, '<4::channel_info_cname_111>', 0, 'seatrain', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (63, 2, 1, 38, '<4::channel_info_cname_112>', 0, 'seatrain', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (64, 2, 1, 39, '<4::channel_info_cname_121>', 0, 'ancient', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (65, 3, 1, 1, '<4::channel_info_cname_508>', 11, 'deathtower', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (66, 3, 1, 6, '<4::channel_info_cname_6>', 3, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (67, 3, 1, 7, '<4::channel_info_cname_7>', 3, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (68, 3, 1, 11, '<4::channel_info_cname_11>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (69, 3, 1, 12, '<4::channel_info_cname_12>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (70, 3, 1, 13, '<4::channel_info_cname_13>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (71, 3, 1, 14, '<4::channel_info_cname_14>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (72, 3, 1, 15, '<4::channel_info_cname_15>', 0, 'granfloris', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (73, 3, 1, 16, '<4::channel_info_cname_21>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (74, 3, 1, 17, '<4::channel_info_cname_22>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (75, 3, 1, 18, '<4::channel_info_cname_23>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (76, 3, 1, 19, '<4::channel_info_cname_24>', 0, 'sky_catle', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (77, 3, 1, 20, '<4::channel_info_cname_31>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (78, 3, 1, 21, '<4::channel_info_cname_32>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (79, 3, 1, 22, '<4::channel_info_cname_33>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (80, 3, 1, 23, '<4::channel_info_cname_34>', 0, 'behemoth', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (81, 3, 1, 24, '<4::channel_info_cname_41>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (82, 3, 1, 25, '<4::channel_info_cname_42>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (83, 3, 1, 26, '<4::channel_info_cname_43>', 0, 'Alfhlyra', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (84, 3, 1, 27, '<4::channel_info_cname_61>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (85, 3, 1, 28, '<4::channel_info_cname_62>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (86, 3, 1, 29, '<4::channel_info_cname_63>', 0, 'stormpass', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (87, 3, 1, 30, '<4::channel_info_cname_71>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (88, 3, 1, 31, '<4::channel_info_cname_72>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (89, 3, 1, 32, '<4::channel_info_cname_73>', 0, 'Fortress', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (90, 3, 1, 33, '<4::channel_info_cname_51>', 0, 'north_myre', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (91, 3, 1, 34, '<4::channel_info_cname_52>', 0, 'north_myre', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (92, 3, 1, 35, '<4::channel_info_cname_91>', 0, 'Antwer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (93, 3, 1, 36, '<4::channel_info_cname_92>', 0, 'Antwer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (94, 3, 1, 37, '<4::channel_info_cname_111>', 0, 'seatrain', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (95, 3, 1, 38, '<4::channel_info_cname_112>', 0, 'seatrain', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (96, 3, 1, 39, '<4::channel_info_cname_121>', 0, 'ancient', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (97, 3, 1, 52, '<4::channel_info_cname_505>', 13, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (98, 3, 1, 53, '<4::channel_info_cname_501>', 8, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (99, 3, 1, 54, '<4::channel_info_cname_502>', 8, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (100, 3, 1, 55, '<4::channel_info_cname_503>', 8, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ch_server_data` VALUES (101, 3, 1, 56, '<4::channel_info_cname_504>', 8, 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
