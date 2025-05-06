/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_se_event

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:42:19
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for event_1112_ontime_info
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_info`;
CREATE TABLE `event_1112_ontime_info` (
  `no` int(10) unsigned NOT NULL default '0',
  `item_index` int(10) unsigned NOT NULL default '0',
  `item_count` int(10) unsigned NOT NULL default '0',
  `time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_reward_user
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_reward_user`;
CREATE TABLE `event_1112_ontime_reward_user` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `recv_no` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_reward_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_0
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_0`;
CREATE TABLE `event_1112_ontime_user_0` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_1
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_1`;
CREATE TABLE `event_1112_ontime_user_1` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_2
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_2`;
CREATE TABLE `event_1112_ontime_user_2` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_3
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_3`;
CREATE TABLE `event_1112_ontime_user_3` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_4
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_4`;
CREATE TABLE `event_1112_ontime_user_4` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_4
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_5
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_5`;
CREATE TABLE `event_1112_ontime_user_5` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_5
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_6
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_6`;
CREATE TABLE `event_1112_ontime_user_6` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_6
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_7
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_7`;
CREATE TABLE `event_1112_ontime_user_7` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_7
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_8
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_8`;
CREATE TABLE `event_1112_ontime_user_8` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_8
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_1112_ontime_user_9
-- ----------------------------
DROP TABLE IF EXISTS `event_1112_ontime_user_9`;
CREATE TABLE `event_1112_ontime_user_9` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `last_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_1112_ontime_user_9
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_ontime_item
-- ----------------------------
DROP TABLE IF EXISTS `event_ontime_item`;
CREATE TABLE `event_ontime_item` (
  `idx` int(10) unsigned NOT NULL default '8211',
  `cnt` int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (`idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_ontime_item
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
