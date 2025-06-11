
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `d_taiwan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `d_taiwan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_cerashop_restrict` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ipg_no` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `next_date` int(10) unsigned NOT NULL DEFAULT '0',
  `end_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_access_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`ipg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `dzuid` int(8) DEFAULT NULL,
  `billing` int(8) DEFAULT '0',
  `VIP` varchar(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`UID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `accounts` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',NULL,NULL,0,'1');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountss` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_member` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `comment` text,
  `reg_date` int(13) DEFAULT NULL,
  `confirm` char(1) DEFAULT '0',
  `level` varchar(2000) NOT NULL DEFAULT '',
  `level_group1` varchar(2) NOT NULL DEFAULT '_',
  `level_group2` varchar(2) NOT NULL DEFAULT '_',
  `level_group3` varchar(2) NOT NULL DEFAULT '_',
  `level_group4` varchar(2) NOT NULL DEFAULT '_',
  `level_group5` varchar(2) NOT NULL DEFAULT '_',
  `level_group6` varchar(2) NOT NULL DEFAULT '_',
  PRIMARY KEY (`no`),
  KEY `user_id` (`user_id`),
  KEY `password` (`password`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `admin_member` VALUES (6,'administrator','1c416520253fdde8','admin','','','','',NULL,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(7,'JO HUANG','5ef72ffe13b46308','JO HUANG','huangjo@garena.com','0922797078','iamjo0214@hotmail.com','',1356418840,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w=       ','_','_','_','_','_','_'),(8,'changc','45271aba0b765d95','Chris','changc@garena.com','0972205730','','',1356419987,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w==|_|_|_=|_|_|_','_','_','_','_','_','_'),(9,'tangr','13fa8b4e31b79be9','ruby','tangr@garena.com','0916916786','chunghua1221@hotmail.com','',1356428104,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w=       ','_','_','_','_','_','_'),(10,'cocohbo1','620a258e29d3563c','Nuekami','changm@garena.com','0927730299','direngrey7243@hotmail.com','',1356508648,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w=       ','_','_','_','_','_','_'),(11,'eunae814','15d901c76bc33b51','김은애','eunae814@neople.co.kr','010-8638-9987','-','승인 부탁드립니다.',1360994314,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(12,'kiwiciel','78dede1a624b193d','곽수민','kiwiciel@neople.co.kr','010 9592 2572','','',1361166795,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|r|w|w|w==|w|w|w|w|w|w|r|w|_|w|w|w|_|_|w|w|_|_|w===|w|r|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|r|r','_','_','_','_','_','_'),(13,'cecilim','62b9cfee2a68f121','임순식','','','','',1361215563,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(14,'neogaia','3c6ebdaa2094a7cf','이인','neogaia@neople.co.kr','','','이인 실장님',1361259170,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(15,'tmdwo','6fa5bc972011cd27','Seungjae Lee','tmdwo@neople.co.kr','010-9800-1330','','',1361266143,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(16,'gendhi','49773cef56e85a9a','정재동','gendhi@neople.co.kr','010-3661-5792','gendhi52@hotmail.com','',1361345241,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(17,'youknowmail','0252e8b749cce351','youknow1','','','','',1361352850,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(18,'syslab','39268b21731faf65','syslab','syslab@neople.co.kr','010-5047-0620','','대만 동접 확인 위해서 신청합니다.',1361421671,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(19,'dblab','42b9473e04279d10','dblab','dblab@neople.co.kr','','','',1361422212,'1','==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w','_','_','_','_','_','_'),(20,'DNFGM01','180a388d0f721fca','陳哲?','','','','總監',1361450938,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|w|w|w=|_|_|_','_','_','_','_','_','_'),(21,'DNFGM02','36d7468e434452a7','陳怡如','','','','總監特助',1361450976,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|_==|w==|w|w|w=|_|_|_','_','_','_','_','_','_'),(22,'DNFGM03','6e9144fe5e78d437','李詩?','','','','經理',1361451035,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|w|w|w=|_|_|_','_','_','_','_','_','_'),(23,'DNFGM04','15fad7d15efe455f','胡育嘉','','','','經理',1361451080,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|_|_|_=|_|_|_','_','_','_','_','_','_'),(24,'DNFGM05','1b6b837f7e0d37b0','蘇潔民','','','','遊?二組專員',1361451118,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|w|w|w=|_|_|_','_','_','_','_','_','_'),(25,'DNFGM06','79c8c1aa5bc2cb39','鄒家銘','','','','遊?二組專員',1361451147,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(26,'DNFGM07','09b9805500befcd0','林曉?','','','','遊?二組專員',1361451182,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(27,'DNFGM08','4df65dba1a2252e7','黃韋揚','','','','遊?二組專員',1361451210,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(28,'DNFGM09','04ed5515533a7078','陳唯剛','','','','遊?二組專員',1361451243,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(29,'DNFGM10','46bb3ce723c4adec','陳明衛','','','','遊?二組專員',1361451270,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|r|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(30,'DNFGM11','359d995e3b955196','潘冠瑾','','','','?緝組專員',1361451306,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(31,'DNFGM12','2966bf5511fecd7c','張維倫','','','','?緝組專員',1361451349,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(32,'DNFGM13','3982a37114068035','吳金韋','','','','?緝組專員',1361451375,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(33,'DNFGM14','26683cad62d18763','*預備用','','','','*預備用',1361451407,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(34,'DNFGM15','26683cad62d18763','*預備用','','','','*預備用',1361451422,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(36,'conspira','324ba3650e059209','conspira','','','','test',1361610627,'1','==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|_|_|_=|_|_|_','_','_','_','_','_','_'),(37,'changwl','3c67f3ae0b4a96ab','changwl','','','','',1361952125,'0','','_','_','_','_','_','_'),(38,'nexon','4cf5921449bccede','넥슨코리아','','','','',1366097093,'1','==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(39,'garena_earvin','2b4b0888112f4f47','earvin','cheni@garena.com','886975058341','nokia27@ms48.hinet.net','',1366781127,'1','==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(40,'Garena_Jo','2b4b0888112f4f47','Jo','huangjo@garena.com','','','',1366783958,'1','==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(41,'Garena_Nix','2b4b0888112f4f47','Nix','fangn@garena.com','','','',1366783998,'1','==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(42,'Garena_Mandy','2b4b0888112f4f47','Mandy','chienm@garena.com','','','',1366784037,'1','==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(43,'Garena_Visnu','2b4b0888112f4f47','Visnu','changm@garena.com','','','',1366784069,'1','==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(44,'Ocean','2b4b0888112f4f47','Ocean','lino@garena.com','','','',1366784107,'1','==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_','_','_','_','_','_','_'),(46,'DNFGM16','008ed89501dff083','江愷力','','','','查緝組新進人員',1370240141,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(47,'DNFGM17','008edf5a01dfeb48','預備用','','','','因人員即將擴編，所以先行申請。',1370240247,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(48,'DNFGM18','008edd2f01dfed1d','預備用','','','','因人員即將擴編，所以先行申請。',1370240260,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(49,'DNFGM19','008ed3f401dff7e2','預備用','','','','因人員即將擴編，所以先行申請。',1370240273,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_'),(50,'DNFGM20','008c67e001e08c97','預備用','','','','因人員即將擴編，所以先行申請。',1370240291,'1','==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_','_','_','_','_','_','_');
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
  KEY `idx_mid` (`m_id`),
  KEY `idx_code` (`bad_code`),
  KEY `idx_eday` (`exit_day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_dnf_item_info` (
  `it_no` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `it_name` varchar(25) NOT NULL DEFAULT '',
  `it_eng_name` varchar(50) NOT NULL DEFAULT '',
  `it_explain` varchar(60) NOT NULL DEFAULT '',
  `master_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sub_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `job` varchar(12) NOT NULL DEFAULT '',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `revert` varchar(5) NOT NULL DEFAULT '',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `skill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `create_ratio` float NOT NULL DEFAULT '0',
  `rarity` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `price` smallint(5) unsigned NOT NULL DEFAULT '0',
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
  `att_element` enum('Void','Fire','Water','Dark','Light') NOT NULL DEFAULT 'Void',
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
  `skill_levelup` varchar(25) NOT NULL DEFAULT '',
  `set_type` enum('n','y') NOT NULL DEFAULT 'n',
  `url` varchar(64) NOT NULL DEFAULT '',
  `jewel_type` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`it_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_status` (
  `gc_group` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `gc_status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_pick_up_random_option_item` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `check_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_connect` (
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  `host_name` varchar(50) DEFAULT NULL,
  `db_server_group` tinyint(3) unsigned DEFAULT NULL,
  `db_type` int(10) unsigned NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `db_ip` varchar(16) NOT NULL,
  `db_port` int(10) unsigned NOT NULL,
  `db_userid` varchar(20) NOT NULL,
  `db_passwd` varchar(50) NOT NULL,
  `comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `db_connect` VALUES (1,'',1,1,'d_taiwan','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(2,'',1,2,'taiwan_cain','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(3,'',1,3,'taiwan_cain_2nd','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(4,'',1,4,'taiwan_cain_log','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(5,'',1,5,'taiwan_cain_web','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(6,'',1,6,'taiwan_login','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(7,'',1,7,'taiwan_prod','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(8,'',1,8,'d_guild','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(9,'',1,9,'taiwan_game_event','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(10,'',1,10,'d_taiwan_secu','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(12,'',1,12,'taiwan_cain_auction_gold','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(13,'',1,13,'taiwan_se_event','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(11,'',1,11,'taiwan_login_play','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(14,'',1,15,'d_technical_report','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(15,'',1,14,'taiwan_billing','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b','taiwan billing'),(16,'',2,1,'d_taiwan','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(17,'',2,2,'taiwan_diregie','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(18,'',2,3,'taiwan_diregie_2nd','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(19,'',2,4,'taiwan_diregie_log','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(20,'',2,5,'taiwan_diregie_web','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(21,'',2,6,'taiwan_login','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(22,'',2,7,'taiwan_prod','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(23,'',2,8,'d_guild','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(24,'',2,9,'taiwan_game_event','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(25,'',2,10,'d_taiwan_secu','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(26,'',2,11,'taiwan_login_play','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(27,'',2,12,'taiwan_diregie_auction_gold','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(28,'',2,13,'taiwan_se_event','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(29,'',2,15,'d_technical_report','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(30,'',2,14,'taiwan_billing','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b','taiwan billing'),(31,'',3,1,'d_taiwan','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(32,'',3,2,'taiwan_cain','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(33,'',3,3,'taiwan_cain_2nd','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(34,'',3,4,'taiwan_cain_log','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(35,'',3,5,'taiwan_cain_web','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(36,'',3,6,'taiwan_login','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(37,'',3,7,'taiwan_prod','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(38,'',3,8,'d_guild','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(39,'',3,9,'taiwan_game_event','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(40,'',3,10,'d_taiwan_secu','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(41,'',3,12,'taiwan_cain_auction_gold','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(42,'',3,13,'taiwan_se_event','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(43,'',3,11,'taiwan_login_play','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(44,'',3,15,'d_technical_report','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b',''),(45,'',3,14,'taiwan_billing','127.0.0.1',3306,'game','20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b','taiwan billing');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_charac_mov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `move_server_id` tinyint(4) NOT NULL DEFAULT '0',
  `move_charac_no` int(11) NOT NULL DEFAULT '0',
  `move_check` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `m_id` (`m_id`,`server_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_event_address` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `zipcode` varchar(7) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  `phone_no` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`event_id`,`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_event_entry_notuse` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `obtain_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`,`m_id`),
  KEY `idx_m_id` (`m_id`),
  KEY `idx_charac_no` (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_event_info` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_name` varchar(30) NOT NULL DEFAULT '',
  `event_explain` varchar(100) NOT NULL DEFAULT '',
  `apply_type` tinyint(4) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL DEFAULT '0000-00-00',
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `event_name` (`event_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `dnf_event_info` VALUES (1,'CUnlimitFatigueEvent','疲勞度無限大',1,'2016-04-14','2099-01-16'),(2,'CMaxFatigueFactorEvent','最大疲勞度|百分比',1,'2016-04-14','2099-01-16'),(3,'CExpDoubleEvent','雙倍經驗|百分比',1,'2016-04-14','2099-01-16'),(4,'CCoinEventPerDay','每日分發復活幣|1~17級|18~26級|27級以上|未使用',4,'2016-04-14','2099-01-16'),(5,'CCoinEventOnCharCreate','創建角色時，分發復活幣|復活幣數|',1,'2016-04-14','2099-01-16'),(6,'CLeadingChannelEvent','頻道引導',0,'2016-04-14','2099-01-16'),(7,'CItemDropRatioEvent','道具掉落率加倍|倍數',1,'2016-04-14','2099-01-16'),(8,'CPCRoomBurningEvent','網咖燃燒時間|百分比',1,'2016-04-14','2099-01-16'),(9,'CSchoolMatchEvent','超級學校對戰',3,'2016-04-14','2099-01-16'),(10,'CPCRoomFatigueEvent','網咖玩家疲勞度無限大活動',0,'2016-04-14','2099-01-16'),(12,'CReformingDanjinEvent','土罐改版活動',0,'2016-04-14','2099-01-16'),(13,'CCoinRefillEvent','復活幣加值活動|第一時間|第二十間',2,'2016-04-14','2099-01-16'),(15,'CBurningFatigueEvent','燃燒疲勞度活動',0,'2016-04-14','2099-01-16'),(16,'CClearRewardCardEvent','完成地下城 獎賞限定道具活動',0,'2016-04-14','2099-01-16'),(17,'CCeraShopBonusItemEvent','商城BONUS道具活動|給予BONUS道具的機率是（1000分比。如為100，將無條件獲得道具。如為10，將有10%機率可獲得）',1,'2016-04-14','2099-01-16'),(18,'CTournamentPvPEvent','撥放用決戰場',0,'2016-04-14','2099-01-16'),(19,'CGoldCardBlankItemEvent','金卡活動',0,'2016-04-14','2099-01-16'),(21,'CCollectArchieveEventLog','收集達成成就的Log',0,'2016-04-14','2099-01-16'),(22,'CPCRoomWorldDropEvent','網咖world掉落活動',0,'2016-04-14','2099-01-16'),(24,'CPartyExpBonusEvent','組隊經驗值獎賞|百分比',1,'2016-04-14','2099-01-16'),(29,'CPcRoomCardBlankItemEvent','網咖卡Blank活動',0,'2016-04-14','2099-01-16'),(30,'CPowerWarEvent','勢力戰活動',0,'2016-04-14','2099-01-16'),(32,'CStabToDeathEvent','刺殺週活動',0,'2016-04-14','2099-01-16'),(33,'CGuildWarEvent','',0,'2016-04-14','2099-01-16'),(34,'CAutoMarketConditionsControlEv','',0,'2016-04-14','2099-01-16'),(35,'CVendingMachineBonusEvent','自動售貨機BONUS活動',0,'2016-04-14','2099-01-16'),(36,'CBurnigGoldMonsterEvent','燃燒金怪物活動',0,'2016-04-14','2099-01-16'),(38,'CNoNeedGoldOnGuildCreateEvent','免費創設公會活動',0,'2016-04-14','2099-01-16'),(39,'CDeathTowerWinPointEvent','死亡之塔/迷妄之塔 apc活動|百分比',1,'2016-04-14','2099-01-16'),(40,'CNotApplyBalkeunEvent','未套用COF指數活動',0,'2016-04-14','2099-01-16'),(41,'CCharacterDayEvent','角色日活動|職業號碼（0:鬼劍士,1:格鬥家,2:神槍手,3:魔法師,4:聖職者,5:女神槍手,6:盜賊,7:格鬥家(男),100:Game Script）',1,'2016-04-14','2099-01-16'),(42,'CAssaultOnOffEvent','防止街頭爭霸活動',0,'2016-04-14','2099-01-16'),(43,'CFatigueBuffEvent','疲勞度 Buff活動',1,'2016-04-14','2099-01-16'),(45,'CBloodDungeonRewardFirstEvent','無盡的祭壇中獎金 平時|中獎金',1,'2016-04-14','2099-01-16'),(46,'CBloodDungeonRewardSecondEvent','無盡的祭壇中獎金 活動時|中獎金',1,'2016-04-14','2099-01-16'),(48,'CPCRoomWorldDropEvent2nd','網咖world掉落活動 2nd',0,'2016-04-14','2099-01-16'),(49,'CRestrictCharacCreationEvent','角色伺服器生成限制',1,'2016-04-14','2099-01-16'),(50,'CReduceUpgradeItemPay','強化費用折扣活動',1,'2016-04-14','2099-01-16'),(51,'COnTimeEvent','On Time活動',2,'2016-04-14','2099-01-16'),(52,'CBreakAwayPreventEvent','防止脫離系統',0,'2016-04-14','2099-01-16'),(53,'CPowerWarVictoriousEvent','勢力戰勝利勢力耐久度活動',0,'2016-04-14','2099-01-16'),(54,'CPvPExpPenaltyEvent','決鬥場經驗值處罰 ',0,'2016-04-14','2099-01-16'),(55,'CPvPLiveEvent','Live 統合決鬥場活動',0,'2016-04-14','2099-01-16'),(56,'CIntegratedPvPServerMatchEvent','伺服器對抗戰活動',0,'2016-04-14','2099-01-16'),(57,'COnlinePreliminaryEvent','聯賽線上預選',0,'2016-04-14','2099-01-16'),(58,'CSecretShopEvent','神秘商店活動',0,'2016-04-14','2099-01-16'),(61,'CDnFLeaguePromoteFirstEvent','聯賽宣傳（星期四）',0,'2016-04-14','2099-01-16'),(62,'CDnFLeaguePromoteSecondEvent','聯賽宣傳（星期五）',0,'2016-04-14','2099-01-16'),(64,'CDoubleGoldCardEvent','金卡獎賞2倍活動',0,'2016-04-14','2099-01-16'),(65,'CPremiumGoldCard','優惠金卡活動',0,'2016-04-14','2099-01-16'),(67,'CGmRegistEvent','GM Web manager tool登入',0,'2016-04-14','2099-01-16'),(86,'CFatigueAttendance','出席活動',0,'2016-04-14','2099-01-16'),(87,'CWeekendBonusEvent','周末BONUS活動',0,'2016-04-14','2099-01-16'),(91,'CUXGameLogEvent','UX Game Log 系統',0,'2016-04-14','2099-01-16'),(92,'CPCRoomPlayTimeEvent','網咖遊戲時間活動',0,'2016-04-14','2099-01-16'),(93,'LevelUpBefore70LvEvent','升級活動',0,'2016-04-14','2099-01-16'),(94,'CDimensionActivationEvent','異界地下城活性化活動',0,'2016-04-14','2099-01-16'),(95,'BlueMarbleDungeonEvent','活動地下城',0,'2016-04-14','2099-01-16'),(96,'AttendanceEvent','2012年出席活動',1,'2016-04-14','2099-01-16'),(100,'GrowthEquipEvent','成長型裝備活動',0,'2016-04-14','2099-01-16'),(101,'CFatigueGiveItemEvent','消耗疲勞度分發道具活動',0,'2016-04-14','2099-01-16'),(102,'CStopOverlabExpEvent','成長之秘方禁止效果重複活動',0,'2016-04-14','2099-01-16'),(103,'GiveGrowCreatureEvent','分發成長型道具寵物活動',0,'2016-04-14','2099-01-16'),(104,'NewAccountLevelUpEventToJob','達成職業別等級 分發道具活動',0,'2016-04-14','2099-01-16'),(105,'SeriaRoomAniDecoEvent','布置賽莉亞房活動(動畫)',0,'2016-04-14','2099-01-16'),(106,'BingoEvent','賓果活動',0,'2016-04-14','2099-01-16'),(109,'OneADayItemShopEvent','OneADay商店活動',0,'2016-04-14','2099-01-16'),(113,'CConditionEvent','event_msg_67 == NULL, Etc/Etc.kor.str : ',0,'2016-04-14','2099-01-16'),(116,'CAradRyosikaEvent','event_msg_190 == NULL, Etc/Etc.kor.str : ',2,'2016-04-14','2099-01-16'),(119,'CEventAdvanceAltarOpen','分發成長型道具寵物活動',0,'2016-04-14','2099-01-16'),(155,'Arad_MomijiEvent','event_msg_196 == NULL, Etc/Etc.kor.str : ',4,'2016-04-14','2099-01-16'),(158,'LevelupSupportEvent','event_msg_158 == NULL, Etc/Etc.kor.str : ',0,'2016-04-14','2099-01-16'),(159,'CEventStayTime','event_msg_159 == NULL, Etc/Etc.kor.str : ',2,'2016-04-14','2099-01-16'),(160,'CEventCreateDnf','event_msg_160 == NULL, Etc/Etc.kor.str : ',4,'2016-04-14','2099-01-16'),(161,'CEventCeraShopRewardPoint','Cera Point Event',2,'2016-04-14','2099-01-16'),(162,'EventNewCharacterReward','event_msg_162 == NULL, Etc/Etc.kor.str : ',2,'2016-04-14','2099-01-16'),(163,'LevelupSupport2ndEvent','event_msg_164 == NULL, Etc/Etc.kor.str : ',0,'2016-04-14','2099-01-16'),(164,'HeroMissionEvent','event_msg_163 == NULL, Etc/Etc.kor.str : ',0,'2016-04-14','2099-01-16'),(165,'EventGiveMeBox','event_msg_165 == NULL, Etc/Etc.kor.str : ',0,'2016-04-14','2099-01-16');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_event_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occ_time` int(11) NOT NULL DEFAULT '0',
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parameter1` int(10) unsigned NOT NULL DEFAULT '0',
  `parameter2` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_flag` tinyint(3) DEFAULT '0',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `expl` varchar(200) NOT NULL DEFAULT '',
  `etc` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `idx_occ_time` (`occ_time`),
  KEY `idx_sever_id` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_event_prize` (
  `prize_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `check_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`prize_id`,`m_id`),
  KEY `idx_m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_game_message` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `display_type` tinyint(4) NOT NULL DEFAULT '1',
  `start_h` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `end_h` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`no`),
  KEY `display_type` (`display_type`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_gamein_notice` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(250) NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `open_flag` enum('y','n') DEFAULT 'n',
  PRIMARY KEY (`no`),
  KEY `idx_server_id` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_master_charac` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `global_type` tinyint(4) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`global_type`,`server_id`),
  KEY `server_id` (`server_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_pcroom` (
  `ip_no` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(10) NOT NULL DEFAULT '',
  `firm_name` varchar(25) NOT NULL DEFAULT '',
  `telephone` varchar(10) NOT NULL DEFAULT '',
  `address` varchar(75) NOT NULL DEFAULT '',
  `leader` varchar(15) NOT NULL DEFAULT '',
  `start_ip` varchar(7) NOT NULL DEFAULT '',
  `end_ip` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip_no`),
  UNIQUE KEY `start_ip` (`start_ip`),
  UNIQUE KEY `end_ip` (`end_ip`),
  KEY `idx_district` (`district`),
  KEY `idx_leader` (`leader`),
  KEY `idx_firm_name` (`firm_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_restrict_info` (
  `category` int(11) NOT NULL,
  `restrict_code` int(11) NOT NULL,
  `restrict_str` varchar(45) NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`category`,`restrict_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='서비스 제재 정보 문자열';
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `dnf_restrict_info` VALUES (1,1,'DeleteItem','2013-01-21 20:34:41'),(1,2,'DropGold','2013-01-21 20:34:41'),(1,3,'UseNpc','2013-01-21 20:34:41'),(1,4,'UseMail','2013-01-21 20:34:41'),(1,5,'UseAuction','2013-01-21 20:34:41'),(1,6,'UseTrade','2013-01-21 20:34:41'),(1,7,'UseUpgrade','2013-01-21 20:34:41'),(1,8,'UseEnchant','2013-01-21 20:34:41'),(1,9,'UseCompound','2013-01-21 20:34:41'),(1,10,'UseDisjoint','2013-01-21 20:34:41'),(1,11,'UsePrivateStore','2013-01-21 20:34:41'),(1,12,'UseStackable','2013-01-21 20:34:41'),(1,13,'UseBindSphere','2013-01-21 20:34:41'),(1,14,'UseSeal','2013-01-21 20:34:41'),(1,15,'UseRandomOptionChange','2013-01-21 20:34:41'),(1,16,'UseRandomOptionReGeneration','2013-01-21 20:34:41'),(1,17,'UseCeraShop','2013-01-21 20:34:41'),(1,18,'UseRandomBox','2013-01-21 20:34:41'),(1,19,'UseExportJob','2013-01-21 20:34:41'),(1,20,'UseDisjointAvatar','2013-01-21 20:34:41'),(1,21,'UseEmblemCompound','2013-01-21 20:34:41'),(1,22,'RecoverStamina','2013-01-21 20:34:41'),(1,23,'DeleteCharacter','2013-01-21 20:34:41'),(1,24,'AccountCargo','2013-01-21 20:34:41'),(1,25,'AccountUpgrade','2013-01-21 20:34:41'),(1,26,'AccountMoveGold','2013-01-21 20:34:41'),(1,27,'AccountMoveItem','2013-01-21 20:34:41'),(1,28,'GuildCreate','2013-01-21 20:34:41'),(1,29,'GuildLevelUp','2013-01-21 20:34:41'),(1,30,'GuildSkillUp','2013-01-21 20:34:41'),(1,31,'GuildBreak','2013-01-21 20:34:41'),(1,32,'CreateCharacter','2013-04-25 10:41:21'),(1,33,'LoginChannel','2013-04-25 10:41:21'),(3,1,'DropRate','2013-05-16 12:24:23');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_restrict_state` (
  `server_group` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `restrict_code` int(11) NOT NULL,
  `restrict_value` char(1) NOT NULL,
  `mod_date` datetime NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`server_group`,`category`,`restrict_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `dnf_restrict_state` VALUES (1,1,1,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,2,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,3,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,4,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,5,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,6,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,7,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,8,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,9,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,10,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,11,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,12,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,13,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,14,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,15,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,16,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,17,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,18,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,19,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,20,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,21,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,22,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,23,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,24,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,25,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,26,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,27,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,28,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,29,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,30,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,31,'1','2013-03-27 17:42:15','2013-03-27 17:42:15'),(1,1,32,'1','2013-04-25 10:41:21','2013-04-25 10:41:21'),(1,1,33,'1','2013-04-25 10:41:21','2013-04-25 10:41:21'),(1,3,1,'0','2013-05-16 12:24:23','2013-05-16 12:24:23'),(2,1,1,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,2,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,3,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,4,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,5,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,6,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,7,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,8,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,9,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,10,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,11,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,12,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,13,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,14,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,15,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,16,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,17,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,18,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,19,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,20,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,21,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,22,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,23,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,24,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,25,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,26,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,27,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,28,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,29,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,30,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,31,'1','2013-02-14 22:13:16','2013-02-14 22:13:16'),(2,1,32,'1','2013-04-25 10:41:24','2013-04-25 10:41:24'),(2,1,33,'1','2013-04-25 10:41:24','2013-04-25 10:41:24'),(2,3,1,'0','2013-05-16 12:24:43','2013-05-16 12:24:43'),(3,1,1,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,2,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,3,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,4,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,5,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,6,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,7,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,8,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,9,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,10,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,11,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,12,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,13,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,14,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,15,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,16,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,17,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,18,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,19,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,20,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,21,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,22,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,23,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,24,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,25,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,26,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,27,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,28,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,29,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,30,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,31,'0','2013-03-27 17:43:44','2013-03-27 17:43:44'),(3,1,32,'0','2013-04-25 10:41:21','2013-04-25 10:41:21'),(3,1,33,'0','2013-04-25 10:41:21','2013-04-25 10:41:21'),(3,3,1,'0','2013-05-16 12:24:45','2013-05-16 12:24:45');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_story` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `story_type` tinyint(4) NOT NULL DEFAULT '0',
  `notice_flag` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `reg_id` varchar(12) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `img_name` varchar(30) NOT NULL DEFAULT '',
  `opt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `open_flag` enum('y','n') NOT NULL DEFAULT 'n',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `reserve_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  PRIMARY KEY (`no`),
  KEY `idx_mid` (`m_id`),
  KEY `idx_reg` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_testr_m_id` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_arad_birthday_6th` (
  `server` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_aradlotto_0809_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` int(11) NOT NULL DEFAULT '0',
  `lotto_num` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`),
  KEY `idx1` (`lotto_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_charac_mov_1th` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `move_server_id` tinyint(4) NOT NULL DEFAULT '0',
  `move_charac_no` int(11) NOT NULL DEFAULT '0',
  `move_check` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `m_id` (`m_id`,`server_id`,`charac_no`),
  KEY `idx_move_charac_no` (`move_charac_no`),
  KEY `idx_m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_charac_mov_1th_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` int(11) NOT NULL DEFAULT '0',
  `it_no` int(11) NOT NULL DEFAULT '0',
  `item_check` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_goldcard_cnt` (
  `item_no` int(10) NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_no`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_goldcard_entry1` (
  `occ_date` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `item_no` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`m_id`),
  KEY `idx_m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_goldcard_entry2` (
  `occ_date` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `item_no` int(11) unsigned NOT NULL DEFAULT '0',
  `item_check` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`m_id`),
  KEY `idx_m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_goldcard_info` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `coupon` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_hinamatsuri_cnt` (
  `cnt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_mage_2years` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL AUTO_INCREMENT,
  `charac_name` varchar(100) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`server_info`,`charac_no`),
  KEY `charac_no` (`charac_no`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_newmember0709_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` int(11) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `item1_no` int(11) unsigned NOT NULL DEFAULT '0',
  `item1_check` int(11) unsigned NOT NULL DEFAULT '0',
  `item2_no` int(11) unsigned NOT NULL DEFAULT '0',
  `item2_check` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_occ_date` (`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_pandora_entry_200905` (
  `m_id` int(11) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `server_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`occ_date`,`server_id`),
  KEY `idx_date` (`occ_date`),
  KEY `idx_charac` (`server_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_quest_party_member_web` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `quest_no` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `send_charac_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`server_id`,`charac_no`,`quest_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_quizquiz_stamp` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  `stamp` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`,`degree`),
  KEY `idx_m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_skill2025_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_tower_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` int(11) unsigned NOT NULL DEFAULT '0',
  `occ_check` int(11) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `item1_no` int(11) unsigned NOT NULL DEFAULT '0',
  `item1_check` int(11) unsigned NOT NULL DEFAULT '0',
  `item2_no` int(11) unsigned NOT NULL DEFAULT '0',
  `item2_check` int(11) unsigned NOT NULL DEFAULT '0',
  `item3_no` int(11) unsigned NOT NULL DEFAULT '0',
  `item3_check` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_occ_date` (`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_webmoneystamp_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attend_point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_attend_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `return_flag` tinyint(4) NOT NULL DEFAULT '0',
  `entry_item` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_webmoneystamp_item` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` tinyint(4) NOT NULL DEFAULT '0',
  `item_no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_check` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_channel` (
  `gc_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gc_now` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_ip` char(32) NOT NULL DEFAULT '',
  `gc_port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_max` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_game` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gc_channel` char(16) NOT NULL DEFAULT '',
  `gc_ch_group` smallint(5) NOT NULL DEFAULT '0',
  `gc_channeltype` char(0) NOT NULL DEFAULT '',
  PRIMARY KEY (`gc_no`),
  KEY `idxGC_GAME` (`gc_game`),
  KEY `idxch_group` (`gc_ch_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_allow` (
  `allow_ip` varchar(20) NOT NULL DEFAULT '',
  `allow_c_code` varchar(4) NOT NULL DEFAULT '',
  `allow_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`allow_ip`),
  KEY `idx_c_code` (`allow_c_code`),
  KEY `idx_date` (`allow_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `geo_allow` VALUES ('*','CN','2019-12-31 16:00:00'),('127.0.0.1','CN','2019-12-31 16:00:00'),('192.168.50.0','CN','2019-12-31 16:00:00'),('192.168.50.1','CN','2019-12-31 16:00:00'),('192.168.50.2','CN','2019-12-31 16:00:00');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_allow_country` (
  `server_group` tinyint(4) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`country_code`,`server_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `geo_allow_country` VALUES (1,'CN','2015-07-09 18:42:50'),(2,'CN','2015-07-09 18:42:57'),(3,'CN','2015-07-09 18:43:04'),(1,'HK','2013-02-19 22:00:23'),(2,'HK','2013-02-19 22:00:29'),(3,'HK','2013-04-08 14:36:28'),(1,'KR','2013-01-21 20:50:53'),(2,'KR','2013-01-25 20:54:19'),(3,'KR','2013-04-08 14:36:32'),(1,'MO','2013-02-19 21:59:29'),(2,'MO','2013-02-19 21:59:34'),(3,'MO','2013-04-08 14:36:36'),(1,'TW','2013-01-21 20:50:48'),(2,'TW','2013-01-25 20:54:25'),(3,'TW','2013-04-08 14:36:40');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_country_code` (
  `code_no` int(11) NOT NULL,
  `country_code_a2` varchar(10) NOT NULL,
  `country_code_a3` varchar(10) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`code_no`),
  UNIQUE KEY `geo_country_code_unq001` (`country_code_a2`),
  UNIQUE KEY `geo_country_code_unq002` (`country_code_a3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `geo_country_code` VALUES (4,'AF','AFG','AFGHANISTAN'),(8,'AL','ALB','ALBANIA'),(10,'AQ','ATA','ANTARCTICA'),(12,'DZ','DZA','ALGERIA'),(16,'AS','ASM','AMERICAN SAMOA'),(20,'AD','AND','ANDORRA'),(24,'AO','AGO','ANGOLA'),(28,'AG','ATG','ANTIGUA AND BARBUDA'),(31,'AZ','AZE','AZERBAIJAN'),(32,'AR','ARG','ARGENTINA'),(36,'AU','AUS','AUSTRALIA'),(40,'AT','AUT','AUSTRIA'),(44,'BS','BHS','BAHAMAS'),(48,'BH','BHR','BAHRAIN'),(50,'BD','BGD','BANGLADESH'),(51,'AM','ARM','ARMENIA'),(52,'BB','BRB','BARBADOS'),(56,'BE','BEL','BELGIUM'),(60,'BM','BMU','BERMUDA'),(64,'BT','BTN','BHUTAN'),(68,'BO','BOL','BOLIVIA'),(70,'BA','BIH','BOSNIA AND HERZEGOWINA'),(72,'BW','BWA','BOTSWANA'),(74,'BV','BVT','BOUVET ISLAND'),(76,'BR','BRA','BRAZIL'),(84,'BZ','BLZ','BELIZE'),(86,'IO','IOT','BRITISH INDIAN OCEAN TERRITORY'),(90,'SB','SLB','SOLOMON ISLANDS '),(92,'VG','VGB','VIRGIN ISLANDS (BRITISH)'),(96,'BN','BRN','BRUNEI DARUSSALAM'),(100,'BG','BGR','BULGARIA'),(104,'MM','MMR','MYANMAR '),(108,'BI','BDI','BURUNDI'),(112,'BY','BLR','BELARUS'),(116,'KH','KHM','CAMBODIA'),(120,'CM','CMR','CAMEROON'),(124,'CA','CAN','CANADA'),(132,'CV','CPV','CAPE VERDE'),(136,'KY','CYM','CAYMAN ISLANDS'),(140,'CF','CAF','CENTRAL AFRICAN REPUBLIC'),(144,'LK','LKA','SRI LANKA '),(148,'TD','TCD','CHAD'),(152,'CL','CHL','CHILE '),(156,'CN','CHN','CHINA '),(158,'TW','TWN','TAIWAN'),(162,'CX','CXR','CHRISTMAS ISLAND'),(166,'CC','CCK','COCOS (KEELING) ISLANDS '),(170,'CO','COL','COLOMBIA'),(174,'KM','COM','COMOROS '),(175,'YT','MYT','MAYOTTE '),(178,'CG','COG','CONGO, Republic of'),(180,'CD','COD','CONGO, Democratic Republic of (was Zaire) '),(184,'CK','COK','COOK ISLANDS'),(188,'CR','CRI','COSTA RICA'),(191,'HR','HRV','CROATIA (local name: Hrvatska)'),(192,'CU','CUB','CUBA'),(196,'CY','CYP','CYPRUS'),(203,'CZ','CZE','CZECH REPUBLIC'),(204,'BJ','BEN','BENIN'),(208,'DK','DNK','DENMARK '),(212,'DM','DMA','DOMINICA'),(214,'DO','DOM','DOMINICAN REPUBLIC'),(218,'EC','ECU','ECUADOR '),(222,'SV','SLV','EL SALVADOR '),(226,'GQ','GNQ','EQUATORIAL GUINEA '),(231,'ET','ETH','ETHIOPIA'),(232,'ER','ERI','ERITREA '),(233,'EE','EST','ESTONIA '),(234,'FO','FRO','FAROE ISLANDS '),(238,'FK','FLK','FALKLAND ISLANDS (MALVINAS) '),(239,'GS','SGS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS'),(242,'FJ','FJI','FIJI'),(246,'FI','FIN','FINLAND '),(248,'AX','ALA','AALAND ISLANDS'),(250,'FR','FRA','FRANCE'),(254,'GF','GUF','FRENCH GUIANA '),(258,'PF','PYF','FRENCH POLYNESIA'),(260,'TF','ATF','FRENCH SOUTHERN TERRITORIES '),(262,'DJ','DJI','DJIBOUTI'),(266,'GA','GAB','GABON '),(268,'GE','GEO','GEORGIA '),(270,'GM','GMB','GAMBIA'),(275,'PS','PSE','PALESTINIAN TERRITORY, Occupied '),(276,'DE','DEU','GERMANY '),(288,'GH','GHA','GHANA '),(292,'GI','GIB','GIBRALTAR '),(296,'KI','KIR','KIRIBATI'),(300,'GR','GRC','GREECE'),(304,'GL','GRL','GREENLAND '),(308,'GD','GRD','GRENADA '),(312,'GP','GLP','GUADELOUPE'),(316,'GU','GUM','GUAM'),(320,'GT','GTM','GUATEMALA '),(324,'GN','GIN','GUINEA'),(328,'GY','GUY','GUYANA'),(332,'HT','HTI','HAITI '),(334,'HM','HMD','HEARD AND MC DONALD ISLANDS '),(336,'VA','VAT','VATICAN CITY STATE (HOLY SEE) '),(340,'HN','HND','HONDURAS'),(344,'HK','HKG','HONG KONG '),(348,'HU','HUN','HUNGARY '),(352,'IS','ISL','ICELAND '),(356,'IN','IND','INDIA '),(360,'ID','IDN','INDONESIA '),(364,'IR','IRN','IRAN (ISLAMIC REPUBLIC OF)'),(368,'IQ','IRQ','IRAQ'),(372,'IE','IRL','IRELAND '),(376,'IL','ISR','ISRAEL'),(380,'IT','ITA','ITALY '),(384,'CI','CIV','COTE D\'IVOIRE '),(388,'JM','JAM','JAMAICA '),(392,'JP','JPN','JAPAN '),(398,'KZ','KAZ','KAZAKHSTAN'),(400,'JO','JOR','JORDAN'),(404,'KE','KEN','KENYA '),(408,'KP','PRK','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF'),(410,'KR','KOR','KOREA, REPUBLIC OF'),(414,'KW','KWT','KUWAIT'),(417,'KG','KGZ','KYRGYZSTAN'),(418,'LA','LAO','LAO PEOPLE\'S DEMOCRATIC REPUBLIC'),(422,'LB','LBN','LEBANON '),(426,'LS','LSO','LESOTHO '),(428,'LV','LVA','LATVIA'),(430,'LR','LBR','LIBERIA '),(434,'LY','LBY','LIBYAN ARAB JAMAHIRIYA'),(438,'LI','LIE','LIECHTENSTEIN '),(440,'LT','LTU','LITHUANIA '),(442,'LU','LUX','LUXEMBOURG'),(446,'MO','MAC','MACAU '),(450,'MG','MDG','MADAGASCAR'),(454,'MW','MWI','MALAWI'),(458,'MY','MYS','MALAYSIA'),(462,'MV','MDV','MALDIVES'),(466,'ML','MLI','MALI'),(470,'MT','MLT','MALTA '),(474,'MQ','MTQ','MARTINIQUE'),(478,'MR','MRT','MAURITANIA'),(480,'MU','MUS','MAURITIUS '),(484,'MX','MEX','MEXICO'),(492,'MC','MCO','MONACO'),(496,'MN','MNG','MONGOLIA'),(498,'MD','MDA','MOLDOVA, REPUBLIC OF'),(500,'MS','MSR','MONTSERRAT'),(504,'MA','MAR','MOROCCO '),(508,'MZ','MOZ','MOZAMBIQUE'),(512,'OM','OMN','OMAN'),(516,'NA','NAM','NAMIBIA '),(520,'NR','NRU','NAURU '),(524,'NP','NPL','NEPAL '),(528,'NL','NLD','NETHERLANDS '),(530,'AN','ANT','NETHERLANDS ANTILLES'),(533,'AW','ABW','ARUBA'),(540,'NC','NCL','NEW CALEDONIA '),(548,'VU','VUT','VANUATU '),(554,'NZ','NZL','NEW ZEALAND '),(558,'NI','NIC','NICARAGUA '),(562,'NE','NER','NIGER '),(566,'NG','NGA','NIGERIA '),(570,'NU','NIU','NIUE'),(574,'NF','NFK','NORFOLK ISLAND'),(578,'NO','NOR','NORWAY'),(580,'MP','MNP','NORTHERN MARIANA ISLANDS'),(581,'UM','UMI','UNITED STATES MINOR OUTLYING ISLANDS'),(583,'FM','FSM','MICRONESIA, FEDERATED STATES OF '),(584,'MH','MHL','MARSHALL ISLANDS'),(585,'PW','PLW','PALAU '),(586,'PK','PAK','PAKISTAN'),(591,'PA','PAN','PANAMA'),(598,'PG','PNG','PAPUA NEW GUINEA'),(600,'PY','PRY','PARAGUAY'),(604,'PE','PER','PERU'),(608,'PH','PHL','PHILIPPINES '),(612,'PN','PCN','PITCAIRN'),(616,'PL','POL','POLAND'),(620,'PT','PRT','PORTUGAL'),(624,'GW','GNB','GUINEA-BISSAU '),(626,'TL','TLS','TIMOR-LESTE '),(630,'PR','PRI','PUERTO RICO '),(634,'QA','QAT','QATAR '),(638,'RE','REU','REUNION '),(642,'RO','ROU','ROMANIA '),(643,'RU','RUS','RUSSIAN FEDERATION'),(646,'RW','RWA','RWANDA'),(654,'SH','SHN','SAINT HELENA'),(659,'KN','KNA','SAINT KITTS AND NEVIS '),(660,'AI','AIA','ANGUILLA'),(662,'LC','LCA','SAINT LUCIA '),(666,'PM','SPM','SAINT PIERRE AND MIQUELON '),(670,'VC','VCT','SAINT VINCENT AND THE GRENADINES'),(674,'SM','SMR','SAN MARINO'),(678,'ST','STP','SAO TOME AND PRINCIPE '),(682,'SA','SAU','SAUDI ARABIA'),(686,'SN','SEN','SENEGAL '),(690,'SC','SYC','SEYCHELLES'),(694,'SL','SLE','SIERRA LEONE'),(702,'SG','SGP','SINGAPORE '),(703,'SK','SVK','SLOVAKIA'),(704,'VN','VNM','VIET NAM'),(705,'SI','SVN','SLOVENIA'),(706,'SO','SOM','SOMALIA '),(710,'ZA','ZAF','SOUTH AFRICA'),(716,'ZW','ZWE','ZIMBABWE'),(724,'ES','ESP','SPAIN '),(732,'EH','ESH','WESTERN SAHARA'),(736,'SD','SDN','SUDAN '),(740,'SR','SUR','SURINAME'),(744,'SJ','SJM','SVALBARD AND JAN MAYEN ISLANDS'),(748,'SZ','SWZ','SWAZILAND '),(752,'SE','SWE','SWEDEN'),(756,'CH','CHE','SWITZERLAND '),(760,'SY','SYR','SYRIAN ARAB REPUBLIC'),(762,'TJ','TJK','TAJIKISTAN'),(764,'TH','THA','THAILAND'),(768,'TG','TGO','TOGO'),(772,'TK','TKL','TOKELAU '),(776,'TO','TON','TONGA '),(780,'TT','TTO','TRINIDAD AND TOBAGO '),(784,'AE','ARE','UNITED ARAB EMIRATES'),(788,'TN','TUN','TUNISIA '),(792,'TR','TUR','TURKEY'),(795,'TM','TKM','TURKMENISTAN'),(796,'TC','TCA','TURKS AND CAICOS ISLANDS'),(798,'TV','TUV','TUVALU'),(800,'UG','UGA','UGANDA'),(804,'UA','UKR','UKRAINE '),(807,'MK','MKD','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'),(818,'EG','EGY','EGYPT '),(826,'GB','GBR','UNITED KINGDOM'),(834,'TZ','TZA','TANZANIA, UNITED REPUBLIC OF'),(840,'US','USA','UNITED STATES '),(850,'VI','VIR','VIRGIN ISLANDS (U.S.) '),(854,'BF','BFA','BURKINA FASO'),(858,'UY','URY','URUGUAY '),(860,'UZ','UZB','UZBEKISTAN'),(862,'VE','VEN','VENEZUELA '),(876,'WF','WLF','WALLIS AND FUTUNA ISLANDS '),(882,'WS','WSM','SAMOA '),(887,'YE','YEM','YEMEN '),(891,'CS','SCG','SERBIA AND MONTENEGRO '),(894,'ZM','ZMB','ZAMBIA');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_reject` (
  `rej_ip` varchar(20) NOT NULL DEFAULT '',
  `rej_c_code` varchar(4) NOT NULL DEFAULT '',
  `rej_ip_count` int(11) unsigned NOT NULL DEFAULT '0',
  `rej_last_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rej_chk` char(1) NOT NULL DEFAULT 'N',
  `rej_src` enum('w','g') NOT NULL DEFAULT 'w',
  PRIMARY KEY (`rej_ip`),
  KEY `idx_c_code` (`rej_c_code`),
  KEY `idx_date` (`rej_last_date`),
  KEY `idx_chk` (`rej_chk`),
  KEY `rej_src` (`rej_src`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `geo_reject` VALUES ('','',91,'2013-04-09 00:14:26','N','g'),('101.109.40.146','TH',5,'2013-02-21 01:27:59','N','g'),('101.164.17.133','AU',12,'2013-02-21 01:41:25','N','g'),('101.165.112.83','AU',4,'2013-02-21 01:25:24','N','g'),('103.11.51.194','',2,'2013-02-20 23:32:10','N','g'),('103.20.192.212','',2,'2013-02-20 23:37:00','N','g'),('103.20.193.205','',1,'2013-02-20 23:39:05','N','g'),('103.20.193.206','',1,'2013-02-20 23:41:49','N','g'),('103.20.193.207','',4,'2013-02-21 01:35:13','N','g'),('103.246.245.134','',14,'2013-02-21 07:45:58','N','g'),('103.246.246.190','',16,'2013-02-21 04:41:39','N','g'),('103.30.7.64','',3,'2013-02-21 00:37:52','N','g'),('106.177.160.176','JP',12,'2013-02-21 00:30:13','N','g'),('107.193.96.201','US',5,'2013-02-20 23:58:26','N','g'),('107.204.174.187','US',16,'2013-02-21 01:30:44','N','g'),('108.13.225.230','US',8,'2013-02-20 23:51:47','N','g'),('108.80.149.72','US',5,'2013-02-21 00:54:59','N','g'),('110.169.251.46','TH',2,'2013-02-21 01:46:33','N','g'),('110.20.204.144','AU',9,'2015-07-27 00:46:13','N','g'),('110.32.206.225','AU',1,'2013-02-21 00:55:20','N','g'),('110.34.234.155','TH',1,'2013-02-20 23:20:43','N','g'),('111.171.157.103','JP',2,'2013-02-21 01:21:03','N','g'),('111.232.112.215','JP',10,'2013-02-20 23:33:15','N','g'),('112.79.42.24','IN',2,'2013-02-21 01:35:25','N','g'),('113.161.96.160','VN',5,'2013-04-03 23:59:18','N','g'),('113.196.70.120','CN',351,'2013-04-16 03:04:17','N','g'),('113.196.70.121','CN',7,'2013-04-11 02:29:35','N','g'),('113.196.70.122','CN',20,'2013-04-15 07:35:32','N','g'),('113.196.70.123','CN',33,'2013-04-17 10:16:25','N','g'),('113.196.70.124','CN',18,'2013-04-16 09:49:44','N','g'),('113.196.70.140','CN',56,'2013-04-17 07:42:35','N','g'),('113.196.70.163','CN',131,'2013-04-11 05:37:19','N','g'),('113.196.70.174','CN',11,'2013-04-10 02:23:01','N','g'),('113.196.70.192','CN',128,'2013-04-15 20:38:16','N','g'),('113.196.70.196','CN',86,'2013-04-14 05:06:27','N','g'),('113.196.70.216','CN',110,'2013-04-14 01:44:28','N','g'),('113.196.70.71','CN',26,'2013-04-16 01:55:07','N','g'),('113.196.70.72','CN',103,'2013-04-17 07:09:56','N','g'),('113.196.70.73','CN',116,'2013-04-17 01:02:06','N','g'),('114.156.221.177','JP',1,'2013-02-21 01:53:00','N','g'),('114.182.3.144','JP',1,'2013-02-20 23:55:53','N','g'),('114.182.3.180','JP',6,'2013-02-21 00:03:04','N','g'),('114.188.138.94','JP',11,'2013-02-20 23:39:49','N','g'),('114.48.180.24','JP',10,'2013-02-21 00:23:21','N','g'),('115.132.16.115','MY',8,'2013-02-21 01:44:00','N','g'),('115.135.99.205','MY',9,'2013-02-21 00:14:35','N','g'),('115.176.26.138','JP',1,'2013-02-21 01:44:56','N','g'),('115.252.180.67','IN',7,'2013-02-21 01:47:06','N','g'),('115.30.37.8','AU',11,'2013-02-21 00:57:20','N','g'),('115.42.235.162','SG',39,'2013-06-12 03:46:41','N','g'),('115.66.233.130','SG',17,'2013-02-21 01:52:30','N','g'),('116.12.204.156','SG',7,'2013-02-19 23:34:30','N','g'),('116.88.82.181','SG',13,'2013-02-21 01:23:07','N','g'),('116.88.82.48','SG',3,'2013-02-21 01:48:32','N','g'),('117.55.68.47','JP',1,'2013-02-21 01:19:58','N','g'),('118.100.32.221','MY',1,'2013-02-21 00:59:28','N','g'),('118.100.87.189','MY',14,'2013-02-21 01:47:10','N','g'),('118.169.173.108','A1',3,'2013-05-04 23:42:58','N','g'),('118.208.243.21','AU',1,'2013-02-21 01:02:35','N','g'),('118.232.170.152','SG',37,'2013-04-21 03:32:37','N','g'),('118.232.170.156','SG',28,'2013-05-01 03:02:53','N','g'),('118.232.170.158','SG',59,'2013-06-27 20:07:23','N','g'),('118.232.170.20','SG',1,'2013-05-14 00:37:38','N','g'),('118.232.170.213','SG',73,'2013-05-09 01:14:35','N','g'),('118.232.170.221','SG',8,'2013-04-22 19:32:07','N','g'),('118.232.170.43','SG',26,'2013-04-27 21:09:02','N','g'),('118.232.170.44','SG',14,'2013-05-04 04:46:51','N','g'),('118.232.170.50','SG',14,'2013-05-30 04:20:13','N','g'),('118.232.170.77','SG',16,'2013-06-28 13:54:32','N','g'),('119.238.176.194','JP',3,'2013-02-20 23:17:39','N','g'),('119.74.170.107','SG',7,'2013-02-21 00:18:47','N','g'),('119.74.208.15','SG',3,'2013-02-21 01:38:08','N','g'),('119.81.35.147','SG',2,'2013-04-04 03:39:44','N','g'),('12.227.116.209','US',12,'2013-02-21 00:56:59','N','g'),('121.217.196.221','AU',5,'2013-02-21 01:44:53','N','g'),('121.222.192.176','AU',13,'2013-02-21 01:32:09','N','g'),('121.7.169.93','SG',6,'2013-02-21 01:17:14','N','g'),('121.7.33.66','SG',25,'2013-02-21 01:44:31','N','g'),('122.147.142.47','FR',22,'2013-04-16 00:45:05','N','g'),('122.171.22.239','IN',2,'2013-02-21 01:01:04','N','g'),('122.178.195.137','IN',8,'2013-02-21 01:29:22','N','g'),('123.243.151.246','AU',4,'2013-02-21 00:41:17','N','g'),('124.120.223.168','TH',8,'2013-02-21 00:00:24','N','g'),('124.13.0.144','MY',8,'2013-02-21 00:18:18','N','g'),('124.24.199.199','JP',20,'2013-02-21 01:08:19','N','g'),('124.82.65.18','MY',2,'2013-02-21 00:11:56','N','g'),('126.11.214.96','JP',5,'2013-02-21 00:17:42','N','g'),('126.13.205.170','JP',2,'2013-02-20 23:42:23','N','g'),('126.71.72.103','JP',1,'2013-02-21 01:07:38','N','g'),('126.71.78.53','JP',5,'2013-02-21 01:05:34','N','g'),('126.71.93.107','JP',2,'2013-02-21 01:16:25','N','g'),('134.169.174.4','DE',18,'2013-02-21 00:43:04','N','g'),('134.71.147.84','US',5,'2013-02-20 23:35:44','N','g'),('135.0.34.229','US',9,'2013-02-20 23:17:42','N','g'),('137.132.212.52','SG',8,'2013-02-21 00:03:34','N','g'),('137.132.228.5','SG',10,'2013-02-21 00:51:01','N','g'),('14.192.64.38','MY',8,'2013-02-21 01:30:54','N','g'),('14.200.180.160','AU',11,'2013-02-21 01:16:08','N','g'),('142.129.89.112','',15,'2013-02-21 01:03:19','N','g'),('142.91.217.171','CA',4,'2013-02-21 01:45:19','N','g'),('153.185.47.102','JP',8,'2013-02-21 01:47:46','N','g'),('154.20.218.170','CA',3,'2013-02-20 23:45:23','N','g'),('158.255.208.10','US',3,'2013-02-21 01:45:52','N','g'),('161.64.141.157','CN',2,'2013-04-24 09:03:52','N','g'),('161.64.141.55','CN',5,'2013-04-24 23:27:50','N','g'),('169.235.99.121','US',2,'2013-02-21 00:31:44','N','g'),('172.16.5.6','',3,'2015-08-13 07:02:26','N','g'),('173.252.209.100','US',1,'2013-02-20 23:54:47','N','g'),('173.51.75.11','US',11,'2013-02-21 01:43:01','N','g'),('174.139.186.157','US',4,'2013-02-21 01:15:54','N','g'),('174.139.186.158','US',2,'2013-02-21 01:05:22','N','g'),('175.139.187.193','MY',4,'2013-02-21 00:35:29','N','g'),('175.156.113.218','SG',8,'2013-02-21 01:40:33','N','g'),('175.156.131.110','SG',2,'2013-02-21 00:33:51','N','g'),('175.156.165.178','SG',7,'2013-02-20 23:40:24','N','g'),('176.67.81.193','A1',4,'2013-05-13 08:05:51','N','g'),('176.67.81.241','A1',37,'2013-05-16 19:44:19','N','g'),('180.12.112.15','JP',3,'2013-02-21 00:02:45','N','g'),('180.183.251.147','TH',1,'2013-02-21 00:48:50','N','g'),('180.218.208.31','AU',12,'2013-04-03 23:23:52','N','g'),('180.218.208.4','AU',3,'2013-04-13 10:23:53','N','g'),('180.218.208.8','AU',5,'2013-04-11 01:08:14','N','g'),('180.218.209.108','AU',20,'2013-06-16 21:19:26','N','g'),('180.218.209.172','AU',7,'2013-04-07 07:55:34','N','g'),('180.218.209.36','AU',25,'2013-04-28 00:03:10','N','g'),('180.47.247.106','JP',26,'2013-02-21 01:07:05','N','g'),('180.63.77.206','JP',4,'2013-02-21 00:53:59','N','g'),('182.237.0.43','AE',141,'2013-06-06 03:51:37','N','g'),('182.237.0.89','AE',310,'2013-04-21 18:33:55','N','g'),('182.55.199.204','SG',6,'2013-02-21 00:05:13','N','g'),('184.171.34.56','US',2,'2013-02-21 01:22:41','N','g'),('184.22.223.125','US',2,'2013-02-20 23:09:24','N','g'),('184.58.22.145','US',7,'2013-02-21 01:15:58','N','g'),('184.98.153.243','US',4,'2013-02-21 01:00:57','N','g'),('192.161.92.7','',5,'2013-02-21 01:00:22','N','g'),('192.168.1.160','',2,'2015-06-29 05:11:42','N','g'),('192.168.50.2','',8,'2020-09-03 09:19:52','N','g'),('198.148.116.54','US',2,'2013-02-20 23:06:19','N','g'),('198.55.101.200','US',2,'2013-02-23 04:19:57','N','g'),('198.55.102.234','',2,'2013-02-21 01:41:43','N','g'),('198.84.222.220','US',2,'2013-02-20 23:56:20','N','g'),('199.101.117.11','',12,'2013-02-21 01:25:54','N','g'),('199.101.117.163','',14,'2013-02-21 01:50:53','N','g'),('199.119.202.117','US',3,'2013-02-21 01:37:44','N','g'),('199.255.209.163','A1',1,'2013-02-21 01:00:35','N','g'),('199.255.210.79','A1',1,'2013-02-21 01:36:48','N','g'),('199.255.213.107','A1',1,'2013-02-20 23:59:49','N','g'),('202.83.101.31','SG',4,'2013-02-21 01:06:56','N','g'),('207.161.75.155','CA',7,'2013-02-21 01:00:02','N','g'),('207.237.46.254','US',7,'2013-02-21 01:09:07','N','g'),('207.237.59.230','US',14,'2013-02-21 00:55:06','N','g'),('210.175.52.93','JP',4,'2013-02-21 01:52:11','N','g'),('210.186.229.128','MY',2,'2013-02-21 00:42:41','N','g'),('210.186.230.232','MY',4,'2013-02-20 23:25:39','N','g'),('210.89.224.55','JP',2,'2013-02-21 01:26:19','N','g'),('216.174.135.133','CA',22,'2013-02-21 00:34:31','N','g'),('216.58.28.29','CA',7,'2013-02-21 00:07:28','N','g'),('218.111.10.218','MY',5,'2013-02-21 01:43:16','N','g'),('218.212.125.90','SG',9,'2013-02-21 01:07:11','N','g'),('218.212.171.53','SG',14,'2013-02-21 01:21:37','N','g'),('218.212.212.179','SG',13,'2013-02-20 23:54:37','N','g'),('218.212.52.64','SG',3,'2013-02-20 23:50:41','N','g'),('218.212.88.140','SG',56,'2013-02-21 01:24:43','N','g'),('218.228.244.219','JP',3,'2013-02-21 00:45:06','N','g'),('219.134.213.238','CN',3,'2013-04-08 23:25:58','N','g'),('219.74.198.112','SG',5,'2013-02-20 23:18:15','N','g'),('219.92.248.28','MY',2,'2013-02-21 01:49:14','N','g'),('220.146.65.116','JP',16,'2013-02-21 01:51:14','N','g'),('222.164.182.42','SG',1,'2013-02-21 01:53:35','N','g'),('222.164.243.63','SG',9,'2013-02-21 00:38:46','N','g'),('222.164.70.165','SG',9,'2013-02-21 01:33:01','N','g'),('222.165.8.31','SG',5,'2013-02-21 01:37:50','N','g'),('24.171.137.116','US',1,'2013-02-20 23:33:51','N','g'),('24.255.213.40','US',8,'2013-02-21 00:45:36','N','g'),('24.84.47.154','CA',2,'2013-02-21 00:06:55','N','g'),('27.100.17.150','AU',3,'2013-02-22 00:17:01','N','g'),('27.253.46.23','AU',2,'2013-02-21 01:36:19','N','g'),('27.33.44.88','AU',1,'2013-02-20 23:33:15','N','g'),('31.126.75.195','GB',8,'2013-02-21 01:46:34','N','g'),('31.127.39.2','GB',3,'2013-02-20 23:45:06','N','g'),('36.52.200.64','JP',1,'2013-02-20 23:16:10','N','g'),('42.61.145.108','SG',3,'2013-02-20 23:52:04','N','g'),('43.224.212.170','JP',6,'2015-07-26 03:44:22','N','g'),('43.224.212.171','JP',24,'2015-07-27 02:17:27','N','g'),('43.224.213.161','JP',3,'2015-07-26 23:04:59','N','g'),('49.212.48.199','JP',1,'2013-02-21 00:20:55','N','g'),('50.148.141.187','US',3,'2013-02-21 00:03:43','N','g'),('50.31.253.185','US',5,'2013-02-21 00:55:54','N','g'),('50.31.254.25','US',3,'2013-02-20 23:18:29','N','g'),('58.0.121.24','JP',7,'2013-02-21 01:27:05','N','g'),('58.146.150.86','SG',18,'2013-02-21 01:50:16','N','g'),('58.7.112.97','AU',12,'2013-02-20 23:18:18','N','g'),('58.70.46.47','JP',3,'2013-02-21 00:00:58','N','g'),('58.71.169.32','MY',24,'2013-02-21 01:22:12','N','g'),('59.146.125.78','JP',6,'2013-02-21 01:53:24','N','g'),('59.189.11.106','SG',8,'2013-02-21 01:49:52','N','g'),('59.84.205.188','JP',15,'2013-02-21 00:56:19','N','g'),('60.240.169.73','AU',7,'2013-02-21 00:53:22','N','g'),('60.50.54.147','MY',18,'2013-02-21 01:28:20','N','g'),('60.53.164.147','MY',1,'2013-02-20 23:48:31','N','g'),('61.154.152.5','CN',1,'2015-07-09 02:32:13','N','g'),('61.255.140.83','KR',2,'2013-02-15 20:18:44','N','g'),('61.255.140.85','KR',1,'2013-02-15 20:21:59','N','g'),('61.92.248.130','AU',14,'2013-04-14 05:04:52','N','g'),('63.221.138.114','US',3,'2013-02-20 23:46:32','N','g'),('65.189.240.28','US',3,'2013-02-20 23:43:54','N','g'),('66.212.31.26','US',2,'2013-02-20 23:19:28','N','g'),('67.187.7.177','US',8,'2013-02-21 00:56:11','N','g'),('67.198.134.242','US',1,'2013-02-21 00:15:17','N','g'),('68.108.172.233','US',2,'2013-02-21 00:15:43','N','g'),('68.194.52.91','US',1,'2013-02-20 23:57:48','N','g'),('68.224.22.197','US',3,'2013-02-21 01:13:40','N','g'),('68.96.218.119','US',6,'2013-02-21 00:06:58','N','g'),('69.133.15.192','US',4,'2013-02-21 00:32:08','N','g'),('70.75.184.100','CA',9,'2013-02-21 00:10:01','N','g'),('71.126.158.116','US',4,'2013-02-20 23:43:55','N','g'),('71.198.1.112','US',7,'2013-02-21 01:51:06','N','g'),('71.83.162.23','US',4,'2013-02-20 23:41:47','N','g'),('71.84.255.237','US',4,'2013-02-20 23:24:25','N','g'),('74.115.0.203','A1',1,'2013-02-21 00:37:17','N','g'),('74.115.0.204','A1',1,'2013-02-20 23:34:49','N','g'),('75.80.142.96','US',2,'2013-02-20 23:34:11','N','g'),('75.82.193.39','US',1,'2013-02-20 23:58:45','N','g'),('75.83.31.25','US',2,'2013-02-20 23:41:22','N','g'),('78.192.52.9','FR',6,'2013-02-21 00:23:20','N','g'),('80.193.170.77','GB',16,'2013-02-21 01:10:17','N','g'),('84.203.69.170','IE',15,'2013-02-21 00:55:07','N','g'),('96.44.165.112','US',3,'2013-02-20 23:53:47','N','g'),('98.126.122.252','US',1,'2013-02-20 23:52:18','N','g'),('98.126.171.74','US',1,'2013-02-20 23:58:45','N','g'),('98.126.26.2','US',5,'2013-02-21 01:15:10','N','g'),('98.154.39.15','US',15,'2013-02-21 00:47:13','N','g'),('98.159.107.195','US',5,'2013-02-21 01:37:11','N','g'),('99.237.73.184','CA',10,'2013-02-21 01:23:15','N','g'),('99.245.7.21','CA',1,'2013-02-21 00:08:20','N','g'),('99.37.31.138','US',3,'2013-02-20 23:54:56','N','g'),('99.46.221.58','US',5,'2013-02-21 01:36:09','N','g');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_ticket_entry` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_no` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_date` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_code` varchar(21) NOT NULL DEFAULT '',
  `buyer_check` int(10) unsigned NOT NULL DEFAULT '0',
  `other_id` int(10) unsigned NOT NULL DEFAULT '0',
  `other_date` int(10) unsigned NOT NULL DEFAULT '0',
  `other_code` varchar(21) NOT NULL DEFAULT '',
  `other_check` int(10) unsigned NOT NULL DEFAULT '0',
  `message` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_buyer_id` (`buyer_id`),
  KEY `idx_other_id` (`other_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_manifest_notuse` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `uk_bdid_empyn_gno` (`bd_id`,`empyn`,`gno`),
  UNIQUE KEY `uk_bdid_empyn_mgno` (`bd_id`,`empyn`,`mgno`)
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
CREATE TABLE `guild_halloffame` (
  `fame_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `guild_name` varchar(40) NOT NULL DEFAULT '',
  `file_url` varchar(128) NOT NULL DEFAULT '0',
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
  PRIMARY KEY (`guild_id`),
  KEY `idx_server_id` (`server_id`),
  KEY `idx_guild_name` (`guild_name`),
  KEY `idx_master_no` (`master_no`),
  KEY `idx_master_name` (`master_name`),
  KEY `idx_guild_rank` (`guild_rank`),
  KEY `idx_guild_point_prev` (`guild_point_prev`),
  KEY `idx_guild_point_acc` (`guild_point_acc`),
  KEY `idx_member_count` (`member_count`),
  KEY `idx_expire_flag` (`expire_flag`),
  KEY `idx_guild_point` (`guild_point`)
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
CREATE TABLE `guild_member` (
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `nick_name` varchar(12) NOT NULL DEFAULT '',
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
  PRIMARY KEY (`guild_id`,`charac_no`),
  KEY `idx_guild_id` (`guild_id`),
  KEY `idx_charac_no` (`charac_no`),
  KEY `idx_last_visit_time` (`last_visit_time`),
  KEY `idx_apply_time` (`apply_time`),
  KEY `idx_secede_type` (`secede_type`),
  KEY `idx_secede_time` (`secede_time`),
  KEY `idx_member_flag` (`member_flag`),
  KEY `idx_m_id` (`m_id`),
  KEY `idx_member_time` (`member_time`)
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
CREATE TABLE `guild_rank` (
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `guild_name` varchar(40) NOT NULL DEFAULT '0',
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
  KEY `idx_guild_id` (`guild_id`),
  KEY `idx_charac_no` (`charac_no`)
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
  `avg_lev` float NOT NULL DEFAULT '0',
  `avg_master_lev` float NOT NULL DEFAULT '0',
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
CREATE TABLE `limit_create_character` (
  `m_id` int(11) unsigned NOT NULL DEFAULT '0',
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  `last_access_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `limit_create_character` VALUES (1,1,'2020-09-03 23:08:53');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limit_create_character_ip` (
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `ip_str` char(16) NOT NULL DEFAULT '',
  `last_access_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  `last_access_mid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limited_shop_manager` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ipg_no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `cera_price` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_price` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar_period_type` tinyint(4) NOT NULL DEFAULT '-1',
  `total_cnt` int(11) NOT NULL DEFAULT '0',
  `sell_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `restrict_no` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `real_end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `npc_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `cond_charac_job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cond_lev_begin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cond_lev_end` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cond_acc_create_time_begin` int(10) unsigned NOT NULL DEFAULT '0',
  `cond_acc_create_time_end` int(10) unsigned NOT NULL DEFAULT '0',
  `cond_cha_create_time_begin` int(10) unsigned NOT NULL DEFAULT '0',
  `cond_cha_create_time_end` int(10) unsigned NOT NULL DEFAULT '0',
  `status_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `range_section` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason_etc` varchar(200) NOT NULL DEFAULT '',
  `reason_stop` varchar(200) NOT NULL DEFAULT '',
  `pos_flag` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`,`server_id`,`ipg_no`),
  KEY `idx_occ_time` (`occ_time`),
  KEY `idx_server_id` (`server_id`),
  KEY `idx_restrict_no` (`restrict_no`),
  KEY `idx_status_flag` (`status_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_query_stat` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `q_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_no` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `response_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`q_id`,`gc_no`),
  KEY `idx_q_id` (`q_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_withdraw` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(6) NOT NULL DEFAULT '',
  `user_name` varchar(5) NOT NULL DEFAULT '',
  `first_ssn` varchar(3) NOT NULL DEFAULT '',
  `second_ssn` varchar(3) NOT NULL DEFAULT '',
  `passwd` varchar(8) NOT NULL DEFAULT '',
  `mobile_no` varchar(7) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `email` varchar(25) NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT '0',
  `q_answer` varchar(15) NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `w_type` smallint(6) NOT NULL DEFAULT '0',
  `w_cause` varchar(100) NOT NULL DEFAULT '',
  `w_date` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`),
  KEY `idx_reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `max_count` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mc_max` int(11) unsigned NOT NULL DEFAULT '0',
  `mc_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `idx_mc_date` (`mc_date`),
  KEY `idx_server_info` (`server_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `max_count_channel` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gc_channeltype` varchar(25) NOT NULL DEFAULT '',
  `mc_max` int(11) unsigned NOT NULL DEFAULT '0',
  `mc_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `idx_mc_date` (`mc_date`),
  KEY `idx_server_info` (`server_info`,`gc_channeltype`),
  KEY `idx_gc_channeltype` (`gc_channeltype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `max_count_pvp` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mc_max` int(11) unsigned NOT NULL DEFAULT '0',
  `mc_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `idx_mc_date` (`mc_date`),
  KEY `idx_server_info` (`server_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `max_count_v2` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_occupations_charscreen` int(10) unsigned NOT NULL DEFAULT '0',
  `num_occupations_seriaroom` int(10) unsigned NOT NULL DEFAULT '0',
  `num_login_per_min` int(10) unsigned NOT NULL DEFAULT '0',
  `num_logout_per_min` int(10) unsigned NOT NULL DEFAULT '0',
  `mc_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `mc_date` (`mc_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_abnomal` (
  `user_id` varchar(12) NOT NULL DEFAULT '',
  `overlab_count` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_broadcast` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`,`m_id`,`server_id`,`charac_no`,`start_time`),
  UNIQUE KEY `charac_name` (`charac_name`),
  KEY `idx_m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_captcha_info` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cert_time` int(10) unsigned NOT NULL DEFAULT '0',
  `fail_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_handicap` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `cap_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `handicap_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`,`cap_type`,`server_id`,`m_id`,`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_info` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) DEFAULT NULL,
  `user_name` varchar(10) NOT NULL DEFAULT '',
  `first_ssn` varchar(6) NOT NULL DEFAULT '',
  `second_ssn` varchar(7) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `mobile_no` varchar(15) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT '0',
  `q_answer` varchar(30) NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `nickname` varchar(16) NOT NULL DEFAULT '',
  `email_yn` enum('y','n') NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` int(10) unsigned NOT NULL DEFAULT '8',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hanmon_flag` tinyint(4) NOT NULL DEFAULT '0',
  `m_type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_reg_date` (`reg_date`),
  KEY `idx_ssn` (`first_ssn`,`second_ssn`),
  KEY `idx_nick` (`nickname`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_info` VALUES (1,'1','','','','','',0,'',0,'','2020-09-03 15:02:00',1,'','y',0,8,'0000-00-00 00:00:00',0,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_info_detail` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `zipcode` varchar(7) NOT NULL DEFAULT '',
  `address` varchar(80) NOT NULL DEFAULT '',
  `address_detail` varchar(70) NOT NULL DEFAULT '',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_info_euckr` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) DEFAULT NULL,
  `user_name` varchar(10) NOT NULL DEFAULT '',
  `first_ssn` varchar(6) NOT NULL DEFAULT '',
  `second_ssn` varchar(7) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `mobile_no` varchar(15) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT '0',
  `q_answer` varchar(30) NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `nickname` varchar(16) NOT NULL DEFAULT '',
  `email_yn` enum('y','n') NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` int(10) unsigned NOT NULL DEFAULT '8',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_reg_date` (`reg_date`),
  KEY `idx_ssn` (`first_ssn`,`second_ssn`),
  KEY `idx_nick` (`nickname`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_info_mileage` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) DEFAULT NULL,
  `user_name` varchar(10) NOT NULL DEFAULT '',
  `first_ssn` varchar(6) NOT NULL DEFAULT '',
  `second_ssn` varchar(7) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `mobile_no` varchar(15) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT '0',
  `q_answer` varchar(30) NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `nickname` varchar(16) NOT NULL DEFAULT '',
  `email_yn` enum('y','n') NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` int(10) unsigned NOT NULL DEFAULT '8',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hanmon_flag` tinyint(4) NOT NULL DEFAULT '0',
  `mileage` int(11) DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_reg_date` (`reg_date`),
  KEY `idx_ssn` (`first_ssn`,`second_ssn`),
  KEY `idx_nick` (`nickname`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_info_old` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) DEFAULT NULL,
  `user_name` varchar(5) NOT NULL DEFAULT '',
  `first_ssn` varchar(10) DEFAULT NULL,
  `second_ssn` varchar(10) DEFAULT NULL,
  `passwd` varchar(8) NOT NULL DEFAULT '',
  `mobile_no` varchar(8) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `email` varchar(25) NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT '0',
  `q_answer` varchar(15) NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `nickname` varchar(8) NOT NULL DEFAULT '',
  `email_yn` enum('y','n') NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`),
  KEY `idx_reg_date` (`reg_date`),
  KEY `idx_ssn` (`first_ssn`,`second_ssn`),
  KEY `idx_nick` (`nickname`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_user_name` (`user_name`),
  KEY `first_ssn` (`first_ssn`),
  KEY `second_ssn` (`second_ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_info_utf8` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(30) DEFAULT NULL,
  `user_name` varchar(10) NOT NULL DEFAULT '',
  `first_ssn` varchar(6) NOT NULL DEFAULT '',
  `second_ssn` varchar(7) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `mobile_no` varchar(15) NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT '0',
  `q_answer` varchar(30) NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `nickname` varchar(16) NOT NULL DEFAULT '',
  `email_yn` enum('y','n') NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` int(10) unsigned NOT NULL DEFAULT '8',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hanmon_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_reg_date` (`reg_date`),
  KEY `idx_ssn` (`first_ssn`,`second_ssn`),
  KEY `idx_nick` (`nickname`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_join_info` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `contry_code` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `error_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `game_use_history` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_ip` (`ip`),
  KEY `idx_reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_join_info` VALUES (1,'2020-09-03 23:02:15','192.168.50.2',0,'0000-00-00 00:00:00',0,'',0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_lioness` (
  `user_id` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_miles` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `miles` int(11) NOT NULL DEFAULT '0',
  `daily_miles` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_miles` VALUES (1,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_mouse_sms` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_passwd_mod` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `first_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cnt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_premium_history` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `pre_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `service_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`,`pre_type`,`m_id`,`service_start`),
  KEY `idx_m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_premium_notuse` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `pre_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `service_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`,`pre_type`,`server_id`,`m_id`,`service_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_punish_hack` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `period` int(10) unsigned NOT NULL DEFAULT '0',
  `now_flag` tinyint(4) NOT NULL DEFAULT '0',
  `auto_flag` tinyint(4) NOT NULL DEFAULT '0',
  `reason` varchar(250) NOT NULL DEFAULT '',
  `hack_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_punish_hack_history` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` int(10) unsigned NOT NULL DEFAULT '0',
  `period` int(10) unsigned NOT NULL DEFAULT '0',
  `now_flag` tinyint(4) NOT NULL DEFAULT '0',
  `auto_flag` tinyint(4) NOT NULL DEFAULT '0',
  `reason` varchar(250) NOT NULL DEFAULT '',
  KEY `idx_m_id` (`m_id`),
  KEY `idx_occ_time` (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  KEY `idx1` (`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_punish_info_history` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT '0',
  `punish_type` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `punish_value` int(11) NOT NULL DEFAULT '0',
  `apply_flag` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin_id` varchar(25) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `is_kicked` tinyint(4) DEFAULT NULL,
  `first_ssn` varchar(32) DEFAULT NULL,
  `second_ssn` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_safe_ensure` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobile_no` varchar(15) NOT NULL DEFAULT '',
  `service_flag` tinyint(4) NOT NULL DEFAULT '0',
  `type1_flag` tinyint(4) NOT NULL DEFAULT '0',
  `type2_flag` tinyint(4) NOT NULL DEFAULT '0',
  `expire_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settle_id` varchar(18) NOT NULL DEFAULT '',
  KEY `idx_m_id` (`m_id`),
  KEY `idx_mobile_no` (`mobile_no`),
  KEY `idx_occ_time` (`occ_time`),
  KEY `idx_expire_time` (`expire_time`),
  KEY `idx_settle_id` (`settle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_safe_ensure_history` (
  `mod_flag` tinyint(4) NOT NULL DEFAULT '0',
  `mod_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobile_no` varchar(15) NOT NULL DEFAULT '',
  `service_flag` tinyint(4) NOT NULL DEFAULT '0',
  `type1_flag` tinyint(4) NOT NULL DEFAULT '0',
  `type2_flag` tinyint(4) NOT NULL DEFAULT '0',
  `expire_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settle_id` varchar(18) NOT NULL DEFAULT '',
  KEY `idx_m_id` (`m_id`),
  KEY `idx_mobile_no` (`mobile_no`),
  KEY `idx_occ_time` (`occ_time`),
  KEY `idx_expire_time` (`expire_time`),
  KEY `idx_mod_time` (`mod_time`),
  KEY `idx_settle_id` (`settle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  KEY `idx_pass_check` (`last_pass_fail_time`,`linear_pass_fail_cnt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_white_account` (
  `m_id` int(10) unsigned NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_white_account` VALUES (1,'2020-09-03 23:02:00');
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
  UNIQUE KEY `uk_no` (`no`),
  KEY `idx_prev` (`prev_no`),
  KEY `idx_next` (`next_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  KEY `idx1` (`bbs_name`),
  KEY `idx2` (`no`),
  KEY `idx3` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwd_mod_entry` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `pre_passwd` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`,`occ_time`),
  KEY `idx_occ_time` (`occ_time`),
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pswd_qstion` (
  `q_no` tinyint(4) NOT NULL DEFAULT '0',
  `q_text` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`q_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pswd_qstion_direct` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `q_text` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pu_user_list` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slang_list` (
  `slang` varchar(153) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`slang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slang_list_name` (
  `slang` varchar(153) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`slang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tme_charac` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(10) NOT NULL DEFAULT '',
  `village` tinyint(4) NOT NULL DEFAULT '1',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '1',
  `exp` int(11) NOT NULL DEFAULT '0',
  `grow_type` tinyint(4) NOT NULL DEFAULT '0',
  `HP` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `maxHP` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxMP` smallint(6) unsigned NOT NULL DEFAULT '0',
  `phy_attack` smallint(6) unsigned NOT NULL DEFAULT '0',
  `phy_defense` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mag_attack` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mag_defense` smallint(6) unsigned NOT NULL DEFAULT '0',
  `element_resist` tinyblob NOT NULL,
  `spec_property` tinyblob NOT NULL,
  `inven_weight` int(6) NOT NULL DEFAULT '0',
  `hp_regen` smallint(6) NOT NULL DEFAULT '0',
  `mp_regen` smallint(6) NOT NULL DEFAULT '0',
  `move_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `attack_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `cast_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `hit_recovery` smallint(6) NOT NULL DEFAULT '0',
  `jump` smallint(6) NOT NULL DEFAULT '0',
  `charac_weight` int(11) NOT NULL DEFAULT '0',
  `fatigue` smallint(11) NOT NULL DEFAULT '0',
  `max_fatigue` smallint(6) NOT NULL DEFAULT '70',
  `premium_fatigue` smallint(11) NOT NULL DEFAULT '0',
  `max_premium_fatigue` smallint(6) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dungeon_clear_point` int(11) NOT NULL DEFAULT '0',
  `delete_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_right` tinyint(4) NOT NULL DEFAULT '0',
  `member_flag` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_charac` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(10) NOT NULL DEFAULT '',
  `village` tinyint(4) NOT NULL DEFAULT '1',
  `job` tinyint(4) NOT NULL DEFAULT '0',
  `lev` tinyint(4) NOT NULL DEFAULT '1',
  `exp` int(11) NOT NULL DEFAULT '0',
  `grow_type` tinyint(4) NOT NULL DEFAULT '0',
  `HP` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `maxHP` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxMP` smallint(6) unsigned NOT NULL DEFAULT '0',
  `phy_attack` smallint(6) unsigned NOT NULL DEFAULT '0',
  `phy_defense` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mag_attack` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mag_defense` smallint(6) unsigned NOT NULL DEFAULT '0',
  `element_resist` tinyblob NOT NULL,
  `spec_property` tinyblob NOT NULL,
  `inven_weight` int(6) NOT NULL DEFAULT '0',
  `hp_regen` smallint(6) NOT NULL DEFAULT '0',
  `mp_regen` smallint(6) NOT NULL DEFAULT '0',
  `move_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `attack_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `cast_speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `hit_recovery` smallint(6) NOT NULL DEFAULT '0',
  `jump` smallint(6) NOT NULL DEFAULT '0',
  `charac_weight` int(11) NOT NULL DEFAULT '0',
  `fatigue` smallint(11) NOT NULL DEFAULT '0',
  `max_fatigue` smallint(6) NOT NULL DEFAULT '70',
  `premium_fatigue` smallint(11) NOT NULL DEFAULT '0',
  `max_premium_fatigue` smallint(6) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dungeon_clear_point` int(11) NOT NULL DEFAULT '0',
  `delete_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0',
  `guild_right` tinyint(4) NOT NULL DEFAULT '0',
  `member_flag` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `under_age_consent` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `consent_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `limit_money` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `parent_name` varchar(4) NOT NULL DEFAULT '',
  `parent_jumin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `parent_phone1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_phone2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parent_phone3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parent_email` varchar(25) NOT NULL DEFAULT '',
  `parent_consent_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notice_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notice_addr` varchar(50) NOT NULL DEFAULT '',
  `create_date` int(10) unsigned NOT NULL DEFAULT '0',
  `consent_date` int(10) unsigned NOT NULL DEFAULT '0',
  `consent_yn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `history_yn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `idxid` (`m_id`,`create_date`),
  KEY `idx_parent_name` (`parent_name`),
  KEY `idx_parent_email` (`parent_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `under_billing_confirm` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_name` varchar(4) NOT NULL DEFAULT '',
  `parent_jumin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `parent_phone1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_phone2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parent_phone3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parent_email` varchar(25) NOT NULL DEFAULT '',
  `parent_consent_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `create_date` int(10) unsigned NOT NULL DEFAULT '0',
  `consent_date` int(10) unsigned NOT NULL DEFAULT '0',
  `consent_yn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ban` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` tinyint(4) NOT NULL DEFAULT '1',
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ban_term` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ban_reason` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `detail_reason` text NOT NULL,
  `ban_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cancel_reason` text NOT NULL,
  `cancel_date` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `first_ssn` varchar(6) NOT NULL DEFAULT '',
  `second_ssn` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `ie_m_id` (`m_id`,`status`),
  KEY `idx_first_ssn` (`first_ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
