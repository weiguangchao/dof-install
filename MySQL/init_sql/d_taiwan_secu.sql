/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : d_taiwan_secu

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:36:16
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for member_env_log
-- ----------------------------
DROP TABLE IF EXISTS `member_env_log`;
CREATE TABLE `member_env_log` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `mac_addr` varchar(64) NOT NULL default '',
  `log` text NOT NULL,
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  KEY `mac_addr` USING BTREE (`mac_addr`(7))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_env_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_mac_info
-- ----------------------------
DROP TABLE IF EXISTS `member_mac_info`;
CREATE TABLE `member_mac_info` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `mac_addr` varchar(64) NOT NULL default '',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`),
  UNIQUE KEY `mac_addr` USING BTREE (`mac_addr`),
  KEY `mac_addr_2` USING BTREE (`mac_addr`(7)),
  KEY `add_date` USING BTREE (`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_mac_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_punish_info
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info`;
CREATE TABLE `member_punish_info` (
  `m_id` int(11) NOT NULL default '0',
  `punish_type` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `punish_value` int(11) NOT NULL default '0',
  `apply_flag` tinyint(4) NOT NULL default '0',
  `start_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `admin_id` varchar(25) NOT NULL default '',
  `reason` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`m_id`,`punish_type`),
  KEY `idx1` USING BTREE (`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_punish_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_punish_info_ars_mail
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info_ars_mail`;
CREATE TABLE `member_punish_info_ars_mail` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `punish_type` int(10) unsigned NOT NULL default '0',
  `apply_flag` tinyint(3) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `send_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_punish_info_ars_mail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_punish_info_history_2012
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info_history_2012`;
CREATE TABLE `member_punish_info_history_2012` (
  `no` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `punish_type` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `punish_value` int(11) NOT NULL default '0',
  `apply_flag` tinyint(4) NOT NULL default '0',
  `start_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `admin_id` varchar(25) NOT NULL default '',
  `reason` text NOT NULL,
  `is_kicked` tinyint(4) NOT NULL default '0',
  `first_ssn` varchar(32) NOT NULL default '',
  `second_ssn` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx2` USING BTREE (`m_id`,`punish_type`),
  KEY `idx1` USING BTREE (`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_punish_info_history_2012
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_punish_info_history_2013
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info_history_2013`;
CREATE TABLE `member_punish_info_history_2013` (
  `no` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `punish_type` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `punish_value` int(11) NOT NULL default '0',
  `apply_flag` tinyint(4) NOT NULL default '0',
  `start_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `admin_id` varchar(25) NOT NULL default '',
  `reason` text NOT NULL,
  `is_kicked` tinyint(4) NOT NULL default '0',
  `first_ssn` varchar(32) NOT NULL default '',
  `second_ssn` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx2` USING BTREE (`m_id`,`punish_type`),
  KEY `idx1` USING BTREE (`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_punish_info_history_2013
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_security_grade
-- ----------------------------
DROP TABLE IF EXISTS `member_security_grade`;
CREATE TABLE `member_security_grade` (
  `m_id` int(11) NOT NULL default '0',
  `last_visit_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `pass_fail_cnt` int(11) NOT NULL default '0',
  `last_vaccine_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `last_window_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `goblin_pass_mod` datetime NOT NULL default '2021-11-19 00:00:00',
  `goblin_fail_cnt` int(11) NOT NULL default '0',
  `security_card_reg` datetime NOT NULL default '2021-11-19 00:00:00',
  `security_card_fail_cnt` int(11) NOT NULL default '0',
  `m_opt_reg` datetime NOT NULL default '2021-11-19 00:00:00',
  `pc_opt_reg` datetime NOT NULL default '2021-11-19 00:00:00',
  `black_ip_try_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `linear_pass_fail_cnt` int(11) NOT NULL default '0',
  `last_pass_fail_time` int(10) unsigned NOT NULL default '0',
  `last_check_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `pass_modify_check` datetime NOT NULL default '2021-11-19 00:00:00',
  `member_pc_reg` datetime NOT NULL default '2021-11-19 00:00:00',
  `gatekeeper_otp_reg` datetime NOT NULL default '2021-11-19 00:00:00',
  `goblin_validity_time` int(11) NOT NULL default '0',
  `security_card_validity_time` int(11) NOT NULL default '0',
  `validity_ip` varchar(15) NOT NULL default '',
  `cargopad_status` tinyint(4) NOT NULL default '0',
  `cargopad_mod` datetime NOT NULL default '2021-11-19 00:00:00',
  `cargopad_validity_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`m_id`),
  KEY `idx_pass_check` USING BTREE (`last_pass_fail_time`,`linear_pass_fail_cnt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_security_grade
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for monitoring_logout
-- ----------------------------
DROP TABLE IF EXISTS `monitoring_logout`;
CREATE TABLE `monitoring_logout` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `logout_time` int(10) unsigned NOT NULL default '0',
  `logout_ip` int(10) unsigned NOT NULL default '0',
  `otp_del_type` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_time` USING BTREE (`logout_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monitoring_logout
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
