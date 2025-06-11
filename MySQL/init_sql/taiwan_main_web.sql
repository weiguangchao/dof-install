
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_main_web` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_main_web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_member` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `msn` varchar(20) DEFAULT NULL,
  `comment` text,
  `reg_date` int(13) DEFAULT NULL,
  `confirm` char(1) DEFAULT '0',
  `level` varchar(255) NOT NULL DEFAULT '',
  `level_group1` char(2) NOT NULL DEFAULT '_',
  `level_group2` char(2) NOT NULL DEFAULT '_',
  `level_group3` char(2) NOT NULL DEFAULT '_',
  `level_group4` char(2) NOT NULL DEFAULT '_',
  `level_group5` char(2) NOT NULL DEFAULT '_',
  `level_group6` char(2) NOT NULL DEFAULT '_',
  PRIMARY KEY (`no`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `password` (`password`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `source_url` varchar(128) NOT NULL DEFAULT '',
  `copyright` tinyint(4) NOT NULL DEFAULT '0',
  `tag` varchar(128) NOT NULL DEFAULT '',
  `no_recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_main` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`no`),
  KEY `idx_lev` (`lev`) USING BTREE,
  KEY `idx_ca_no` (`category`,`no`) USING BTREE,
  KEY `idx_create_day` (`create_day`) USING BTREE,
  KEY `idx_recom` (`recom`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_charac_name` (`charac_name`(10)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news_namecard_board_list` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `board_type` tinyint(4) NOT NULL DEFAULT '0',
  `board_no` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`board_type`,`board_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news_namecard_config` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `referer_url` varchar(128) NOT NULL DEFAULT '0',
  `blog_bgcolor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news_recom` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `remote_addr` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_recom` (`m_id`,`content_no`) USING BTREE,
  KEY `content_no` (`content_no`,`remote_addr`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news_tag` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `tag` varchar(20) NOT NULL DEFAULT '',
  `tag_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`tag`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arad_news_tail_comment` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '0',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `guild_name` varchar(40) NOT NULL DEFAULT '',
  `school_id` int(11) NOT NULL DEFAULT '0',
  `school_name` varchar(40) NOT NULL DEFAULT '',
  `userimg_path` varchar(60) NOT NULL DEFAULT '',
  `blog_url` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auction_item_top100` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `server_info` tinyint(4) NOT NULL DEFAULT '0',
  `category` tinyint(4) NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_value` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cur_date`,`category`,`item_id`,`server_info`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar_select_ability` (
  `it_no` int(11) NOT NULL DEFAULT '0',
  `ability_no` int(11) NOT NULL DEFAULT '0',
  `ability_type` tinyint(4) NOT NULL DEFAULT '0',
  `rate_change` tinyint(4) NOT NULL DEFAULT '0',
  `value` float NOT NULL DEFAULT '0',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `skill_index` int(11) NOT NULL DEFAULT '0',
  `skill_level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`it_no`,`ability_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bad_user` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `bad_code` int(11) NOT NULL DEFAULT '0',
  `create_day` int(11) NOT NULL DEFAULT '0',
  `exit_day` int(11) NOT NULL DEFAULT '0',
  `admin_n` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_mid` (`m_id`) USING BTREE,
  KEY `idx_code` (`bad_code`) USING BTREE,
  KEY `idx_eday` (`exit_day`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `useyn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(100) NOT NULL DEFAULT '',
  `target_url` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  `intro` text NOT NULL,
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `banner_type` tinyint(4) NOT NULL DEFAULT '0',
  `banner_type_sub` tinyint(4) NOT NULL DEFAULT '0',
  `start_date` int(10) unsigned NOT NULL DEFAULT '0',
  `end_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx1` (`banner_type`,`banner_type_sub`,`start_date`,`end_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_info2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `useyn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(100) NOT NULL DEFAULT '',
  `target_url` varchar(100) NOT NULL DEFAULT '',
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  `intro` text NOT NULL,
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_div` (
  `bbs_code` tinyint(4) NOT NULL AUTO_INCREMENT,
  `bbs_name` varchar(30) NOT NULL DEFAULT '',
  `bbs_kind` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`bbs_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_search` (
  `bbs_class` int(11) NOT NULL DEFAULT '0',
  `f_key` int(11) NOT NULL DEFAULT '0',
  `s_key` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(50) NOT NULL DEFAULT '',
  `body` varchar(255) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  KEY `idx_class` (`bbs_class`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_search_hd` (
  `bbs_class` int(11) NOT NULL DEFAULT '0',
  `f_key` int(11) NOT NULL DEFAULT '0',
  `s_key` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(50) NOT NULL DEFAULT '',
  `body` varchar(255) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  KEY `idx_class` (`bbs_class`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_info` (
  `bd_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `class` char(1) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `reg_admin` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`bd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bug_report` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `occ_date1` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `occ_date2` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enroll_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(50) NOT NULL DEFAULT '',
  `comment` text,
  `attachment1` varchar(200) NOT NULL DEFAULT '',
  `attachment2` varchar(200) NOT NULL DEFAULT '',
  `attachment3` varchar(200) NOT NULL DEFAULT '',
  `bug_class` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_bug_report_m_id` (`m_id`) USING BTREE,
  KEY `idx_bug_report_server_id` (`server_id`) USING BTREE,
  KEY `idx_bug_report_charac_no` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_manager` (
  `check_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `checkup_content` text NOT NULL,
  `dnf_title_1` varchar(120) NOT NULL DEFAULT '',
  `dnf_link_1` varchar(255) NOT NULL DEFAULT '',
  `dnf_source_1` varchar(120) NOT NULL DEFAULT '',
  `dnf_title_2` varchar(120) NOT NULL DEFAULT '',
  `dnf_link_2` varchar(255) NOT NULL DEFAULT '',
  `dnf_source_2` varchar(120) NOT NULL DEFAULT '',
  `dnf_title_3` varchar(120) NOT NULL DEFAULT '',
  `dnf_link_3` varchar(255) NOT NULL DEFAULT '',
  `dnf_source_3` varchar(120) NOT NULL DEFAULT '',
  `dnf_title_4` varchar(120) NOT NULL DEFAULT '',
  `dnf_link_4` varchar(255) NOT NULL DEFAULT '',
  `dnf_source_4` varchar(120) NOT NULL DEFAULT '',
  `dnf_title_5` varchar(120) NOT NULL DEFAULT '',
  `dnf_link_5` varchar(255) NOT NULL DEFAULT '',
  `dnf_source_5` varchar(120) NOT NULL DEFAULT '',
  `dnf_title_6` varchar(120) NOT NULL DEFAULT '',
  `dnf_link_6` varchar(255) NOT NULL DEFAULT '',
  `dnf_source_6` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_dbs_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `memo` longtext NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ask_no` int(10) unsigned NOT NULL DEFAULT '0',
  `notice` char(1) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` char(1) NOT NULL DEFAULT '',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `modi_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `recom` int(10) unsigned NOT NULL DEFAULT '0',
  `no_recom` int(10) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `ask_no` (`ask_no`) USING BTREE,
  KEY `notice` (`notice`) USING BTREE,
  KEY `sequence` (`sequence`) USING BTREE,
  KEY `create_day` (`create_day`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_asking` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `main_title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_type` char(1) NOT NULL DEFAULT '',
  `admin_no` int(10) unsigned NOT NULL DEFAULT '0',
  `start_date` int(10) unsigned NOT NULL DEFAULT '0',
  `end_date` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  `modi_date` int(10) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `main_open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `reg_date` (`reg_date`) USING BTREE,
  KEY `end_date` (`end_date`) USING BTREE,
  KEY `open` (`open`) USING BTREE,
  KEY `main_open` (`main_open`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_asking_list` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ask_no` int(10) unsigned NOT NULL DEFAULT '0',
  `recom` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `ask_no` (`ask_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_asking_log` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ask_no` int(10) unsigned NOT NULL DEFAULT '0',
  `ask_list_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `m_id` (`m_id`) USING BTREE,
  KEY `ask_no` (`ask_no`) USING BTREE,
  KEY `ask_list_no` (`ask_list_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` char(1) NOT NULL DEFAULT '',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `content_no` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` char(1) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `content_no` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_recom` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `remote_addr` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `m_id` (`m_id`,`content_no`) USING BTREE,
  KEY `content_no` (`content_no`,`remote_addr`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_discussion_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` char(1) NOT NULL DEFAULT '',
  `word` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`,`category`,`class`,`word`),
  KEY `category` (`category`,`class`,`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary_item_search` (
  `it_no` mediumint(8) unsigned DEFAULT NULL,
  `search` varchar(100) NOT NULL DEFAULT '',
  KEY `it_no_idx` (`it_no`) USING BTREE,
  KEY `search_idx` (`search`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary_stats` (
  `date_enroll` date NOT NULL DEFAULT '0000-00-00',
  `dic_name` varchar(100) NOT NULL DEFAULT '0',
  `every_view_cnt` mediumint(8) unsigned DEFAULT '0',
  `detail_view_cnt` mediumint(8) unsigned DEFAULT '0',
  `comment_cnt` mediumint(8) unsigned DEFAULT '0',
  PRIMARY KEY (`date_enroll`,`dic_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(120) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  `hold_day` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modify_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_entry` (
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_no`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_info` (
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_no`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_manager` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned DEFAULT NULL,
  `reg_date` int(10) DEFAULT NULL,
  `content_name` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `positive_cmt` varchar(100) NOT NULL DEFAULT '',
  `negative_cmt` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_manager_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `click_view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_search_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_search_etc` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_ad_history` (
  `ad_id` smallint(6) NOT NULL DEFAULT '0',
  `occ_time` int(11) NOT NULL DEFAULT '0',
  `open` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `logout` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`,`occ_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_ad_stat` (
  `ad_id` smallint(6) NOT NULL DEFAULT '0',
  `open` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `logout` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_creature_info` (
  `it_id` int(11) NOT NULL DEFAULT '0',
  `creature_id` smallint(6) NOT NULL DEFAULT '0',
  `creature_name` varchar(64) NOT NULL DEFAULT '',
  `skill_recovery_time` int(11) NOT NULL DEFAULT '0',
  `overskill_recovery_time` int(11) NOT NULL DEFAULT '0',
  `artifact_slot` char(3) NOT NULL DEFAULT '',
  `learn_overskill_level` smallint(6) NOT NULL DEFAULT '0',
  `skill_info` varchar(32) NOT NULL DEFAULT '',
  `overskill_info` varchar(32) NOT NULL DEFAULT '',
  `piercing` varchar(32) NOT NULL DEFAULT '',
  `skill_name` varchar(32) NOT NULL DEFAULT '',
  `skill_desc` varchar(255) NOT NULL DEFAULT '',
  `overskill_name` varchar(32) NOT NULL DEFAULT '',
  `overskill_desc` varchar(255) NOT NULL DEFAULT '',
  `skill_level_values` varchar(48) NOT NULL DEFAULT '',
  `overskill_level_values` varchar(48) NOT NULL DEFAULT '',
  `evolution_creature_id` smallint(6) NOT NULL DEFAULT '0',
  `evolution_level` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`it_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_faq` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `cat1` tinyint(4) NOT NULL DEFAULT '0',
  `cat2` tinyint(4) NOT NULL DEFAULT '0',
  `regdate` int(11) NOT NULL DEFAULT '0',
  `hit` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_cat1` (`cat1`) USING BTREE,
  KEY `idx_cat2` (`cat2`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_faq_content` (
  `no` int(11) NOT NULL DEFAULT '0',
  `contents` text NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_gamein_serashop` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(250) NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `open_flag` enum('y','n') DEFAULT 'n',
  `banner_type` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`no`),
  KEY `idx_server_id` (`server_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_item_add_info` (
  `it_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dungeon` varchar(100) DEFAULT NULL,
  `shop` varchar(255) NOT NULL DEFAULT '',
  `pot` tinyint(1) NOT NULL DEFAULT '0',
  `mix_item_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_it_no` varchar(50) NOT NULL DEFAULT '',
  `ir_info` text NOT NULL,
  `item_pic` varchar(255) NOT NULL DEFAULT '',
  `add_item_memo` text NOT NULL,
  `quest_name` varchar(255) NOT NULL DEFAULT '',
  `view_flag` tinyint(1) NOT NULL DEFAULT '0',
  `recomm_avg` float NOT NULL DEFAULT '0',
  `recomm_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `recomm_score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`it_no`),
  KEY `view_flag_idx` (`view_flag`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_item_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `item_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `recomm_score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `item_no_idx` (`item_no`) USING BTREE,
  KEY `idx1` (`m_id`,`create_day`) USING BTREE,
  KEY `idx_create_day` (`create_day`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_item_info` (
  `it_no` int(10) unsigned NOT NULL DEFAULT '0',
  `it_name` varchar(120) NOT NULL DEFAULT '',
  `it_eng_name` varchar(120) NOT NULL DEFAULT '',
  `it_explain` text NOT NULL,
  `master_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `job` varchar(25) NOT NULL DEFAULT '',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `revert` varchar(10) NOT NULL DEFAULT '',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `create_ratio` float NOT NULL DEFAULT '0',
  `rarity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cash` smallint(5) unsigned NOT NULL DEFAULT '0',
  `medal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `durability` smallint(6) NOT NULL DEFAULT '0',
  `cooltime` smallint(6) NOT NULL DEFAULT '0',
  `hp_max` smallint(6) NOT NULL DEFAULT '0',
  `mp_max` smallint(6) NOT NULL DEFAULT '0',
  `phy_att` smallint(6) NOT NULL DEFAULT '0',
  `phy_def` smallint(6) NOT NULL DEFAULT '0',
  `mag_att` smallint(6) NOT NULL DEFAULT '0',
  `mag_def` smallint(6) NOT NULL DEFAULT '0',
  `equip_phy_att` smallint(6) NOT NULL DEFAULT '0',
  `equip_phy_def` smallint(6) NOT NULL DEFAULT '0',
  `equip_mag_att` smallint(6) NOT NULL DEFAULT '0',
  `equip_mag_def` smallint(6) NOT NULL DEFAULT '0',
  `ref_fire` tinyint(4) NOT NULL DEFAULT '0',
  `ref_water` tinyint(4) NOT NULL DEFAULT '0',
  `ref_dark` tinyint(4) NOT NULL DEFAULT '0',
  `ref_light` tinyint(4) NOT NULL DEFAULT '0',
  `ref_all` tinyint(4) NOT NULL DEFAULT '0',
  `ref_slow` tinyint(4) NOT NULL DEFAULT '0',
  `ref_freeze` tinyint(4) NOT NULL DEFAULT '0',
  `ref_poison` tinyint(4) NOT NULL DEFAULT '0',
  `ref_stun` tinyint(4) NOT NULL DEFAULT '0',
  `ref_cus` tinyint(4) NOT NULL DEFAULT '0',
  `ref_blind` tinyint(4) NOT NULL DEFAULT '0',
  `ref_lite` tinyint(4) NOT NULL DEFAULT '0',
  `ref_ston` tinyint(4) NOT NULL DEFAULT '0',
  `ref_sleep` tinyint(4) NOT NULL DEFAULT '0',
  `ref_deekement` tinyint(4) NOT NULL DEFAULT '0',
  `ref_deadlystrike` tinyint(4) NOT NULL DEFAULT '0',
  `ref_bleeding` tinyint(4) NOT NULL DEFAULT '0',
  `ref_confuse` tinyint(4) NOT NULL DEFAULT '0',
  `ref_hold` tinyint(4) NOT NULL DEFAULT '0',
  `ref_all_stat` tinyint(4) NOT NULL DEFAULT '0',
  `ref_pierce` smallint(6) NOT NULL DEFAULT '0',
  `ref_stuck` smallint(6) NOT NULL DEFAULT '0',
  `inven_max` smallint(6) NOT NULL DEFAULT '0',
  `hp_regenrate` smallint(6) NOT NULL DEFAULT '0',
  `mp_regenrate` smallint(6) NOT NULL DEFAULT '0',
  `mov_speed` smallint(6) NOT NULL DEFAULT '0',
  `att_speed` smallint(6) NOT NULL DEFAULT '0',
  `quest` smallint(6) NOT NULL DEFAULT '0',
  `hit_recovery` smallint(6) NOT NULL DEFAULT '0',
  `jump` smallint(6) NOT NULL DEFAULT '0',
  `att_element` enum('a','b','c','d','e') NOT NULL DEFAULT 'a',
  `att_active_status` smallint(6) NOT NULL DEFAULT '0',
  `att_active_status_ratio` float NOT NULL DEFAULT '0',
  `att_active_status_pow` smallint(6) NOT NULL DEFAULT '0',
  `att_backforce` smallint(6) NOT NULL DEFAULT '0',
  `att_upforce` smallint(6) NOT NULL DEFAULT '0',
  `att_hp_drain` tinyint(4) NOT NULL DEFAULT '0',
  `att_mp_drain` tinyint(4) NOT NULL DEFAULT '0',
  `criticalhit_rate` float NOT NULL DEFAULT '0',
  `stuck_rate` float NOT NULL DEFAULT '0',
  `att_defenseIgnore` tinyint(4) NOT NULL DEFAULT '0',
  `skill_levelup` varchar(120) NOT NULL DEFAULT '',
  `set_type` enum('n','y') NOT NULL DEFAULT 'n',
  `url` varchar(128) NOT NULL DEFAULT '',
  `jewel_type` varchar(5) NOT NULL DEFAULT '',
  `detail_explain` varchar(255) NOT NULL DEFAULT '',
  `flavor_text` varchar(255) NOT NULL DEFAULT '',
  `anti_evil` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `required_skill` int(11) NOT NULL DEFAULT '-1',
  `need_material` varchar(255) NOT NULL DEFAULT '',
  `physical_absolute_damage` int(11) NOT NULL DEFAULT '0',
  `physical_damage_reduce` int(11) NOT NULL DEFAULT '0',
  `physical_absolute_defense` int(11) NOT NULL DEFAULT '0',
  `magical_absolute_damage` int(11) NOT NULL DEFAULT '0',
  `magical_damage_reduce` int(11) NOT NULL DEFAULT '0',
  `magical_absolute_defense` int(11) NOT NULL DEFAULT '0',
  `fire_attack` int(11) NOT NULL DEFAULT '0',
  `water_attack` int(11) NOT NULL DEFAULT '0',
  `dark_attack` int(11) NOT NULL DEFAULT '0',
  `light_attack` int(11) NOT NULL DEFAULT '0',
  `weapon_break_resistance` int(11) NOT NULL DEFAULT '0',
  `armor_break_resistance` int(11) NOT NULL DEFAULT '0',
  `all_activestatus_resistance` int(11) NOT NULL DEFAULT '0',
  `rigidity` int(11) NOT NULL DEFAULT '0',
  `item_aura` varchar(255) NOT NULL DEFAULT '',
  `magical_critical_hit` float NOT NULL DEFAULT '0',
  `set_name` varchar(255) NOT NULL DEFAULT '',
  `set_item` varchar(255) NOT NULL DEFAULT '',
  `fullset_basic_explain` varchar(255) NOT NULL DEFAULT '',
  `fullset_detail_explain` text NOT NULL,
  `parameter_basic_explain` varchar(255) NOT NULL DEFAULT '',
  `parameter_detail_explain` varchar(255) NOT NULL DEFAULT '',
  `part_set_index` int(11) NOT NULL DEFAULT '0',
  `skill_data_up` varchar(255) NOT NULL DEFAULT '',
  `hide_equipment` varchar(33) NOT NULL DEFAULT '',
  `db_piece_count` tinyint(4) NOT NULL DEFAULT '0',
  `set_item_master` int(11) NOT NULL DEFAULT '0',
  `it_set_no` int(10) unsigned NOT NULL DEFAULT '0',
  `ani_variation` text NOT NULL,
  `ani_variation_expand` text NOT NULL,
  `ani_variation2` text NOT NULL,
  `ani_variation_expand2` text NOT NULL,
  `hide_growtype_avatar` varchar(5) NOT NULL DEFAULT '',
  `room_list_move_speed_rate` float NOT NULL DEFAULT '0',
  `icon_mark_number` tinyint(4) NOT NULL DEFAULT '0',
  `extra_icon_idx_list` varchar(8) NOT NULL DEFAULT '',
  `hp_max_rate` float NOT NULL DEFAULT '0',
  `mp_max_rate` float NOT NULL DEFAULT '0',
  `all_attack` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`it_no`,`it_set_no`,`db_piece_count`),
  KEY `idx_type` (`master_type`,`sub_type`) USING BTREE,
  KEY `idx_rarity` (`rarity`) USING BTREE,
  KEY `idx_level` (`level`) USING BTREE,
  KEY `idx_phy_att` (`phy_att`) USING BTREE,
  KEY `idx_phy_def` (`phy_def`) USING BTREE,
  KEY `idx_mag_att` (`mag_att`) USING BTREE,
  KEY `idx_mag_def` (`mag_def`) USING BTREE,
  KEY `idx_mov_speed` (`mov_speed`) USING BTREE,
  KEY `idx_att_speed` (`att_speed`) USING BTREE,
  KEY `idx_quest` (`quest`) USING BTREE,
  KEY `idx_att_element` (`att_element`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_item_info_master` (
  `master_no` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_no` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL DEFAULT '',
  `master_explain` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`master_no`,`sub_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_league_bbs_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '0',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `comments` varchar(200) NOT NULL DEFAULT '',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `idx_bbs` (`bbs_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_league_bbs_contents` (
  `bbs_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `broadcast_date` int(10) unsigned NOT NULL DEFAULT '0',
  `thumbnail_img` varchar(100) NOT NULL DEFAULT '',
  `attach_file` varchar(100) NOT NULL DEFAULT '',
  `contents` text NOT NULL,
  PRIMARY KEY (`bbs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_league_bbs_main` (
  `bbs_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `league_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `main_cat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_cat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bbs_id`),
  KEY `idx_league` (`league_id`) USING BTREE,
  KEY `idx_cat` (`main_cat`,`sub_cat`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_league_bbs_search` (
  `bbs_id` int(10) unsigned NOT NULL DEFAULT '0',
  `main_cat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_cat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','contents','charac_name') NOT NULL DEFAULT 'title',
  `word` varchar(32) NOT NULL DEFAULT '',
  KEY `idx_bbs` (`bbs_id`) USING BTREE,
  KEY `idx_main_cat` (`main_cat`) USING BTREE,
  KEY `idx_sub_cat` (`sub_cat`) USING BTREE,
  KEY `idx_class` (`class`) USING BTREE,
  KEY `idx_word` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_league_calendar` (
  `cal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_time` int(10) unsigned NOT NULL DEFAULT '0',
  `contents` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`cal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_league_mainpage` (
  `mp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `top_img` varchar(100) NOT NULL DEFAULT '',
  `broadcast_time_img` varchar(100) NOT NULL DEFAULT '',
  `vod_link` varchar(255) NOT NULL DEFAULT '',
  `contents` text NOT NULL,
  `notice` text NOT NULL,
  PRIMARY KEY (`mp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_league_player_info` (
  `pi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `league_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_cat` tinyint(4) NOT NULL DEFAULT '0',
  `bbs_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(12) NOT NULL DEFAULT '',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `grow_type` tinyint(4) NOT NULL DEFAULT '0',
  `picture` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`pi_id`),
  KEY `idx_league` (`league_id`) USING BTREE,
  KEY `idx_bbs_id` (`bbs_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_magazine_pageview` (
  `magazine_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pageview` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`magazine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_magazine_quiz` (
  `magazine_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`magazine_id`,`m_id`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_mobile_board` (
  `dmb_idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(4) NOT NULL DEFAULT '0',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `summary` varchar(100) NOT NULL DEFAULT '',
  `thumbnail_img` varchar(100) NOT NULL DEFAULT '',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dmb_idx`),
  KEY `idx_open` (`open_flag`) USING BTREE,
  KEY `idx_cate_open` (`cate`,`open_flag`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_mobile_board_comments` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dmb_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `writer_name` varchar(20) NOT NULL DEFAULT '',
  `comments` varchar(255) NOT NULL DEFAULT '',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_dmb` (`dmb_idx`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_mobile_board_contents` (
  `dmb_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `contents` text NOT NULL,
  PRIMARY KEY (`dmb_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_old_equip_info` (
  `it_id` int(11) NOT NULL DEFAULT '0',
  `hp_max` smallint(6) NOT NULL DEFAULT '0',
  `mp_max` smallint(6) NOT NULL DEFAULT '0',
  `phy_att` smallint(6) NOT NULL DEFAULT '0',
  `phy_def` smallint(6) NOT NULL DEFAULT '0',
  `mag_att` smallint(6) NOT NULL DEFAULT '0',
  `mag_def` smallint(6) NOT NULL DEFAULT '0',
  `equip_phy_att` smallint(6) NOT NULL DEFAULT '0',
  `equip_phy_def` smallint(6) NOT NULL DEFAULT '0',
  `equip_mag_att` smallint(6) NOT NULL DEFAULT '0',
  `equip_mag_def` smallint(6) NOT NULL DEFAULT '0',
  `ref_fire` smallint(6) NOT NULL DEFAULT '0',
  `ref_water` smallint(6) NOT NULL DEFAULT '0',
  `ref_dark` smallint(6) NOT NULL DEFAULT '0',
  `ref_light` smallint(6) NOT NULL DEFAULT '0',
  `ref_all_elements` smallint(6) NOT NULL DEFAULT '0',
  `ref_slow` smallint(6) NOT NULL DEFAULT '0',
  `ref_freeze` smallint(6) NOT NULL DEFAULT '0',
  `ref_poison` smallint(6) NOT NULL DEFAULT '0',
  `ref_stun` smallint(6) NOT NULL DEFAULT '0',
  `ref_curse` smallint(6) NOT NULL DEFAULT '0',
  `ref_blind` smallint(6) NOT NULL DEFAULT '0',
  `ref_lightning` smallint(6) NOT NULL DEFAULT '0',
  `ref_stone` smallint(6) NOT NULL DEFAULT '0',
  `ref_sleep` smallint(6) NOT NULL DEFAULT '0',
  `ref_burn` smallint(6) NOT NULL DEFAULT '0',
  `ref_weapon_break` smallint(6) NOT NULL DEFAULT '0',
  `ref_bleeding` smallint(6) NOT NULL DEFAULT '0',
  `ref_pierce` smallint(6) NOT NULL DEFAULT '0',
  `ref_stuck` smallint(6) NOT NULL DEFAULT '0',
  `ref_confuse` smallint(6) NOT NULL DEFAULT '0',
  `ref_hold` smallint(6) NOT NULL DEFAULT '0',
  `ref_armor_break` smallint(6) NOT NULL DEFAULT '0',
  `ref_all_state` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`it_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_school_charac` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `school_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`),
  KEY `idx1` (`school_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_school_rank` (
  `category` tinyint(4) NOT NULL DEFAULT '0',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `region` tinyint(4) NOT NULL DEFAULT '0',
  `school_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(70) NOT NULL DEFAULT '',
  `point` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category`,`grade`,`region`,`school_id`),
  KEY `idx1` (`category`,`grade`,`region`,`rank`) USING BTREE,
  KEY `idx2` (`school_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_security_tip_pageview` (
  `magazine_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pageview` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`magazine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_security_tip_quiz` (
  `magazine_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`magazine_id`,`m_id`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_tower_manager` (
  `occ_time` int(11) NOT NULL DEFAULT '0',
  `manager_id` varchar(12) NOT NULL DEFAULT '',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `web_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `game_falg` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`occ_time`) USING BTREE,
  KEY `idx2` (`server_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_tune` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_tag` varchar(200) NOT NULL DEFAULT '',
  `img_name` varchar(200) NOT NULL DEFAULT '',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `apply_type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_library` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `main` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `download` int(10) unsigned NOT NULL DEFAULT '0',
  `img_link` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`main`,`open`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_library_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_library_file` (
  `file_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_info` varchar(9) NOT NULL DEFAULT '',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_dnf_3year_comment` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(30) NOT NULL DEFAULT '',
  `feel_cnt` int(11) NOT NULL DEFAULT '0',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  UNIQUE KEY `m_id` (`m_id`) USING BTREE,
  KEY `idx_feel_cnt` (`feel_cnt`) USING BTREE,
  KEY `idx_open_flag` (`open_flag`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_dnf_3year_feel` (
  `no` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  `open_date` int(10) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_link` varchar(255) NOT NULL DEFAULT '',
  `today_word` varchar(255) NOT NULL DEFAULT '',
  `hot_title` varchar(120) NOT NULL DEFAULT '',
  `hot_link` varchar(255) NOT NULL DEFAULT '',
  `hot_content` varchar(255) NOT NULL DEFAULT '',
  `hot_word` varchar(255) NOT NULL DEFAULT '',
  `img_view` int(10) unsigned NOT NULL DEFAULT '0',
  `hot_view` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`reg_date`) USING BTREE,
  KEY `idx2` (`open_date`) USING BTREE,
  KEY `idx4` (`comment`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_view` int(10) unsigned NOT NULL DEFAULT '0',
  `hot_view` int(10) unsigned NOT NULL DEFAULT '0',
  `group_view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_content` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `focus_no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `popular_word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `best` tinyint(4) NOT NULL DEFAULT '0',
  `review` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`focus_no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_content_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_game` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  `open_date` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`reg_date`) USING BTREE,
  KEY `idx2` (`open_date`) USING BTREE,
  KEY `idx4` (`comment`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_game_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_game_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_game_content` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `focus_no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `popular_word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `view_uv` int(10) unsigned NOT NULL DEFAULT '0',
  `best` tinyint(4) NOT NULL DEFAULT '0',
  `review` varchar(120) NOT NULL DEFAULT '',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`focus_no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_game_content_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `img_view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_game_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','keyword') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focus_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','keyword') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `free_charge_list` (
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(11) unsigned NOT NULL DEFAULT '0',
  `product_cd` int(11) unsigned NOT NULL DEFAULT '0',
  `sera_amount` int(11) NOT NULL DEFAULT '0',
  `item_cd` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `m_id` (`m_id`,`product_cd`) USING BTREE,
  KEY `idx_product_cd` (`product_cd`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `free_charge_product_list` (
  `product_cd` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL DEFAULT '',
  `sera_amount` int(11) NOT NULL DEFAULT '0',
  `item_cd` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`product_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_channel` (
  `gc_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gc_now` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_ip` char(64) NOT NULL DEFAULT '',
  `gc_port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_max` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_game` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gc_channel` char(32) NOT NULL DEFAULT '',
  `gc_ch_group` smallint(5) NOT NULL DEFAULT '0',
  `gc_channeltype` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gc_no`),
  KEY `idxGC_GAME` (`gc_game`) USING BTREE,
  KEY `idxch_group` (`gc_ch_group`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_genre` (
  `genre_code` tinyint(4) NOT NULL AUTO_INCREMENT,
  `jenre_name` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`genre_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_bbs` (
  `gno` int(11) NOT NULL AUTO_INCREMENT,
  `bd_id` tinyint(4) NOT NULL DEFAULT '0',
  `empyn` tinyint(4) NOT NULL DEFAULT '0',
  `mgno` int(11) NOT NULL DEFAULT '0',
  `open` tinyint(1) NOT NULL DEFAULT '1',
  `main` tinyint(4) NOT NULL DEFAULT '0',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body_type` char(1) NOT NULL DEFAULT '',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `reg_id` varchar(20) NOT NULL DEFAULT '',
  `subject` varchar(50) NOT NULL DEFAULT '',
  `cs_flag` tinyint(4) NOT NULL DEFAULT '0',
  `requestor` varchar(20) NOT NULL DEFAULT '',
  `order_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gno`),
  UNIQUE KEY `uk_bdid_empyn_gno` (`bd_id`,`empyn`,`gno`) USING BTREE,
  UNIQUE KEY `uk_bdid_empyn_mgno` (`bd_id`,`empyn`,`mgno`) USING BTREE,
  KEY `idx_bdid_open_main` (`bd_id`,`open`,`main`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_body` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_event` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `stt_date` date NOT NULL DEFAULT '0000-00-00',
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  `ann_date` date NOT NULL DEFAULT '0000-00-00',
  `page_url` varchar(100) NOT NULL DEFAULT '',
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `search_word` text NOT NULL,
  `result_url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`),
  KEY `idx_type` (`event_type`) USING BTREE,
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gen_event` VALUES (1,'0000-00-00','2015-08-01','2015-08-01','',7,'',''),(11,'0000-00-00','2015-08-01','2015-08-01','',7,'','');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_event_detail` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `type_flag1` tinyint(1) NOT NULL DEFAULT '0',
  `type_flag2` tinyint(1) NOT NULL DEFAULT '0',
  `type_flag3` tinyint(1) NOT NULL DEFAULT '0',
  `type_flag4` tinyint(1) NOT NULL DEFAULT '0',
  `type_flag5` tinyint(1) NOT NULL DEFAULT '0',
  `type_flag6` tinyint(1) NOT NULL DEFAULT '0',
  `content1` text NOT NULL,
  `file_location1` varchar(100) NOT NULL DEFAULT '',
  `content2` text NOT NULL,
  `file_location2` varchar(100) NOT NULL DEFAULT '',
  `content3` text NOT NULL,
  `file_location3` varchar(100) NOT NULL DEFAULT '',
  `content4` text NOT NULL,
  `file_location4` varchar(100) NOT NULL DEFAULT '',
  `content5` text NOT NULL,
  `file_location5` varchar(100) NOT NULL DEFAULT '',
  `content6` text NOT NULL,
  `file_location6` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_files` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `gf_no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `file_server` varchar(50) NOT NULL DEFAULT '',
  `file_location` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`,`gf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guarder_info` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `g_name` varchar(10) NOT NULL DEFAULT '',
  `g_birth` varchar(8) NOT NULL DEFAULT '',
  `g_phone` varchar(15) NOT NULL DEFAULT '',
  `g_confirm` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_article_history` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_cd` tinyint(5) NOT NULL DEFAULT '0',
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `contents` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_auction_rank` (
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `it_name` varchar(100) NOT NULL DEFAULT '',
  `it_rarity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `it_url` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`server_id`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_bbs` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `bbs_cd` tinyint(5) NOT NULL DEFAULT '0',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `img_src` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `view_cnt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `click_cnt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `open_flg` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_bbs_cd_open_flg` (`bbs_cd`,`open_flg`) USING BTREE,
  KEY `idx_open_flg` (`open_flg`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_bbs_contents` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `contents` text NOT NULL,
  PRIMARY KEY (`no`),
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_bbs_link` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `link_kind` tinyint(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_bbs_search` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `search_text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE,
  KEY `idx_search_text` (`search_text`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_link_statistics` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_cd` tinyint(5) NOT NULL DEFAULT '0',
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `link_bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `view_cnt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_menu` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_no` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sort_no` int(11) NOT NULL DEFAULT '0',
  `view_type` tinyint(4) NOT NULL DEFAULT '0',
  `depth_1` int(10) unsigned NOT NULL DEFAULT '0',
  `depth_2` int(10) unsigned NOT NULL DEFAULT '0',
  `depth_3` int(10) unsigned NOT NULL DEFAULT '0',
  `depth_4` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_depth_3` (`depth_3`) USING BTREE,
  KEY `idx_depth_1` (`depth_1`) USING BTREE,
  KEY `idx_depth_2` (`depth_2`) USING BTREE,
  KEY `idx_depth_4` (`depth_4`) USING BTREE,
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE,
  KEY `idx_sort_no` (`sort_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_tag_list` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_tag_name` (`tag_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guide_view_cnt` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_cd` tinyint(5) NOT NULL DEFAULT '0',
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `click_cnt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `day_cnt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE,
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_bbs` (
  `gno` int(11) NOT NULL AUTO_INCREMENT,
  `bd_id` tinyint(4) NOT NULL DEFAULT '0',
  `empyn` tinyint(4) NOT NULL DEFAULT '0',
  `mgno` int(11) NOT NULL DEFAULT '0',
  `open` tinyint(1) NOT NULL DEFAULT '1',
  `main` tinyint(4) NOT NULL DEFAULT '0',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body_type` char(1) NOT NULL DEFAULT '',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `reg_id` varchar(20) NOT NULL DEFAULT '',
  `subject` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`),
  UNIQUE KEY `uk_bdid_empyn_gno` (`bd_id`,`empyn`,`gno`) USING BTREE,
  UNIQUE KEY `uk_bdid_empyn_mgno` (`bd_id`,`empyn`,`mgno`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_body` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_event` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `stt_date` date NOT NULL DEFAULT '0000-00-00',
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  `ann_date` date NOT NULL DEFAULT '0000-00-00',
  `page_url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_files` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `gf_no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `file_server` varchar(50) NOT NULL DEFAULT '',
  `file_location` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`,`gf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_recommend` (
  `no` int(11) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment` varchar(100) NOT NULL DEFAULT '',
  `recommend_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`),
  KEY `idx_guild_id` (`guild_id`) USING BTREE,
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_visit` (
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `total_visit` int(11) NOT NULL DEFAULT '0',
  `today_visit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_pass` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` char(16) NOT NULL DEFAULT '',
  `name` char(16) NOT NULL DEFAULT '',
  `phone` char(12) NOT NULL DEFAULT '',
  `code` mediumint(8) NOT NULL DEFAULT '0',
  `tid` char(20) NOT NULL DEFAULT '',
  `update_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`),
  KEY `m_id` (`m_id`,`code`,`update_day`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_upload` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `img_url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') DEFAULT NULL,
  `category` tinyint(3) unsigned DEFAULT '0',
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT '0',
  `m_user_id` varchar(16) DEFAULT NULL,
  `m_sex` enum('m','f') DEFAULT 'm',
  `server_id` tinyint(4) DEFAULT '0',
  `charac_no` int(11) DEFAULT '0',
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(120) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT '0',
  `comment` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned DEFAULT '0',
  `recom` mediumint(8) unsigned DEFAULT '0',
  `file` mediumint(8) unsigned DEFAULT '0',
  `depth` tinyint(3) unsigned DEFAULT '0',
  `sequence` double unsigned DEFAULT NULL,
  `positive` mediumint(8) unsigned DEFAULT '0',
  `negative` mediumint(8) unsigned DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_cat_seq` (`category`,`sequence`) USING BTREE,
  KEY `idx_notice` (`notice`) USING BTREE,
  KEY `idx_charac_name` (`charac_name`(10)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned DEFAULT NULL,
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT NULL,
  `m_user_id` varchar(16) DEFAULT NULL,
  `m_sex` enum('m','f') DEFAULT NULL,
  `server_id` tinyint(4) DEFAULT NULL,
  `charac_no` int(11) DEFAULT NULL,
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT NULL,
  `comment_text` text,
  `ip` varchar(15) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT NULL,
  `recom` mediumint(8) unsigned DEFAULT '0',
  `opinion_mode` tinyint(1) DEFAULT '0',
  `del_flag` tinyint(3) unsigned DEFAULT '0',
  `comment_cnt` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx2` (`m_id`,`opinion_mode`) USING BTREE,
  KEY `idx1` (`content_no`,`opinion_mode`,`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion_comment_recom` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comment_no` mediumint(8) unsigned DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT NULL,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion_comment_reply` (
  `rno` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `no` mediumint(8) unsigned DEFAULT NULL,
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT NULL,
  `m_user_id` varchar(16) DEFAULT NULL,
  `server_id` tinyint(4) DEFAULT NULL,
  `charac_no` int(11) DEFAULT NULL,
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT NULL,
  `comment_text` varchar(255) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT NULL,
  `depth` tinyint(3) unsigned DEFAULT '0',
  `sequence` mediumint(8) unsigned DEFAULT NULL,
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rno`),
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`sequence`) USING BTREE,
  KEY `idx3` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `content_type` enum('br','text','all') DEFAULT 'br',
  `ip` varchar(15) DEFAULT NULL,
  `ring` smallint(5) unsigned DEFAULT NULL,
  `sms` enum('y','n') DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned DEFAULT NULL,
  `file_url` char(128) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion_search` (
  `no` int(10) unsigned DEFAULT '0',
  `category` tinyint(3) unsigned DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') DEFAULT 'title',
  `word` char(32) DEFAULT NULL,
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx_5` (`class`,`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensive_discussion_search_new` (
  `no` int(10) unsigned DEFAULT '0',
  `category` tinyint(3) unsigned DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') DEFAULT 'title',
  `word` char(32) DEFAULT NULL,
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx_5` (`class`,`word`,`category`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet_line` (
  `line_code` tinyint(4) NOT NULL AUTO_INCREMENT,
  `line_name` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`line_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_of_week` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `title` varchar(50) NOT NULL DEFAULT '',
  `contents` text,
  `dnf_main` text,
  `radio_url` varchar(128) NOT NULL DEFAULT '',
  `opt_flag` tinyint(4) NOT NULL DEFAULT '0',
  `view_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_occ_date` (`occ_date`) USING BTREE,
  KEY `idx_opt_flag` (`opt_flag`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_list` (
  `job_code` tinyint(4) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`job_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_gift_entry` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` int(11) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `item_no` int(11) NOT NULL DEFAULT '0',
  `item_cnt` smallint(6) NOT NULL DEFAULT '0',
  `item_check` int(11) unsigned NOT NULL DEFAULT '0',
  `total_point` int(11) unsigned NOT NULL DEFAULT '0',
  `occ_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_occ_date` (`occ_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_gift_give_stats` (
  `date_enroll` date NOT NULL DEFAULT '0000-00-00',
  `item_no` int(11) NOT NULL DEFAULT '0',
  `item_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date_enroll`,`item_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_gift_point_info` (
  `lev` int(11) NOT NULL DEFAULT '0',
  `point` int(11) unsigned NOT NULL DEFAULT '0',
  `item_no` int(11) NOT NULL DEFAULT '0',
  `item_cnt` smallint(6) NOT NULL DEFAULT '0',
  `item_period` smallint(6) NOT NULL DEFAULT '0',
  KEY `idx_lev` (`lev`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_gift_rank_info` (
  `rank` int(11) NOT NULL DEFAULT '0',
  `item_no` int(11) NOT NULL DEFAULT '0',
  `item_cnt` smallint(6) NOT NULL DEFAULT '0',
  `item_period` smallint(6) NOT NULL DEFAULT '0',
  KEY `idx_rank` (`rank`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_job` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_cat_seq` (`category`,`sequence`) USING BTREE,
  KEY `idx_notice` (`notice`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_job_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_job_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_job_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_job_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_know_lev_stats` (
  `date_enroll` date NOT NULL DEFAULT '0000-00-00',
  `lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date_enroll`,`lev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_member_point` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` int(11) NOT NULL DEFAULT '0',
  `total_point` int(10) unsigned NOT NULL DEFAULT '0',
  `now_point` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_plan` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx_lev` (`lev`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_plan_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_plan_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `skill` text NOT NULL,
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_plan_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_plan_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`create_day`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_dep_char` (`charac_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_info` (
  `no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`sequence`) USING BTREE,
  KEY `idx3` (`depth`,`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_old` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  `reply` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_dep_char` (`depth`,`charac_name`) USING BTREE,
  KEY `idx4` (`depth`,`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx_search` (`class`,`word`,`depth`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_search_bak` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx_search` (`class`,`depth`,`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_sequence` (
  `no` int(11) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_qa_sequence_real` (
  `sequence` int(11) DEFAULT NULL,
  `cnt` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_rank` (
  `knowcafe_type` tinyint(4) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `total_point` int(11) unsigned NOT NULL DEFAULT '0',
  `now_point` int(11) unsigned NOT NULL DEFAULT '0',
  `old_rank` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `black` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `ix_knowcafe_type` (`knowcafe_type`,`rank`) USING BTREE,
  KEY `ix_m_id` (`m_id`) USING BTREE,
  KEY `idx_black` (`black`) USING BTREE,
  KEY `idx_rank` (`black`,`rank`) USING BTREE,
  KEY `idx_charac_name` (`black`,`charac_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_search` (
  `knowcafe_type` tinyint(4) NOT NULL DEFAULT '0',
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`knowcafe_type`) USING BTREE,
  KEY `idx2` (`no`) USING BTREE,
  KEY `idx3` (`category`) USING BTREE,
  KEY `idx4` (`class`) USING BTREE,
  KEY `idx5` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_tip` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_cat_seq` (`category`,`sequence`) USING BTREE,
  KEY `idx_notice` (`notice`) USING BTREE,
  KEY `idx_charac_name` (`charac_name`(10)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_tip_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_tip_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_tip_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_tip_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx_5` (`class`,`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowcafe_writing_stats` (
  `date_enroll` date NOT NULL DEFAULT '0000-00-00',
  `tip_sum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tim_recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `qa_sum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `qa_recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `job_sum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `job_recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `skill_sum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `skill_recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tip_hit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `qa_hit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `job_hit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `skill_hit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discussion_sum` mediumint(8) unsigned DEFAULT '0',
  `discussion_recom` mediumint(8) unsigned DEFAULT '0',
  `discussion_hit` mediumint(8) unsigned DEFAULT '0',
  PRIMARY KEY (`date_enroll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowl_bbs` (
  `gno` int(11) NOT NULL AUTO_INCREMENT,
  `kn_id` int(11) NOT NULL DEFAULT '0',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body_type` char(1) NOT NULL DEFAULT '',
  `reg_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `up` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `down` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `other_flag` tinyint(4) NOT NULL DEFAULT '0',
  `url_go` varchar(20) NOT NULL DEFAULT '',
  `url_to` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowl_body` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`gno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowl_class` (
  `kn_id` int(11) NOT NULL DEFAULT '0',
  `sup_id` int(11) NOT NULL DEFAULT '0',
  `kn_name` varchar(50) NOT NULL DEFAULT '',
  `cur_depth` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowl_class_tree` (
  `kn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `up_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `uk_tree` (`kn_id`,`up_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowl_files` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `gf_no` tinyint(4) NOT NULL DEFAULT '0',
  `file_server` varchar(50) NOT NULL DEFAULT '',
  `file_location` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`gno`,`gf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowl_test` (
  `gno` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kn_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `question_flag` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `know_flag` tinyint(4) NOT NULL DEFAULT '0',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`kn_id`) USING BTREE,
  KEY `idx3` (`m_id`) USING BTREE,
  KEY `idx4` (`charac_no`) USING BTREE,
  KEY `idx_value` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_best` (
  `kn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kn_id`,`rank`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_class` (
  `kn_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `sup_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `kn_name` varchar(50) NOT NULL DEFAULT '',
  `cur_depth` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `value` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `kn_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`kn_id`) USING BTREE,
  KEY `idx3` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_test` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kn_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `question_flag` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `know_flag` tinyint(4) NOT NULL DEFAULT '0',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`kn_id`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`m_id`) USING BTREE,
  KEY `idx4` (`charac_no`) USING BTREE,
  KEY `idx_value` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_test_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_test_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_word` (
  `word` char(32) NOT NULL DEFAULT '',
  `word_point` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`),
  KEY `idx_word_point` (`word_point`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowstandby` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kn_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `question_flag` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `know_flag` tinyint(4) NOT NULL DEFAULT '0',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`kn_id`) USING BTREE,
  KEY `idx3` (`m_id`) USING BTREE,
  KEY `idx4` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowstandby_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `value` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowstandby_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowstandby_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowstandby_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `kn_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`kn_id`) USING BTREE,
  KEY `idx3` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_3month_stop_web` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(10) NOT NULL DEFAULT '0',
  `is_complete` tinyint(3) NOT NULL DEFAULT '0',
  `is_confirm` tinyint(3) NOT NULL DEFAULT '0',
  `server_no` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`occ_time`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magazine` (
  `mz_id` int(11) NOT NULL AUTO_INCREMENT,
  `degree` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `hists` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL DEFAULT '',
  `writer` varchar(15) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mz_id`),
  UNIQUE KEY `degree` (`degree`,`category`,`seq`) USING BTREE,
  KEY `idx_open_flag` (`open_flag`) USING BTREE,
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magazine_comment` (
  `no` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `mz_id` int(8) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(200) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`mz_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magazine_content` (
  `mz_id` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_promotion_detail` (
  `pro_no` int(11) NOT NULL DEFAULT '0',
  `pro_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mag_id` int(11) NOT NULL DEFAULT '0',
  KEY `idx_pro_type` (`pro_type`) USING BTREE,
  KEY `idx_mag` (`mag_id`) USING BTREE,
  KEY `idx_pro_no` (`pro_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_promotion_info` (
  `pro_no` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_name` varchar(255) NOT NULL DEFAULT '',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` varchar(25) NOT NULL DEFAULT '',
  `promotion_explain` text NOT NULL,
  PRIMARY KEY (`pro_no`),
  KEY `idx_user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_coin` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `pay_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `event_coin` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_id_pass_change_pv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx1` (`occ_date`,`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month_item` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` enum('N','Y') NOT NULL DEFAULT 'N',
  `pre_img` varchar(100) NOT NULL DEFAULT '',
  `now_img` varchar(100) NOT NULL DEFAULT '',
  `next_img` varchar(100) NOT NULL DEFAULT '',
  `admin_no` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pre_pop` varchar(100) NOT NULL DEFAULT '',
  `now_pop` varchar(100) NOT NULL DEFAULT '',
  `next_pop` varchar(100) NOT NULL DEFAULT '',
  `pre_map` varchar(16) NOT NULL DEFAULT '',
  `now_map` varchar(16) NOT NULL DEFAULT '',
  `next_map` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_state` (`state`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_guestbook0` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `master` int(10) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `comment_text` text,
  `emoticon` tinyint(2) NOT NULL DEFAULT '1',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`master`,`no`),
  UNIQUE KEY `uk_no` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_guestbook0_reply` (
  `r_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `no` mediumint(8) NOT NULL DEFAULT '0',
  `comment_reply` text NOT NULL,
  PRIMARY KEY (`r_id`),
  KEY `idx_no` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine` (
  `mz_id` int(11) NOT NULL AUTO_INCREMENT,
  `degree` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `hists` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `point_cnt` int(11) NOT NULL DEFAULT '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL DEFAULT '',
  `writer` varchar(15) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  `open_date` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mz_id`),
  KEY `idx_open_flag` (`open_flag`) USING BTREE,
  KEY `degree` (`degree`,`category`,`seq`) USING BTREE,
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_comment` (
  `no` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `mz_id` int(8) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(200) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`mz_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_content` (
  `mz_id` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_image_upload` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `img_url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_issue_of_week` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `title` varchar(50) NOT NULL DEFAULT '',
  `contents` text,
  `dnf_main` text,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_recomm` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `mz_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_ucc` (
  `mz_id` int(11) NOT NULL AUTO_INCREMENT,
  `degree` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `hists` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `point_cnt` int(11) NOT NULL DEFAULT '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL DEFAULT '',
  `writer` varchar(15) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  `open_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mz_id`),
  KEY `idx_open_flag` (`open_flag`) USING BTREE,
  KEY `degree` (`degree`,`category`,`seq`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_charac_name` (`charac_name`(10)) USING BTREE,
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_ucc_comment` (
  `no` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `mz_id` int(8) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(200) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`mz_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newmagazine_ucc_content` (
  `mz_id` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_bbs` (
  `bbs_code` tinyint(4) NOT NULL DEFAULT '0',
  `emph_yn` tinyint(1) NOT NULL DEFAULT '0',
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(12) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `html_yn` tinyint(1) DEFAULT '0',
  `subject` varchar(50) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `hits` smallint(6) NOT NULL DEFAULT '0',
  `prev_no` int(11) NOT NULL DEFAULT '0',
  `next_no` int(11) NOT NULL DEFAULT '0',
  `updt_date` int(11) DEFAULT NULL,
  `use_yn` tinyint(1) NOT NULL DEFAULT '1',
  `file_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bbs_code`,`emph_yn`,`no`),
  UNIQUE KEY `uk_no` (`no`) USING BTREE,
  KEY `idx_prev` (`prev_no`) USING BTREE,
  KEY `idx_next` (`next_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newyear2008_comment` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  UNIQUE KEY `m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `bbs_name` varchar(10) NOT NULL DEFAULT '',
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  KEY `idx1` (`bbs_name`) USING BTREE,
  KEY `idx2` (`no`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_comment_realradio_view` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_cate` (
  `cate_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(50) NOT NULL DEFAULT '',
  `reg_date` date NOT NULL DEFAULT '0000-00-00',
  `open_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`cate_no`),
  UNIQUE KEY `cate_name` (`cate_name`) USING BTREE,
  KEY `idx_reg_date` (`reg_date`) USING BTREE,
  KEY `idx_open_date` (`open_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_content` (
  `bbs_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_no` int(10) unsigned NOT NULL DEFAULT '0',
  `cc_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `list_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `popular_word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_view` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content_cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`bbs_no`),
  KEY `idx_cc_type` (`cc_type`) USING BTREE,
  KEY `idx_cc_no` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_content_sub` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `popular_word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_cc_no` (`m_id`,`bbs_no`) USING BTREE,
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_editor` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cast_name` varchar(20) NOT NULL DEFAULT '',
  `cate_no` int(10) unsigned NOT NULL DEFAULT '0',
  `cast_intro` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `homepage` varchar(50) NOT NULL DEFAULT '',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `editor_intro` text NOT NULL,
  `mng_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grade` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_cate_no` (`cate_no`) USING BTREE,
  KEY `idx_mng_type` (`mng_type`) USING BTREE,
  KEY `idx_order` (`order_num`) USING BTREE,
  KEY `grade` (`grade`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_member_info` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sub_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_search` (
  `bbs_no` int(10) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','link') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx2` (`bbs_no`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_stat` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`cur_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opencast_subscribe` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cc_no` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`no`),
  KEY `idx_cc_no` (`cc_no`) USING BTREE,
  KEY `idx_occ_date` (`occ_date`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_bbsinfo` (
  `kn_id` int(11) NOT NULL DEFAULT '0',
  `url_go` varchar(20) NOT NULL DEFAULT '',
  `url_to` varchar(20) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `ref_url` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  PRIMARY KEY (`url_go`,`url_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_bbsinfo2` (
  `kn_id` int(11) NOT NULL DEFAULT '0',
  `url_go` varchar(20) NOT NULL DEFAULT '',
  `url_to` varchar(20) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `ref_url` varchar(100) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  PRIMARY KEY (`url_go`,`url_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`penpic_type`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic2` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`penpic_type`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_degree` (`degree`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic2_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `point` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic2_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic2_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `penpic_type` tinyint(4) NOT NULL DEFAULT '0',
  `cnt` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`penpic_type`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic2_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic2_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`penpic_type`) USING BTREE,
  KEY `idx_degree` (`degree`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic2_valuation` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic3` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`penpic_type`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_degree` (`degree`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic3_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `point` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic3_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic3_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `penpic_type` tinyint(4) NOT NULL DEFAULT '0',
  `cnt` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`penpic_type`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic3_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic3_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`penpic_type`) USING BTREE,
  KEY `idx_degree` (`degree`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic3_valuation` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic4` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`penpic_type`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_degree` (`degree`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic4_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `point` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic4_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic4_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `penpic_type` tinyint(4) NOT NULL DEFAULT '0',
  `cnt` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`penpic_type`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic4_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic4_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`penpic_type`) USING BTREE,
  KEY `idx_degree` (`degree`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic4_valuation` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `point` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `penpic_type` tinyint(4) NOT NULL DEFAULT '0',
  `cnt` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`penpic_type`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`penpic_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penpic_valuation` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `penpic_desc` text NOT NULL,
  `penpic_examine` text NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx_lev` (`lev`) USING BTREE,
  KEY `idx_ca_no` (`category`,`no`) USING BTREE,
  KEY `idx_ca_subjob` (`category`,`sub_job`,`no`) USING BTREE,
  KEY `idx_createday` (`create_day`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_charac_name` (`charac_name`(10)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_cnt` (
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cnt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category`,`sub_job`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `skill` text NOT NULL,
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `no` (`no`) USING BTREE,
  KEY `word` (`word`) USING BTREE,
  KEY `class_word` (`class`,`word`) USING BTREE,
  KEY `category_multi` (`category`,`class`,`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') DEFAULT NULL,
  `category` tinyint(3) unsigned DEFAULT '0',
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT '0',
  `m_user_id` varchar(16) DEFAULT NULL,
  `m_sex` enum('m','f') DEFAULT 'm',
  `server_id` tinyint(4) DEFAULT '0',
  `charac_no` int(11) DEFAULT '0',
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(120) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT '0',
  `comment` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned DEFAULT '0',
  `recom` mediumint(8) unsigned DEFAULT '0',
  `file` mediumint(8) unsigned DEFAULT '0',
  `depth` tinyint(3) unsigned DEFAULT '0',
  `sequence` double unsigned DEFAULT NULL,
  `positive` mediumint(8) unsigned DEFAULT '0',
  `negative` mediumint(8) unsigned DEFAULT '0',
  `bbs_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `positive_mark` tinyint(4) NOT NULL DEFAULT '0',
  `negative_mark` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_cat_seq` (`category`,`sequence`) USING BTREE,
  KEY `idx_notice` (`notice`) USING BTREE,
  KEY `idx_bbs_no` (`bbs_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_bbs` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') DEFAULT NULL,
  `category` tinyint(3) unsigned DEFAULT '0',
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT '0',
  `m_user_id` varchar(16) DEFAULT NULL,
  `m_sex` enum('m','f') DEFAULT 'm',
  `server_id` tinyint(4) DEFAULT '0',
  `charac_no` int(11) DEFAULT '0',
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(120) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT '0',
  `comment` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_cat_seq` (`category`) USING BTREE,
  KEY `idx_notice` (`notice`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_bbs_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `content_type` enum('br','text','all') DEFAULT 'br',
  `ip` varchar(15) DEFAULT NULL,
  `ring` smallint(5) unsigned DEFAULT NULL,
  `sms` enum('y','n') DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_bbs_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned DEFAULT NULL,
  `file_url` char(128) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_bbs_search` (
  `no` int(10) unsigned DEFAULT '0',
  `category` tinyint(3) unsigned DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') DEFAULT 'title',
  `word` char(32) DEFAULT NULL,
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx_5` (`class`,`word`,`category`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned DEFAULT NULL,
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT NULL,
  `m_user_id` varchar(16) DEFAULT NULL,
  `m_sex` enum('m','f') DEFAULT NULL,
  `server_id` tinyint(4) DEFAULT NULL,
  `charac_no` int(11) DEFAULT NULL,
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT NULL,
  `comment_text` text NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT NULL,
  `recom` mediumint(8) unsigned DEFAULT '0',
  `opinion_mode` tinyint(1) DEFAULT '0',
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_comment_recom` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comment_no` mediumint(8) unsigned DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT NULL,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_comment_reply` (
  `rno` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `no` mediumint(8) unsigned DEFAULT NULL,
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT NULL,
  `m_user_id` varchar(16) DEFAULT NULL,
  `server_id` tinyint(4) DEFAULT NULL,
  `charac_no` int(11) DEFAULT NULL,
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT NULL,
  `comment_text` varchar(255) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT NULL,
  `depth` tinyint(3) unsigned DEFAULT '0',
  `sequence` double unsigned DEFAULT NULL,
  `del_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rno`),
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`sequence`) USING BTREE,
  KEY `idx3` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `content_type` enum('br','text','all') DEFAULT 'br',
  `ip` varchar(15) DEFAULT NULL,
  `ring` smallint(5) unsigned DEFAULT NULL,
  `sms` enum('y','n') DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned DEFAULT NULL,
  `file_url` char(128) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerclub_discussion_search` (
  `no` int(10) unsigned DEFAULT '0',
  `category` tinyint(3) unsigned DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') DEFAULT 'title',
  `word` char(32) DEFAULT NULL,
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx_5` (`class`,`word`,`category`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protect_acc_release_log` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `punish_type` int(11) NOT NULL DEFAULT '0',
  `cert_flag` tinyint(4) NOT NULL DEFAULT '0',
  `cert_type` tinyint(4) NOT NULL DEFAULT '0',
  `reason` varchar(200) DEFAULT NULL,
  `apply_flag` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`no`),
  KEY `idx_mid` (`m_id`) USING BTREE,
  KEY `idx_punish_type` (`punish_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE,
  KEY `idx_no` (`no`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_charac_name` (`charac_name`(10)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_myisam` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE,
  KEY `idx2` (`charac_name`) USING BTREE,
  KEY `idx4` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`class`,`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_search_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_search_etc` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar0_view` (
  `total_count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar6` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE,
  KEY `idx3` (`sequence`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar6_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar6_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar6_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar6_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdar_beta_tester` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `req_date` int(11) NOT NULL DEFAULT '0',
  `pc_spec` text,
  `line_code` tinyint(4) NOT NULL DEFAULT '0',
  `job_code` tinyint(4) NOT NULL DEFAULT '0',
  `genre_code` tinyint(4) NOT NULL DEFAULT '0',
  `fav_game` varchar(30) NOT NULL DEFAULT '',
  `req_reason` varchar(255) NOT NULL DEFAULT '',
  `winning_yn` tinyint(1) DEFAULT NULL,
  `times` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `idx_userid` (`m_user_id`) USING BTREE,
  KEY `idx_req_date` (`req_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realdrama` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `broadcast_day` int(10) unsigned NOT NULL DEFAULT '0',
  `appear` varchar(30) NOT NULL DEFAULT '',
  `plan` varchar(15) NOT NULL DEFAULT '',
  `play` varchar(15) NOT NULL DEFAULT '',
  `summary` varchar(200) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `banner1` varchar(128) NOT NULL DEFAULT '',
  `banner2` varchar(128) NOT NULL DEFAULT '',
  `file_url` varchar(128) NOT NULL DEFAULT '',
  `open_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `main_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`broadcast_day`) USING BTREE,
  KEY `idx5` (`open_flag`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realdrama_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_type` tinyint(4) NOT NULL DEFAULT '0',
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx5` (`bbs_type`) USING BTREE,
  KEY `idx2` (`charac_name`) USING BTREE,
  KEY `idx_notice` (`notice`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_1year_comment` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  UNIQUE KEY `m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_addhit_uv` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `click_view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_again` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `broadcast_day` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(128) NOT NULL DEFAULT '',
  `useyn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`broadcast_day`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_again_0805` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `broadcast_day` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(128) NOT NULL DEFAULT '',
  `useyn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `play_num` int(10) unsigned NOT NULL DEFAULT '0',
  `scenario` text,
  `read_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `search` varchar(30) NOT NULL DEFAULT '',
  `comment_cnt` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`broadcast_day`) USING BTREE,
  KEY `idx2` (`create_day`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_content_seq` (`content_no`,`sequence`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_event` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bbs_type` tinyint(4) NOT NULL DEFAULT '0',
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recom` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adorn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adorn_color2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sequence` double unsigned NOT NULL DEFAULT '0',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`category`) USING BTREE,
  KEY `idx5` (`bbs_type`) USING BTREE,
  KEY `idx2` (`charac_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_event_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_event_comment_view` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `m_nickname` varchar(12) NOT NULL DEFAULT '',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_user_id` varchar(16) NOT NULL DEFAULT '',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_event_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_event_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_file` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_main` (
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `text1` text NOT NULL,
  `text2` text NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `bbs_type` tinyint(4) NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx_class_word` (`class`,`word`) USING BTREE,
  KEY `idx_bbstype_class_word` (`bbs_type`,`class`,`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_search_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `bbs_type` tinyint(4) NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`bbs_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realradio_search_etc` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `bbs_type` tinyint(4) NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content','charac_name') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`bbs_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_bbs` (
  `rno` int(11) NOT NULL AUTO_INCREMENT,
  `bd_id` tinyint(4) NOT NULL DEFAULT '0',
  `thread_id` double NOT NULL DEFAULT '0',
  `rev_thread` double NOT NULL DEFAULT '0',
  `depth` tinyint(4) NOT NULL DEFAULT '0',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `hits` smallint(6) NOT NULL DEFAULT '0',
  `recomm` smallint(6) NOT NULL DEFAULT '0',
  `de_recom` smallint(6) NOT NULL DEFAULT '0',
  `comment` smallint(6) NOT NULL DEFAULT '0',
  `body_type` char(1) NOT NULL DEFAULT '',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `reg_id` varchar(20) NOT NULL DEFAULT '',
  `subject` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rno`),
  UNIQUE KEY `uk_bdid_trid` (`bd_id`,`thread_id`) USING BTREE,
  UNIQUE KEY `uk_bdid_rtrid` (`bd_id`,`rev_thread`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_body` (
  `rno` int(11) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_comment` (
  `rno` int(11) NOT NULL DEFAULT '0',
  `comm_no` smallint(6) NOT NULL AUTO_INCREMENT,
  `imtc_no` tinyint(4) DEFAULT NULL,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `reg_id` varchar(20) NOT NULL DEFAULT '',
  `pawd` varchar(16) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`rno`,`comm_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_files` (
  `rno` int(11) NOT NULL DEFAULT '0',
  `rf_no` int(11) NOT NULL AUTO_INCREMENT,
  `file_server` varchar(50) NOT NULL DEFAULT '',
  `file_location` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rno`,`rf_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repl_recomm` (
  `rno` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`rno`,`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_tip` (
  `mz_id` int(11) NOT NULL AUTO_INCREMENT,
  `degree` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `hists` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `mod_date` int(11) NOT NULL DEFAULT '0',
  `search_word` text NOT NULL,
  `thumbnail_url` varchar(100) NOT NULL DEFAULT '',
  `writer` varchar(15) NOT NULL DEFAULT '',
  `summary` varchar(255) NOT NULL DEFAULT '',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mz_id`),
  UNIQUE KEY `degree` (`degree`,`category`,`seq`) USING BTREE,
  KEY `idx_open_flag` (`open_flag`) USING BTREE,
  FULLTEXT KEY `search_word` (`search_word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_tip_comment` (
  `no` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `mz_id` int(8) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment_text` varchar(200) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`mz_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_tip_content` (
  `mz_id` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`mz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_today` (
  `no` mediumint(9) NOT NULL AUTO_INCREMENT,
  `day` char(2) NOT NULL DEFAULT '',
  `contents` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `window_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_state_control` (
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `flag` tinyint(3) unsigned DEFAULT '0',
  `link_url` varchar(120) NOT NULL DEFAULT '',
  `pop_up` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`server_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_dictionary_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` mediumint(8) unsigned DEFAULT NULL,
  `m_nickname` varchar(12) DEFAULT NULL,
  `m_id` int(10) unsigned DEFAULT NULL,
  `m_user_id` varchar(16) DEFAULT NULL,
  `m_sex` enum('m','f') DEFAULT NULL,
  `server_id` tinyint(4) DEFAULT NULL,
  `charac_no` int(11) DEFAULT NULL,
  `charac_name` varchar(20) DEFAULT NULL,
  `job` tinyint(3) unsigned DEFAULT NULL,
  `comment_text` varchar(255) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT NULL,
  `skill_group` int(10) DEFAULT NULL,
  `skill_idx` int(10) DEFAULT NULL,
  `charac_idx` int(5) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE,
  KEY `idx_skill_group` (`skill_group`) USING BTREE,
  KEY `idx_skillidx` (`skill_idx`) USING BTREE,
  KEY `idx_characidx` (`charac_idx`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_dictionary_estimate_log` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned DEFAULT NULL,
  `m_user_id` varchar(16) DEFAULT NULL,
  `charac_idx` int(5) DEFAULT NULL,
  `skill_group` int(10) DEFAULT NULL,
  `skill_idx` int(10) DEFAULT NULL,
  `dungeon_cnt` mediumint(8) unsigned DEFAULT NULL,
  `challenge_cnt` mediumint(8) unsigned DEFAULT NULL,
  `create_day` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_m_user_id` (`m_user_id`) USING BTREE,
  KEY `idx_skill_group` (`skill_group`) USING BTREE,
  KEY `idx_skillidx` (`skill_idx`) USING BTREE,
  KEY `idx_characidx` (`charac_idx`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_dictionary_info` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `charac_idx` int(5) DEFAULT NULL,
  `skill_group` int(10) DEFAULT NULL,
  `skill_idx` int(10) DEFAULT NULL,
  `dungeon_cnt` mediumint(8) unsigned DEFAULT '0',
  `challenge_cnt` mediumint(8) unsigned DEFAULT '0',
  `comment_cnt` mediumint(8) unsigned DEFAULT '0',
  `estimate_cnt` mediumint(8) unsigned DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_skill_group` (`skill_group`) USING BTREE,
  KEY `idx_skillidx` (`skill_idx`) USING BTREE,
  KEY `idx_characidx` (`charac_idx`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_info` (
  `job_index` int(11) NOT NULL DEFAULT '0',
  `skill_index` int(11) NOT NULL DEFAULT '0',
  `module_type` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name2` varchar(255) NOT NULL DEFAULT '',
  `basic_explain` varchar(255) NOT NULL DEFAULT '',
  `skill_explain` varchar(255) NOT NULL DEFAULT '',
  `purchase_cost` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `skill_class` int(11) NOT NULL DEFAULT '0',
  `growtype_maximum_level` varchar(255) NOT NULL DEFAULT '',
  `second_growtype_maximum_level` varchar(255) NOT NULL DEFAULT '',
  `skill_fitness_growtype` varchar(255) NOT NULL DEFAULT '',
  `skill_fitness_second_growtype` varchar(255) NOT NULL DEFAULT '',
  `consume_item` varchar(255) NOT NULL DEFAULT '',
  `required_level` tinyint(4) NOT NULL DEFAULT '0',
  `required_level_range` tinyint(4) NOT NULL DEFAULT '0',
  `pre_required_skill` varchar(255) NOT NULL DEFAULT '',
  `consume_mp` varchar(255) NOT NULL DEFAULT '',
  `cool_time` varchar(255) NOT NULL DEFAULT '',
  `casting_time` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `command_key_explain` varchar(255) NOT NULL DEFAULT '',
  `skill_command_advantage` varchar(255) NOT NULL DEFAULT '',
  `static_data` varchar(255) NOT NULL DEFAULT '',
  `level_info` text NOT NULL,
  `start_cool_time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`job_index`,`skill_index`,`module_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sphinx_info` (
  `search_id` char(20) NOT NULL DEFAULT '',
  `last_insert_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_card_ref` (
  `act_info` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `card_name` varchar(25) NOT NULL DEFAULT '',
  `card_lev` smallint(5) unsigned NOT NULL DEFAULT '0',
  `card_type` char(3) NOT NULL DEFAULT '',
  `card_rare` smallint(5) unsigned NOT NULL DEFAULT '0',
  `card_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `card_name` (`card_name`,`card_lev`,`card_type`,`card_num`) USING BTREE,
  KEY `card_lev` (`card_lev`) USING BTREE,
  KEY `card_type` (`card_type`) USING BTREE,
  KEY `card_num` (`card_num`) USING BTREE,
  KEY `idx_num_info` (`card_num`,`act_info`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_free` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx3` (`category`) USING BTREE,
  KEY `idx4` (`create_day`) USING BTREE,
  KEY `idx5` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_free_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_free_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_free_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_free_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx4` (`category`) USING BTREE,
  KEY `idx5` (`class`) USING BTREE,
  KEY `idx6` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_grand` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx3` (`category`) USING BTREE,
  KEY `idx4` (`create_day`) USING BTREE,
  KEY `idx5` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_grand_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_grand_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_grand_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx4` (`category`) USING BTREE,
  KEY `idx5` (`class`) USING BTREE,
  KEY `idx6` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_public_info` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx3` (`category`) USING BTREE,
  KEY `idx4` (`create_day`) USING BTREE,
  KEY `idx5` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_public_info_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_public_info_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_public_info_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_public_info_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx4` (`category`) USING BTREE,
  KEY `idx5` (`class`) USING BTREE,
  KEY `idx6` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_relay_config` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `occ_date` int(11) NOT NULL DEFAULT '0',
  `event_seq` int(11) NOT NULL DEFAULT '0',
  `event_name` varchar(50) NOT NULL DEFAULT '',
  `prize_count` int(11) NOT NULL DEFAULT '0',
  `item_nick` varchar(50) NOT NULL DEFAULT '',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `item_quantity` int(11) NOT NULL DEFAULT '0',
  `prize_date` int(11) NOT NULL DEFAULT '0',
  `prize_user_m_id` int(11) NOT NULL DEFAULT '0',
  `prize_user_server_id` tinyint(4) NOT NULL DEFAULT '0',
  `prize_user_charac_no` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seq`),
  KEY `idx1` (`occ_date`) USING BTREE,
  KEY `idx2` (`event_seq`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_relay_entry_count` (
  `event_seq` int(11) NOT NULL DEFAULT '0',
  `coupon_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_rule` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx3` (`category`) USING BTREE,
  KEY `idx4` (`create_day`) USING BTREE,
  KEY `idx5` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_rule_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_rule_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_rule_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_rule_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx4` (`category`) USING BTREE,
  KEY `idx5` (`class`) USING BTREE,
  KEY `idx6` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_tune` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx3` (`category`) USING BTREE,
  KEY `idx4` (`create_day`) USING BTREE,
  KEY `idx5` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_tune_card_info` (
  `seqidx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `card_uninum` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(4) NOT NULL DEFAULT '0',
  `reg_date` int(10) unsigned NOT NULL DEFAULT '0',
  `act_info` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`seqidx`),
  KEY `idx_bbs` (`no`) USING BTREE,
  KEY `idx_card_num` (`card_uninum`) USING BTREE,
  KEY `idx_num_info` (`card_uninum`,`act_info`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_tune_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_tune_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_tune_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcg_tune_search` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` enum('title','nickname','content') NOT NULL DEFAULT 'title',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`no`) USING BTREE,
  KEY `idx4` (`category`) USING BTREE,
  KEY `idx5` (`class`) USING BTREE,
  KEY `idx6` (`word`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_gan_member` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx1` (`reg_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todaydnf` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_title` varchar(32) NOT NULL DEFAULT '0',
  `first_thumb` varchar(192) NOT NULL DEFAULT '',
  `first_referer` varchar(32) NOT NULL DEFAULT '',
  `first_url` varchar(192) NOT NULL DEFAULT '',
  `first_hit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `second_title` varchar(32) NOT NULL DEFAULT '',
  `second_thumb` varchar(192) NOT NULL DEFAULT '',
  `second_referer` varchar(32) NOT NULL DEFAULT '',
  `second_url` varchar(192) NOT NULL DEFAULT '',
  `second_hit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `third_title` varchar(32) NOT NULL DEFAULT '',
  `third_thumb` varchar(192) NOT NULL DEFAULT '',
  `third_referer` varchar(32) NOT NULL DEFAULT '',
  `third_url` varchar(192) NOT NULL DEFAULT '',
  `third_hit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `open_date` date NOT NULL DEFAULT '0000-00-00',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`),
  KEY `open_date` (`open_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todaydnf_view` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uv` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pv` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ucc_public_info` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice` enum('','s') NOT NULL DEFAULT '',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_sex` enum('m','f') NOT NULL DEFAULT 'm',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` smallint(5) unsigned NOT NULL DEFAULT '0',
  `view` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx3` (`category`) USING BTREE,
  KEY `idx4` (`create_day`) USING BTREE,
  KEY `idx5` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ucc_public_info_comment` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ucc_public_info_content` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `content_type` enum('br','text','all') NOT NULL DEFAULT 'br',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `ring` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sms` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx1` (`no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ucc_public_info_file` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_no` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` char(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx1` (`content_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ucc_user_writers` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '1',
  `end_time` int(11) DEFAULT NULL,
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `update_act_category` (
  `act_no` int(11) NOT NULL DEFAULT '0',
  `category_no` tinyint(4) NOT NULL DEFAULT '0',
  `order_no` tinyint(4) NOT NULL DEFAULT '0',
  `subject` varchar(40) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `img_url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`act_no`,`category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `update_act_info` (
  `act_no` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(60) NOT NULL DEFAULT '',
  `MNG_user_id` varchar(30) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `up_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `open_flag` enum('Y','N','R') NOT NULL DEFAULT 'N',
  `open_date` int(11) NOT NULL DEFAULT '0',
  `image_url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`act_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wedding_memo` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `nick_name` varchar(12) NOT NULL DEFAULT '',
  `memo` varchar(100) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`),
  KEY `idx_guild_id` (`guild_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_agreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_go` varchar(20) NOT NULL DEFAULT '',
  `url_to` varchar(20) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url_go`,`url_to`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_mng_encyclopedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(120) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `hit` int(10) unsigned NOT NULL DEFAULT '0',
  `today_info` tinyint(4) NOT NULL DEFAULT '0',
  `today_char` tinyint(4) NOT NULL DEFAULT '0',
  `pupular_flag` tinyint(4) NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `word` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_category` (`category`) USING BTREE,
  KEY `idx_today_info` (`today_info`) USING BTREE,
  KEY `idx_today_char` (`today_char`) USING BTREE,
  KEY `idx_pupular_flag` (`pupular_flag`) USING BTREE,
  KEY `idx_subject` (`subject`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_mng_encyclopedia_search` (
  `id` int(11) NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `word` char(32) NOT NULL DEFAULT '',
  KEY `idx1` (`id`) USING BTREE,
  KEY `idx2` (`category`) USING BTREE,
  KEY `idx3` (`class`) USING BTREE,
  KEY `idx4` (`word`) USING BTREE,
  KEY `idx5` (`category`,`class`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_mng_guide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_go` varchar(20) NOT NULL DEFAULT '',
  `url_to` varchar(20) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  `p_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_url` (`url_go`,`url_to`) USING BTREE,
  KEY `idx_url2` (`flag`,`url_go`,`url_to`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_mng_guide_stats` (
  `id` int(11) NOT NULL DEFAULT '0',
  `date_enroll` date NOT NULL DEFAULT '0000-00-00',
  `url_go` varchar(20) NOT NULL DEFAULT '',
  `url_to` varchar(20) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  KEY `idx_url` (`id`) USING BTREE,
  KEY `idx_url2` (`id`,`date_enroll`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_sync` (
  `gno` int(10) unsigned NOT NULL DEFAULT '0',
  `b2t_time` int(10) unsigned NOT NULL DEFAULT '0',
  `t2r_time` int(10) unsigned NOT NULL DEFAULT '0',
  `r2s_time` int(10) unsigned NOT NULL DEFAULT '0',
  `b2t_admin` int(10) unsigned NOT NULL DEFAULT '0',
  `t2r_admin` int(10) unsigned NOT NULL DEFAULT '0',
  `r2s_admin` int(10) unsigned NOT NULL DEFAULT '0',
  `state` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_gno` (`gno`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_cup_event_comment` (
  `no` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `game_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `comment_text` varchar(104) NOT NULL DEFAULT '',
  `create_day` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_charac_no` (`server_id`,`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_cup_event_rank` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `cnt` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_cup_event_temp` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `cnt` int(11) NOT NULL DEFAULT '0',
  KEY `m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_cup_memo` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(12) NOT NULL DEFAULT '',
  `memo` varchar(105) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zipcode` (
  `zipcode` char(7) NOT NULL DEFAULT '',
  `sido` char(16) NOT NULL DEFAULT '',
  `gugun` char(30) NOT NULL DEFAULT '',
  `dong` char(60) NOT NULL DEFAULT '',
  `bunji` char(30) NOT NULL DEFAULT '',
  KEY `idxdong` (`dong`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
