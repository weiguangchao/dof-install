
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `d_guild` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `d_guild`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_body` (
  `gno` int(11) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`gno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_exp_ref` (
  `grade` int(11) NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
CREATE TABLE `guild_grade_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '1',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `grade_prev` tinyint(4) NOT NULL DEFAULT '0',
  `grade_next` tinyint(4) NOT NULL DEFAULT '0',
  `reason` varchar(40) NOT NULL DEFAULT '',
  `admin_no` int(11) DEFAULT NULL,
  `admin_name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx1` (`guild_id`) USING BTREE,
  KEY `idx2` (`server_id`,`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_halloffame` (
  `fame_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `guild_name` varchar(40) NOT NULL DEFAULT '',
  `file_url` varchar(128) NOT NULL DEFAULT '',
  `open_flag` tinyint(4) NOT NULL DEFAULT '0',
  `main_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fame_id`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_halloffame_html` (
  `fame_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `html` text NOT NULL,
  PRIMARY KEY (`fame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_info` (
  `guild_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `guild_name` varchar(40) NOT NULL DEFAULT '',
  `master_id` int(11) NOT NULL DEFAULT '0',
  `master_no` int(11) NOT NULL DEFAULT '0',
  `master_name` varchar(20) NOT NULL DEFAULT '',
  `guild_url` varchar(40) NOT NULL DEFAULT '',
  `guild_icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lev` int(11) NOT NULL DEFAULT '0',
  `ability` tinyint(4) NOT NULL DEFAULT '0',
  `expire_flag` tinyint(4) NOT NULL DEFAULT '0',
  `expire_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_secede_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_count` int(11) NOT NULL DEFAULT '0',
  `recommend_flag` tinyint(4) NOT NULL DEFAULT '0',
  `recommend_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `guild_point` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_point_acc` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_point_prev` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_rank` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_war_point` int(10) unsigned NOT NULL DEFAULT '0',
  `final_entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `final_win` smallint(5) unsigned NOT NULL DEFAULT '0',
  `guild_icon_auth` tinyint(4) NOT NULL DEFAULT '0',
  `guild_exp` int(10) unsigned NOT NULL DEFAULT '0',
  `power_side` tinyint(4) NOT NULL DEFAULT '0',
  `guild_agit_flag` tinyint(4) NOT NULL DEFAULT '0',
  `lev_up_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `power_secede_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `power_war_point` int(10) unsigned NOT NULL DEFAULT '0',
  `power_join_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guild_fund` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`),
  KEY `idx_server_id` (`server_id`) USING BTREE,
  KEY `idx_guild_name` (`guild_name`) USING BTREE,
  KEY `idx_master_no` (`master_no`) USING BTREE,
  KEY `idx_master_name` (`master_name`) USING BTREE,
  KEY `idx_guild_point_prev` (`guild_point_prev`) USING BTREE,
  KEY `idx_guild_point_acc` (`guild_point_acc`) USING BTREE,
  KEY `idx_member_count` (`member_count`) USING BTREE,
  KEY `idx_expire_flag` (`expire_flag`) USING BTREE,
  KEY `idx_guild_point` (`guild_point`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_introduce` (
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `introduce` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_join_list` (
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `born_year` varchar(2) NOT NULL DEFAULT '',
  `memo` varchar(25) NOT NULL DEFAULT '',
  `occ_time` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`guild_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_member` (
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `memo` varchar(30) NOT NULL DEFAULT '',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `grow_type` tinyint(4) NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  `age` tinyint(4) NOT NULL DEFAULT '0',
  `born_year` varchar(2) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT '',
  `apply_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_flag` tinyint(4) NOT NULL DEFAULT '0',
  `bbs_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_visit_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `secede_type` tinyint(4) NOT NULL DEFAULT '0',
  `secede_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_point` int(10) unsigned NOT NULL DEFAULT '0',
  `member_point_prev` int(10) unsigned NOT NULL DEFAULT '0',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nick_name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`charac_no`),
  KEY `idx_guild_id` (`guild_id`) USING BTREE,
  KEY `idx_charac_no` (`charac_no`) USING BTREE,
  KEY `idx_last_visit_time` (`last_visit_time`) USING BTREE,
  KEY `idx_apply_time` (`apply_time`) USING BTREE,
  KEY `idx_secede_type` (`secede_type`) USING BTREE,
  KEY `idx_secede_time` (`secede_time`) USING BTREE,
  KEY `idx_member_flag` (`member_flag`) USING BTREE,
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_member_time` (`member_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_member_introduce` (
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `introduce` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_notice` (
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0',
  `notice` varchar(200) NOT NULL DEFAULT '',
  `acc_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `guild_notice` VALUES (2,'è¯šä¼šçŽ©QQç¾¤ï¼š546052662ï¼Œäº”ä¸€æ´»åŠ¨è¯¦æƒ…è¯·å…³æ³¨è®ºå›å…¬å‘Šã€‚',1460907130),(3,'åäººå ‚é‡Œå‡ºåäºº',1461858694);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_rank` (
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `guild_name` varchar(40) NOT NULL DEFAULT '',
  `guild_Rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `guild_point` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_acc_point` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_acc_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_member` smallint(5) unsigned NOT NULL DEFAULT '0',
  `guild_acc_member` smallint(5) unsigned NOT NULL DEFAULT '0',
  `guild_avg_lev` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_id`,`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_search` (
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `guild_name` varchar(40) NOT NULL DEFAULT '',
  `master_name` varchar(20) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lev` int(11) NOT NULL DEFAULT '0',
  `member_count` int(11) NOT NULL DEFAULT '0',
  `guild_point_acc` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_exp` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_url` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`),
  KEY `idx_server_id` (`server_id`) USING BTREE,
  KEY `idx_guild_name` (`guild_name`) USING BTREE,
  KEY `idx_master_name` (`master_name`) USING BTREE,
  KEY `idx_guild_url` (`guild_url`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_skill` (
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `remain_sp` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_slot` blob NOT NULL,
  `used_sp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_stat` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `create_no` int(11) NOT NULL DEFAULT '0',
  `acc_create_no` int(11) NOT NULL DEFAULT '0',
  `member_no` int(11) NOT NULL DEFAULT '0',
  `acc_member_no` int(11) NOT NULL DEFAULT '0',
  `avg_lev` float DEFAULT NULL,
  `avg_master_lev` float DEFAULT NULL,
  `expire_no` int(11) NOT NULL DEFAULT '0',
  `new_account_no` int(11) NOT NULL DEFAULT '0',
  `new_member_no` int(11) NOT NULL DEFAULT '0',
  `acc_account_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`lev`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_stat_month` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `lev` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `avg_guild_point` int(11) NOT NULL DEFAULT '0',
  `avg_guild_point_acc` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`lev`,`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_stat_uv` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `pv` int(10) unsigned DEFAULT '0',
  `new_bbs` int(10) unsigned NOT NULL DEFAULT '0',
  `total_read_bbs` int(10) unsigned NOT NULL DEFAULT '0',
  `member_uv` int(10) unsigned NOT NULL DEFAULT '0',
  `member_uv_week` int(10) unsigned NOT NULL DEFAULT '0',
  `master_uv` int(10) unsigned NOT NULL DEFAULT '0',
  `master_uv_week` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_war` (
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `a_side_point` int(10) unsigned NOT NULL DEFAULT '0',
  `b_side_point` int(10) unsigned NOT NULL DEFAULT '0',
  `winner_side` tinyint(4) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_war_guild_rank` (
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0',
  `power_war_point` int(10) unsigned NOT NULL DEFAULT '0',
  `power_side` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`),
  KEY `idx_server_id` (`server_id`) USING BTREE,
  KEY `idx_power_side` (`power_side`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_war_statue_ranker` (
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `first_ranker` int(10) unsigned NOT NULL DEFAULT '0',
  `second_ranker` int(10) unsigned NOT NULL DEFAULT '0',
  `third_ranker` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_war_user_rank` (
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `power_war_point` int(10) unsigned NOT NULL DEFAULT '0',
  `power_side` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`server_id`),
  KEY `idx_server_id` (`server_id`) USING BTREE,
  KEY `idx_power_side` (`power_side`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
