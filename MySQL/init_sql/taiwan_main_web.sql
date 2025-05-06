/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_main_web

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:40:40
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_member
-- ----------------------------
DROP TABLE IF EXISTS `admin_member`;
CREATE TABLE `admin_member` (
  `no` int(20) NOT NULL auto_increment,
  `user_id` varchar(20) NOT NULL default '',
  `password` varchar(20) NOT NULL default '',
  `name` varchar(20) NOT NULL default '',
  `email` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `msn` varchar(20) default NULL,
  `comment` text,
  `reg_date` int(13) default NULL,
  `confirm` char(1) default '0',
  `level` varchar(255) NOT NULL default '',
  `level_group1` char(2) NOT NULL default '_',
  `level_group2` char(2) NOT NULL default '_',
  `level_group3` char(2) NOT NULL default '_',
  `level_group4` char(2) NOT NULL default '_',
  `level_group5` char(2) NOT NULL default '_',
  `level_group6` char(2) NOT NULL default '_',
  PRIMARY KEY  (`no`),
  KEY `user_id` USING BTREE (`user_id`),
  KEY `password` USING BTREE (`password`),
  KEY `name` USING BTREE (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news
-- ----------------------------
DROP TABLE IF EXISTS `arad_news`;
CREATE TABLE `arad_news` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `source_url` varchar(128) NOT NULL default '',
  `copyright` tinyint(4) NOT NULL default '0',
  `tag` varchar(128) NOT NULL default '',
  `no_recom` mediumint(8) unsigned NOT NULL default '0',
  `is_main` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`no`),
  KEY `idx_lev` USING BTREE (`lev`),
  KEY `idx_ca_no` USING BTREE (`category`,`no`),
  KEY `idx_create_day` USING BTREE (`create_day`),
  KEY `idx_recom` USING BTREE (`recom`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_charac_name` USING BTREE (`charac_name`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news_comment
-- ----------------------------
DROP TABLE IF EXISTS `arad_news_comment`;
CREATE TABLE `arad_news_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news_namecard_board_list
-- ----------------------------
DROP TABLE IF EXISTS `arad_news_namecard_board_list`;
CREATE TABLE `arad_news_namecard_board_list` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `board_type` tinyint(4) NOT NULL default '0',
  `board_no` int(10) unsigned NOT NULL default '0',
  `create_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`board_type`,`board_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news_namecard_board_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news_namecard_config
-- ----------------------------
DROP TABLE IF EXISTS `arad_news_namecard_config`;
CREATE TABLE `arad_news_namecard_config` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `lev` tinyint(3) unsigned NOT NULL default '0',
  `referer_url` varchar(128) NOT NULL default '0',
  `blog_bgcolor` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news_namecard_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news_recom
-- ----------------------------
DROP TABLE IF EXISTS `arad_news_recom`;
CREATE TABLE `arad_news_recom` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `remote_addr` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_recom` USING BTREE (`m_id`,`content_no`),
  KEY `content_no` USING BTREE (`content_no`,`remote_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news_recom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news_search
-- ----------------------------
DROP TABLE IF EXISTS `arad_news_search`;
CREATE TABLE `arad_news_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news_tag
-- ----------------------------
DROP TABLE IF EXISTS `arad_news_tag`;
CREATE TABLE `arad_news_tag` (
  `occ_date` date NOT NULL default '2021-11-19',
  `tag` varchar(20) NOT NULL default '',
  `tag_cnt` int(10) unsigned NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`occ_date`,`tag`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arad_news_tail_comment
-- ----------------------------
DROP TABLE IF EXISTS `arad_news_tail_comment`;
CREATE TABLE `arad_news_tail_comment` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `lev` tinyint(3) unsigned NOT NULL default '0',
  `comment` text NOT NULL,
  `guild_id` int(11) NOT NULL default '0',
  `guild_name` varchar(40) NOT NULL default '',
  `school_id` int(11) NOT NULL default '0',
  `school_name` varchar(40) NOT NULL default '',
  `userimg_path` varchar(60) NOT NULL default '',
  `blog_url` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arad_news_tail_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auction_item_top100
-- ----------------------------
DROP TABLE IF EXISTS `auction_item_top100`;
CREATE TABLE `auction_item_top100` (
  `cur_date` date NOT NULL default '2021-11-19',
  `server_info` tinyint(4) NOT NULL default '0',
  `category` tinyint(4) NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `item_value` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`cur_date`,`category`,`item_id`,`server_info`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auction_item_top100
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for avatar_select_ability
-- ----------------------------
DROP TABLE IF EXISTS `avatar_select_ability`;
CREATE TABLE `avatar_select_ability` (
  `it_no` int(11) NOT NULL default '0',
  `ability_no` int(11) NOT NULL default '0',
  `ability_type` tinyint(4) NOT NULL default '0',
  `rate_change` tinyint(4) NOT NULL default '0',
  `value` float NOT NULL default '0',
  `job` tinyint(4) NOT NULL default '0',
  `skill_index` int(11) NOT NULL default '0',
  `skill_level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`it_no`,`ability_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of avatar_select_ability
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bad_user
-- ----------------------------
DROP TABLE IF EXISTS `bad_user`;
CREATE TABLE `bad_user` (
  `no` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `bad_code` int(11) NOT NULL default '0',
  `create_day` int(11) NOT NULL default '0',
  `exit_day` int(11) NOT NULL default '0',
  `admin_n` int(11) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_mid` USING BTREE (`m_id`),
  KEY `idx_code` USING BTREE (`bad_code`),
  KEY `idx_eday` USING BTREE (`exit_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bad_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for banner_info
-- ----------------------------
DROP TABLE IF EXISTS `banner_info`;
CREATE TABLE `banner_info` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `useyn` tinyint(3) unsigned NOT NULL default '0',
  `priority` tinyint(3) unsigned NOT NULL default '0',
  `img_url` varchar(100) NOT NULL default '',
  `target_url` varchar(100) NOT NULL default '',
  `title` varchar(50) NOT NULL default '',
  `reg_date` int(10) unsigned NOT NULL default '0',
  `intro` text NOT NULL,
  `no` int(10) unsigned NOT NULL default '0',
  `banner_type` tinyint(4) NOT NULL default '0',
  `banner_type_sub` tinyint(4) NOT NULL default '0',
  `start_date` int(10) unsigned NOT NULL default '0',
  `end_date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx1` USING BTREE (`banner_type`,`banner_type_sub`,`start_date`,`end_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for banner_info2
-- ----------------------------
DROP TABLE IF EXISTS `banner_info2`;
CREATE TABLE `banner_info2` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `useyn` tinyint(3) unsigned NOT NULL default '0',
  `priority` tinyint(3) unsigned NOT NULL default '0',
  `img_url` varchar(100) NOT NULL default '',
  `target_url` varchar(100) NOT NULL default '',
  `reg_date` int(10) unsigned NOT NULL default '0',
  `intro` text NOT NULL,
  `no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner_info2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bbs_div
-- ----------------------------
DROP TABLE IF EXISTS `bbs_div`;
CREATE TABLE `bbs_div` (
  `bbs_code` tinyint(4) NOT NULL auto_increment,
  `bbs_name` varchar(30) NOT NULL default '',
  `bbs_kind` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`bbs_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_div
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bbs_search
-- ----------------------------
DROP TABLE IF EXISTS `bbs_search`;
CREATE TABLE `bbs_search` (
  `bbs_class` int(11) NOT NULL default '0',
  `f_key` int(11) NOT NULL default '0',
  `s_key` int(11) NOT NULL default '0',
  `subject` varchar(50) NOT NULL default '',
  `body` varchar(255) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  KEY `idx_class` USING BTREE (`bbs_class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bbs_search_hd
-- ----------------------------
DROP TABLE IF EXISTS `bbs_search_hd`;
CREATE TABLE `bbs_search_hd` (
  `bbs_class` int(11) NOT NULL default '0',
  `f_key` int(11) NOT NULL default '0',
  `s_key` int(11) NOT NULL default '0',
  `subject` varchar(50) NOT NULL default '',
  `body` varchar(255) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  KEY `idx_class` USING BTREE (`bbs_class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_search_hd
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for board_info
-- ----------------------------
DROP TABLE IF EXISTS `board_info`;
CREATE TABLE `board_info` (
  `bd_id` tinyint(4) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL default '',
  `class` char(1) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `reg_admin` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`bd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of board_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bug_report
-- ----------------------------
DROP TABLE IF EXISTS `bug_report`;
CREATE TABLE `bug_report` (
  `no` int(11) NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `occ_date1` datetime NOT NULL default '2021-11-19 00:00:00',
  `occ_date2` datetime NOT NULL default '2021-11-19 00:00:00',
  `enroll_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `title` varchar(50) NOT NULL default '',
  `comment` text,
  `attachment1` varchar(200) NOT NULL default '',
  `attachment2` varchar(200) NOT NULL default '',
  `attachment3` varchar(200) NOT NULL default '',
  `bug_class` char(1) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_bug_report_m_id` USING BTREE (`m_id`),
  KEY `idx_bug_report_server_id` USING BTREE (`server_id`),
  KEY `idx_bug_report_charac_no` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bug_report
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for check_manager
-- ----------------------------
DROP TABLE IF EXISTS `check_manager`;
CREATE TABLE `check_manager` (
  `check_start_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `check_end_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `type` tinyint(4) NOT NULL default '0',
  `checkup_content` text NOT NULL,
  `dnf_title_1` varchar(120) NOT NULL default '',
  `dnf_link_1` varchar(255) NOT NULL default '',
  `dnf_source_1` varchar(120) NOT NULL default '',
  `dnf_title_2` varchar(120) NOT NULL default '',
  `dnf_link_2` varchar(255) NOT NULL default '',
  `dnf_source_2` varchar(120) NOT NULL default '',
  `dnf_title_3` varchar(120) NOT NULL default '',
  `dnf_link_3` varchar(255) NOT NULL default '',
  `dnf_source_3` varchar(120) NOT NULL default '',
  `dnf_title_4` varchar(120) NOT NULL default '',
  `dnf_link_4` varchar(255) NOT NULL default '',
  `dnf_source_4` varchar(120) NOT NULL default '',
  `dnf_title_5` varchar(120) NOT NULL default '',
  `dnf_link_5` varchar(255) NOT NULL default '',
  `dnf_source_5` varchar(120) NOT NULL default '',
  `dnf_title_6` varchar(120) NOT NULL default '',
  `dnf_link_6` varchar(255) NOT NULL default '',
  `dnf_source_6` varchar(120) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of check_manager
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for class_dbs_log
-- ----------------------------
DROP TABLE IF EXISTS `class_dbs_log`;
CREATE TABLE `class_dbs_log` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `memo` longtext NOT NULL,
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_dbs_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion`;
CREATE TABLE `community_discussion` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `ask_no` int(10) unsigned NOT NULL default '0',
  `notice` char(1) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` char(1) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `modi_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` int(10) unsigned NOT NULL default '0',
  `recom` int(10) unsigned NOT NULL default '0',
  `no_recom` int(10) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `ask_no` USING BTREE (`ask_no`),
  KEY `notice` USING BTREE (`notice`),
  KEY `sequence` USING BTREE (`sequence`),
  KEY `create_day` USING BTREE (`create_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_asking
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_asking`;
CREATE TABLE `community_discussion_asking` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(120) NOT NULL default '',
  `main_title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `content_type` char(1) NOT NULL default '',
  `admin_no` int(10) unsigned NOT NULL default '0',
  `start_date` int(10) unsigned NOT NULL default '0',
  `end_date` int(10) unsigned NOT NULL default '0',
  `reg_date` int(10) unsigned NOT NULL default '0',
  `modi_date` int(10) unsigned NOT NULL default '0',
  `open` tinyint(3) unsigned NOT NULL default '0',
  `main_open` tinyint(3) unsigned NOT NULL default '0',
  `view` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `reg_date` USING BTREE (`reg_date`),
  KEY `end_date` USING BTREE (`end_date`),
  KEY `open` USING BTREE (`open`),
  KEY `main_open` USING BTREE (`main_open`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_asking
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_asking_list
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_asking_list`;
CREATE TABLE `community_discussion_asking_list` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `ask_no` int(10) unsigned NOT NULL default '0',
  `recom` int(10) unsigned NOT NULL default '0',
  `reg_date` int(10) unsigned NOT NULL default '0',
  `content` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `ask_no` USING BTREE (`ask_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_asking_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_asking_log
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_asking_log`;
CREATE TABLE `community_discussion_asking_log` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `ask_no` int(10) unsigned NOT NULL default '0',
  `ask_list_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `reg_date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `m_id` USING BTREE (`m_id`),
  KEY `ask_no` USING BTREE (`ask_no`),
  KEY `ask_list_no` USING BTREE (`ask_list_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_asking_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_comment
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_comment`;
CREATE TABLE `community_discussion_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` char(1) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `content_no` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_content
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_content`;
CREATE TABLE `community_discussion_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` char(1) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_file
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_file`;
CREATE TABLE `community_discussion_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `content_no` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_recom
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_recom`;
CREATE TABLE `community_discussion_recom` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `content_no` int(10) unsigned NOT NULL default '0',
  `remote_addr` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `m_id` USING BTREE (`m_id`,`content_no`),
  KEY `content_no` USING BTREE (`content_no`,`remote_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_recom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for community_discussion_search
-- ----------------------------
DROP TABLE IF EXISTS `community_discussion_search`;
CREATE TABLE `community_discussion_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` char(1) NOT NULL default '',
  `word` char(32) NOT NULL default '',
  PRIMARY KEY  (`no`,`category`,`class`,`word`),
  KEY `category` USING BTREE (`category`,`class`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_discussion_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dictionary_item_search
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_item_search`;
CREATE TABLE `dictionary_item_search` (
  `it_no` mediumint(8) unsigned default NULL,
  `search` varchar(100) NOT NULL default '',
  KEY `it_no_idx` USING BTREE (`it_no`),
  KEY `search_idx` USING BTREE (`search`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary_item_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dictionary_stats
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_stats`;
CREATE TABLE `dictionary_stats` (
  `date_enroll` date NOT NULL default '2021-11-19',
  `dic_name` varchar(100) NOT NULL default '0',
  `every_view_cnt` mediumint(8) unsigned default '0',
  `detail_view_cnt` mediumint(8) unsigned default '0',
  `comment_cnt` mediumint(8) unsigned default '0',
  PRIMARY KEY  (`date_enroll`,`dic_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary_stats
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion
-- ----------------------------
DROP TABLE IF EXISTS `discussion`;
CREATE TABLE `discussion` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `subject` varchar(120) NOT NULL default '',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  `hold_day` smallint(5) unsigned NOT NULL default '0',
  `modify_time` int(10) unsigned NOT NULL default '0',
  `modify_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_comment
-- ----------------------------
DROP TABLE IF EXISTS `discussion_comment`;
CREATE TABLE `discussion_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `modify_time` int(10) unsigned NOT NULL default '0',
  `modify_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_content
-- ----------------------------
DROP TABLE IF EXISTS `discussion_content`;
CREATE TABLE `discussion_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_entry
-- ----------------------------
DROP TABLE IF EXISTS `discussion_entry`;
CREATE TABLE `discussion_entry` (
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`content_no`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_entry
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_file
-- ----------------------------
DROP TABLE IF EXISTS `discussion_file`;
CREATE TABLE `discussion_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_info
-- ----------------------------
DROP TABLE IF EXISTS `discussion_info`;
CREATE TABLE `discussion_info` (
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `id` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`content_no`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_manager
-- ----------------------------
DROP TABLE IF EXISTS `discussion_manager`;
CREATE TABLE `discussion_manager` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned default NULL,
  `reg_date` int(10) default NULL,
  `content_name` varchar(255) NOT NULL default '',
  `content` text,
  `positive_cmt` varchar(100) NOT NULL default '',
  `negative_cmt` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_manager
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_manager_addhit_uv
-- ----------------------------
DROP TABLE IF EXISTS `discussion_manager_addhit_uv`;
CREATE TABLE `discussion_manager_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `click_view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_manager_addhit_uv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_search
-- ----------------------------
DROP TABLE IF EXISTS `discussion_search`;
CREATE TABLE `discussion_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_search_content
-- ----------------------------
DROP TABLE IF EXISTS `discussion_search_content`;
CREATE TABLE `discussion_search_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_search_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for discussion_search_etc
-- ----------------------------
DROP TABLE IF EXISTS `discussion_search_etc`;
CREATE TABLE `discussion_search_etc` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discussion_search_etc
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_ad_history
-- ----------------------------
DROP TABLE IF EXISTS `dnf_ad_history`;
CREATE TABLE `dnf_ad_history` (
  `ad_id` smallint(6) NOT NULL default '0',
  `occ_time` int(11) NOT NULL default '0',
  `open` int(11) NOT NULL default '0',
  `click` int(11) NOT NULL default '0',
  `login` int(11) NOT NULL default '0',
  `logout` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ad_id`,`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_ad_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_ad_stat
-- ----------------------------
DROP TABLE IF EXISTS `dnf_ad_stat`;
CREATE TABLE `dnf_ad_stat` (
  `ad_id` smallint(6) NOT NULL default '0',
  `open` int(11) NOT NULL default '0',
  `click` int(11) NOT NULL default '0',
  `login` int(11) NOT NULL default '0',
  `logout` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_ad_stat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_creature_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_creature_info`;
CREATE TABLE `dnf_creature_info` (
  `it_id` int(11) NOT NULL default '0',
  `creature_id` smallint(6) NOT NULL default '0',
  `creature_name` varchar(64) NOT NULL default '',
  `skill_recovery_time` int(11) NOT NULL default '0',
  `overskill_recovery_time` int(11) NOT NULL default '0',
  `artifact_slot` char(3) NOT NULL default '',
  `learn_overskill_level` smallint(6) NOT NULL default '0',
  `skill_info` varchar(32) NOT NULL default '',
  `overskill_info` varchar(32) NOT NULL default '',
  `piercing` varchar(32) NOT NULL default '',
  `skill_name` varchar(32) NOT NULL default '',
  `skill_desc` varchar(255) NOT NULL default '',
  `overskill_name` varchar(32) NOT NULL default '',
  `overskill_desc` varchar(255) NOT NULL default '',
  `skill_level_values` varchar(48) NOT NULL default '',
  `overskill_level_values` varchar(48) NOT NULL default '',
  `evolution_creature_id` smallint(6) NOT NULL default '0',
  `evolution_level` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`it_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_creature_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_faq
-- ----------------------------
DROP TABLE IF EXISTS `dnf_faq`;
CREATE TABLE `dnf_faq` (
  `no` int(11) NOT NULL auto_increment,
  `cat1` tinyint(4) NOT NULL default '0',
  `cat2` tinyint(4) NOT NULL default '0',
  `regdate` int(11) NOT NULL default '0',
  `hit` int(11) NOT NULL default '0',
  `subject` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_cat1` USING BTREE (`cat1`),
  KEY `idx_cat2` USING BTREE (`cat2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_faq
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_faq_content
-- ----------------------------
DROP TABLE IF EXISTS `dnf_faq_content`;
CREATE TABLE `dnf_faq_content` (
  `no` int(11) NOT NULL default '0',
  `contents` text NOT NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_faq_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_gamein_serashop
-- ----------------------------
DROP TABLE IF EXISTS `dnf_gamein_serashop`;
CREATE TABLE `dnf_gamein_serashop` (
  `no` int(11) NOT NULL auto_increment,
  `img_name` varchar(250) NOT NULL default '',
  `server_id` tinyint(4) NOT NULL default '0',
  `reg_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `open_flag` enum('y','n') default 'n',
  `banner_type` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`no`),
  KEY `idx_server_id` USING BTREE (`server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_gamein_serashop
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_item_add_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_add_info`;
CREATE TABLE `dnf_item_add_info` (
  `it_no` mediumint(8) unsigned NOT NULL default '0',
  `dungeon` varchar(100) default NULL,
  `shop` varchar(255) NOT NULL default '',
  `pot` tinyint(1) NOT NULL default '0',
  `mix_item_no` mediumint(8) unsigned NOT NULL default '0',
  `link_it_no` varchar(50) NOT NULL default '',
  `ir_info` text NOT NULL,
  `item_pic` varchar(255) NOT NULL default '',
  `add_item_memo` text NOT NULL,
  `quest_name` varchar(255) NOT NULL default '',
  `view_flag` tinyint(1) NOT NULL default '0',
  `recomm_avg` float NOT NULL default '0',
  `recomm_cnt` int(10) unsigned NOT NULL default '0',
  `recomm_score` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`it_no`),
  KEY `view_flag_idx` USING BTREE (`view_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_item_add_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_item_comment
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_comment`;
CREATE TABLE `dnf_item_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `item_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `recomm_score` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `item_no_idx` USING BTREE (`item_no`),
  KEY `idx1` USING BTREE (`m_id`,`create_day`),
  KEY `idx_create_day` USING BTREE (`create_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_item_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_item_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_item_info`;
CREATE TABLE `dnf_item_info` (
  `it_no` int(10) unsigned NOT NULL default '0',
  `it_name` varchar(120) NOT NULL default '',
  `it_eng_name` varchar(120) NOT NULL default '',
  `it_explain` text NOT NULL,
  `master_type` tinyint(3) unsigned NOT NULL default '0',
  `sub_type` smallint(5) unsigned NOT NULL default '0',
  `job` varchar(25) NOT NULL default '',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `revert` varchar(10) NOT NULL default '',
  `level` tinyint(3) unsigned NOT NULL default '0',
  `skill` smallint(5) unsigned NOT NULL default '0',
  `create_ratio` float NOT NULL default '0',
  `rarity` tinyint(3) unsigned NOT NULL default '0',
  `weight` smallint(6) NOT NULL default '0',
  `price` mediumint(8) unsigned NOT NULL default '0',
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
  `att_element` enum('') NOT NULL default '',
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
  `skill_levelup` varchar(120) NOT NULL default '',
  `set_type` enum('n','y') NOT NULL default 'n',
  `url` varchar(128) NOT NULL default '',
  `jewel_type` varchar(5) NOT NULL default '',
  `detail_explain` varchar(255) NOT NULL default '',
  `flavor_text` varchar(255) NOT NULL default '',
  `anti_evil` int(11) NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  `required_skill` int(11) NOT NULL default '-1',
  `need_material` varchar(255) NOT NULL default '',
  `physical_absolute_damage` int(11) NOT NULL default '0',
  `physical_damage_reduce` int(11) NOT NULL default '0',
  `physical_absolute_defense` int(11) NOT NULL default '0',
  `magical_absolute_damage` int(11) NOT NULL default '0',
  `magical_damage_reduce` int(11) NOT NULL default '0',
  `magical_absolute_defense` int(11) NOT NULL default '0',
  `fire_attack` int(11) NOT NULL default '0',
  `water_attack` int(11) NOT NULL default '0',
  `dark_attack` int(11) NOT NULL default '0',
  `light_attack` int(11) NOT NULL default '0',
  `weapon_break_resistance` int(11) NOT NULL default '0',
  `armor_break_resistance` int(11) NOT NULL default '0',
  `all_activestatus_resistance` int(11) NOT NULL default '0',
  `rigidity` int(11) NOT NULL default '0',
  `item_aura` varchar(255) NOT NULL default '',
  `magical_critical_hit` float NOT NULL default '0',
  `set_name` varchar(255) NOT NULL default '',
  `set_item` varchar(255) NOT NULL default '',
  `fullset_basic_explain` varchar(255) NOT NULL default '',
  `fullset_detail_explain` text NOT NULL,
  `parameter_basic_explain` varchar(255) NOT NULL default '',
  `parameter_detail_explain` varchar(255) NOT NULL default '',
  `part_set_index` int(11) NOT NULL default '0',
  `skill_data_up` varchar(255) NOT NULL default '',
  `hide_equipment` varchar(33) NOT NULL default '',
  `db_piece_count` tinyint(4) NOT NULL default '0',
  `set_item_master` int(11) NOT NULL default '0',
  `it_set_no` int(10) unsigned NOT NULL default '0',
  `ani_variation` text NOT NULL,
  `ani_variation_expand` text NOT NULL,
  `ani_variation2` text NOT NULL,
  `ani_variation_expand2` text NOT NULL,
  `hide_growtype_avatar` varchar(5) NOT NULL default '',
  `room_list_move_speed_rate` float NOT NULL default '0',
  `icon_mark_number` tinyint(4) NOT NULL default '0',
  `extra_icon_idx_list` varchar(8) NOT NULL default '',
  `hp_max_rate` float NOT NULL default '0',
  `mp_max_rate` float NOT NULL default '0',
  `all_attack` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`it_no`,`it_set_no`,`db_piece_count`),
  KEY `idx_type` USING BTREE (`master_type`,`sub_type`),
  KEY `idx_rarity` USING BTREE (`rarity`),
  KEY `idx_level` USING BTREE (`level`),
  KEY `idx_phy_att` USING BTREE (`phy_att`),
  KEY `idx_phy_def` USING BTREE (`phy_def`),
  KEY `idx_mag_att` USING BTREE (`mag_att`),
  KEY `idx_mag_def` USING BTREE (`mag_def`),
  KEY `idx_mov_speed` USING BTREE (`mov_speed`),
  KEY `idx_att_speed` USING BTREE (`att_speed`),
  KEY `idx_quest` USING BTREE (`quest`),
  KEY `idx_att_element` USING BTREE (`att_element`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_item_info
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
  `name` varchar(25) NOT NULL default '',
  `master_explain` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`master_no`,`sub_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_item_info_master
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_league_bbs_comments
-- ----------------------------
DROP TABLE IF EXISTS `dnf_league_bbs_comments`;
CREATE TABLE `dnf_league_bbs_comments` (
  `comment_id` int(10) unsigned NOT NULL auto_increment,
  `bbs_id` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '0',
  `job` tinyint(4) NOT NULL default '0',
  `comments` varchar(200) NOT NULL default '',
  `reg_time` int(10) unsigned NOT NULL default '0',
  `delete_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`comment_id`),
  KEY `idx_bbs` USING BTREE (`bbs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_league_bbs_comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_league_bbs_contents
-- ----------------------------
DROP TABLE IF EXISTS `dnf_league_bbs_contents`;
CREATE TABLE `dnf_league_bbs_contents` (
  `bbs_id` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `broadcast_date` int(10) unsigned NOT NULL default '0',
  `thumbnail_img` varchar(100) NOT NULL default '',
  `attach_file` varchar(100) NOT NULL default '',
  `contents` text NOT NULL,
  PRIMARY KEY  (`bbs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_league_bbs_contents
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_league_bbs_main
-- ----------------------------
DROP TABLE IF EXISTS `dnf_league_bbs_main`;
CREATE TABLE `dnf_league_bbs_main` (
  `bbs_id` int(10) unsigned NOT NULL auto_increment,
  `league_id` tinyint(3) unsigned NOT NULL default '0',
  `main_cat` tinyint(3) unsigned NOT NULL default '0',
  `sub_cat` tinyint(3) unsigned NOT NULL default '0',
  `open_flag` tinyint(4) NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `reg_time` int(10) unsigned NOT NULL default '0',
  `view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`bbs_id`),
  KEY `idx_league` USING BTREE (`league_id`),
  KEY `idx_cat` USING BTREE (`main_cat`,`sub_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_league_bbs_main
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_league_bbs_search
-- ----------------------------
DROP TABLE IF EXISTS `dnf_league_bbs_search`;
CREATE TABLE `dnf_league_bbs_search` (
  `bbs_id` int(10) unsigned NOT NULL default '0',
  `main_cat` tinyint(3) unsigned NOT NULL default '0',
  `sub_cat` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','contents','charac_name') NOT NULL default 'title',
  `word` varchar(32) NOT NULL default '',
  KEY `idx_bbs` USING BTREE (`bbs_id`),
  KEY `idx_main_cat` USING BTREE (`main_cat`),
  KEY `idx_sub_cat` USING BTREE (`sub_cat`),
  KEY `idx_class` USING BTREE (`class`),
  KEY `idx_word` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_league_bbs_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_league_calendar
-- ----------------------------
DROP TABLE IF EXISTS `dnf_league_calendar`;
CREATE TABLE `dnf_league_calendar` (
  `cal_id` int(10) unsigned NOT NULL auto_increment,
  `schedule_time` int(10) unsigned NOT NULL default '0',
  `contents` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`cal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_league_calendar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_league_mainpage
-- ----------------------------
DROP TABLE IF EXISTS `dnf_league_mainpage`;
CREATE TABLE `dnf_league_mainpage` (
  `mp_id` int(10) unsigned NOT NULL auto_increment,
  `top_img` varchar(100) NOT NULL default '',
  `broadcast_time_img` varchar(100) NOT NULL default '',
  `vod_link` varchar(255) NOT NULL default '',
  `contents` text NOT NULL,
  `notice` text NOT NULL,
  PRIMARY KEY  (`mp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_league_mainpage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_league_player_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_league_player_info`;
CREATE TABLE `dnf_league_player_info` (
  `pi_id` int(10) unsigned NOT NULL auto_increment,
  `league_id` tinyint(3) unsigned NOT NULL default '0',
  `sub_cat` tinyint(4) NOT NULL default '0',
  `bbs_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(12) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(4) NOT NULL default '0',
  `grow_type` tinyint(4) NOT NULL default '0',
  `picture` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`pi_id`),
  KEY `idx_league` USING BTREE (`league_id`),
  KEY `idx_bbs_id` USING BTREE (`bbs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_league_player_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_magazine_pageview
-- ----------------------------
DROP TABLE IF EXISTS `dnf_magazine_pageview`;
CREATE TABLE `dnf_magazine_pageview` (
  `magazine_id` int(10) unsigned NOT NULL default '0',
  `pageview` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`magazine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_magazine_pageview
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_magazine_quiz
-- ----------------------------
DROP TABLE IF EXISTS `dnf_magazine_quiz`;
CREATE TABLE `dnf_magazine_quiz` (
  `magazine_id` int(10) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`magazine_id`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_magazine_quiz
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_mobile_board
-- ----------------------------
DROP TABLE IF EXISTS `dnf_mobile_board`;
CREATE TABLE `dnf_mobile_board` (
  `dmb_idx` int(10) unsigned NOT NULL auto_increment,
  `cate` tinyint(4) NOT NULL default '0',
  `open_flag` tinyint(4) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `summary` varchar(100) NOT NULL default '',
  `thumbnail_img` varchar(100) NOT NULL default '',
  `view` int(10) unsigned NOT NULL default '0',
  `comment` int(10) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`dmb_idx`),
  KEY `idx_open` USING BTREE (`open_flag`),
  KEY `idx_cate_open` USING BTREE (`cate`,`open_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_mobile_board
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_mobile_board_comments
-- ----------------------------
DROP TABLE IF EXISTS `dnf_mobile_board_comments`;
CREATE TABLE `dnf_mobile_board_comments` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `dmb_idx` int(10) unsigned NOT NULL default '0',
  `writer_name` varchar(20) NOT NULL default '',
  `comments` varchar(255) NOT NULL default '',
  `occ_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_dmb` USING BTREE (`dmb_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_mobile_board_comments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_mobile_board_contents
-- ----------------------------
DROP TABLE IF EXISTS `dnf_mobile_board_contents`;
CREATE TABLE `dnf_mobile_board_contents` (
  `dmb_idx` int(10) unsigned NOT NULL default '0',
  `contents` text NOT NULL,
  PRIMARY KEY  (`dmb_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_mobile_board_contents
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_old_equip_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_old_equip_info`;
CREATE TABLE `dnf_old_equip_info` (
  `it_id` int(11) NOT NULL default '0',
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
  `ref_fire` smallint(6) NOT NULL default '0',
  `ref_water` smallint(6) NOT NULL default '0',
  `ref_dark` smallint(6) NOT NULL default '0',
  `ref_light` smallint(6) NOT NULL default '0',
  `ref_all_elements` smallint(6) NOT NULL default '0',
  `ref_slow` smallint(6) NOT NULL default '0',
  `ref_freeze` smallint(6) NOT NULL default '0',
  `ref_poison` smallint(6) NOT NULL default '0',
  `ref_stun` smallint(6) NOT NULL default '0',
  `ref_curse` smallint(6) NOT NULL default '0',
  `ref_blind` smallint(6) NOT NULL default '0',
  `ref_lightning` smallint(6) NOT NULL default '0',
  `ref_stone` smallint(6) NOT NULL default '0',
  `ref_sleep` smallint(6) NOT NULL default '0',
  `ref_burn` smallint(6) NOT NULL default '0',
  `ref_weapon_break` smallint(6) NOT NULL default '0',
  `ref_bleeding` smallint(6) NOT NULL default '0',
  `ref_pierce` smallint(6) NOT NULL default '0',
  `ref_stuck` smallint(6) NOT NULL default '0',
  `ref_confuse` smallint(6) NOT NULL default '0',
  `ref_hold` smallint(6) NOT NULL default '0',
  `ref_armor_break` smallint(6) NOT NULL default '0',
  `ref_all_state` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`it_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_old_equip_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_school_charac
-- ----------------------------
DROP TABLE IF EXISTS `dnf_school_charac`;
CREATE TABLE `dnf_school_charac` (
  `m_id` int(11) NOT NULL default '0',
  `school_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`),
  KEY `idx1` USING BTREE (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_school_charac
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_school_rank
-- ----------------------------
DROP TABLE IF EXISTS `dnf_school_rank`;
CREATE TABLE `dnf_school_rank` (
  `category` tinyint(4) NOT NULL default '0',
  `grade` tinyint(4) NOT NULL default '0',
  `region` tinyint(4) NOT NULL default '0',
  `school_id` int(11) NOT NULL default '0',
  `name` varchar(70) NOT NULL default '',
  `point` bigint(20) unsigned NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  PRIMARY KEY  (`category`,`grade`,`region`,`school_id`),
  KEY `idx1` USING BTREE (`category`,`grade`,`region`,`rank`),
  KEY `idx2` USING BTREE (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_school_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_security_tip_pageview
-- ----------------------------
DROP TABLE IF EXISTS `dnf_security_tip_pageview`;
CREATE TABLE `dnf_security_tip_pageview` (
  `magazine_id` int(10) unsigned NOT NULL default '0',
  `pageview` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`magazine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_security_tip_pageview
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_security_tip_quiz
-- ----------------------------
DROP TABLE IF EXISTS `dnf_security_tip_quiz`;
CREATE TABLE `dnf_security_tip_quiz` (
  `magazine_id` int(10) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`magazine_id`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_security_tip_quiz
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_tower_manager
-- ----------------------------
DROP TABLE IF EXISTS `dnf_tower_manager`;
CREATE TABLE `dnf_tower_manager` (
  `occ_time` int(11) NOT NULL default '0',
  `manager_id` varchar(12) NOT NULL default '',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `web_flag` tinyint(3) unsigned NOT NULL default '0',
  `game_falg` tinyint(3) unsigned NOT NULL default '0',
  KEY `idx1` USING BTREE (`occ_time`),
  KEY `idx2` USING BTREE (`server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_tower_manager
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_tune
-- ----------------------------
DROP TABLE IF EXISTS `dnf_tune`;
CREATE TABLE `dnf_tune` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `link_tag` varchar(200) NOT NULL default '',
  `img_name` varchar(200) NOT NULL default '',
  `create_time` int(10) unsigned NOT NULL default '0',
  `apply_type` char(1) NOT NULL default '',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_tune
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for download_library
-- ----------------------------
DROP TABLE IF EXISTS `download_library`;
CREATE TABLE `download_library` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `open` tinyint(3) unsigned NOT NULL default '0',
  `main` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `view` int(10) unsigned NOT NULL default '0',
  `download` int(10) unsigned NOT NULL default '0',
  `img_link` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`main`,`open`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download_library
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for download_library_content
-- ----------------------------
DROP TABLE IF EXISTS `download_library_content`;
CREATE TABLE `download_library_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download_library_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for download_library_file
-- ----------------------------
DROP TABLE IF EXISTS `download_library_file`;
CREATE TABLE `download_library_file` (
  `file_no` int(10) unsigned NOT NULL auto_increment,
  `no` int(10) unsigned NOT NULL default '0',
  `file_info` varchar(9) NOT NULL default '',
  `file_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`file_no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download_library_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_dnf_3year_comment
-- ----------------------------
DROP TABLE IF EXISTS `event_dnf_3year_comment`;
CREATE TABLE `event_dnf_3year_comment` (
  `no` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment` varchar(30) NOT NULL default '',
  `feel_cnt` int(11) NOT NULL default '0',
  `open_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  UNIQUE KEY `m_id` USING BTREE (`m_id`),
  KEY `idx_feel_cnt` USING BTREE (`feel_cnt`),
  KEY `idx_open_flag` USING BTREE (`open_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_dnf_3year_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_dnf_3year_feel
-- ----------------------------
DROP TABLE IF EXISTS `event_dnf_3year_feel`;
CREATE TABLE `event_dnf_3year_feel` (
  `no` int(11) NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`no`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_dnf_3year_feel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `reg_date` int(10) unsigned NOT NULL default '0',
  `open_date` int(10) unsigned NOT NULL default '0',
  `img_url` varchar(255) NOT NULL default '',
  `img_link` varchar(255) NOT NULL default '',
  `today_word` varchar(255) NOT NULL default '',
  `hot_title` varchar(120) NOT NULL default '',
  `hot_link` varchar(255) NOT NULL default '',
  `hot_content` varchar(255) NOT NULL default '',
  `hot_word` varchar(255) NOT NULL default '',
  `img_view` int(10) unsigned NOT NULL default '0',
  `hot_view` int(10) unsigned NOT NULL default '0',
  `comment` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`reg_date`),
  KEY `idx2` USING BTREE (`open_date`),
  KEY `idx4` USING BTREE (`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_addhit_uv
-- ----------------------------
DROP TABLE IF EXISTS `focus_addhit_uv`;
CREATE TABLE `focus_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL default '0',
  `img_view` int(10) unsigned NOT NULL default '0',
  `hot_view` int(10) unsigned NOT NULL default '0',
  `group_view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_addhit_uv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_comment
-- ----------------------------
DROP TABLE IF EXISTS `focus_comment`;
CREATE TABLE `focus_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_content
-- ----------------------------
DROP TABLE IF EXISTS `focus_content`;
CREATE TABLE `focus_content` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `focus_no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `popular_word` varchar(255) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `view` int(10) unsigned NOT NULL default '0',
  `best` tinyint(4) NOT NULL default '0',
  `review` varchar(120) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`focus_no`),
  KEY `idx2` USING BTREE (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_content_addhit_uv
-- ----------------------------
DROP TABLE IF EXISTS `focus_content_addhit_uv`;
CREATE TABLE `focus_content_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL default '0',
  `view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_content_addhit_uv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_game
-- ----------------------------
DROP TABLE IF EXISTS `focus_game`;
CREATE TABLE `focus_game` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `reg_date` int(10) unsigned NOT NULL default '0',
  `open_date` int(10) unsigned NOT NULL default '0',
  `comment` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`reg_date`),
  KEY `idx2` USING BTREE (`open_date`),
  KEY `idx4` USING BTREE (`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_game
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_game_addhit_uv
-- ----------------------------
DROP TABLE IF EXISTS `focus_game_addhit_uv`;
CREATE TABLE `focus_game_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `group_view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_game_addhit_uv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_game_comment
-- ----------------------------
DROP TABLE IF EXISTS `focus_game_comment`;
CREATE TABLE `focus_game_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_game_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_game_content
-- ----------------------------
DROP TABLE IF EXISTS `focus_game_content`;
CREATE TABLE `focus_game_content` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `focus_no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `popular_word` varchar(255) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `view` int(10) unsigned NOT NULL default '0',
  `view_uv` int(10) unsigned NOT NULL default '0',
  `best` tinyint(4) NOT NULL default '0',
  `review` varchar(120) NOT NULL default '',
  `img_url` varchar(255) NOT NULL default '',
  `img_view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`focus_no`),
  KEY `idx2` USING BTREE (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_game_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_game_content_addhit_uv
-- ----------------------------
DROP TABLE IF EXISTS `focus_game_content_addhit_uv`;
CREATE TABLE `focus_game_content_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `view` int(10) unsigned NOT NULL default '0',
  `img_view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_game_content_addhit_uv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_game_search
-- ----------------------------
DROP TABLE IF EXISTS `focus_game_search`;
CREATE TABLE `focus_game_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','keyword') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_game_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for focus_search
-- ----------------------------
DROP TABLE IF EXISTS `focus_search`;
CREATE TABLE `focus_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','keyword') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focus_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for free_charge_list
-- ----------------------------
DROP TABLE IF EXISTS `free_charge_list`;
CREATE TABLE `free_charge_list` (
  `tid` int(11) unsigned NOT NULL auto_increment,
  `m_id` int(11) unsigned NOT NULL default '0',
  `product_cd` int(11) unsigned NOT NULL default '0',
  `sera_amount` int(11) NOT NULL default '0',
  `item_cd` int(11) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`tid`),
  UNIQUE KEY `m_id` USING BTREE (`m_id`,`product_cd`),
  KEY `idx_product_cd` USING BTREE (`product_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of free_charge_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for free_charge_product_list
-- ----------------------------
DROP TABLE IF EXISTS `free_charge_product_list`;
CREATE TABLE `free_charge_product_list` (
  `product_cd` int(11) unsigned NOT NULL auto_increment,
  `product_name` varchar(50) NOT NULL default '',
  `sera_amount` int(11) NOT NULL default '0',
  `item_cd` int(11) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`product_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of free_charge_product_list
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
  `gc_ip` char(64) NOT NULL default '',
  `gc_port` smallint(5) unsigned NOT NULL default '0',
  `gc_max` smallint(5) unsigned NOT NULL default '0',
  `gc_game` tinyint(3) unsigned NOT NULL default '0',
  `gc_channel` char(32) NOT NULL default '',
  `gc_ch_group` smallint(5) NOT NULL default '0',
  `gc_channeltype` char(1) NOT NULL default '0',
  PRIMARY KEY  (`gc_no`),
  KEY `idxGC_GAME` USING BTREE (`gc_game`),
  KEY `idxch_group` USING BTREE (`gc_ch_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_channel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for game_genre
-- ----------------------------
DROP TABLE IF EXISTS `game_genre`;
CREATE TABLE `game_genre` (
  `genre_code` tinyint(4) NOT NULL auto_increment,
  `jenre_name` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`genre_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_genre
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gen_bbs
-- ----------------------------
DROP TABLE IF EXISTS `gen_bbs`;
CREATE TABLE `gen_bbs` (
  `gno` int(11) NOT NULL auto_increment,
  `bd_id` tinyint(4) NOT NULL default '0',
  `empyn` tinyint(4) NOT NULL default '0',
  `mgno` int(11) NOT NULL default '0',
  `open` tinyint(1) NOT NULL default '1',
  `main` tinyint(4) NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  `mod_date` int(11) NOT NULL default '0',
  `hits` mediumint(8) unsigned NOT NULL default '0',
  `body_type` char(1) NOT NULL default '',
  `m_id` int(11) NOT NULL default '0',
  `reg_id` varchar(20) NOT NULL default '',
  `subject` varchar(50) NOT NULL default '',
  `cs_flag` tinyint(4) NOT NULL default '0',
  `requestor` varchar(20) NOT NULL default '',
  `order_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`gno`),
  UNIQUE KEY `uk_bdid_empyn_gno` USING BTREE (`bd_id`,`empyn`,`gno`),
  UNIQUE KEY `uk_bdid_empyn_mgno` USING BTREE (`bd_id`,`empyn`,`mgno`),
  KEY `idx_bdid_open_main` USING BTREE (`bd_id`,`open`,`main`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gen_bbs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gen_body
-- ----------------------------
DROP TABLE IF EXISTS `gen_body`;
CREATE TABLE `gen_body` (
  `gno` int(11) NOT NULL default '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY  (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gen_body
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gen_event
-- ----------------------------
DROP TABLE IF EXISTS `gen_event`;
CREATE TABLE `gen_event` (
  `gno` int(11) NOT NULL default '0',
  `stt_date` date NOT NULL default '2021-11-19',
  `end_date` date NOT NULL default '2021-11-19',
  `ann_date` date NOT NULL default '2021-11-19',
  `page_url` varchar(100) NOT NULL default '',
  `event_type` tinyint(3) unsigned NOT NULL default '0',
  `search_word` text NOT NULL,
  `result_url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`gno`),
  KEY `idx_type` USING BTREE (`event_type`),
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gen_event
-- ----------------------------
BEGIN;
INSERT INTO `gen_event` VALUES (1, '2021-11-19', '2015-08-01', '2015-08-01', '', 7, '', '');
INSERT INTO `gen_event` VALUES (11, '2021-11-19', '2015-08-01', '2015-08-01', '', 7, '', '');
COMMIT;

-- ----------------------------
-- Table structure for gen_event_detail
-- ----------------------------
DROP TABLE IF EXISTS `gen_event_detail`;
CREATE TABLE `gen_event_detail` (
  `gno` int(11) NOT NULL default '0',
  `type_flag1` tinyint(1) NOT NULL default '0',
  `type_flag2` tinyint(1) NOT NULL default '0',
  `type_flag3` tinyint(1) NOT NULL default '0',
  `type_flag4` tinyint(1) NOT NULL default '0',
  `type_flag5` tinyint(1) NOT NULL default '0',
  `type_flag6` tinyint(1) NOT NULL default '0',
  `content1` text NOT NULL,
  `file_location1` varchar(100) NOT NULL default '',
  `content2` text NOT NULL,
  `file_location2` varchar(100) NOT NULL default '',
  `content3` text NOT NULL,
  `file_location3` varchar(100) NOT NULL default '',
  `content4` text NOT NULL,
  `file_location4` varchar(100) NOT NULL default '',
  `content5` text NOT NULL,
  `file_location5` varchar(100) NOT NULL default '',
  `content6` text NOT NULL,
  `file_location6` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gen_event_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gen_files
-- ----------------------------
DROP TABLE IF EXISTS `gen_files`;
CREATE TABLE `gen_files` (
  `gno` int(11) NOT NULL default '0',
  `gf_no` tinyint(4) NOT NULL auto_increment,
  `file_server` varchar(50) NOT NULL default '',
  `file_location` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`gno`,`gf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gen_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guarder_info
-- ----------------------------
DROP TABLE IF EXISTS `guarder_info`;
CREATE TABLE `guarder_info` (
  `m_id` int(11) NOT NULL default '0',
  `g_name` varchar(10) NOT NULL default '',
  `g_birth` varchar(8) NOT NULL default '',
  `g_phone` varchar(15) NOT NULL default '',
  `g_confirm` tinyint(1) default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guarder_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_article_history
-- ----------------------------
DROP TABLE IF EXISTS `guide_article_history`;
CREATE TABLE `guide_article_history` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `bbs_cd` tinyint(5) NOT NULL default '0',
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `occ_time` int(10) unsigned NOT NULL default '0',
  `contents` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_article_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_auction_rank
-- ----------------------------
DROP TABLE IF EXISTS `guide_auction_rank`;
CREATE TABLE `guide_auction_rank` (
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  `it_name` varchar(100) NOT NULL default '',
  `it_rarity` tinyint(3) unsigned NOT NULL default '0',
  `it_url` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`server_id`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_auction_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_bbs
-- ----------------------------
DROP TABLE IF EXISTS `guide_bbs`;
CREATE TABLE `guide_bbs` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `bbs_cd` tinyint(5) NOT NULL default '0',
  `occ_time` int(10) unsigned NOT NULL default '0',
  `img_src` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `view_cnt` mediumint(8) unsigned NOT NULL default '0',
  `click_cnt` mediumint(8) unsigned NOT NULL default '0',
  `open_flg` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_bbs_cd_open_flg` USING BTREE (`bbs_cd`,`open_flg`),
  KEY `idx_open_flg` USING BTREE (`open_flg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_bbs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_bbs_contents
-- ----------------------------
DROP TABLE IF EXISTS `guide_bbs_contents`;
CREATE TABLE `guide_bbs_contents` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `contents` text NOT NULL,
  PRIMARY KEY  (`no`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_bbs_contents
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_bbs_link
-- ----------------------------
DROP TABLE IF EXISTS `guide_bbs_link`;
CREATE TABLE `guide_bbs_link` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `link_kind` tinyint(10) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `link_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_bbs_link
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_bbs_search
-- ----------------------------
DROP TABLE IF EXISTS `guide_bbs_search`;
CREATE TABLE `guide_bbs_search` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `search_text` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`),
  KEY `idx_search_text` USING BTREE (`search_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_bbs_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_link_statistics
-- ----------------------------
DROP TABLE IF EXISTS `guide_link_statistics`;
CREATE TABLE `guide_link_statistics` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `bbs_cd` tinyint(5) NOT NULL default '0',
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `link_bbs_no` int(10) unsigned NOT NULL default '0',
  `view_cnt` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_link_statistics
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_menu
-- ----------------------------
DROP TABLE IF EXISTS `guide_menu`;
CREATE TABLE `guide_menu` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `bbs_no` int(11) NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `sort_no` int(11) NOT NULL default '0',
  `view_type` tinyint(4) NOT NULL default '0',
  `depth_1` int(10) unsigned NOT NULL default '0',
  `depth_2` int(10) unsigned NOT NULL default '0',
  `depth_3` int(10) unsigned NOT NULL default '0',
  `depth_4` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_depth_3` USING BTREE (`depth_3`),
  KEY `idx_depth_1` USING BTREE (`depth_1`),
  KEY `idx_depth_2` USING BTREE (`depth_2`),
  KEY `idx_depth_4` USING BTREE (`depth_4`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`),
  KEY `idx_sort_no` USING BTREE (`sort_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_menu
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_tag_list
-- ----------------------------
DROP TABLE IF EXISTS `guide_tag_list`;
CREATE TABLE `guide_tag_list` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `tag_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_tag_name` USING BTREE (`tag_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_tag_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guide_view_cnt
-- ----------------------------
DROP TABLE IF EXISTS `guide_view_cnt`;
CREATE TABLE `guide_view_cnt` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `bbs_cd` tinyint(5) NOT NULL default '0',
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `occ_time` int(10) unsigned NOT NULL default '0',
  `click_cnt` mediumint(8) unsigned NOT NULL default '0',
  `day_cnt` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`),
  KEY `idx_occ_time` USING BTREE (`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide_view_cnt
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guild_bbs
-- ----------------------------
DROP TABLE IF EXISTS `guild_bbs`;
CREATE TABLE `guild_bbs` (
  `gno` int(11) NOT NULL auto_increment,
  `bd_id` tinyint(4) NOT NULL default '0',
  `empyn` tinyint(4) NOT NULL default '0',
  `mgno` int(11) NOT NULL default '0',
  `open` tinyint(1) NOT NULL default '1',
  `main` tinyint(4) NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  `mod_date` int(11) NOT NULL default '0',
  `hits` mediumint(8) unsigned NOT NULL default '0',
  `body_type` char(1) NOT NULL default '',
  `m_id` int(11) NOT NULL default '0',
  `reg_id` varchar(20) NOT NULL default '',
  `subject` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`gno`),
  UNIQUE KEY `uk_bdid_empyn_gno` USING BTREE (`bd_id`,`empyn`,`gno`),
  UNIQUE KEY `uk_bdid_empyn_mgno` USING BTREE (`bd_id`,`empyn`,`mgno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bbs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guild_body
-- ----------------------------
DROP TABLE IF EXISTS `guild_body`;
CREATE TABLE `guild_body` (
  `gno` int(11) NOT NULL default '0',
  `body` text NOT NULL,
  PRIMARY KEY  (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_body
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guild_event
-- ----------------------------
DROP TABLE IF EXISTS `guild_event`;
CREATE TABLE `guild_event` (
  `gno` int(11) NOT NULL default '0',
  `stt_date` date NOT NULL default '2021-11-19',
  `end_date` date NOT NULL default '2021-11-19',
  `ann_date` date NOT NULL default '2021-11-19',
  `page_url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_event
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guild_files
-- ----------------------------
DROP TABLE IF EXISTS `guild_files`;
CREATE TABLE `guild_files` (
  `gno` int(11) NOT NULL default '0',
  `gf_no` tinyint(4) NOT NULL auto_increment,
  `file_server` varchar(50) NOT NULL default '',
  `file_location` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`gno`,`gf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guild_recommend
-- ----------------------------
DROP TABLE IF EXISTS `guild_recommend`;
CREATE TABLE `guild_recommend` (
  `no` int(11) NOT NULL default '0',
  `guild_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment` varchar(100) NOT NULL default '',
  `recommend_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`),
  KEY `idx_guild_id` USING BTREE (`guild_id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_recommend
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for guild_visit
-- ----------------------------
DROP TABLE IF EXISTS `guild_visit`;
CREATE TABLE `guild_visit` (
  `guild_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `total_visit` int(11) NOT NULL default '0',
  `today_visit` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_visit
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for id_pass
-- ----------------------------
DROP TABLE IF EXISTS `id_pass`;
CREATE TABLE `id_pass` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `m_id` int(11) unsigned NOT NULL default '0',
  `user_id` char(16) NOT NULL default '',
  `name` char(16) NOT NULL default '',
  `phone` char(12) NOT NULL default '',
  `code` mediumint(8) NOT NULL default '0',
  `tid` char(20) NOT NULL default '',
  `update_day` datetime NOT NULL default '2021-11-19 00:00:00',
  `create_day` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`),
  KEY `m_id` USING BTREE (`m_id`,`code`,`update_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of id_pass
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for image_upload
-- ----------------------------
DROP TABLE IF EXISTS `image_upload`;
CREATE TABLE `image_upload` (
  `no` int(11) NOT NULL auto_increment,
  `date_start` date NOT NULL default '2021-11-19',
  `date_end` date NOT NULL default '2021-11-19',
  `img_url` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image_upload
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion`;
CREATE TABLE `intensive_discussion` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') default NULL,
  `category` tinyint(3) unsigned default '0',
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default '0',
  `m_user_id` varchar(16) default NULL,
  `m_sex` enum('m','f') default 'm',
  `server_id` tinyint(4) default '0',
  `charac_no` int(11) default '0',
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default '0',
  `title` varchar(120) default NULL,
  `create_day` int(10) unsigned default '0',
  `comment` mediumint(8) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned default '0',
  `recom` mediumint(8) unsigned default '0',
  `file` mediumint(8) unsigned default '0',
  `depth` tinyint(3) unsigned default '0',
  `sequence` double unsigned default NULL,
  `positive` mediumint(8) unsigned default '0',
  `negative` mediumint(8) unsigned default '0',
  PRIMARY KEY  (`no`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`sequence`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_cat_seq` USING BTREE (`category`,`sequence`),
  KEY `idx_notice` USING BTREE (`notice`),
  KEY `idx_charac_name` USING BTREE (`charac_name`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion_comment
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion_comment`;
CREATE TABLE `intensive_discussion_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned default NULL,
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default NULL,
  `m_user_id` varchar(16) default NULL,
  `m_sex` enum('m','f') default NULL,
  `server_id` tinyint(4) default NULL,
  `charac_no` int(11) default NULL,
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default NULL,
  `comment_text` text,
  `ip` varchar(15) default NULL,
  `create_day` int(10) unsigned default NULL,
  `recom` mediumint(8) unsigned default '0',
  `opinion_mode` tinyint(1) default '0',
  `del_flag` tinyint(3) unsigned default '0',
  `comment_cnt` smallint(5) unsigned default '0',
  PRIMARY KEY  (`no`),
  KEY `idx2` USING BTREE (`m_id`,`opinion_mode`),
  KEY `idx1` USING BTREE (`content_no`,`opinion_mode`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion_comment_recom
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion_comment_recom`;
CREATE TABLE `intensive_discussion_comment_recom` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `comment_no` mediumint(8) unsigned default NULL,
  `m_id` int(10) unsigned default NULL,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion_comment_recom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion_comment_reply
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion_comment_reply`;
CREATE TABLE `intensive_discussion_comment_reply` (
  `rno` mediumint(8) unsigned NOT NULL auto_increment,
  `no` mediumint(8) unsigned default NULL,
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default NULL,
  `m_user_id` varchar(16) default NULL,
  `server_id` tinyint(4) default NULL,
  `charac_no` int(11) default NULL,
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default NULL,
  `comment_text` varchar(255) default NULL,
  `create_day` int(10) unsigned default NULL,
  `depth` tinyint(3) unsigned default '0',
  `sequence` mediumint(8) unsigned default NULL,
  `del_flag` tinyint(1) unsigned NOT NULL default '0',
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rno`),
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`sequence`),
  KEY `idx3` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion_comment_reply
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion_content
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion_content`;
CREATE TABLE `intensive_discussion_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text,
  `content_type` enum('br','text','all') default 'br',
  `ip` varchar(15) default NULL,
  `ring` smallint(5) unsigned default NULL,
  `sms` enum('y','n') default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion_file
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion_file`;
CREATE TABLE `intensive_discussion_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned default NULL,
  `file_url` char(128) default NULL,
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion_search
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion_search`;
CREATE TABLE `intensive_discussion_search` (
  `no` int(10) unsigned default '0',
  `category` tinyint(3) unsigned default '0',
  `class` enum('title','nickname','content','charac_name') default 'title',
  `word` char(32) default NULL,
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx_5` USING BTREE (`class`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for intensive_discussion_search_new
-- ----------------------------
DROP TABLE IF EXISTS `intensive_discussion_search_new`;
CREATE TABLE `intensive_discussion_search_new` (
  `no` int(10) unsigned default '0',
  `category` tinyint(3) unsigned default '0',
  `class` enum('title','nickname','content','charac_name') default 'title',
  `word` char(32) default NULL,
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx_5` USING BTREE (`class`,`word`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intensive_discussion_search_new
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for internet_line
-- ----------------------------
DROP TABLE IF EXISTS `internet_line`;
CREATE TABLE `internet_line` (
  `line_code` tinyint(4) NOT NULL auto_increment,
  `line_name` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`line_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of internet_line
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for issue_of_week
-- ----------------------------
DROP TABLE IF EXISTS `issue_of_week`;
CREATE TABLE `issue_of_week` (
  `no` int(11) NOT NULL auto_increment,
  `occ_date` date NOT NULL default '2021-11-19',
  `title` varchar(50) NOT NULL default '',
  `contents` text,
  `dnf_main` text,
  `radio_url` varchar(128) NOT NULL default '',
  `opt_flag` tinyint(4) NOT NULL default '0',
  `view_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_occ_date` USING BTREE (`occ_date`),
  KEY `idx_opt_flag` USING BTREE (`opt_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_of_week
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_list
-- ----------------------------
DROP TABLE IF EXISTS `job_list`;
CREATE TABLE `job_list` (
  `job_code` tinyint(4) NOT NULL auto_increment,
  `job_name` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`job_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_list
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_gift_entry
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_gift_entry`;
CREATE TABLE `knowcafe_gift_entry` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `occ_date` int(11) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `item_no` int(11) NOT NULL default '0',
  `item_cnt` smallint(6) NOT NULL default '0',
  `item_check` int(11) unsigned NOT NULL default '0',
  `total_point` int(11) unsigned NOT NULL default '0',
  `occ_type` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_occ_date` USING BTREE (`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_gift_entry
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_gift_give_stats
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_gift_give_stats`;
CREATE TABLE `knowcafe_gift_give_stats` (
  `date_enroll` date NOT NULL default '2021-11-19',
  `item_no` int(11) NOT NULL default '0',
  `item_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date_enroll`,`item_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_gift_give_stats
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_gift_point_info
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_gift_point_info`;
CREATE TABLE `knowcafe_gift_point_info` (
  `lev` int(11) NOT NULL default '0',
  `point` int(11) unsigned NOT NULL default '0',
  `item_no` int(11) NOT NULL default '0',
  `item_cnt` smallint(6) NOT NULL default '0',
  `item_period` smallint(6) NOT NULL default '0',
  KEY `idx_lev` USING BTREE (`lev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_gift_point_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_gift_rank_info
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_gift_rank_info`;
CREATE TABLE `knowcafe_gift_rank_info` (
  `rank` int(11) NOT NULL default '0',
  `item_no` int(11) NOT NULL default '0',
  `item_cnt` smallint(6) NOT NULL default '0',
  `item_period` smallint(6) NOT NULL default '0',
  KEY `idx_rank` USING BTREE (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_gift_rank_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_job
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_job`;
CREATE TABLE `knowcafe_job` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`sequence`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_cat_seq` USING BTREE (`category`,`sequence`),
  KEY `idx_notice` USING BTREE (`notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_job
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_job_comment
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_job_comment`;
CREATE TABLE `knowcafe_job_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_job_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_job_content
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_job_content`;
CREATE TABLE `knowcafe_job_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_job_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_job_file
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_job_file`;
CREATE TABLE `knowcafe_job_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_job_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_job_search
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_job_search`;
CREATE TABLE `knowcafe_job_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_job_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_know_lev_stats
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_know_lev_stats`;
CREATE TABLE `knowcafe_know_lev_stats` (
  `date_enroll` date NOT NULL default '2021-11-19',
  `lev` tinyint(3) unsigned NOT NULL default '0',
  `m_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`date_enroll`,`lev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_know_lev_stats
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_member_point
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_member_point`;
CREATE TABLE `knowcafe_member_point` (
  `m_id` int(11) NOT NULL default '0',
  `occ_time` int(11) NOT NULL default '0',
  `total_point` int(10) unsigned NOT NULL default '0',
  `now_point` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_member_point
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_plan
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_plan`;
CREATE TABLE `knowcafe_plan` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `sub_job` tinyint(3) unsigned NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx_lev` USING BTREE (`lev`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_plan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_plan_comment
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_plan_comment`;
CREATE TABLE `knowcafe_plan_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_plan_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_plan_content
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_plan_content`;
CREATE TABLE `knowcafe_plan_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `skill` text NOT NULL,
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_plan_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_plan_file
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_plan_file`;
CREATE TABLE `knowcafe_plan_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_plan_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_plan_search
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_plan_search`;
CREATE TABLE `knowcafe_plan_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_plan_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa`;
CREATE TABLE `knowcafe_qa` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `reply` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`create_day`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_dep_char` USING BTREE (`charac_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_comment
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_comment`;
CREATE TABLE `knowcafe_qa_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_content
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_content`;
CREATE TABLE `knowcafe_qa_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_file
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_file`;
CREATE TABLE `knowcafe_qa_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_info
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_info`;
CREATE TABLE `knowcafe_qa_info` (
  `no` mediumint(8) unsigned NOT NULL default '0',
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`sequence`),
  KEY `idx3` USING BTREE (`depth`,`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_old
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_old`;
CREATE TABLE `knowcafe_qa_old` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  `reply` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`sequence`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_dep_char` USING BTREE (`depth`,`charac_name`),
  KEY `idx4` USING BTREE (`depth`,`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_old
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_search
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_search`;
CREATE TABLE `knowcafe_qa_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx_search` USING BTREE (`class`,`word`,`depth`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_search_bak
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_search_bak`;
CREATE TABLE `knowcafe_qa_search_bak` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx_search` USING BTREE (`class`,`depth`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_search_bak
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_sequence
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_sequence`;
CREATE TABLE `knowcafe_qa_sequence` (
  `no` int(11) default NULL,
  `sequence` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_sequence
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_qa_sequence_real
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_qa_sequence_real`;
CREATE TABLE `knowcafe_qa_sequence_real` (
  `sequence` int(11) default NULL,
  `cnt` bigint(21) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_qa_sequence_real
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_rank
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_rank`;
CREATE TABLE `knowcafe_rank` (
  `knowcafe_type` tinyint(4) NOT NULL default '0',
  `rank` int(11) NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `total_point` int(11) unsigned NOT NULL default '0',
  `now_point` int(11) unsigned NOT NULL default '0',
  `old_rank` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `black` tinyint(3) unsigned NOT NULL default '0',
  KEY `ix_knowcafe_type` USING BTREE (`knowcafe_type`,`rank`),
  KEY `ix_m_id` USING BTREE (`m_id`),
  KEY `idx_black` USING BTREE (`black`),
  KEY `idx_rank` USING BTREE (`black`,`rank`),
  KEY `idx_charac_name` USING BTREE (`black`,`charac_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_search
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_search`;
CREATE TABLE `knowcafe_search` (
  `knowcafe_type` tinyint(4) NOT NULL default '0',
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`knowcafe_type`),
  KEY `idx2` USING BTREE (`no`),
  KEY `idx3` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`class`),
  KEY `idx5` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_tip
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_tip`;
CREATE TABLE `knowcafe_tip` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`sequence`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_cat_seq` USING BTREE (`category`,`sequence`),
  KEY `idx_notice` USING BTREE (`notice`),
  KEY `idx_charac_name` USING BTREE (`charac_name`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_tip
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_tip_comment
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_tip_comment`;
CREATE TABLE `knowcafe_tip_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_tip_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_tip_content
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_tip_content`;
CREATE TABLE `knowcafe_tip_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_tip_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_tip_file
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_tip_file`;
CREATE TABLE `knowcafe_tip_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_tip_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_tip_search
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_tip_search`;
CREATE TABLE `knowcafe_tip_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx_5` USING BTREE (`class`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_tip_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowcafe_writing_stats
-- ----------------------------
DROP TABLE IF EXISTS `knowcafe_writing_stats`;
CREATE TABLE `knowcafe_writing_stats` (
  `date_enroll` date NOT NULL default '2021-11-19',
  `tip_sum` mediumint(8) unsigned NOT NULL default '0',
  `tim_recom` mediumint(8) unsigned NOT NULL default '0',
  `qa_sum` mediumint(8) unsigned NOT NULL default '0',
  `qa_recom` mediumint(8) unsigned NOT NULL default '0',
  `job_sum` mediumint(8) unsigned NOT NULL default '0',
  `job_recom` mediumint(8) unsigned NOT NULL default '0',
  `skill_sum` mediumint(8) unsigned NOT NULL default '0',
  `skill_recom` mediumint(8) unsigned NOT NULL default '0',
  `tip_hit` mediumint(8) unsigned NOT NULL default '0',
  `qa_hit` mediumint(8) unsigned NOT NULL default '0',
  `job_hit` mediumint(8) unsigned NOT NULL default '0',
  `skill_hit` mediumint(8) unsigned NOT NULL default '0',
  `discussion_sum` mediumint(8) unsigned default '0',
  `discussion_recom` mediumint(8) unsigned default '0',
  `discussion_hit` mediumint(8) unsigned default '0',
  PRIMARY KEY  (`date_enroll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowcafe_writing_stats
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowl_bbs
-- ----------------------------
DROP TABLE IF EXISTS `knowl_bbs`;
CREATE TABLE `knowl_bbs` (
  `gno` int(11) NOT NULL auto_increment,
  `kn_id` int(11) NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  `mod_date` int(11) NOT NULL default '0',
  `hits` mediumint(8) unsigned NOT NULL default '0',
  `body_type` char(1) NOT NULL default '',
  `reg_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `subject` varchar(50) NOT NULL default '',
  `status` tinyint(3) unsigned NOT NULL default '0',
  `up` mediumint(8) unsigned NOT NULL default '0',
  `down` mediumint(8) unsigned NOT NULL default '0',
  `other_flag` tinyint(4) NOT NULL default '0',
  `url_go` varchar(20) NOT NULL default '',
  `url_to` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowl_bbs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowl_body
-- ----------------------------
DROP TABLE IF EXISTS `knowl_body`;
CREATE TABLE `knowl_body` (
  `gno` int(11) NOT NULL default '0',
  `body` text NOT NULL,
  PRIMARY KEY  (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowl_body
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowl_class
-- ----------------------------
DROP TABLE IF EXISTS `knowl_class`;
CREATE TABLE `knowl_class` (
  `kn_id` int(11) NOT NULL default '0',
  `sup_id` int(11) NOT NULL default '0',
  `kn_name` varchar(50) NOT NULL default '',
  `cur_depth` int(11) NOT NULL default '0',
  PRIMARY KEY  (`kn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowl_class
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowl_class_tree
-- ----------------------------
DROP TABLE IF EXISTS `knowl_class_tree`;
CREATE TABLE `knowl_class_tree` (
  `kn_id` int(10) unsigned NOT NULL default '0',
  `up_id` int(10) unsigned NOT NULL default '0',
  `depth` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `uk_tree` USING BTREE (`kn_id`,`up_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowl_class_tree
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowl_files
-- ----------------------------
DROP TABLE IF EXISTS `knowl_files`;
CREATE TABLE `knowl_files` (
  `gno` int(11) NOT NULL default '0',
  `gf_no` tinyint(4) NOT NULL default '0',
  `file_server` varchar(50) NOT NULL default '',
  `file_location` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`gno`,`gf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowl_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowl_test
-- ----------------------------
DROP TABLE IF EXISTS `knowl_test`;
CREATE TABLE `knowl_test` (
  `gno` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowl_test
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `kn_id` bigint(20) unsigned NOT NULL default '0',
  `question_flag` tinyint(4) NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `know_flag` tinyint(4) NOT NULL default '0',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`kn_id`),
  KEY `idx3` USING BTREE (`m_id`),
  KEY `idx4` USING BTREE (`charac_no`),
  KEY `idx_value` USING BTREE (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_best
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_best`;
CREATE TABLE `knowledge_best` (
  `kn_id` int(10) unsigned NOT NULL default '0',
  `rank` tinyint(4) NOT NULL default '0',
  `content_no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`kn_id`,`rank`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_best
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_class
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_class`;
CREATE TABLE `knowledge_class` (
  `kn_id` bigint(20) unsigned NOT NULL default '0',
  `sup_id` bigint(20) unsigned NOT NULL default '0',
  `kn_name` varchar(50) NOT NULL default '',
  `cur_depth` int(11) NOT NULL default '0',
  PRIMARY KEY  (`kn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_class
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_comment
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_comment`;
CREATE TABLE `knowledge_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `value` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_content
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_content`;
CREATE TABLE `knowledge_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_file
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_file`;
CREATE TABLE `knowledge_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_search
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_search`;
CREATE TABLE `knowledge_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `kn_id` bigint(20) unsigned NOT NULL default '0',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`kn_id`),
  KEY `idx3` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_test
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_test`;
CREATE TABLE `knowledge_test` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `kn_id` bigint(20) unsigned NOT NULL default '0',
  `question_flag` tinyint(4) NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `know_flag` tinyint(4) NOT NULL default '0',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`kn_id`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`m_id`),
  KEY `idx4` USING BTREE (`charac_no`),
  KEY `idx_value` USING BTREE (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_test
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_test_content
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_test_content`;
CREATE TABLE `knowledge_test_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_test_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_test_file
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_test_file`;
CREATE TABLE `knowledge_test_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_test_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowledge_word
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_word`;
CREATE TABLE `knowledge_word` (
  `word` char(32) NOT NULL default '',
  `word_point` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`word`),
  KEY `idx_word_point` USING BTREE (`word_point`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_word
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowstandby
-- ----------------------------
DROP TABLE IF EXISTS `knowstandby`;
CREATE TABLE `knowstandby` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `kn_id` bigint(20) unsigned NOT NULL default '0',
  `question_flag` tinyint(4) NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `know_flag` tinyint(4) NOT NULL default '0',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`kn_id`),
  KEY `idx3` USING BTREE (`m_id`),
  KEY `idx4` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowstandby
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowstandby_comment
-- ----------------------------
DROP TABLE IF EXISTS `knowstandby_comment`;
CREATE TABLE `knowstandby_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `value` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowstandby_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowstandby_content
-- ----------------------------
DROP TABLE IF EXISTS `knowstandby_content`;
CREATE TABLE `knowstandby_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowstandby_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowstandby_file
-- ----------------------------
DROP TABLE IF EXISTS `knowstandby_file`;
CREATE TABLE `knowstandby_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowstandby_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for knowstandby_search
-- ----------------------------
DROP TABLE IF EXISTS `knowstandby_search`;
CREATE TABLE `knowstandby_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `kn_id` bigint(20) unsigned NOT NULL default '0',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`kn_id`),
  KEY `idx3` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowstandby_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_3month_stop_web
-- ----------------------------
DROP TABLE IF EXISTS `log_3month_stop_web`;
CREATE TABLE `log_3month_stop_web` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `m_id` int(10) NOT NULL default '0',
  `is_complete` tinyint(3) NOT NULL default '0',
  `is_confirm` tinyint(3) NOT NULL default '0',
  `server_no` tinyint(3) default '0',
  PRIMARY KEY  (`occ_time`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_3month_stop_web
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for magazine
-- ----------------------------
DROP TABLE IF EXISTS `magazine`;
CREATE TABLE `magazine` (
  `mz_id` int(11) NOT NULL auto_increment,
  `degree` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `seq` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `hists` int(10) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `user_id` varchar(20) NOT NULL default '',
  `mod_date` int(11) NOT NULL default '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL default '',
  `writer` varchar(15) NOT NULL default '',
  `summary` varchar(255) NOT NULL default '',
  `open_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`mz_id`),
  UNIQUE KEY `degree` USING BTREE (`degree`,`category`,`seq`),
  KEY `idx_open_flag` USING BTREE (`open_flag`),
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of magazine
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for magazine_comment
-- ----------------------------
DROP TABLE IF EXISTS `magazine_comment`;
CREATE TABLE `magazine_comment` (
  `no` int(8) unsigned NOT NULL auto_increment,
  `mz_id` int(8) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(200) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of magazine_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for magazine_content
-- ----------------------------
DROP TABLE IF EXISTS `magazine_content`;
CREATE TABLE `magazine_content` (
  `mz_id` int(11) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of magazine_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for manager_promotion_detail
-- ----------------------------
DROP TABLE IF EXISTS `manager_promotion_detail`;
CREATE TABLE `manager_promotion_detail` (
  `pro_no` int(11) NOT NULL default '0',
  `pro_type` tinyint(3) unsigned NOT NULL default '0',
  `mag_id` int(11) NOT NULL default '0',
  KEY `idx_pro_type` USING BTREE (`pro_type`),
  KEY `idx_mag` USING BTREE (`mag_id`),
  KEY `idx_pro_no` USING BTREE (`pro_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager_promotion_detail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for manager_promotion_info
-- ----------------------------
DROP TABLE IF EXISTS `manager_promotion_info`;
CREATE TABLE `manager_promotion_info` (
  `pro_no` int(11) NOT NULL auto_increment,
  `promotion_name` varchar(255) NOT NULL default '',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `user_id` varchar(25) NOT NULL default '',
  `promotion_explain` text NOT NULL,
  PRIMARY KEY  (`pro_no`),
  KEY `idx_user_id` USING BTREE (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager_promotion_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_coin
-- ----------------------------
DROP TABLE IF EXISTS `member_coin`;
CREATE TABLE `member_coin` (
  `m_id` int(11) NOT NULL default '0',
  `pay_coin` int(11) unsigned NOT NULL default '0',
  `event_coin` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_coin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_id_pass_change_pv
-- ----------------------------
DROP TABLE IF EXISTS `member_id_pass_change_pv`;
CREATE TABLE `member_id_pass_change_pv` (
  `id` int(11) NOT NULL auto_increment,
  `occ_date` date NOT NULL default '2021-11-19',
  `type` smallint(6) NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx1` USING BTREE (`occ_date`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_id_pass_change_pv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for month_item
-- ----------------------------
DROP TABLE IF EXISTS `month_item`;
CREATE TABLE `month_item` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `state` enum('N','Y') NOT NULL default 'N',
  `pre_img` varchar(100) NOT NULL default '',
  `now_img` varchar(100) NOT NULL default '',
  `next_img` varchar(100) NOT NULL default '',
  `admin_no` int(10) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `pre_pop` varchar(100) NOT NULL default '',
  `now_pop` varchar(100) NOT NULL default '',
  `next_pop` varchar(100) NOT NULL default '',
  `pre_map` varchar(16) NOT NULL default '',
  `now_map` varchar(16) NOT NULL default '',
  `next_map` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx_state` USING BTREE (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of month_item
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for my_guestbook0
-- ----------------------------
DROP TABLE IF EXISTS `my_guestbook0`;
CREATE TABLE `my_guestbook0` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `master` int(10) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `comment_text` text,
  `emoticon` tinyint(2) NOT NULL default '1',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`master`,`no`),
  UNIQUE KEY `uk_no` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_guestbook0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for my_guestbook0_reply
-- ----------------------------
DROP TABLE IF EXISTS `my_guestbook0_reply`;
CREATE TABLE `my_guestbook0_reply` (
  `r_id` mediumint(8) NOT NULL auto_increment,
  `no` mediumint(8) NOT NULL default '0',
  `comment_reply` text NOT NULL,
  PRIMARY KEY  (`r_id`),
  KEY `idx_no` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_guestbook0_reply
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine`;
CREATE TABLE `newmagazine` (
  `mz_id` int(11) NOT NULL auto_increment,
  `degree` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `seq` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `hists` int(10) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `user_id` varchar(20) NOT NULL default '',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `mod_date` int(11) NOT NULL default '0',
  `point` int(11) NOT NULL default '0',
  `point_cnt` int(11) NOT NULL default '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL default '',
  `writer` varchar(15) NOT NULL default '',
  `summary` varchar(255) NOT NULL default '',
  `open_flag` tinyint(4) NOT NULL default '0',
  `open_date` int(11) NOT NULL default '0',
  `comments` int(11) NOT NULL default '0',
  PRIMARY KEY  (`mz_id`),
  KEY `idx_open_flag` USING BTREE (`open_flag`),
  KEY `degree` USING BTREE (`degree`,`category`,`seq`),
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_comment
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_comment`;
CREATE TABLE `newmagazine_comment` (
  `no` int(8) unsigned NOT NULL auto_increment,
  `mz_id` int(8) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(200) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_content
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_content`;
CREATE TABLE `newmagazine_content` (
  `mz_id` int(11) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_image_upload
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_image_upload`;
CREATE TABLE `newmagazine_image_upload` (
  `no` int(11) NOT NULL auto_increment,
  `date_start` date NOT NULL default '2021-11-19',
  `date_end` date NOT NULL default '2021-11-19',
  `img_url` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_image_upload
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_issue_of_week
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_issue_of_week`;
CREATE TABLE `newmagazine_issue_of_week` (
  `no` int(11) NOT NULL auto_increment,
  `occ_date` date NOT NULL default '2021-11-19',
  `title` varchar(50) NOT NULL default '',
  `contents` text,
  `dnf_main` text,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_issue_of_week
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_recomm
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_recomm`;
CREATE TABLE `newmagazine_recomm` (
  `m_id` int(11) NOT NULL default '0',
  `mz_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_recomm
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_ucc
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_ucc`;
CREATE TABLE `newmagazine_ucc` (
  `mz_id` int(11) NOT NULL auto_increment,
  `degree` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `seq` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `hists` int(10) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `user_id` varchar(20) NOT NULL default '',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `mod_date` int(11) NOT NULL default '0',
  `point` int(11) NOT NULL default '0',
  `point_cnt` int(11) NOT NULL default '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL default '',
  `writer` varchar(15) NOT NULL default '',
  `summary` varchar(255) NOT NULL default '',
  `open_flag` tinyint(4) NOT NULL default '0',
  `open_date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`mz_id`),
  KEY `idx_open_flag` USING BTREE (`open_flag`),
  KEY `degree` USING BTREE (`degree`,`category`,`seq`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_charac_name` USING BTREE (`charac_name`(10)),
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_ucc
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_ucc_comment
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_ucc_comment`;
CREATE TABLE `newmagazine_ucc_comment` (
  `no` int(8) unsigned NOT NULL auto_increment,
  `mz_id` int(8) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(200) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_ucc_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newmagazine_ucc_content
-- ----------------------------
DROP TABLE IF EXISTS `newmagazine_ucc_content`;
CREATE TABLE `newmagazine_ucc_content` (
  `mz_id` int(11) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmagazine_ucc_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for news_bbs
-- ----------------------------
DROP TABLE IF EXISTS `news_bbs`;
CREATE TABLE `news_bbs` (
  `bbs_code` tinyint(4) NOT NULL default '0',
  `emph_yn` tinyint(1) NOT NULL default '0',
  `no` int(11) NOT NULL auto_increment,
  `user_id` varchar(12) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `html_yn` tinyint(1) default '0',
  `subject` varchar(50) NOT NULL default '',
  `body` text NOT NULL,
  `hits` smallint(6) NOT NULL default '0',
  `prev_no` int(11) NOT NULL default '0',
  `next_no` int(11) NOT NULL default '0',
  `updt_date` int(11) default NULL,
  `use_yn` tinyint(1) NOT NULL default '1',
  `file_name` varchar(50) default NULL,
  PRIMARY KEY  (`bbs_code`,`emph_yn`,`no`),
  UNIQUE KEY `uk_no` USING BTREE (`no`),
  KEY `idx_prev` USING BTREE (`prev_no`),
  KEY `idx_next` USING BTREE (`next_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_bbs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for newyear2008_comment
-- ----------------------------
DROP TABLE IF EXISTS `newyear2008_comment`;
CREATE TABLE `newyear2008_comment` (
  `no` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`no`),
  UNIQUE KEY `m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newyear2008_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `bbs_name` varchar(10) NOT NULL default '',
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  KEY `idx1` USING BTREE (`bbs_name`),
  KEY `idx2` USING BTREE (`no`),
  KEY `idx3` USING BTREE (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for notice_comment
-- ----------------------------
DROP TABLE IF EXISTS `notice_comment`;
CREATE TABLE `notice_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for notice_comment_realradio_view
-- ----------------------------
DROP TABLE IF EXISTS `notice_comment_realradio_view`;
CREATE TABLE `notice_comment_realradio_view` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_comment_realradio_view
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_cate
-- ----------------------------
DROP TABLE IF EXISTS `opencast_cate`;
CREATE TABLE `opencast_cate` (
  `cate_no` int(10) unsigned NOT NULL auto_increment,
  `cate_name` varchar(50) NOT NULL default '',
  `reg_date` date NOT NULL default '2021-11-19',
  `open_date` date NOT NULL default '2021-11-19',
  PRIMARY KEY  (`cate_no`),
  UNIQUE KEY `cate_name` USING BTREE (`cate_name`),
  KEY `idx_reg_date` USING BTREE (`reg_date`),
  KEY `idx_open_date` USING BTREE (`open_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_cate
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_content
-- ----------------------------
DROP TABLE IF EXISTS `opencast_content`;
CREATE TABLE `opencast_content` (
  `bbs_no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `cate_no` int(10) unsigned NOT NULL default '0',
  `cc_type` tinyint(3) unsigned NOT NULL default '0',
  `list_type` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `popular_word` varchar(255) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `view` int(10) unsigned NOT NULL default '0',
  `img_url` varchar(255) NOT NULL default '',
  `img_view` int(10) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `content_cnt` tinyint(3) unsigned NOT NULL default '0',
  `comment` text NOT NULL,
  PRIMARY KEY  (`bbs_no`),
  KEY `idx_cc_type` USING BTREE (`cc_type`),
  KEY `idx_cc_no` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_content_sub
-- ----------------------------
DROP TABLE IF EXISTS `opencast_content_sub`;
CREATE TABLE `opencast_content_sub` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `popular_word` varchar(255) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `view` int(10) unsigned NOT NULL default '0',
  `img_url` varchar(255) NOT NULL default '',
  `img_view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_cc_no` USING BTREE (`m_id`,`bbs_no`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_content_sub
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_editor
-- ----------------------------
DROP TABLE IF EXISTS `opencast_editor`;
CREATE TABLE `opencast_editor` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `reg_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `cast_name` varchar(20) NOT NULL default '',
  `cate_no` int(10) unsigned NOT NULL default '0',
  `cast_intro` varchar(255) NOT NULL default '',
  `name` varchar(20) NOT NULL default '',
  `homepage` varchar(50) NOT NULL default '',
  `contact` varchar(20) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `editor_intro` text NOT NULL,
  `mng_type` tinyint(3) unsigned NOT NULL default '0',
  `order_num` tinyint(3) unsigned NOT NULL default '0',
  `grade` tinyint(4) default '0',
  PRIMARY KEY  (`m_id`),
  KEY `idx_cate_no` USING BTREE (`cate_no`),
  KEY `idx_mng_type` USING BTREE (`mng_type`),
  KEY `idx_order` USING BTREE (`order_num`),
  KEY `grade` USING BTREE (`grade`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_editor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_member_info
-- ----------------------------
DROP TABLE IF EXISTS `opencast_member_info`;
CREATE TABLE `opencast_member_info` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `sub_type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_member_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_search
-- ----------------------------
DROP TABLE IF EXISTS `opencast_search`;
CREATE TABLE `opencast_search` (
  `bbs_no` int(10) unsigned NOT NULL default '0',
  `class` enum('title','link') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx2` USING BTREE (`bbs_no`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_stat
-- ----------------------------
DROP TABLE IF EXISTS `opencast_stat`;
CREATE TABLE `opencast_stat` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `cur_date` date NOT NULL default '2021-11-19',
  `cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`cur_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_stat
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for opencast_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `opencast_subscribe`;
CREATE TABLE `opencast_subscribe` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `cc_no` int(10) unsigned NOT NULL default '0',
  `occ_date` date NOT NULL default '2021-11-19',
  PRIMARY KEY  (`no`),
  KEY `idx_cc_no` USING BTREE (`cc_no`),
  KEY `idx_occ_date` USING BTREE (`occ_date`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opencast_subscribe
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for other_bbsinfo
-- ----------------------------
DROP TABLE IF EXISTS `other_bbsinfo`;
CREATE TABLE `other_bbsinfo` (
  `kn_id` int(11) NOT NULL default '0',
  `url_go` varchar(20) NOT NULL default '',
  `url_to` varchar(20) NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `ref_url` varchar(100) NOT NULL default '',
  `content` text NOT NULL,
  PRIMARY KEY  (`url_go`,`url_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of other_bbsinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for other_bbsinfo2
-- ----------------------------
DROP TABLE IF EXISTS `other_bbsinfo2`;
CREATE TABLE `other_bbsinfo2` (
  `kn_id` int(11) NOT NULL default '0',
  `url_go` varchar(20) NOT NULL default '',
  `url_to` varchar(20) NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `ref_url` varchar(100) NOT NULL default '',
  `content` longtext NOT NULL,
  PRIMARY KEY  (`url_go`,`url_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of other_bbsinfo2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic
-- ----------------------------
DROP TABLE IF EXISTS `penpic`;
CREATE TABLE `penpic` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic2
-- ----------------------------
DROP TABLE IF EXISTS `penpic2`;
CREATE TABLE `penpic2` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `degree` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_degree` USING BTREE (`degree`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic2_comment
-- ----------------------------
DROP TABLE IF EXISTS `penpic2_comment`;
CREATE TABLE `penpic2_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `point` tinyint(3) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic2_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic2_content
-- ----------------------------
DROP TABLE IF EXISTS `penpic2_content`;
CREATE TABLE `penpic2_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic2_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic2_entry
-- ----------------------------
DROP TABLE IF EXISTS `penpic2_entry`;
CREATE TABLE `penpic2_entry` (
  `m_id` int(11) NOT NULL default '0',
  `penpic_type` tinyint(4) NOT NULL default '0',
  `cnt` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic2_entry
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic2_file
-- ----------------------------
DROP TABLE IF EXISTS `penpic2_file`;
CREATE TABLE `penpic2_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic2_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic2_search
-- ----------------------------
DROP TABLE IF EXISTS `penpic2_search`;
CREATE TABLE `penpic2_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  `degree` tinyint(4) NOT NULL default '0',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`penpic_type`),
  KEY `idx_degree` USING BTREE (`degree`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic2_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic2_valuation
-- ----------------------------
DROP TABLE IF EXISTS `penpic2_valuation`;
CREATE TABLE `penpic2_valuation` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic2_valuation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic3
-- ----------------------------
DROP TABLE IF EXISTS `penpic3`;
CREATE TABLE `penpic3` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `degree` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_degree` USING BTREE (`degree`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic3_comment
-- ----------------------------
DROP TABLE IF EXISTS `penpic3_comment`;
CREATE TABLE `penpic3_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `point` tinyint(3) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic3_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic3_content
-- ----------------------------
DROP TABLE IF EXISTS `penpic3_content`;
CREATE TABLE `penpic3_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic3_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic3_entry
-- ----------------------------
DROP TABLE IF EXISTS `penpic3_entry`;
CREATE TABLE `penpic3_entry` (
  `m_id` int(11) NOT NULL default '0',
  `penpic_type` tinyint(4) NOT NULL default '0',
  `cnt` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic3_entry
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic3_file
-- ----------------------------
DROP TABLE IF EXISTS `penpic3_file`;
CREATE TABLE `penpic3_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic3_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic3_search
-- ----------------------------
DROP TABLE IF EXISTS `penpic3_search`;
CREATE TABLE `penpic3_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  `degree` tinyint(4) NOT NULL default '0',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`penpic_type`),
  KEY `idx_degree` USING BTREE (`degree`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic3_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic3_valuation
-- ----------------------------
DROP TABLE IF EXISTS `penpic3_valuation`;
CREATE TABLE `penpic3_valuation` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic3_valuation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic4
-- ----------------------------
DROP TABLE IF EXISTS `penpic4`;
CREATE TABLE `penpic4` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `degree` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_degree` USING BTREE (`degree`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic4
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic4_comment
-- ----------------------------
DROP TABLE IF EXISTS `penpic4_comment`;
CREATE TABLE `penpic4_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `point` tinyint(3) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic4_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic4_content
-- ----------------------------
DROP TABLE IF EXISTS `penpic4_content`;
CREATE TABLE `penpic4_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic4_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic4_entry
-- ----------------------------
DROP TABLE IF EXISTS `penpic4_entry`;
CREATE TABLE `penpic4_entry` (
  `m_id` int(11) NOT NULL default '0',
  `penpic_type` tinyint(4) NOT NULL default '0',
  `cnt` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic4_entry
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic4_file
-- ----------------------------
DROP TABLE IF EXISTS `penpic4_file`;
CREATE TABLE `penpic4_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic4_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic4_search
-- ----------------------------
DROP TABLE IF EXISTS `penpic4_search`;
CREATE TABLE `penpic4_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  `degree` tinyint(4) NOT NULL default '0',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`penpic_type`),
  KEY `idx_degree` USING BTREE (`degree`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic4_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic4_valuation
-- ----------------------------
DROP TABLE IF EXISTS `penpic4_valuation`;
CREATE TABLE `penpic4_valuation` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic4_valuation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic_comment
-- ----------------------------
DROP TABLE IF EXISTS `penpic_comment`;
CREATE TABLE `penpic_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `point` tinyint(3) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic_content
-- ----------------------------
DROP TABLE IF EXISTS `penpic_content`;
CREATE TABLE `penpic_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic_entry
-- ----------------------------
DROP TABLE IF EXISTS `penpic_entry`;
CREATE TABLE `penpic_entry` (
  `m_id` int(11) NOT NULL default '0',
  `penpic_type` tinyint(4) NOT NULL default '0',
  `cnt` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`penpic_type`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic_entry
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic_file
-- ----------------------------
DROP TABLE IF EXISTS `penpic_file`;
CREATE TABLE `penpic_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic_search
-- ----------------------------
DROP TABLE IF EXISTS `penpic_search`;
CREATE TABLE `penpic_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_type` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`penpic_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for penpic_valuation
-- ----------------------------
DROP TABLE IF EXISTS `penpic_valuation`;
CREATE TABLE `penpic_valuation` (
  `no` int(10) unsigned NOT NULL default '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penpic_valuation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `sub_job` tinyint(3) unsigned NOT NULL default '0',
  `lev` tinyint(4) NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx_lev` USING BTREE (`lev`),
  KEY `idx_ca_no` USING BTREE (`category`,`no`),
  KEY `idx_ca_subjob` USING BTREE (`category`,`sub_job`,`no`),
  KEY `idx_createday` USING BTREE (`create_day`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_charac_name` USING BTREE (`charac_name`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for plan_cnt
-- ----------------------------
DROP TABLE IF EXISTS `plan_cnt`;
CREATE TABLE `plan_cnt` (
  `category` tinyint(3) unsigned NOT NULL default '0',
  `sub_job` tinyint(3) unsigned NOT NULL default '0',
  `cnt` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`category`,`sub_job`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_cnt
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for plan_comment
-- ----------------------------
DROP TABLE IF EXISTS `plan_comment`;
CREATE TABLE `plan_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for plan_content
-- ----------------------------
DROP TABLE IF EXISTS `plan_content`;
CREATE TABLE `plan_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `skill` text NOT NULL,
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for plan_file
-- ----------------------------
DROP TABLE IF EXISTS `plan_file`;
CREATE TABLE `plan_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for plan_search
-- ----------------------------
DROP TABLE IF EXISTS `plan_search`;
CREATE TABLE `plan_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `no` USING BTREE (`no`),
  KEY `word` USING BTREE (`word`),
  KEY `class_word` USING BTREE (`class`,`word`),
  KEY `category_multi` USING BTREE (`category`,`class`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion`;
CREATE TABLE `powerclub_discussion` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') default NULL,
  `category` tinyint(3) unsigned default '0',
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default '0',
  `m_user_id` varchar(16) default NULL,
  `m_sex` enum('m','f') default 'm',
  `server_id` tinyint(4) default '0',
  `charac_no` int(11) default '0',
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default '0',
  `title` varchar(120) default NULL,
  `create_day` int(10) unsigned default '0',
  `comment` mediumint(8) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned default '0',
  `recom` mediumint(8) unsigned default '0',
  `file` mediumint(8) unsigned default '0',
  `depth` tinyint(3) unsigned default '0',
  `sequence` double unsigned default NULL,
  `positive` mediumint(8) unsigned default '0',
  `negative` mediumint(8) unsigned default '0',
  `bbs_no` mediumint(8) unsigned NOT NULL default '0',
  `positive_mark` tinyint(4) NOT NULL default '0',
  `negative_mark` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`sequence`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_cat_seq` USING BTREE (`category`,`sequence`),
  KEY `idx_notice` USING BTREE (`notice`),
  KEY `idx_bbs_no` USING BTREE (`bbs_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_bbs
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_bbs`;
CREATE TABLE `powerclub_discussion_bbs` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') default NULL,
  `category` tinyint(3) unsigned default '0',
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default '0',
  `m_user_id` varchar(16) default NULL,
  `m_sex` enum('m','f') default 'm',
  `server_id` tinyint(4) default '0',
  `charac_no` int(11) default '0',
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default '0',
  `title` varchar(120) default NULL,
  `create_day` int(10) unsigned default '0',
  `comment` mediumint(8) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_cat_seq` USING BTREE (`category`),
  KEY `idx_notice` USING BTREE (`notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_bbs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_bbs_content
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_bbs_content`;
CREATE TABLE `powerclub_discussion_bbs_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text,
  `content_type` enum('br','text','all') default 'br',
  `ip` varchar(15) default NULL,
  `ring` smallint(5) unsigned default NULL,
  `sms` enum('y','n') default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_bbs_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_bbs_file
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_bbs_file`;
CREATE TABLE `powerclub_discussion_bbs_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned default NULL,
  `file_url` char(128) default NULL,
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_bbs_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_bbs_search
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_bbs_search`;
CREATE TABLE `powerclub_discussion_bbs_search` (
  `no` int(10) unsigned default '0',
  `category` tinyint(3) unsigned default '0',
  `class` enum('title','nickname','content','charac_name') default 'title',
  `word` char(32) default NULL,
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx_5` USING BTREE (`class`,`word`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_bbs_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_comment
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_comment`;
CREATE TABLE `powerclub_discussion_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned default NULL,
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default NULL,
  `m_user_id` varchar(16) default NULL,
  `m_sex` enum('m','f') default NULL,
  `server_id` tinyint(4) default NULL,
  `charac_no` int(11) default NULL,
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default NULL,
  `comment_text` text NOT NULL,
  `ip` varchar(15) default NULL,
  `create_day` int(10) unsigned default NULL,
  `recom` mediumint(8) unsigned default '0',
  `opinion_mode` tinyint(1) default '0',
  `del_flag` tinyint(1) unsigned NOT NULL default '0',
  `comment_cnt` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_comment_recom
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_comment_recom`;
CREATE TABLE `powerclub_discussion_comment_recom` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `comment_no` mediumint(8) unsigned default NULL,
  `m_id` int(10) unsigned default NULL,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_comment_recom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_comment_reply
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_comment_reply`;
CREATE TABLE `powerclub_discussion_comment_reply` (
  `rno` mediumint(8) unsigned NOT NULL auto_increment,
  `no` mediumint(8) unsigned default NULL,
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default NULL,
  `m_user_id` varchar(16) default NULL,
  `server_id` tinyint(4) default NULL,
  `charac_no` int(11) default NULL,
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default NULL,
  `comment_text` varchar(255) default NULL,
  `create_day` int(10) unsigned default NULL,
  `depth` tinyint(3) unsigned default '0',
  `sequence` double unsigned default NULL,
  `del_flag` tinyint(1) unsigned NOT NULL default '0',
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`rno`),
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`sequence`),
  KEY `idx3` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_comment_reply
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_content
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_content`;
CREATE TABLE `powerclub_discussion_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text,
  `content_type` enum('br','text','all') default 'br',
  `ip` varchar(15) default NULL,
  `ring` smallint(5) unsigned default NULL,
  `sms` enum('y','n') default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_file
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_file`;
CREATE TABLE `powerclub_discussion_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned default NULL,
  `file_url` char(128) default NULL,
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for powerclub_discussion_search
-- ----------------------------
DROP TABLE IF EXISTS `powerclub_discussion_search`;
CREATE TABLE `powerclub_discussion_search` (
  `no` int(10) unsigned default '0',
  `category` tinyint(3) unsigned default '0',
  `class` enum('title','nickname','content','charac_name') default 'title',
  `word` char(32) default NULL,
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx_5` USING BTREE (`class`,`word`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powerclub_discussion_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for protect_acc_release_log
-- ----------------------------
DROP TABLE IF EXISTS `protect_acc_release_log`;
CREATE TABLE `protect_acc_release_log` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned NOT NULL default '0',
  `occ_time` int(10) unsigned NOT NULL default '0',
  `punish_type` int(11) NOT NULL default '0',
  `cert_flag` tinyint(4) NOT NULL default '0',
  `cert_type` tinyint(4) NOT NULL default '0',
  `reason` varchar(200) default NULL,
  `apply_flag` tinyint(4) NOT NULL default '2',
  PRIMARY KEY  (`no`),
  KEY `idx_mid` USING BTREE (`m_id`),
  KEY `idx_punish_type` USING BTREE (`punish_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of protect_acc_release_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0
-- ----------------------------
DROP TABLE IF EXISTS `rdar0`;
CREATE TABLE `rdar0` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`sequence`),
  KEY `idx_no` USING BTREE (`no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_charac_name` USING BTREE (`charac_name`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_comment
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_comment`;
CREATE TABLE `rdar0_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(255) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_content
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_content`;
CREATE TABLE `rdar0_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_file
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_file`;
CREATE TABLE `rdar0_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_myisam
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_myisam`;
CREATE TABLE `rdar0_myisam` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`sequence`),
  KEY `idx2` USING BTREE (`charac_name`),
  KEY `idx4` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_myisam
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_search
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_search`;
CREATE TABLE `rdar0_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`class`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_search_content
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_search_content`;
CREATE TABLE `rdar0_search_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_search_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_search_etc
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_search_etc`;
CREATE TABLE `rdar0_search_etc` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_search_etc
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar0_view
-- ----------------------------
DROP TABLE IF EXISTS `rdar0_view`;
CREATE TABLE `rdar0_view` (
  `total_count` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar0_view
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar6
-- ----------------------------
DROP TABLE IF EXISTS `rdar6`;
CREATE TABLE `rdar6` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx2` USING BTREE (`create_day`),
  KEY `idx3` USING BTREE (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar6
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar6_comment
-- ----------------------------
DROP TABLE IF EXISTS `rdar6_comment`;
CREATE TABLE `rdar6_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar6_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar6_content
-- ----------------------------
DROP TABLE IF EXISTS `rdar6_content`;
CREATE TABLE `rdar6_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar6_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar6_file
-- ----------------------------
DROP TABLE IF EXISTS `rdar6_file`;
CREATE TABLE `rdar6_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar6_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar6_search
-- ----------------------------
DROP TABLE IF EXISTS `rdar6_search`;
CREATE TABLE `rdar6_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar6_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rdar_beta_tester
-- ----------------------------
DROP TABLE IF EXISTS `rdar_beta_tester`;
CREATE TABLE `rdar_beta_tester` (
  `m_id` int(11) NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `req_date` int(11) NOT NULL default '0',
  `pc_spec` text,
  `line_code` tinyint(4) NOT NULL default '0',
  `job_code` tinyint(4) NOT NULL default '0',
  `genre_code` tinyint(4) NOT NULL default '0',
  `fav_game` varchar(30) NOT NULL default '',
  `req_reason` varchar(255) NOT NULL default '',
  `winning_yn` tinyint(1) default NULL,
  `times` tinyint(1) default NULL,
  PRIMARY KEY  (`m_id`),
  UNIQUE KEY `idx_userid` USING BTREE (`m_user_id`),
  KEY `idx_req_date` USING BTREE (`req_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdar_beta_tester
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realdrama
-- ----------------------------
DROP TABLE IF EXISTS `realdrama`;
CREATE TABLE `realdrama` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `broadcast_day` int(10) unsigned NOT NULL default '0',
  `appear` varchar(30) NOT NULL default '',
  `plan` varchar(15) NOT NULL default '',
  `play` varchar(15) NOT NULL default '',
  `summary` varchar(200) NOT NULL default '',
  `content` text NOT NULL,
  `view` int(10) unsigned NOT NULL default '0',
  `banner1` varchar(128) NOT NULL default '',
  `banner2` varchar(128) NOT NULL default '',
  `file_url` varchar(128) NOT NULL default '',
  `open_flag` tinyint(3) unsigned NOT NULL default '0',
  `main_flag` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`broadcast_day`),
  KEY `idx5` USING BTREE (`open_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realdrama
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realdrama_comment
-- ----------------------------
DROP TABLE IF EXISTS `realdrama_comment`;
CREATE TABLE `realdrama_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realdrama_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio
-- ----------------------------
DROP TABLE IF EXISTS `realradio`;
CREATE TABLE `realradio` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `bbs_type` tinyint(4) NOT NULL default '0',
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx5` USING BTREE (`bbs_type`),
  KEY `idx2` USING BTREE (`charac_name`),
  KEY `idx_notice` USING BTREE (`notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_1year_comment
-- ----------------------------
DROP TABLE IF EXISTS `realradio_1year_comment`;
CREATE TABLE `realradio_1year_comment` (
  `no` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`no`),
  UNIQUE KEY `m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_1year_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_addhit_uv
-- ----------------------------
DROP TABLE IF EXISTS `realradio_addhit_uv`;
CREATE TABLE `realradio_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `click_view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_addhit_uv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_again
-- ----------------------------
DROP TABLE IF EXISTS `realradio_again`;
CREATE TABLE `realradio_again` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `broadcast_day` int(10) unsigned NOT NULL default '0',
  `file_url` varchar(128) NOT NULL default '',
  `useyn` tinyint(3) unsigned NOT NULL default '0',
  `view` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`broadcast_day`),
  KEY `idx2` USING BTREE (`create_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_again
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_again_0805
-- ----------------------------
DROP TABLE IF EXISTS `realradio_again_0805`;
CREATE TABLE `realradio_again_0805` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `broadcast_day` int(10) unsigned NOT NULL default '0',
  `file_url` varchar(128) NOT NULL default '',
  `useyn` tinyint(3) unsigned NOT NULL default '0',
  `view` int(10) unsigned NOT NULL default '0',
  `play_num` int(10) unsigned NOT NULL default '0',
  `scenario` text,
  `read_cnt` int(10) unsigned NOT NULL default '0',
  `search` varchar(30) NOT NULL default '',
  `comment_cnt` smallint(5) unsigned default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`broadcast_day`),
  KEY `idx2` USING BTREE (`create_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_again_0805
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_comment
-- ----------------------------
DROP TABLE IF EXISTS `realradio_comment`;
CREATE TABLE `realradio_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_content_seq` USING BTREE (`content_no`,`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_content
-- ----------------------------
DROP TABLE IF EXISTS `realradio_content`;
CREATE TABLE `realradio_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_event
-- ----------------------------
DROP TABLE IF EXISTS `realradio_event`;
CREATE TABLE `realradio_event` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `bbs_type` tinyint(4) NOT NULL default '0',
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `recom` mediumint(8) unsigned NOT NULL default '0',
  `adorn` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL default '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  `depth` tinyint(3) unsigned NOT NULL default '0',
  `sequence` double unsigned NOT NULL default '0',
  `open_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`category`),
  KEY `idx5` USING BTREE (`bbs_type`),
  KEY `idx2` USING BTREE (`charac_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_event
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_event_comment
-- ----------------------------
DROP TABLE IF EXISTS `realradio_event_comment`;
CREATE TABLE `realradio_event_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_event_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_event_comment_view
-- ----------------------------
DROP TABLE IF EXISTS `realradio_event_comment_view`;
CREATE TABLE `realradio_event_comment_view` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `m_nickname` varchar(12) NOT NULL default '',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_user_id` varchar(16) NOT NULL default '',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_event_comment_view
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_event_content
-- ----------------------------
DROP TABLE IF EXISTS `realradio_event_content`;
CREATE TABLE `realradio_event_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_event_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_event_file
-- ----------------------------
DROP TABLE IF EXISTS `realradio_event_file`;
CREATE TABLE `realradio_event_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_event_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_file
-- ----------------------------
DROP TABLE IF EXISTS `realradio_file`;
CREATE TABLE `realradio_file` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_main
-- ----------------------------
DROP TABLE IF EXISTS `realradio_main`;
CREATE TABLE `realradio_main` (
  `type` tinyint(1) NOT NULL default '0',
  `text1` text NOT NULL,
  `text2` text NOT NULL,
  PRIMARY KEY  (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_main
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_search
-- ----------------------------
DROP TABLE IF EXISTS `realradio_search`;
CREATE TABLE `realradio_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `bbs_type` tinyint(4) NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx_class_word` USING BTREE (`class`,`word`),
  KEY `idx_bbstype_class_word` USING BTREE (`bbs_type`,`class`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_search_content
-- ----------------------------
DROP TABLE IF EXISTS `realradio_search_content`;
CREATE TABLE `realradio_search_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `bbs_type` tinyint(4) NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`bbs_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_search_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for realradio_search_etc
-- ----------------------------
DROP TABLE IF EXISTS `realradio_search_etc`;
CREATE TABLE `realradio_search_etc` (
  `no` int(10) unsigned NOT NULL default '0',
  `bbs_type` tinyint(4) NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`bbs_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realradio_search_etc
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for repl_bbs
-- ----------------------------
DROP TABLE IF EXISTS `repl_bbs`;
CREATE TABLE `repl_bbs` (
  `rno` int(11) NOT NULL auto_increment,
  `bd_id` tinyint(4) NOT NULL default '0',
  `thread_id` double NOT NULL default '0',
  `rev_thread` double NOT NULL default '0',
  `depth` tinyint(4) NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  `mod_date` int(11) NOT NULL default '0',
  `hits` smallint(6) NOT NULL default '0',
  `recomm` smallint(6) NOT NULL default '0',
  `de_recom` smallint(6) NOT NULL default '0',
  `comment` smallint(6) NOT NULL default '0',
  `body_type` char(1) NOT NULL default '',
  `m_id` int(11) NOT NULL default '0',
  `reg_id` varchar(20) NOT NULL default '',
  `subject` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`rno`),
  UNIQUE KEY `uk_bdid_trid` USING BTREE (`bd_id`,`thread_id`),
  UNIQUE KEY `uk_bdid_rtrid` USING BTREE (`bd_id`,`rev_thread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repl_bbs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for repl_body
-- ----------------------------
DROP TABLE IF EXISTS `repl_body`;
CREATE TABLE `repl_body` (
  `rno` int(11) NOT NULL default '0',
  `body` text NOT NULL,
  PRIMARY KEY  (`rno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repl_body
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for repl_comment
-- ----------------------------
DROP TABLE IF EXISTS `repl_comment`;
CREATE TABLE `repl_comment` (
  `rno` int(11) NOT NULL default '0',
  `comm_no` smallint(6) NOT NULL auto_increment,
  `imtc_no` tinyint(4) default NULL,
  `m_id` int(11) NOT NULL default '0',
  `reg_id` varchar(20) NOT NULL default '',
  `pawd` varchar(16) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `comment` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`rno`,`comm_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repl_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for repl_files
-- ----------------------------
DROP TABLE IF EXISTS `repl_files`;
CREATE TABLE `repl_files` (
  `rno` int(11) NOT NULL default '0',
  `rf_no` int(11) NOT NULL auto_increment,
  `file_server` varchar(50) NOT NULL default '',
  `file_location` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`rno`,`rf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repl_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for repl_recomm
-- ----------------------------
DROP TABLE IF EXISTS `repl_recomm`;
CREATE TABLE `repl_recomm` (
  `rno` int(11) NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `type` char(1) NOT NULL default '',
  PRIMARY KEY  (`rno`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repl_recomm
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for security_tip
-- ----------------------------
DROP TABLE IF EXISTS `security_tip`;
CREATE TABLE `security_tip` (
  `mz_id` int(11) NOT NULL auto_increment,
  `degree` tinyint(3) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `seq` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `hists` int(10) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `user_id` varchar(20) NOT NULL default '',
  `mod_date` int(11) NOT NULL default '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL default '',
  `writer` varchar(15) NOT NULL default '',
  `summary` varchar(255) NOT NULL default '',
  `open_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`mz_id`),
  UNIQUE KEY `degree` USING BTREE (`degree`,`category`,`seq`),
  KEY `idx_open_flag` USING BTREE (`open_flag`),
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_tip
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for security_tip_comment
-- ----------------------------
DROP TABLE IF EXISTS `security_tip_comment`;
CREATE TABLE `security_tip_comment` (
  `no` int(8) unsigned NOT NULL auto_increment,
  `mz_id` int(8) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `comment_text` varchar(200) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_tip_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for security_tip_content
-- ----------------------------
DROP TABLE IF EXISTS `security_tip_content`;
CREATE TABLE `security_tip_content` (
  `mz_id` int(11) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_tip_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for security_today
-- ----------------------------
DROP TABLE IF EXISTS `security_today`;
CREATE TABLE `security_today` (
  `no` mediumint(9) NOT NULL auto_increment,
  `day` char(2) NOT NULL default '',
  `contents` varchar(100) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `window_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_today
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for server_state_control
-- ----------------------------
DROP TABLE IF EXISTS `server_state_control`;
CREATE TABLE `server_state_control` (
  `server_id` tinyint(4) NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `flag` tinyint(3) unsigned default '0',
  `link_url` varchar(120) NOT NULL default '',
  `pop_up` tinyint(3) default '0',
  PRIMARY KEY  (`server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_state_control
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for skill_dictionary_comment
-- ----------------------------
DROP TABLE IF EXISTS `skill_dictionary_comment`;
CREATE TABLE `skill_dictionary_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `content_no` mediumint(8) unsigned default NULL,
  `m_nickname` varchar(12) default NULL,
  `m_id` int(10) unsigned default NULL,
  `m_user_id` varchar(16) default NULL,
  `m_sex` enum('m','f') default NULL,
  `server_id` tinyint(4) default NULL,
  `charac_no` int(11) default NULL,
  `charac_name` varchar(20) default NULL,
  `job` tinyint(3) unsigned default NULL,
  `comment_text` varchar(255) default NULL,
  `ip` varchar(15) default NULL,
  `create_day` int(10) unsigned default NULL,
  `skill_group` int(10) default NULL,
  `skill_idx` int(10) default NULL,
  `charac_idx` int(5) default NULL,
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`),
  KEY `idx_skill_group` USING BTREE (`skill_group`),
  KEY `idx_skillidx` USING BTREE (`skill_idx`),
  KEY `idx_characidx` USING BTREE (`charac_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_dictionary_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for skill_dictionary_estimate_log
-- ----------------------------
DROP TABLE IF EXISTS `skill_dictionary_estimate_log`;
CREATE TABLE `skill_dictionary_estimate_log` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `m_id` int(10) unsigned default NULL,
  `m_user_id` varchar(16) default NULL,
  `charac_idx` int(5) default NULL,
  `skill_group` int(10) default NULL,
  `skill_idx` int(10) default NULL,
  `dungeon_cnt` mediumint(8) unsigned default NULL,
  `challenge_cnt` mediumint(8) unsigned default NULL,
  `create_day` int(10) unsigned default NULL,
  PRIMARY KEY  (`no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_m_user_id` USING BTREE (`m_user_id`),
  KEY `idx_skill_group` USING BTREE (`skill_group`),
  KEY `idx_skillidx` USING BTREE (`skill_idx`),
  KEY `idx_characidx` USING BTREE (`charac_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_dictionary_estimate_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for skill_dictionary_info
-- ----------------------------
DROP TABLE IF EXISTS `skill_dictionary_info`;
CREATE TABLE `skill_dictionary_info` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `charac_idx` int(5) default NULL,
  `skill_group` int(10) default NULL,
  `skill_idx` int(10) default NULL,
  `dungeon_cnt` mediumint(8) unsigned default '0',
  `challenge_cnt` mediumint(8) unsigned default '0',
  `comment_cnt` mediumint(8) unsigned default '0',
  `estimate_cnt` mediumint(8) unsigned default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_skill_group` USING BTREE (`skill_group`),
  KEY `idx_skillidx` USING BTREE (`skill_idx`),
  KEY `idx_characidx` USING BTREE (`charac_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_dictionary_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for skill_info
-- ----------------------------
DROP TABLE IF EXISTS `skill_info`;
CREATE TABLE `skill_info` (
  `job_index` int(11) NOT NULL default '0',
  `skill_index` int(11) NOT NULL default '0',
  `module_type` tinyint(4) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `name2` varchar(255) NOT NULL default '',
  `basic_explain` varchar(255) NOT NULL default '',
  `skill_explain` varchar(255) NOT NULL default '',
  `purchase_cost` varchar(255) NOT NULL default '',
  `type` tinyint(4) NOT NULL default '0',
  `skill_class` int(11) NOT NULL default '0',
  `growtype_maximum_level` varchar(255) NOT NULL default '',
  `second_growtype_maximum_level` varchar(255) NOT NULL default '',
  `skill_fitness_growtype` varchar(255) NOT NULL default '',
  `skill_fitness_second_growtype` varchar(255) NOT NULL default '',
  `consume_item` varchar(255) NOT NULL default '',
  `required_level` tinyint(4) NOT NULL default '0',
  `required_level_range` tinyint(4) NOT NULL default '0',
  `pre_required_skill` varchar(255) NOT NULL default '',
  `consume_mp` varchar(255) NOT NULL default '',
  `cool_time` varchar(255) NOT NULL default '',
  `casting_time` varchar(255) NOT NULL default '',
  `icon` varchar(255) NOT NULL default '',
  `command_key_explain` varchar(255) NOT NULL default '',
  `skill_command_advantage` varchar(255) NOT NULL default '',
  `static_data` varchar(255) NOT NULL default '',
  `level_info` text NOT NULL,
  `start_cool_time` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`job_index`,`skill_index`,`module_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of skill_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sphinx_info
-- ----------------------------
DROP TABLE IF EXISTS `sphinx_info`;
CREATE TABLE `sphinx_info` (
  `search_id` char(20) NOT NULL default '',
  `last_insert_id` bigint(20) unsigned NOT NULL default '0',
  `last_update_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sphinx_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_card_ref
-- ----------------------------
DROP TABLE IF EXISTS `tcg_card_ref`;
CREATE TABLE `tcg_card_ref` (
  `act_info` varchar(10) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  `card_name` varchar(25) NOT NULL default '',
  `card_lev` smallint(5) unsigned NOT NULL default '0',
  `card_type` char(3) NOT NULL default '',
  `card_rare` smallint(5) unsigned NOT NULL default '0',
  `card_num` smallint(5) unsigned NOT NULL default '0',
  KEY `card_name` USING BTREE (`card_name`,`card_lev`,`card_type`,`card_num`),
  KEY `card_lev` USING BTREE (`card_lev`),
  KEY `card_type` USING BTREE (`card_type`),
  KEY `card_num` USING BTREE (`card_num`),
  KEY `idx_num_info` USING BTREE (`card_num`,`act_info`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_card_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_free
-- ----------------------------
DROP TABLE IF EXISTS `tcg_free`;
CREATE TABLE `tcg_free` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx3` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`create_day`),
  KEY `idx5` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_free
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_free_comment
-- ----------------------------
DROP TABLE IF EXISTS `tcg_free_comment`;
CREATE TABLE `tcg_free_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_free_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_free_content
-- ----------------------------
DROP TABLE IF EXISTS `tcg_free_content`;
CREATE TABLE `tcg_free_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_free_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_free_file
-- ----------------------------
DROP TABLE IF EXISTS `tcg_free_file`;
CREATE TABLE `tcg_free_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_free_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_free_search
-- ----------------------------
DROP TABLE IF EXISTS `tcg_free_search`;
CREATE TABLE `tcg_free_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx4` USING BTREE (`category`),
  KEY `idx5` USING BTREE (`class`),
  KEY `idx6` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_free_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_grand
-- ----------------------------
DROP TABLE IF EXISTS `tcg_grand`;
CREATE TABLE `tcg_grand` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx3` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`create_day`),
  KEY `idx5` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_grand
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_grand_content
-- ----------------------------
DROP TABLE IF EXISTS `tcg_grand_content`;
CREATE TABLE `tcg_grand_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_grand_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_grand_file
-- ----------------------------
DROP TABLE IF EXISTS `tcg_grand_file`;
CREATE TABLE `tcg_grand_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_grand_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_grand_search
-- ----------------------------
DROP TABLE IF EXISTS `tcg_grand_search`;
CREATE TABLE `tcg_grand_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx4` USING BTREE (`category`),
  KEY `idx5` USING BTREE (`class`),
  KEY `idx6` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_grand_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_public_info
-- ----------------------------
DROP TABLE IF EXISTS `tcg_public_info`;
CREATE TABLE `tcg_public_info` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx3` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`create_day`),
  KEY `idx5` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_public_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_public_info_comment
-- ----------------------------
DROP TABLE IF EXISTS `tcg_public_info_comment`;
CREATE TABLE `tcg_public_info_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_public_info_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_public_info_content
-- ----------------------------
DROP TABLE IF EXISTS `tcg_public_info_content`;
CREATE TABLE `tcg_public_info_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_public_info_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_public_info_file
-- ----------------------------
DROP TABLE IF EXISTS `tcg_public_info_file`;
CREATE TABLE `tcg_public_info_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_public_info_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_public_info_search
-- ----------------------------
DROP TABLE IF EXISTS `tcg_public_info_search`;
CREATE TABLE `tcg_public_info_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx4` USING BTREE (`category`),
  KEY `idx5` USING BTREE (`class`),
  KEY `idx6` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_public_info_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_relay_config
-- ----------------------------
DROP TABLE IF EXISTS `tcg_relay_config`;
CREATE TABLE `tcg_relay_config` (
  `seq` int(11) NOT NULL auto_increment,
  `occ_date` int(11) NOT NULL default '0',
  `event_seq` int(11) NOT NULL default '0',
  `event_name` varchar(50) NOT NULL default '',
  `prize_count` int(11) NOT NULL default '0',
  `item_nick` varchar(50) NOT NULL default '',
  `item_name` varchar(50) NOT NULL default '',
  `item_quantity` int(11) NOT NULL default '0',
  `prize_date` int(11) NOT NULL default '0',
  `prize_user_m_id` int(11) NOT NULL default '0',
  `prize_user_server_id` tinyint(4) NOT NULL default '0',
  `prize_user_charac_no` int(11) NOT NULL default '0',
  `item_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`seq`),
  KEY `idx1` USING BTREE (`occ_date`),
  KEY `idx2` USING BTREE (`event_seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_relay_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_relay_entry_count
-- ----------------------------
DROP TABLE IF EXISTS `tcg_relay_entry_count`;
CREATE TABLE `tcg_relay_entry_count` (
  `event_seq` int(11) NOT NULL default '0',
  `coupon_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`event_seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_relay_entry_count
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_rule
-- ----------------------------
DROP TABLE IF EXISTS `tcg_rule`;
CREATE TABLE `tcg_rule` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx3` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`create_day`),
  KEY `idx5` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_rule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_rule_comment
-- ----------------------------
DROP TABLE IF EXISTS `tcg_rule_comment`;
CREATE TABLE `tcg_rule_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_rule_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_rule_content
-- ----------------------------
DROP TABLE IF EXISTS `tcg_rule_content`;
CREATE TABLE `tcg_rule_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_rule_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_rule_file
-- ----------------------------
DROP TABLE IF EXISTS `tcg_rule_file`;
CREATE TABLE `tcg_rule_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_rule_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_rule_search
-- ----------------------------
DROP TABLE IF EXISTS `tcg_rule_search`;
CREATE TABLE `tcg_rule_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx4` USING BTREE (`category`),
  KEY `idx5` USING BTREE (`class`),
  KEY `idx6` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_rule_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_tune
-- ----------------------------
DROP TABLE IF EXISTS `tcg_tune`;
CREATE TABLE `tcg_tune` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx3` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`create_day`),
  KEY `idx5` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_tune
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_tune_card_info
-- ----------------------------
DROP TABLE IF EXISTS `tcg_tune_card_info`;
CREATE TABLE `tcg_tune_card_info` (
  `seqidx` int(10) unsigned NOT NULL auto_increment,
  `no` int(10) unsigned NOT NULL default '0',
  `card_uninum` int(10) unsigned NOT NULL default '0',
  `count` int(4) NOT NULL default '0',
  `reg_date` int(10) unsigned NOT NULL default '0',
  `act_info` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`seqidx`),
  KEY `idx_bbs` USING BTREE (`no`),
  KEY `idx_card_num` USING BTREE (`card_uninum`),
  KEY `idx_num_info` USING BTREE (`card_uninum`,`act_info`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_tune_card_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_tune_comment
-- ----------------------------
DROP TABLE IF EXISTS `tcg_tune_comment`;
CREATE TABLE `tcg_tune_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_tune_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_tune_content
-- ----------------------------
DROP TABLE IF EXISTS `tcg_tune_content`;
CREATE TABLE `tcg_tune_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_tune_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_tune_file
-- ----------------------------
DROP TABLE IF EXISTS `tcg_tune_file`;
CREATE TABLE `tcg_tune_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_tune_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tcg_tune_search
-- ----------------------------
DROP TABLE IF EXISTS `tcg_tune_search`;
CREATE TABLE `tcg_tune_search` (
  `no` int(10) unsigned NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` enum('title','nickname','content') NOT NULL default 'title',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`no`),
  KEY `idx4` USING BTREE (`category`),
  KEY `idx5` USING BTREE (`class`),
  KEY `idx6` USING BTREE (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tcg_tune_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tmp_gan_member
-- ----------------------------
DROP TABLE IF EXISTS `tmp_gan_member`;
CREATE TABLE `tmp_gan_member` (
  `m_id` int(11) NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`m_id`),
  KEY `idx1` USING BTREE (`reg_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_gan_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todaydnf
-- ----------------------------
DROP TABLE IF EXISTS `todaydnf`;
CREATE TABLE `todaydnf` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `first_title` varchar(32) NOT NULL default '0',
  `first_thumb` varchar(192) NOT NULL default '',
  `first_referer` varchar(32) NOT NULL default '',
  `first_url` varchar(192) NOT NULL default '',
  `first_hit` smallint(5) unsigned NOT NULL default '0',
  `second_title` varchar(32) NOT NULL default '',
  `second_thumb` varchar(192) NOT NULL default '',
  `second_referer` varchar(32) NOT NULL default '',
  `second_url` varchar(192) NOT NULL default '',
  `second_hit` smallint(5) unsigned NOT NULL default '0',
  `third_title` varchar(32) NOT NULL default '',
  `third_thumb` varchar(192) NOT NULL default '',
  `third_referer` varchar(32) NOT NULL default '',
  `third_url` varchar(192) NOT NULL default '',
  `third_hit` smallint(5) unsigned NOT NULL default '0',
  `open_date` date NOT NULL default '2021-11-19',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`),
  KEY `open_date` USING BTREE (`open_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of todaydnf
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for todaydnf_view
-- ----------------------------
DROP TABLE IF EXISTS `todaydnf_view`;
CREATE TABLE `todaydnf_view` (
  `no` int(10) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `uv` mediumint(8) unsigned NOT NULL default '0',
  `pv` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of todaydnf_view
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ucc_public_info
-- ----------------------------
DROP TABLE IF EXISTS `ucc_public_info`;
CREATE TABLE `ucc_public_info` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `notice` enum('','s') NOT NULL default '',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_sex` enum('m','f') NOT NULL default 'm',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `title` varchar(120) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  `comment` smallint(5) unsigned NOT NULL default '0',
  `view` mediumint(8) unsigned NOT NULL default '0',
  `file` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx3` USING BTREE (`category`),
  KEY `idx4` USING BTREE (`create_day`),
  KEY `idx5` USING BTREE (`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ucc_public_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ucc_public_info_comment
-- ----------------------------
DROP TABLE IF EXISTS `ucc_public_info_comment`;
CREATE TABLE `ucc_public_info_comment` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment_text` varchar(104) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ucc_public_info_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ucc_public_info_content
-- ----------------------------
DROP TABLE IF EXISTS `ucc_public_info_content`;
CREATE TABLE `ucc_public_info_content` (
  `no` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL default 'br',
  `ip` varchar(15) NOT NULL default '',
  `ring` smallint(5) unsigned NOT NULL default '0',
  `sms` enum('y','n') NOT NULL default 'n',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ucc_public_info_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ucc_public_info_file
-- ----------------------------
DROP TABLE IF EXISTS `ucc_public_info_file`;
CREATE TABLE `ucc_public_info_file` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `content_no` int(10) unsigned NOT NULL default '0',
  `file_url` char(128) NOT NULL default '',
  PRIMARY KEY  (`no`),
  KEY `idx1` USING BTREE (`content_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ucc_public_info_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ucc_user_writers
-- ----------------------------
DROP TABLE IF EXISTS `ucc_user_writers`;
CREATE TABLE `ucc_user_writers` (
  `m_id` int(11) NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `start_time` int(11) NOT NULL default '1',
  `end_time` int(11) default NULL,
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ucc_user_writers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for update_act_category
-- ----------------------------
DROP TABLE IF EXISTS `update_act_category`;
CREATE TABLE `update_act_category` (
  `act_no` int(11) NOT NULL default '0',
  `category_no` tinyint(4) NOT NULL default '0',
  `order_no` tinyint(4) NOT NULL default '0',
  `subject` varchar(40) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `img_url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`act_no`,`category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of update_act_category
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for update_act_info
-- ----------------------------
DROP TABLE IF EXISTS `update_act_info`;
CREATE TABLE `update_act_info` (
  `act_no` int(11) NOT NULL auto_increment,
  `subject` varchar(60) NOT NULL default '',
  `MNG_user_id` varchar(30) NOT NULL default '',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `up_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `open_flag` enum('Y','N','R') NOT NULL default 'N',
  `open_date` int(11) NOT NULL default '0',
  `image_url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`act_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of update_act_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wedding_memo
-- ----------------------------
DROP TABLE IF EXISTS `wedding_memo`;
CREATE TABLE `wedding_memo` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `guild_id` int(10) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `nick_name` varchar(12) NOT NULL default '',
  `memo` varchar(100) NOT NULL default '',
  `create_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`),
  KEY `idx_guild_id` USING BTREE (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wedding_memo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wiki_agreement
-- ----------------------------
DROP TABLE IF EXISTS `wiki_agreement`;
CREATE TABLE `wiki_agreement` (
  `id` int(11) NOT NULL auto_increment,
  `url_go` varchar(20) NOT NULL default '',
  `url_to` varchar(20) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `content` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_url` USING BTREE (`url_go`,`url_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_agreement
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wiki_mng_encyclopedia
-- ----------------------------
DROP TABLE IF EXISTS `wiki_mng_encyclopedia`;
CREATE TABLE `wiki_mng_encyclopedia` (
  `id` int(11) NOT NULL auto_increment,
  `category` tinyint(3) unsigned NOT NULL default '0',
  `subject` varchar(120) NOT NULL default '',
  `content` text NOT NULL,
  `reg_date` int(11) NOT NULL default '0',
  `hit` int(10) unsigned NOT NULL default '0',
  `today_info` tinyint(4) NOT NULL default '0',
  `today_char` tinyint(4) NOT NULL default '0',
  `pupular_flag` tinyint(4) NOT NULL default '0',
  `img_url` varchar(255) NOT NULL default '',
  `word` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_category` USING BTREE (`category`),
  KEY `idx_today_info` USING BTREE (`today_info`),
  KEY `idx_today_char` USING BTREE (`today_char`),
  KEY `idx_pupular_flag` USING BTREE (`pupular_flag`),
  KEY `idx_subject` USING BTREE (`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_mng_encyclopedia
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wiki_mng_encyclopedia_search
-- ----------------------------
DROP TABLE IF EXISTS `wiki_mng_encyclopedia_search`;
CREATE TABLE `wiki_mng_encyclopedia_search` (
  `id` int(11) NOT NULL default '0',
  `category` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `word` char(32) NOT NULL default '',
  KEY `idx1` USING BTREE (`id`),
  KEY `idx2` USING BTREE (`category`),
  KEY `idx3` USING BTREE (`class`),
  KEY `idx4` USING BTREE (`word`),
  KEY `idx5` USING BTREE (`category`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_mng_encyclopedia_search
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wiki_mng_guide
-- ----------------------------
DROP TABLE IF EXISTS `wiki_mng_guide`;
CREATE TABLE `wiki_mng_guide` (
  `id` int(11) NOT NULL auto_increment,
  `url_go` varchar(20) NOT NULL default '',
  `url_to` varchar(20) NOT NULL default '',
  `reg_date` int(11) NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  `content` text NOT NULL,
  `flag` tinyint(4) NOT NULL default '0',
  `p_type` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_url` USING BTREE (`url_go`,`url_to`),
  KEY `idx_url2` USING BTREE (`flag`,`url_go`,`url_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_mng_guide
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wiki_mng_guide_stats
-- ----------------------------
DROP TABLE IF EXISTS `wiki_mng_guide_stats`;
CREATE TABLE `wiki_mng_guide_stats` (
  `id` int(11) NOT NULL default '0',
  `date_enroll` date NOT NULL default '2021-11-19',
  `url_go` varchar(20) NOT NULL default '',
  `url_to` varchar(20) NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  KEY `idx_url` USING BTREE (`id`),
  KEY `idx_url2` USING BTREE (`id`,`date_enroll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_mng_guide_stats
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wiki_sync
-- ----------------------------
DROP TABLE IF EXISTS `wiki_sync`;
CREATE TABLE `wiki_sync` (
  `gno` int(10) unsigned NOT NULL default '0',
  `b2t_time` int(10) unsigned NOT NULL default '0',
  `t2r_time` int(10) unsigned NOT NULL default '0',
  `r2s_time` int(10) unsigned NOT NULL default '0',
  `b2t_admin` int(10) unsigned NOT NULL default '0',
  `t2r_admin` int(10) unsigned NOT NULL default '0',
  `r2s_admin` int(10) unsigned NOT NULL default '0',
  `state` int(10) unsigned NOT NULL default '0',
  KEY `idx_gno` USING BTREE (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wiki_sync
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for world_cup_event_comment
-- ----------------------------
DROP TABLE IF EXISTS `world_cup_event_comment`;
CREATE TABLE `world_cup_event_comment` (
  `no` mediumint(8) unsigned NOT NULL auto_increment,
  `game_type` tinyint(3) unsigned NOT NULL default '0',
  `score1` tinyint(3) unsigned NOT NULL default '0',
  `score2` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `charac_name` varchar(20) NOT NULL default '',
  `comment_text` varchar(104) NOT NULL default '',
  `create_day` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`no`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_charac_no` USING BTREE (`server_id`,`charac_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of world_cup_event_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for world_cup_event_rank
-- ----------------------------
DROP TABLE IF EXISTS `world_cup_event_rank`;
CREATE TABLE `world_cup_event_rank` (
  `m_id` int(11) NOT NULL default '0',
  `cnt` int(11) NOT NULL default '0',
  UNIQUE KEY `m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of world_cup_event_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for world_cup_event_temp
-- ----------------------------
DROP TABLE IF EXISTS `world_cup_event_temp`;
CREATE TABLE `world_cup_event_temp` (
  `m_id` int(11) NOT NULL default '0',
  `cnt` int(11) NOT NULL default '0',
  KEY `m_id` USING BTREE (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of world_cup_event_temp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for world_cup_memo
-- ----------------------------
DROP TABLE IF EXISTS `world_cup_memo`;
CREATE TABLE `world_cup_memo` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `nick_name` varchar(12) NOT NULL default '',
  `memo` varchar(105) NOT NULL default '',
  `create_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of world_cup_memo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for zipcode
-- ----------------------------
DROP TABLE IF EXISTS `zipcode`;
CREATE TABLE `zipcode` (
  `zipcode` char(7) NOT NULL default '',
  `sido` char(16) NOT NULL default '',
  `gugun` char(30) NOT NULL default '',
  `dong` char(60) NOT NULL default '',
  `bunji` char(30) NOT NULL default '',
  KEY `idxdong` USING BTREE (`dong`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zipcode
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
