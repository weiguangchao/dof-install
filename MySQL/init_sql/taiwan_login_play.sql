/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_login_play

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:40:32
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for member_key_option
-- ----------------------------
DROP TABLE IF EXISTS `member_key_option`;
CREATE TABLE `member_key_option` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `key_type` tinyint(3) unsigned NOT NULL default '0',
  `key_option` blob NOT NULL,
  PRIMARY KEY  (`m_id`,`key_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_key_option
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
