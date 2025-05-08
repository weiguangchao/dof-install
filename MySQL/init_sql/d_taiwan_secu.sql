
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `d_taiwan_secu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `d_taiwan_secu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_env_log` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mac_addr` varchar(64) NOT NULL DEFAULT '',
  `log` text NOT NULL,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `mac_addr` (`mac_addr`(7)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_mac_info` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mac_addr` varchar(64) NOT NULL DEFAULT '',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`),
  UNIQUE KEY `mac_addr` (`mac_addr`) USING BTREE,
  KEY `mac_addr_2` (`mac_addr`(7)) USING BTREE,
  KEY `add_date` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_punish_info` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `punish_type` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `punish_value` int(11) NOT NULL DEFAULT '0',
  `apply_flag` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin_id` varchar(25) NOT NULL DEFAULT '',
  `reason` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`,`punish_type`),
  KEY `idx1` (`occ_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_punish_info_ars_mail` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `punish_type` int(10) unsigned NOT NULL DEFAULT '0',
  `apply_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `send_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_security_grade` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `last_visit_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pass_fail_cnt` int(11) NOT NULL DEFAULT '0',
  `last_vaccine_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_window_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `goblin_pass_mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `goblin_fail_cnt` int(11) NOT NULL DEFAULT '0',
  `security_card_reg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `security_card_fail_cnt` int(11) NOT NULL DEFAULT '0',
  `m_opt_reg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pc_opt_reg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `black_ip_try_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `linear_pass_fail_cnt` int(11) NOT NULL DEFAULT '0',
  `last_pass_fail_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_check_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pass_modify_check` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member_pc_reg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gatekeeper_otp_reg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `goblin_validity_time` int(11) NOT NULL DEFAULT '0',
  `security_card_validity_time` int(11) NOT NULL DEFAULT '0',
  `validity_ip` varchar(15) NOT NULL DEFAULT '',
  `cargopad_status` tinyint(4) NOT NULL DEFAULT '0',
  `cargopad_mod` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cargopad_validity_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_pass_check` (`last_pass_fail_time`,`linear_pass_fail_cnt`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monitoring_logout` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_ip` int(10) unsigned NOT NULL DEFAULT '0',
  `otp_del_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`),
  KEY `idx_time` (`logout_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
