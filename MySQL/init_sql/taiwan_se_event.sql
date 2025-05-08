
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_se_event` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_se_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_info` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_index` int(10) unsigned NOT NULL DEFAULT '0',
  `item_count` int(10) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_reward_user` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recv_no` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_0` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_1` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `event_1112_ontime_user_1` VALUES (1,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_2` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_3` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_4` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_5` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_6` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_7` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_8` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_1112_ontime_user_9` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `last_no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_ontime_item` (
  `idx` int(10) unsigned NOT NULL DEFAULT '8211',
  `cnt` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
