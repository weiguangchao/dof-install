
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `d_technical_report` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `d_technical_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessibility_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `main_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `val` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`main_type`,`sub_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assert_manager` (
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `file_line` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_name`,`file_line`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `assert_manager` VALUES ('FIRST_DEATH_TOWER_TING',18,'',3),('FIRST_DEATH_TOWER_TING',45,'',3),('FIRST_DEATH_TOWER_TING',6,'',1),('FIRST_DEATH_TOWER_TING',19,'',1),('FIRST_DEATH_TOWER_TING',22,'',32),('FIRST_DEATH_TOWER_TING',5,'',2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_try_count` int(10) unsigned NOT NULL DEFAULT '0',
  `success_count` int(10) unsigned NOT NULL DEFAULT '0',
  `fail_count` int(10) unsigned NOT NULL DEFAULT '0',
  `block_count` int(10) unsigned NOT NULL DEFAULT '0',
  `incomplete_request_count` int(10) unsigned NOT NULL DEFAULT '0',
  `invalid_request_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_invalid_request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `request_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_invalid_request_type` (
  `type` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_desc` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenge_lag_index` (
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `min_fps` smallint(6) NOT NULL DEFAULT '0',
  `avg_fps` smallint(6) NOT NULL DEFAULT '0',
  `max_fps` smallint(6) NOT NULL DEFAULT '0',
  `win_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_win_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT '0',
  `frame1` int(11) NOT NULL DEFAULT '0',
  `time1` float(7,3) NOT NULL DEFAULT '0.000',
  `frame2` int(11) NOT NULL DEFAULT '0',
  `time2` float(7,3) NOT NULL DEFAULT '0.000',
  `frame3` int(11) NOT NULL DEFAULT '0',
  `time3` float(7,3) NOT NULL DEFAULT '0.000',
  `frame4` int(11) NOT NULL DEFAULT '0',
  `time4` float(7,3) NOT NULL DEFAULT '0.000',
  `frame5` int(11) NOT NULL DEFAULT '0',
  `time5` float(7,3) NOT NULL DEFAULT '0.000',
  `frame6` int(11) NOT NULL DEFAULT '0',
  `time6` float(7,3) NOT NULL DEFAULT '0.000',
  `share_rate` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`spec_id`,`occ_time`,`server_group`) USING BTREE,
  KEY `idx2` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenge_lag_index_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_nosync_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_interval` (
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `value` smallint(5) unsigned DEFAULT '60'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_index` (
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `share_rate` int(10) unsigned DEFAULT NULL,
  `crash_count` smallint(5) unsigned DEFAULT NULL,
  `village_to_dungeon_lag` smallint(6) NOT NULL DEFAULT '0',
  `dungeon_to_village_lag` smallint(6) NOT NULL DEFAULT '0',
  `crash_village` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_dungeon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_challenge` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_wararea` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_fight_village` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_dead_tower` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_channel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_chaos` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crash_load` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`spec_id`,`occ_time`,`server_group`) USING BTREE,
  KEY `idx2` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_index_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `share_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `crash_village` int(11) NOT NULL DEFAULT '0',
  `crash_dungeon` int(11) NOT NULL DEFAULT '0',
  `crash_challenge` int(11) NOT NULL DEFAULT '0',
  `crash_wararea` int(11) NOT NULL DEFAULT '0',
  `crash_fight_village` int(11) NOT NULL DEFAULT '0',
  `crash_dead_tower` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`server_group`,`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dead_tower_lag_index` (
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `min_fps` smallint(6) NOT NULL DEFAULT '0',
  `avg_fps` smallint(6) NOT NULL DEFAULT '0',
  `max_fps` smallint(6) NOT NULL DEFAULT '0',
  `win_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_win_fps` smallint(6) DEFAULT '0',
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT '0',
  `frame1` int(11) NOT NULL DEFAULT '0',
  `time1` float(7,3) NOT NULL DEFAULT '0.000',
  `frame2` int(11) NOT NULL DEFAULT '0',
  `time2` float(7,3) NOT NULL DEFAULT '0.000',
  `frame3` int(11) NOT NULL DEFAULT '0',
  `time3` float(7,3) NOT NULL DEFAULT '0.000',
  `frame4` int(11) NOT NULL DEFAULT '0',
  `time4` float(7,3) NOT NULL DEFAULT '0.000',
  `frame5` int(11) NOT NULL DEFAULT '0',
  `time5` float(7,3) NOT NULL DEFAULT '0.000',
  `frame6` int(11) NOT NULL DEFAULT '0',
  `time6` float(7,3) NOT NULL DEFAULT '0.000',
  `share_rate` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`spec_id`,`occ_time`,`server_group`) USING BTREE,
  KEY `idx2` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dead_tower_lag_index_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_nosync_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deathtower_ting_log` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ting_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deathtower_ting_log_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ting_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directx_version` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `ver_etc` int(10) unsigned NOT NULL DEFAULT '0',
  `ver_8_x` int(10) unsigned NOT NULL DEFAULT '0',
  `ver_9_0` int(10) unsigned NOT NULL DEFAULT '0',
  `ver_9_0_a` int(10) unsigned NOT NULL DEFAULT '0',
  `ver_9_0_b` int(10) unsigned NOT NULL DEFAULT '0',
  `ver_9_0_c` int(10) unsigned NOT NULL DEFAULT '0',
  `ver_10_x` int(10) unsigned NOT NULL DEFAULT '0',
  `ver_11_x` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dungeon_lag_index` (
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `min_fps` smallint(6) NOT NULL DEFAULT '0',
  `avg_fps` smallint(6) NOT NULL DEFAULT '0',
  `max_fps` smallint(6) NOT NULL DEFAULT '0',
  `win_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_win_fps` smallint(6) DEFAULT '0',
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT '0',
  `frame1` int(11) NOT NULL DEFAULT '0',
  `time1` float(7,3) NOT NULL DEFAULT '0.000',
  `frame2` int(11) NOT NULL DEFAULT '0',
  `time2` float(7,3) NOT NULL DEFAULT '0.000',
  `frame3` int(11) NOT NULL DEFAULT '0',
  `time3` float(7,3) NOT NULL DEFAULT '0.000',
  `frame4` int(11) NOT NULL DEFAULT '0',
  `time4` float(7,3) NOT NULL DEFAULT '0.000',
  `frame5` int(11) NOT NULL DEFAULT '0',
  `time5` float(7,3) NOT NULL DEFAULT '0.000',
  `frame6` int(11) NOT NULL DEFAULT '0',
  `time6` float(7,3) NOT NULL DEFAULT '0.000',
  `share_rate` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`spec_id`,`occ_time`,`server_group`) USING BTREE,
  KEY `idx2` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dungeon_lag_index_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_nosync_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fight_village_lag_index` (
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `min_fps` smallint(6) NOT NULL DEFAULT '0',
  `avg_fps` smallint(6) NOT NULL DEFAULT '0',
  `max_fps` smallint(6) NOT NULL DEFAULT '0',
  `win_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_win_fps` smallint(6) DEFAULT '0',
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT '0',
  `frame1` int(11) NOT NULL DEFAULT '0',
  `time1` float(7,3) NOT NULL DEFAULT '0.000',
  `frame2` int(11) NOT NULL DEFAULT '0',
  `time2` float(7,3) NOT NULL DEFAULT '0.000',
  `frame3` int(11) NOT NULL DEFAULT '0',
  `time3` float(7,3) NOT NULL DEFAULT '0.000',
  `frame4` int(11) NOT NULL DEFAULT '0',
  `time4` float(7,3) NOT NULL DEFAULT '0.000',
  `frame5` int(11) NOT NULL DEFAULT '0',
  `time5` float(7,3) NOT NULL DEFAULT '0.000',
  `frame6` int(11) NOT NULL DEFAULT '0',
  `time6` float(7,3) NOT NULL DEFAULT '0.000',
  `share_rate` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`spec_id`,`occ_time`,`server_group`) USING BTREE,
  KEY `idx2` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fight_village_lag_index_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_nosync_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lag_stat_dungeon` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon_idx` int(11) NOT NULL DEFAULT '0',
  `first_average` int(10) unsigned NOT NULL DEFAULT '0',
  `first_deviation` int(10) unsigned NOT NULL DEFAULT '0',
  `first_count` int(11) NOT NULL DEFAULT '0',
  `boss_average` int(10) unsigned NOT NULL DEFAULT '0',
  `boss_deviation` int(10) unsigned NOT NULL DEFAULT '0',
  `boss_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_id`,`dungeon_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `lag_stat_dungeon` VALUES ('2020-09-03 16:00:00',3,11,21951,21811,2,35927,28618,2),('2020-09-03 16:00:00',3,12,5023,1525,2,2765,562,1),('2020-09-03 16:00:00',3,14,6815,3616,2,3644,992,1),('2020-09-03 16:00:00',3,15,5969,1481,2,0,0,0),('2020-09-03 16:00:00',3,21,22537,20904,2,5049,3416,2),('2020-09-03 16:00:00',3,22,3859,118,2,8565,5163,2),('2020-09-03 16:00:00',3,23,398,6,2,77,76,2),('2020-09-03 16:00:00',3,24,5021,3817,3,4778,1371,2);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lag_stat_module` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `module` tinyint(4) NOT NULL DEFAULT '0',
  `average` int(10) unsigned NOT NULL DEFAULT '0',
  `deviation` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_id`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `lag_stat_module` VALUES ('2020-09-03 16:00:00',3,0,122802,486846,74),('2020-09-03 16:00:00',3,1,11918,17292,45),('2020-09-03 16:00:00',3,6,51590,102180,9);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loading_time` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `load_sec` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `loading_time` VALUES ('2020-09-03 12:00:24',3,0,0),('2020-09-03 12:00:24',3,1,0),('2020-09-03 12:00:24',3,2,0),('2020-09-03 12:00:24',3,3,0),('2020-09-03 12:00:24',3,4,0),('2020-09-03 12:00:24',3,5,0),('2020-09-03 12:00:24',3,6,0),('2020-09-03 12:00:24',3,7,0),('2020-09-03 12:00:24',3,8,0),('2020-09-03 15:00:40',3,0,0),('2020-09-03 15:00:40',3,1,0),('2020-09-03 15:00:40',3,2,0),('2020-09-03 15:00:40',3,3,0),('2020-09-03 15:00:40',3,4,0),('2020-09-03 15:00:40',3,5,0),('2020-09-03 15:00:40',3,6,0),('2020-09-03 15:00:40',3,7,0),('2020-09-03 15:00:40',3,8,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_launcher_stat` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `execute` int(11) NOT NULL DEFAULT '0',
  `cancel` int(11) NOT NULL DEFAULT '0',
  `success` int(11) NOT NULL DEFAULT '0',
  `first_success` int(11) NOT NULL DEFAULT '0',
  `p2p` double NOT NULL DEFAULT '0',
  `all_time` bigint(20) NOT NULL DEFAULT '0',
  `p2p_count` int(11) NOT NULL DEFAULT '0',
  `all_time_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monitoring_spec` (
  `unique_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modify_time` datetime DEFAULT NULL,
  `spec_id` int(10) unsigned DEFAULT NULL,
  `cpu_vendor` tinyint(4) NOT NULL DEFAULT '0',
  `cpu_processor_num` tinyint(4) NOT NULL DEFAULT '0',
  `above_cpu_clock` int(11) NOT NULL DEFAULT '0',
  `below_cpu_clock` int(11) NOT NULL DEFAULT '0',
  `ram` smallint(6) NOT NULL DEFAULT '0',
  `videocard_vendor` int(11) NOT NULL DEFAULT '0',
  `videocard_device` int(11) NOT NULL DEFAULT '0',
  `videocard_texture_mem` smallint(6) NOT NULL DEFAULT '0',
  `os_version` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`unique_id`),
  KEY `idx1` (`spec_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2p_connect_success_rate` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_group` tinyint(3) unsigned NOT NULL,
  `connected_type` tinyint(4) NOT NULL,
  `required_time` int(10) unsigned NOT NULL,
  `check_time` int(10) unsigned NOT NULL DEFAULT '0',
  `nation_code` varchar(15) NOT NULL,
  `peer_address` varchar(15) NOT NULL,
  `occ_date` datetime NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='대만 P2P 홀펀칭 성공&실패 여결 타입과 IP까지 함께남기는 작업';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2p_statistics` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `p2p_user` int(10) unsigned DEFAULT '0',
  `p2p_min_ping` int(10) unsigned DEFAULT '0',
  `p2p_max_ping` int(10) unsigned DEFAULT '0',
  `p2p_avg_ping` int(10) unsigned DEFAULT '0',
  `p2p_over_ping_100` int(10) unsigned DEFAULT '0',
  `p2p_over_ping_200` int(10) unsigned DEFAULT '0',
  `p2p_over_ping_300` int(10) unsigned DEFAULT '0',
  `p2p_over_ping_400` int(10) unsigned DEFAULT '0',
  `relay_user` int(10) unsigned DEFAULT '0',
  `relay_min_ping` int(10) unsigned DEFAULT '0',
  `relay_max_ping` int(10) unsigned DEFAULT '0',
  `relay_avg_ping` int(10) unsigned DEFAULT '0',
  `relay_over_ping_100` int(10) unsigned DEFAULT '0',
  `relay_over_ping_200` int(10) unsigned DEFAULT '0',
  `relay_over_ping_300` int(10) unsigned DEFAULT '0',
  `relay_over_ping_400` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `p2p_statistics` VALUES ('2020-09-03 11:54:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 11:55:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 11:56:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 11:57:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 11:58:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 11:59:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:00:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:01:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:02:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:03:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:04:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:05:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:06:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:07:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:08:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:09:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:11:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:12:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:13:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:14:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:15:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:16:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:17:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:18:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:19:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:20:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:21:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:22:23',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:24:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:25:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:26:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:27:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:28:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:29:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:30:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:31:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:32:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:33:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:34:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:35:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:36:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:37:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:38:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:39:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:40:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:41:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:42:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:43:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:44:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:45:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:46:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:47:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:48:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:49:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:50:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:51:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:52:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:53:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:54:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:55:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:56:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:57:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:58:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 12:59:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:00:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:01:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:02:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:03:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:04:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:05:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:06:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:07:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:08:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:09:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:10:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:11:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:12:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:13:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:14:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:15:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:16:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:17:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:18:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:19:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:20:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:21:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:22:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:23:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:24:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:25:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:26:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:27:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:28:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:29:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:30:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:31:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:32:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:33:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:34:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:35:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:36:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:37:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:38:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:39:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:40:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:41:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:42:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:43:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:44:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:45:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:46:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:47:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:48:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:49:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:50:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:51:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:52:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:53:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:54:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:55:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:56:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:58:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 13:59:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:00:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:01:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:02:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:03:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:04:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:05:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:06:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:07:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:08:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:09:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:10:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:11:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:12:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:13:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:14:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:15:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:16:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:17:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:18:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:19:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:20:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:21:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:22:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:23:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:24:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:25:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:26:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:27:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:28:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:29:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:30:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:31:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:32:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:33:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:34:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:35:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:36:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:37:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:38:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:39:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:40:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:41:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:42:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:43:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:44:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:45:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:46:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:47:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:48:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:49:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:50:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:51:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:52:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:53:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:54:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:55:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:56:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:57:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:58:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 14:59:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:00:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:01:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:02:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:03:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:04:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:05:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:06:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:07:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:08:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:09:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:10:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:11:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:12:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:13:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:14:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:15:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:16:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:17:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:18:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:19:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:20:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:21:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:22:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:23:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:24:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:25:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:26:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:27:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:28:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:29:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:30:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:31:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:32:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:33:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:34:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:35:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:36:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:37:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:38:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:39:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:40:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:41:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:42:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:43:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:44:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:45:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:46:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:47:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:48:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:49:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:50:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:51:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:52:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:53:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:54:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:55:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:56:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:57:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:58:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 15:59:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:00:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:01:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:02:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:03:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:04:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:05:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:06:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:07:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:08:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:09:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:10:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:11:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:12:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:13:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:14:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:15:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:16:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:17:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:18:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:19:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:20:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:21:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:22:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:23:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:24:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:25:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:26:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:27:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:28:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:29:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:30:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:31:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:32:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:33:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:34:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:35:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:36:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:40:59',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:41:59',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:42:59',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:43:59',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:44:59',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:45:59',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:46:59',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:47:11',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:49:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:50:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:51:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:52:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:53:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:54:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:55:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:56:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:57:07',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:57:21',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 16:59:25',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:00:25',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:01:25',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:02:25',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:03:25',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:04:25',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:05:25',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:08:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:09:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:10:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:11:40',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:13:39',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:15:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:16:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:17:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:18:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:19:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:20:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:21:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:22:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:23:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:24:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:25:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:26:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:27:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:28:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:29:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:30:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:31:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:32:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:33:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:34:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:35:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:36:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:37:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:38:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:39:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:40:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:41:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:42:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:43:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:44:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:45:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:46:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:47:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:48:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:49:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:50:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:51:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:52:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:53:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:54:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 17:55:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:10:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:11:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:12:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:13:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:14:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:15:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:16:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:17:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:18:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:19:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:20:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:21:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:22:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:23:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:24:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:25:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:26:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:27:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:46:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:47:00',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:48:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:49:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:50:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:51:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:52:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:53:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:54:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:55:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:56:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:57:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:58:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 21:59:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:00:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:01:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:02:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:03:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:04:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:05:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:06:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:07:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:08:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:09:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:10:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:11:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:12:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:13:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:14:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:15:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:16:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:17:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:18:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:19:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:20:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:21:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:22:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:23:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:24:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:25:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:26:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:27:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:28:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:29:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:30:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:31:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:32:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:33:43',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:35:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:36:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:37:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:38:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:39:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:40:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:41:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:42:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:43:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:44:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:45:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:46:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:47:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:48:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:49:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:50:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:51:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:52:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:53:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:54:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:55:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:56:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:57:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:58:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 22:59:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:00:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:01:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:02:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:03:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:04:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:05:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:06:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:07:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:08:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:09:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:10:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:11:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:12:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:13:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:14:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:15:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:16:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:17:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:18:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:19:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:20:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:21:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:22:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:23:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:24:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:25:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:26:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:27:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:28:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:29:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:30:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:31:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:32:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),('2020-09-03 23:33:24',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2pnetwork_statistic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `success_party_try` int(11) NOT NULL DEFAULT '0',
  `total_party_try` int(11) NOT NULL DEFAULT '0',
  `dungeon_bad_ping` int(11) NOT NULL DEFAULT '0',
  `dungeon_total` int(11) NOT NULL DEFAULT '0',
  `pvp_bad_ping` int(11) NOT NULL DEFAULT '0',
  `pvp_total` int(11) NOT NULL DEFAULT '0',
  `success_dungeon_clear` int(11) NOT NULL DEFAULT '0',
  `total_dungeon_clear` int(11) NOT NULL DEFAULT '0',
  `fair_pvp_total` int(11) DEFAULT NULL,
  `fair_pvp_bad_ping` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx1` (`occ_time`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17557 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `p2pnetwork_statistic` VALUES (17546,'2020-09-03 12:53:39',3,0,0,0,0,0,0,0,0,0,0),(17547,'2020-09-03 13:23:39',3,0,0,0,0,0,0,0,0,0,0),(17548,'2020-09-03 13:53:39',3,0,0,0,0,0,0,0,0,0,0),(17549,'2020-09-03 14:27:40',3,0,0,0,0,0,0,0,0,0,0),(17550,'2020-09-03 14:57:40',3,0,0,0,0,0,0,0,0,0,0),(17551,'2020-09-03 15:27:40',3,0,0,0,0,0,0,0,0,0,0),(17552,'2020-09-03 15:57:40',3,0,0,0,0,0,0,0,0,0,0),(17553,'2020-09-03 16:27:40',3,0,0,0,0,0,0,0,0,0,0),(17554,'2020-09-03 17:44:24',1,0,0,0,0,0,0,0,0,0,0),(17555,'2020-09-03 22:17:43',1,0,0,0,0,0,0,0,0,0,0),(17556,'2020-09-03 23:04:24',1,0,0,0,0,0,0,0,0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2pnetwork_statistic_daily` (
  `cur_date` date NOT NULL DEFAULT '0000-00-00',
  `success_party` float(3,2) NOT NULL DEFAULT '0.00',
  `dungeon_bad` float(3,2) NOT NULL DEFAULT '0.00',
  `pvp_bad` float(3,2) NOT NULL DEFAULT '0.00',
  `success_dungeon_clear` float(3,2) NOT NULL DEFAULT '0.00',
  `fair_pvp_bad` float(3,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`cur_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packet_overflow` (
  `packet_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `packet_kind` varchar(255) NOT NULL DEFAULT '',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`packet_type`,`packet_kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `packet_overflow` VALUES (0,'ENUM_NOTIPACKET_GET_ITEM',13),(1,'ENUM_CMDPACKET_USE_RANDOMBOX_ITEM',143);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerwar_lag` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `player` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lag_avg` float unsigned NOT NULL DEFAULT '0',
  `lag_cnt` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`occ_time`,`round`),
  KEY `round_idx` (`occ_time`,`round`) USING BTREE,
  KEY `player_idx` (`occ_time`,`player`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerwar_loading` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `player` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `my_loading` smallint(5) unsigned NOT NULL DEFAULT '0',
  `other_loading` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vs_loading` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`occ_time`,`round`),
  KEY `round_idx` (`occ_time`,`round`) USING BTREE,
  KEY `player_idx` (`occ_time`,`player`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerwar_ting_type` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ting_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ting_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`server_id`,`ting_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spec_info` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `device_id` int(10) unsigned NOT NULL DEFAULT '0',
  `vendor_name` varchar(50) NOT NULL DEFAULT '',
  `device_name` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technical_category` (
  `cateno` int(11) unsigned NOT NULL DEFAULT '0',
  `pcateno` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `step` int(11) NOT NULL DEFAULT '0',
  KEY `idx1` (`cateno`,`pcateno`) USING BTREE,
  KEY `idx2` (`pcateno`,`cateno`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ting_user_account` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `minute` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ting_user_spec` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cpu_vendor` char(1) NOT NULL DEFAULT '0',
  `cpu_num` char(1) NOT NULL DEFAULT '0',
  `cpu_clock` int(10) unsigned NOT NULL DEFAULT '0',
  `ram` smallint(5) unsigned NOT NULL DEFAULT '0',
  `video_vendor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `video_device` smallint(5) unsigned NOT NULL DEFAULT '0',
  `video_ram` smallint(5) unsigned NOT NULL DEFAULT '0',
  `os` char(1) NOT NULL DEFAULT '0',
  `os_bit` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `used_memory` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `minute_type` char(1) NOT NULL DEFAULT '0',
  `module` char(1) NOT NULL DEFAULT '0',
  `memory` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`minute_type`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ting_timecheck` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `minute` int(11) NOT NULL DEFAULT '0',
  `cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`minute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village_lag_index` (
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `min_fps` smallint(6) NOT NULL DEFAULT '0',
  `avg_fps` smallint(6) NOT NULL DEFAULT '0',
  `max_fps` smallint(6) NOT NULL DEFAULT '0',
  `win_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_win_fps` smallint(6) DEFAULT '0',
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT '0',
  `frame1` int(11) NOT NULL DEFAULT '0',
  `time1` float(7,3) NOT NULL DEFAULT '0.000',
  `frame2` int(11) NOT NULL DEFAULT '0',
  `time2` float(7,3) NOT NULL DEFAULT '0.000',
  `frame3` int(11) NOT NULL DEFAULT '0',
  `time3` float(7,3) NOT NULL DEFAULT '0.000',
  `frame4` int(11) NOT NULL DEFAULT '0',
  `time4` float(7,3) NOT NULL DEFAULT '0.000',
  `frame5` int(11) NOT NULL DEFAULT '0',
  `time5` float(7,3) NOT NULL DEFAULT '0.000',
  `frame6` int(11) NOT NULL DEFAULT '0',
  `time6` float(7,3) NOT NULL DEFAULT '0.000',
  `share_rate` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`spec_id`,`occ_time`,`server_group`) USING BTREE,
  KEY `idx2` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village_lag_index_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_nosync_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wararea_lag_index` (
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT '0',
  `min_fps` smallint(6) NOT NULL DEFAULT '0',
  `avg_fps` smallint(6) NOT NULL DEFAULT '0',
  `max_fps` smallint(6) NOT NULL DEFAULT '0',
  `win_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_fps` smallint(6) NOT NULL DEFAULT '0',
  `full_win_fps` smallint(6) DEFAULT '0',
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT '0',
  `frame1` int(11) NOT NULL DEFAULT '0',
  `time1` float(7,3) NOT NULL DEFAULT '0.000',
  `frame2` int(11) NOT NULL DEFAULT '0',
  `time2` float(7,3) NOT NULL DEFAULT '0.000',
  `frame3` int(11) NOT NULL DEFAULT '0',
  `time3` float(7,3) NOT NULL DEFAULT '0.000',
  `frame4` int(11) NOT NULL DEFAULT '0',
  `time4` float(7,3) NOT NULL DEFAULT '0.000',
  `frame5` int(11) NOT NULL DEFAULT '0',
  `time5` float(7,3) NOT NULL DEFAULT '0.000',
  `frame6` int(11) NOT NULL DEFAULT '0',
  `time6` float(7,3) NOT NULL DEFAULT '0.000',
  `share_rate` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx1` (`spec_id`,`occ_time`,`server_group`) USING BTREE,
  KEY `idx2` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wararea_lag_index_daily` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT '0',
  `full_win_nosync_fps` int(10) unsigned NOT NULL DEFAULT '0',
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
