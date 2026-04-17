
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_cain_2nd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_cain_2nd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_advance_altar` (
  `charac_no` int(11) NOT NULL DEFAULT '0' COMMENT 'ﾄｳｸｯﾅﾍｹ?｣',
  `ridable_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ｺｯｽﾅｸ?ｺﾅﾍ ｾﾆﾀﾌｵ',
  `ticket_free` smallint(6) NOT NULL DEFAULT '0' COMMENT 'ｹｫｷ眤ﾔﾀ螻ﾇ(ｻ鄂ﾅﾀﾇ ﾃﾊｴ??ﾃｳｷｳ ｸﾅﾀﾏ ﾃ､ｿ??',
  `ticket_cera` smallint(6) NOT NULL DEFAULT '0' COMMENT 'ｼｼｶ?･ｿ｡ｼｭ ｱｸｸﾅﾇﾑ ﾀｯｷ眤ﾔﾀ螻ﾇ',
  `star_game` int(11) NOT NULL DEFAULT '0' COMMENT 'ｽｺﾅﾗﾀﾌﾁ?ﾅｬｸｮｾ?ｺｸｻ?ｸｷﾎ ｹﾞﾀｺ star (ﾁ?｡ﾇﾏｰ?ｰｨｼﾒ ｾ?ｽ)',
  `star_cera` int(11) NOT NULL DEFAULT '0' COMMENT 'ｼｼｶ?･ｿ｡ｼｭ ｱｸｸﾅﾇﾑ ﾀｯｷ?star(ﾁ?｡ﾇﾏｰ?ｰｨｼﾒ ｾ?ｽ)',
  `star_usable` int(11) NOT NULL DEFAULT '0' COMMENT 'ｻ鄙?｡ｴﾉﾇﾑ star (=ｻ鄙?ﾏｰ?ｳｲﾀｺ star)',
  `survival_best` smallint(6) NOT NULL DEFAULT '0' COMMENT 'ｼｭｹﾙﾀﾌｹ??蠢｡ｼｭ ﾅｬｸｮｾ?ﾑ ﾃﾖｴ?ｽｺﾅﾗﾀﾌﾁ??｣',
  `star_reset_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'starｸｦ ﾃﾊｱ篳ｭﾇﾑ ﾈｸｼ?ｱ篳ｹ:ﾃﾊｱ篳ｭ ﾈｽｼ?｡ ｵ??ｺ??ﾌ ｴﾙｸｧ)',
  `is_unlock_stage_effect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'ｽｺﾅﾗﾀﾌﾁ?unlock ﾀﾌﾆ衄ｮｸｦ ｺｸｿｩﾁ狎ﾟ ﾇﾏｴﾂﾁ?',
  `stage_list` blob NOT NULL COMMENT 'ﾅｬｸｮｾ?ﾑ, ﾀﾔﾀ?ﾇﾒ ｼ?ﾀﾖｴﾂ ｽｺﾅﾗﾀﾌﾁ?ｮｽｺﾆｮ',
  `slot_list` blob NOT NULL COMMENT 'ｽｽｷﾔ ｸｮｽｺﾆｮ',
  `buy_item_list` blob NOT NULL COMMENT 'ｾ?ﾗｷｹﾀﾌｵ?ｻ?｡ｿ｡ｼｭ ｱｸｸﾅﾇﾑ ｾﾆﾀﾌﾅﾛ ｸｮｽｺﾆｮ',
  `reward_list` blob NOT NULL COMMENT 'ｾ??ｺｸｻ?ｸｮｽｺﾆｮ',
  PRIMARY KEY (`charac_no`,`ridable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_advance_altar_item_desc` (
  `ridable_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ｺｯｽﾅｸ?ｺﾅﾍ ｾﾆﾀﾌｵ',
  `item_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'ｾﾆﾀﾌﾅﾛﾅｸﾀﾔ 0:ﾀｯｴﾖ, 1:ｽｺﾅｳ, 2:ﾅｸｿ',
  `item_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ｾﾆﾀﾌﾅﾛｾﾆﾀﾌｵ',
  `item_desc` blob NOT NULL COMMENT 'ｾﾆﾀﾌﾅﾛｼｳｸ',
  PRIMARY KEY (`ridable_id`,`item_type`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_advance_altar_item_desc` VALUES (1,0,1000,''),(1,0,2000,''),(1,0,3000,''),(1,0,4000,''),(1,0,5000,''),(1,0,6000,''),(1,0,7000,''),(1,0,8000,''),(1,1,100,''),(1,1,1001,''),(1,1,1501,''),(1,1,2001,''),(1,1,3001,''),(1,1,4001,''),(1,1,5001,''),(1,2,12610,''),(1,2,12617,''),(1,2,64597,''),(1,2,64632,'');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_black_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `black_point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `offset_point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `problem_child_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_black_list` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `charac_name` varchar(20) NOT NULL DEFAULT '',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_event_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `it_id` int(11) NOT NULL DEFAULT '0',
  `event_code` int(11) NOT NULL DEFAULT '0',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  `stack_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx1` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_inven_expand` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `cargo` blob NOT NULL,
  `cargo_capacity` int(10) unsigned NOT NULL DEFAULT '0',
  `jewel` blob NOT NULL,
  `current_equipslot` char(1) NOT NULL DEFAULT '',
  `switch_equipslot` blob NOT NULL,
  `expand_equipslot` blob NOT NULL,
  `redeem_info` blob NOT NULL,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `charac_inven_expand` VALUES (1,0x38240000789CEDC101010000008220FFAF6E48400100000000000000006F0624380001,8,0x030F0000789CEDC101010000008220FFAF6E4840010000C085010F030001,'','',0x98080000789C63641805A360148C8251300A46C128181C000011300002,0x9C050000789C636460606005620626711620C9C8400E00EA7CC50C32231264061BB966DC00E96652A3C81D12603334293243016C4630E57E1905A360148C02320100D786043F);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charac_item_lock_info` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_lock_info` blob,
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combo_skill` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `combo_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `value1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value6` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`combo_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combo_skill_2nd` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `combo_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `value1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value6` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`combo_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_items` (
  `ui_id` int(11) NOT NULL AUTO_INCREMENT,
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `it_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(12) NOT NULL DEFAULT '',
  `stomach` int(10) unsigned NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `endurance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `creature_type` tinyint(4) NOT NULL DEFAULT '0',
  `no_charge` tinyint(4) NOT NULL DEFAULT '0',
  `stat` tinyint(4) NOT NULL DEFAULT '0',
  `item_lock_key` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `expire_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  `delete_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  PRIMARY KEY (`ui_id`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_items_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `ui_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `it_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(12) NOT NULL DEFAULT '',
  `stomach` int(10) unsigned NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `endurance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `creature_type` tinyint(4) NOT NULL DEFAULT '0',
  `no_charge` tinyint(4) NOT NULL DEFAULT '0',
  `stat` tinyint(4) NOT NULL DEFAULT '0',
  `item_lock_key` tinyint(4) NOT NULL DEFAULT '0',
  `ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `expire_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  `delete_date` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  PRIMARY KEY (`sdate`,`ui_id`),
  KEY `idx_charac_no_exp_dele_date` (`charac_no`,`expire_date`,`delete_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblab_avatar_socket` (
  `it_id` int(11) NOT NULL DEFAULT '0',
  `jewel_socket` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`it_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fair_pvp_score` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `private_win` int(10) unsigned NOT NULL DEFAULT '0',
  `private_lose` int(10) unsigned NOT NULL DEFAULT '0',
  `private_draw` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_battle_win` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_battle_lose` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_battle_draw` int(10) unsigned NOT NULL DEFAULT '0',
  `relay_battle_2kill` int(10) unsigned NOT NULL DEFAULT '0',
  `successive_win` int(10) unsigned NOT NULL DEFAULT '0',
  `job_score` blob,
  `relay_battle_3kill` int(10) unsigned DEFAULT '0',
  `max_successive_win` int(10) unsigned DEFAULT '0',
  `daily_play_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_play_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pvp_mission_info` blob,
  `give_item` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `fair_pvp_score` VALUES (1,0,0,0,0,0,0,0,0,NULL,0,0,0,'0000-00-00 00:00:00',0x4A010000789C636440004620040126061E30CDCC200EA6591894C0342B832E0336C0C1E004A639195CC134178307D81418E0610801D3BC0C61609A8F21124CF333C4806901867814F3841852C1B430942F02A5451932C0B418942FCE9005A625A07C49861CACEEC305E4199A184C05191690A409270000F5C9074A,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `coin` int(11) unsigned NOT NULL DEFAULT '0',
  `inventory` blob NOT NULL,
  `equipslot` blob NOT NULL,
  `pay_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `event_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `creature` blob NOT NULL,
  `creature_flag` tinyint(4) NOT NULL DEFAULT '0',
  `katagaki` blob NOT NULL,
  `inventory_capacity` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar_coin` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `inventory` VALUES (1,20798,5,0x553B0000789CEDD83D8A02411445E1B2AB4550434119C11F8C8C145C82D06034304CA02B10C4C84C5313333173D631A186821B7011062E4023AD076E606E3381783EE8971DBA3AABD7CEBDA6E8A31966468CEB71985E8C2F16C662FC65615E8C8769E2738A636776AB305B93F008717FF98C2B423CEB3EE3AA10EFEDD8BF9DDE5C39F676EAF46F4E1661AEAF8371EDEF31000000DE4DF4B369B45D568C4776CB8FC4785676F25E05000000BC047F2C845912E383C53931BE5B5C10E3A4E8E47FFAFE646F156FFAFE66B1B863F8EF628AF8D36216140000000000000000000000F0BF1E0D3917CD,0xDC020000789C63609C91C3C0C0902D289BA1C4000387B9191858D903E3F919680918433481A4C79C3E17190C9B79096A76B000926CE2475524C9B0B9C000489EE6618E90C6B0998FA0E635377EB2321CF2F929294286CDC20E40F242654B35199A29028C1F4381A442CF5F1F72349BC401C99649D5DA5476154D0100A56D19B9,0,0,0x4E180000789CEDC18100000000C3A0F953DFE004550100000000003C03184E0001,0,'',0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL AUTO_INCREMENT,
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_name` varchar(20) NOT NULL DEFAULT '',
  `letter_text` varchar(255) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`letter_id`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE,
  KEY `idx_reg_date` (`reg_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `letter_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_name` varchar(20) NOT NULL DEFAULT '',
  `letter_text` varchar(255) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sdate`,`letter_id`),
  KEY `idx_charac_no` (`charac_no`) USING BTREE,
  KEY `idx_reg_date` (`reg_date`) USING BTREE,
  KEY `idx_letter_del_id` (`letter_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_avatar_coin` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `avatar_coin` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_avatar_coin` VALUES (1,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postal` (
  `postal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `send_charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_name` varchar(20) NOT NULL DEFAULT '',
  `receive_charac_no` int(11) NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_info` int(11) NOT NULL DEFAULT '0',
  `endurance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `receive_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `avata_flag` tinyint(4) NOT NULL DEFAULT '0',
  `unlimit_flag` tinyint(4) NOT NULL DEFAULT '0',
  `seal_flag` tinyint(4) NOT NULL DEFAULT '0',
  `creature_flag` tinyint(4) NOT NULL DEFAULT '0',
  `postal` int(11) NOT NULL DEFAULT '0',
  `letter_id` int(11) NOT NULL DEFAULT '0',
  `extend_info` int(11) NOT NULL DEFAULT '0',
  `ipg_db_id` tinyint(4) NOT NULL DEFAULT '0',
  `ipg_transaction_id` int(11) NOT NULL DEFAULT '0',
  `ipg_nexon_id` varchar(32) NOT NULL DEFAULT '',
  `auction_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `random_option` varbinary(14) NOT NULL DEFAULT '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`postal_id`),
  KEY `idx_send_charac_no` (`send_charac_no`) USING BTREE,
  KEY `idx_receive_charac_no` (`receive_charac_no`) USING BTREE,
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `postal` VALUES (1,'2020-09-04 00:00:00',0,'å·²èªè­‰çš„å†’éšªå®',1,2660410,1,0,0,0,0,0,'2020-09-03 23:11:58',1,0,0,0,0,0,1,0,0,0,'',0,0x0000000000000000000000000000,0,0,0x00000000000000000000);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postal_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `postal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `send_charac_no` int(11) NOT NULL DEFAULT '0',
  `send_charac_name` varchar(20) NOT NULL DEFAULT '',
  `receive_charac_no` int(11) NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_info` int(11) NOT NULL DEFAULT '0',
  `endurance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_option` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amplify_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',
  `receive_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `avata_flag` tinyint(4) NOT NULL DEFAULT '0',
  `unlimit_flag` tinyint(4) NOT NULL DEFAULT '0',
  `seal_flag` tinyint(4) NOT NULL DEFAULT '0',
  `creature_flag` tinyint(4) NOT NULL DEFAULT '0',
  `postal` int(11) NOT NULL DEFAULT '0',
  `letter_id` int(11) NOT NULL DEFAULT '0',
  `extend_info` int(11) NOT NULL DEFAULT '0',
  `ipg_db_id` tinyint(4) NOT NULL DEFAULT '0',
  `ipg_transaction_id` int(11) NOT NULL DEFAULT '0',
  `ipg_nexon_id` varchar(32) NOT NULL DEFAULT '',
  `auction_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `random_option` varbinary(14) NOT NULL DEFAULT '',
  `seperate_upgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` varbinary(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`sdate`,`postal_id`),
  KEY `idx_send_charac_no` (`send_charac_no`) USING BTREE,
  KEY `idx_receive_charac_no` (`receive_charac_no`) USING BTREE,
  KEY `idx_occ_time` (`occ_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `remain_sp` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_slot` blob NOT NULL,
  `request_sp` blob NOT NULL,
  `sp_garbage` int(11) unsigned NOT NULL DEFAULT '0',
  `used_sp` int(11) unsigned NOT NULL DEFAULT '0',
  `remain_sp_2nd` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_slot_2nd` blob NOT NULL,
  `request_sp_2nd` blob NOT NULL,
  `skill_slot_lethe` blob NOT NULL,
  `lethe_flag` tinyint(4) NOT NULL DEFAULT '0',
  `skill_slot_lethe_2nd` blob NOT NULL,
  `lethe_flag_2nd` tinyint(4) NOT NULL DEFAULT '0',
  `remain_sfp_2nd` int(11) unsigned NOT NULL DEFAULT '0',
  `remain_sfp_1st` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_command` blob NOT NULL,
  `script_version` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `skill` VALUES (1,170,0x98010000789C6360400056463D4686210CB6326D63DAC1B8997D1DE34AC67D43DA270C0C002CD90530,'',0,0,180,0x98010000789C6365D4635CC9C8302CC056A66D4C3B1837B3AF1B06FE01002B8A0471,'','',0,'',0,0,0,0xC8000000789C6360181E000000C80001,3);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_fair_pvp` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `remain_sp` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_slot` blob,
  `sp_garbage` int(10) unsigned NOT NULL DEFAULT '0',
  `used_sp` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_slot_lethe` blob,
  `lethe_flag` tinyint(4) NOT NULL DEFAULT '0',
  `remain_sp_2nd` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_slot_2nd` blob,
  `skill_slot_lethe_2nd` blob,
  `lethe_flag_2nd` tinyint(4) NOT NULL DEFAULT '0',
  `remain_sfp_1st` smallint(5) unsigned NOT NULL DEFAULT '0',
  `remain_sfp_2nd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `skill_command` blob,
  `script_version` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_index` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `job` mediumint(9) NOT NULL DEFAULT '100',
  `skill_idx` mediumint(9) NOT NULL DEFAULT '0',
  `skill_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`no`),
  KEY `idx_job` (`job`) USING BTREE,
  KEY `idx_skill` (`skill_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1725 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `skill_index` VALUES (1,0,1,'æ ¼æ“‹'),(2,0,2,'é¬¼å°ç '),(3,0,3,'è‡ªå‹•æ ¼æ“‹'),(4,0,4,'å…‰åŠç²¾é€š'),(5,0,5,'é¬¼æ–¬'),(6,0,6,'å™¬éˆé¬¼æ–¬'),(7,0,7,'é€†è½‰åæ“Š'),(8,0,8,'ä¸‰æ®µæ–¬'),(9,0,9,'æ‹”åˆ€æ–¬'),(10,0,11,'é€£çªåˆº'),(11,0,12,'çŸ­åŠç²¾é€š'),(12,0,13,'å¤ªåˆ€ç²¾é€š'),(13,0,14,'å·¨åŠç²¾é€š'),(14,0,15,'éˆå™¨ç²¾é€š'),(15,0,16,'éŠ€å…‰è½åˆƒ'),(16,0,17,'ç©ºä¸­é€£æ–¬'),(17,0,18,'æ†‘ä¾'),(18,0,19,'è¡€æ°£å–šé†’'),(19,0,20,'åœ°è£‚ Â· æ³¢å‹•åŠ'),(20,0,21,'å†°åˆƒ Â· æ³¢å‹•åŠ'),(21,0,22,'çˆ†ç‚Ž Â· æ³¢å‹•åŠ'),(22,0,23,'å—œè¡€'),(23,0,24,'æ€’æ°£çˆ†ç™¼'),(24,0,25,'é¬¼ç¥žâ€§å¡è´Š'),(25,0,27,'æ­¦å™¨å¥§ç¾©'),(26,0,29,'æš—ä¹‹è¦ªå’Œ'),(27,0,30,'æš—æœˆé™è‡¨'),(28,0,31,'å—œé­‚ä¹‹æ‰‹'),(29,0,32,'æ³¢å‹•çˆ†ç™¼'),(30,0,33,'å…‰åŠæŽŒæ¡'),(31,0,34,'æ­»äº¡æŠ—æ‹’'),(32,0,35,'å°å°è§£é™¤'),(33,0,36,'é¬¼ç¥žâ€§å†°éœœè–©äºž'),(34,0,37,'ç–¾å½±æ‰‹'),(35,0,38,'ç ´æ¥µå…µåˆƒ'),(36,0,39,'æ­¦å™¨ç¯€åˆ¶'),(37,0,40,'æš´èµ°'),(38,0,41,'é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾è’™'),(39,0,42,'é¬¼é£Ÿ'),(40,0,43,'è‰ä¸Šé£›'),(41,0,44,'æ­»äº¡å¢“ç¢‘'),(42,0,46,'ä¸ŠæŒ‘'),(43,0,47,'æ³¢å‹•åˆ»å°'),(44,0,49,'å¾Œè·³æ–¬'),(45,0,50,'é‚ªå…‰æ–¬'),(46,0,51,'ä¿®ç¾…é‚ªå…‰æ–¬'),(47,0,52,'æ®ºæ„æ³¢å‹•'),(48,0,53,'æŒ«æŠ˜æ„å¿—'),(49,0,55,'æ®ºæ°£æ„ŸçŸ¥'),(50,0,56,'ç‹‚æˆ°å£«é‡ç”²å°ˆç²¾'),(51,0,57,'é‚ªå…‰æ³¢å‹•é™£'),(52,0,58,'è£‚æ³¢æ–¬'),(53,0,60,'é¬¼å½±é–ƒ'),(54,0,61,'é˜¿ä¿®ç¾…æ¿ç”²å°ˆç²¾'),(55,0,62,'ç„¡é›™æ³¢'),(56,0,63,'è¡€æ°£æ—ºç››'),(57,0,64,'åå­—æ–¬'),(58,0,65,'å´©å±±æ“Š'),(59,0,67,'è£â€§é¬¼åŠè¡“'),(60,0,68,'ç ´è»å‡é¾æ“Š'),(61,0,72,'çŒ›é¾æ–·ç©ºæ–¬'),(62,0,73,'å¹»å½±åŠèˆž'),(63,0,74,'ä¸å‹•æ˜ŽçŽ‹é™£'),(64,0,75,'é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž'),(65,0,76,'è¡€ä¹‹ç‹‚æš´'),(66,0,77,'æœˆå…‰æ–¬'),(67,0,79,'å—œé­‚å°é­”æ–¬'),(68,0,80,'æ»¿æœˆæ–¬'),(69,0,81,'å´©å±±è£‚åœ°æ–¬'),(70,0,82,'é¬¼ç¥žâ€§å†¥ç‚Žå¡æ´›'),(71,0,84,'é¬¼ç¥žâ€§æ®˜å½±å‡±è³ˆ'),(72,0,85,'é­”ç„è¡€å‰Ž'),(73,0,86,'æ¥µ Â· é¬¼åŠè¡“ (æš´é¢¨å¼)'),(74,0,87,'æ€–æ‹‰ä¿®'),(75,0,88,'æ³¢å‹•çœ¼:çµ‚çµæŠ€'),(76,0,89,'ææ‡¼å…‰ç’°'),(77,0,90,'é®®è¡€ä¹‹æ†¶'),(78,0,91,'æ¥µ Â· é¬¼åŠè¡“ (æ–¬éµå¼)'),(79,0,92,'å¿ƒçœ¼'),(80,0,93,'å™¬é­‚è€…å¸ƒç”²å°ˆç²¾'),(81,0,94,'åŠé­‚è¼•ç”²å°ˆç²¾'),(82,0,95,'å¢“ç¢‘ä¸‰çµ•é™£'),(83,0,96,'é¬¼ç¥žâ€§å†°æ™¶è–©äºž'),(84,0,97,'ç ´ç©ºæ‹”åˆ€æ–¬'),(85,0,98,'ç ´è»æ–¬é¾æ“Š'),(86,0,99,'æ¥µç‚Ž Â· è£‚æ³¢åŠ'),(87,0,100,'æ¥µå†° Â· è£‚æ³¢åŠ'),(88,0,101,'è¡€æ°£çˆ†ç™¼'),(89,0,102,'æ»…é­‚ä¹‹æ‰‹'),(90,0,103,'è¡€æ°£ä¹‹åˆƒ'),(91,0,105,'æµå¿ƒ'),(92,0,107,'æµå¿ƒ : åˆº'),(93,0,108,'æµå¿ƒ : èº'),(94,0,109,'æµå¿ƒ : å‡'),(95,0,110,'æµå¿ƒ : ç‹‚'),(96,0,111,'é¬¼å½±éž­'),(97,0,112,'é¬¼å½±ä¸‰æ“ŠåŠ'),(98,0,115,'å¼·åŒ– - é¬¼åŠéž­'),(99,0,116,'å¼·åŒ– - é¬¼å½±ä¸‰æ“ŠåŠ'),(100,0,139,'å¼·åŒ– - è¡€æ°£å–šé†’'),(101,0,140,'å¼·åŒ– - åœ°è£‚ Â· æ³¢å‹•åŠ'),(102,0,141,'å¼·åŒ– - åå­—æ–¬'),(103,0,142,'å¼·åŒ– - é¬¼æ–¬'),(104,0,143,'å¼·åŒ– - ä¸‰æ®µæ–¬'),(105,0,144,'å¼·åŒ– - é€†è½‰åæ“Š'),(106,0,145,'å¼·åŒ– - è‡ªå‹•æ ¼æ“‹'),(107,0,146,'å¼·åŒ– - é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾'),(108,0,147,'å¼·åŒ– - æ†‘ä¾'),(109,0,148,'å¼·åŒ– - æ­»äº¡æŠ—æ‹’'),(110,0,149,'å¼·åŒ– - æš´èµ°'),(111,0,150,'å¼·åŒ– - æ®ºæ„æ³¢å‹•'),(112,0,151,'å¼·åŒ– - æ³¢å‹•åˆ»å°'),(113,0,152,'å¼·åŒ– - çŒ›é¾æ–·ç©ºæ–¬'),(114,0,153,'å¼·åŒ– - éŠ€å…‰è½åˆƒ'),(115,0,154,'å¼·åŒ– - æ‹”åˆ€æ–¬'),(116,0,155,'å¼·åŒ– - æœˆå…‰æ–¬'),(117,0,156,'å¼·åŒ– - é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž'),(118,0,157,'å¼·åŒ– - å´©å±±æ“Š'),(119,0,158,'å¼·åŒ– - å—œé­‚å°é­”æ–¬'),(120,0,159,'å¼·åŒ– - è£‚æ³¢æ–¬'),(121,0,160,'å¼·åŒ– - é¬¼å°ç '),(122,0,161,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(123,0,162,'å¼·åŒ– - é€£çªåˆº'),(124,0,163,'å¼·åŒ– - æ ¼æª”'),(125,0,164,'å¼·åŒ– - é¬¼ç¥žâ€§å¡è´Š'),(126,0,165,'å¼·åŒ– - å—œé­‚ä¹‹æ‰‹'),(127,0,166,'å¼·åŒ– - æ€’æ°£çˆ†ç™¼'),(128,0,167,'å¼·åŒ– - å´©å±±è£‚åœ°æ–¬'),(129,0,168,'å¼·åŒ– - è¡€æ°£ä¹‹åˆƒ'),(130,0,169,'å¾Œè·³'),(131,0,172,'è¼•ç”²ç²¾é€š'),(132,0,173,'é‡ç”²ç²¾é€š'),(133,0,174,'åŸºç¤Žç²¾é€š'),(134,0,175,'èºç¿”'),(135,0,176,'é å¤è¨˜æ†¶'),(136,0,177,'æŠ•æ“²ç²¾é€š'),(137,0,178,'ç‰©ç†èƒŒæ“Š'),(138,0,179,'ç‰©å“åˆ†è§£'),(139,0,180,'ä¸å±ˆæ„å¿—'),(140,0,181,'ç²¾å·¥'),(141,0,182,'ç´¡ç¹”'),(142,0,183,'æ©Ÿæ¢°'),(143,0,184,'ç…‰é‡‘'),(144,0,185,'çš®ç”²ç²¾é€š'),(145,0,186,'ç‰©ç†æš´æ“Š'),(146,0,187,'å¸ƒç”²ç²¾é€š'),(147,0,188,'é­”æ³•æš´æ“Š'),(148,0,189,'é­”æ³•èƒŒæ“Š'),(149,0,190,'å—èº«è¹²ä¼'),(150,0,191,'é­”æ³•è³¦äºˆ'),(151,0,192,'è£½ä½œå¬å–šäººå¶'),(152,0,193,'éŠé‡‘è¡“'),(153,0,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(154,0,195,'ç”Ÿå‘½ä¹‹æº'),(155,0,196,'æ¿ç”²ç²¾é€š'),(156,0,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(157,0,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(158,0,201,'æ¥µé€Ÿæˆé•·'),(159,0,210,'å¼·åŒ– - æ³¢å‹•çˆ†ç™¼'),(160,0,211,'å¼·åŒ– - é‚ªå…‰æ–¬'),(161,0,212,'å¼·åŒ– - çˆ†ç‚Žæ³¢å‹•åŠ'),(162,0,213,'å¼·åŒ– - ç„¡é›™æ³¢'),(163,0,214,'å¼·åŒ– - ä¸å‹•æ˜ŽçŽ‹é™£'),(164,0,215,'å¼·åŒ– - ä¸ŠæŒ‘'),(165,0,216,'å¼·åŒ– - å†°åˆƒ Â· æ³¢å‹•åŠ'),(166,0,217,'å¼·åŒ– - å¹»å½±åŠèˆž'),(167,0,218,'å¼·åŒ– - ç ´è»å‡é¾æ“Š'),(168,0,219,'å¼·åŒ– - æµå¿ƒï¼šåˆº'),(169,0,220,'å¼·åŒ– - æµå¿ƒï¼šèº'),(170,0,221,'å¼·åŒ– - æµå¿ƒï¼šå‡'),(171,0,224,'å¼·åŒ– - é¬¼ç¥žâ€§å†°éœœè–©äºž'),(172,0,225,'å¼·åŒ– - æ­»äº¡å¢“ç¢‘'),(173,0,226,'å¼·åŒ– - é¬¼å½±é–ƒ'),(174,0,227,'å¼·åŒ– - é¬¼ç¥žâ€§å†¥ç‚Žé¬¼ç¥ž'),(175,0,228,'å¼·åŒ– - é¬¼å°ç '),(176,1,1,'éµå±±é '),(177,1,2,'è¹²ä¼'),(178,1,3,'æ“’æœˆç‚Ž'),(179,1,4,'ç¢Žéª¨'),(180,1,5,'ä¸Šå‹¾æ‹³'),(181,1,6,'ä¸‹æ®µè¸¢'),(182,1,7,'é‹¼ç­‹éµéª¨'),(183,1,8,'åˆ†èº«'),(184,1,9,'èƒŒæ‘”'),(185,1,10,'èƒŒæ‘”å¼·åŒ–'),(186,1,11,'é›·éœ†èƒŒæ‘”'),(187,1,12,'å¿µæ°£æ³¢'),(188,1,13,'æ‹‹æ²™'),(189,1,14,'ä¼è™Žéœ¸çŽ‹æ‹³'),(190,1,15,'ç…å­å¼'),(191,1,16,'èžºæ—‹å¿µæ°£å ´'),(192,1,17,'é·¹è¸'),(193,1,18,'èžºæ—‹å½—æ˜Ÿè½'),(194,1,19,'å¯¸æ‹³'),(195,1,20,'éœ¸é«”è­·ç”²'),(196,1,21,'å¼·åˆ¶ - å¿µæ°£æ³¢'),(197,1,22,'æ‘”æŠ€å¼·åŒ–'),(198,1,29,'å…‰ä¹‹è¦ªå’Œ'),(199,1,30,'å…‰ä¹‹å…µåˆƒ'),(200,1,31,'é¢¨ä¹‹æ°£æ¯'),(201,1,32,'åŠ‡æ¯’æŠµæŠ—'),(202,1,33,'èµ°ç«å…¥é­”'),(203,1,34,'æ‹³å¥—æŽŒæ¡'),(204,1,35,'å¿µæ°£æ„ŸçŸ¥'),(205,1,36,'çƒˆæ—¥å…‰è¼'),(206,1,37,'å¼·æ‹³'),(207,1,38,'å¡—æ¯’'),(208,1,39,'å¼±é»žæ„ŸçŸ¥'),(209,1,40,'å¿µæ°£ç’°ç¹ž'),(210,1,41,'å¿µæ°£åˆ†è§£'),(211,1,42,'å¿µæ°£ç½©'),(212,1,43,'é›™é‡æŠ•æ“²'),(213,1,44,'æŒ‘é‡'),(214,1,45,'çˆªç²¾é€š'),(215,1,46,'å‰è¸¢'),(216,1,49,'æ‹‹æŠ•'),(217,1,50,'æš´åŠ›æŠ“å–'),(218,1,51,'æ»‘è¡ŒæŠ“å–'),(219,1,52,'æŠ•ç¶²'),(220,1,54,'é‡Žè »è¡æ’ž'),(221,1,55,'æŠ“è½Ÿç‚®'),(222,1,56,'æ­¦é¬¥è¼•ç”²å°ˆç²¾'),(223,1,57,'æŸ”é“å®¶å®¶è¼•ç”²å°ˆç²¾'),(224,1,58,'æ—‹é¢¨è…¿'),(225,1,60,'ç£šè¥²'),(226,1,62,'ç©ºçµžéŒ˜'),(227,1,63,'æœ«æ—¥é¢¨æš´'),(228,1,64,'æ­»äº¡æ¯’éœ§'),(229,1,65,'çŒ›æ¯’ä¹‹è¡€'),(230,1,66,'æŠ“å–å¥§ç¾©'),(231,1,67,'åƒè“®æ€’æ”¾'),(232,1,68,'é–ƒé›»ä¹‹èˆž'),(233,1,69,'å¹»å½±çˆ†ç¢Ž'),(234,1,70,'æ­¦ç¥žæ­¥'),(235,1,71,'æ­¦ç¥žå¼·è¸¢'),(236,1,72,'äº‚èˆž Â· åƒè‘‰èŠ±'),(237,1,73,'è¡—éœ¸é‡ç”²å°ˆç²¾'),(238,1,74,'ç‹‚Â·éœ¸çŽ‹æ‹³'),(239,1,75,'æ¯’å½±é‡'),(240,1,76,'æ¯’é›·å¼•çˆ†'),(241,1,77,'è¡—é ­é¢¨æš´'),(242,1,78,'è“„å¿µç‚®'),(243,1,79,'å¿µç¸ : é¾è™Žå˜¯'),(244,1,80,'å´©æ‹³'),(245,1,81,'æŠ˜é ¸'),(246,1,82,'å¹»å½±é€£ç’°è¸¢'),(247,1,83,'æ˜‡é¾æ‹³'),(248,1,84,'ç–¾é¢¨è¿½æ“Š'),(249,1,85,' ç–¾é¢¨é€£æ“Š'),(250,1,86,'é‡‘å‰›ç¢Ž'),(251,1,87,'éœ¹é‚è‚˜æ“Š'),(252,1,88,'è£‚çŸ³ç ´å¤©'),(253,1,89,'åœ°ç„æ–ç±ƒ'),(254,1,90,'å¿µç¸ : é›·é¾å‡ºæµ·'),(255,1,91,'æŸ”åŒ–è‚Œè‚‰'),(256,1,97,'é¬¥æ°£å¸«å¸ƒç”²å°ˆç²¾'),(257,1,98,'ç©¶æ¥µå¿µæ°£ç½©'),(258,1,99,'çŒ›æ¯’æ“’æœˆç‚Ž'),(259,1,100,'ç‹‚ç…æ€’å¼'),(260,1,101,'ç©ºçµžé€£éŒ˜'),(261,1,102,'ç ´ç¢Žæ‹³'),(262,1,103,'å‡é¾éœ¸æ‹³'),(263,1,104,'çˆ†ç¢Žç£šè£‚'),(264,1,105,'æ­»äº¡æ–ç±ƒ'),(265,1,106,'è£‚åœ°é£›æ²™'),(266,1,139,'å¼·åŒ– - æ˜‡é¾æ‹³'),(267,1,140,'å¼·åŒ– - å¿µæ°£æ³¢'),(268,1,141,'å¼·åŒ– - ä¸‹æ®µè¸¢'),(269,1,142,'å¼·åŒ– - èƒŒæ‘”'),(270,1,143,'å¼·åŒ– - è¹²ä¼'),(271,1,144,'å¼·åŒ– - èžºæ—‹å¿µæ°£å ´'),(272,1,145,'å¼·åŒ– - å¿µæ°£ç’°ç¹ž'),(273,1,146,'å¼·åŒ– - éµå±±é '),(274,1,147,'å¼·åŒ– - å¯¸æ‹³'),(275,1,148,'å¼·åŒ– - ç‹‚ Â· éœ¸çŽ‹æ‹³'),(276,1,149,'å¼·åŒ– - æŠ•ç¶²'),(277,1,150,'å¼·åŒ– - ç©ºçµžéŒ˜'),(278,1,151,'å¼·åŒ– - èžºæ—‹å½—æ˜Ÿè½'),(279,1,152,'å¼·åŒ– - é‡Žè »è¡æ’ž'),(280,1,153,'å¼·åŒ– - é‹¼ç­‹éµéª¨'),(281,1,154,'å¼·åŒ– - å¿µç¸ : é¾è™Žå˜¯'),(282,1,155,'å¼·åŒ– - ç–¾é¢¨è¿½æ“Š'),(283,1,156,'å¼·åŒ– - é–ƒé›»ä¹‹èˆž'),(284,1,157,'å¼·åŒ– - æ‹‹æ²™'),(285,1,158,'å¼·åŒ– - è¡—é ­é¢¨æš´'),(286,1,159,'å¼·åŒ– - é‡‘å‰›ç¢Ž'),(287,1,160,'å¼·åŒ– - åœ°ç„æ–ç±ƒ'),(288,1,161,'å¼·åŒ– - é›·éœ†èƒŒæ‘”'),(289,1,162,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(290,1,163,'å¼·åŒ– - ä¸Šå‹¾æ‹³'),(291,1,164,'å¼·åŒ– - å‰è¸¢'),(292,1,165,'å¼·åŒ– - åˆ†èº«'),(293,1,166,'å¼·åŒ– - é·¹è¸'),(294,1,167,'å¼·åŒ– - å¿µæ°£ç½©'),(295,1,168,'å¼·åŒ– - å¹»å½±çˆ†ç¢Ž'),(296,1,169,'å¾Œè·³'),(297,1,172,'è¼•ç”²ç²¾é€š'),(298,1,173,'é‡ç”²ç²¾é€š'),(299,1,174,'åŸºç¤Žç²¾é€š'),(300,1,175,'èºç¿”'),(301,1,176,'é å¤è¨˜æ†¶'),(302,1,177,'æŠ•æ“²ç²¾é€š'),(303,1,178,'ç‰©ç†èƒŒæ“Š'),(304,1,179,'ç‰©å“åˆ†è§£'),(305,1,180,'ä¸å±ˆæ„å¿—'),(306,1,181,'ç²¾å·¥'),(307,1,182,'ç´¡ç¹”'),(308,1,183,'æ©Ÿæ¢°'),(309,1,184,'ç…‰é‡‘'),(310,1,185,'çš®ç”²ç²¾é€š'),(311,1,186,'ç‰©ç†æš´æ“Š'),(312,1,187,'å¸ƒç”²ç²¾é€š'),(313,1,188,'é­”æ³•æš´æ“Š'),(314,1,189,'é­”æ³•èƒŒæ“Š'),(315,1,190,'å—èº«è¹²ä¼'),(316,1,191,'é­”æ³•è³¦äºˆ'),(317,1,192,'è£½ä½œå¬å–šäººå¶'),(318,1,193,'éŠé‡‘è¡“'),(319,1,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(320,1,195,'ç”Ÿå‘½ä¹‹æº'),(321,1,196,'æ¿ç”²ç²¾é€š'),(322,1,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(323,1,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(324,1,201,'æ¥µé€Ÿæˆé•·'),(325,1,210,'å¼·åŒ– - ç…å­å¼'),(326,1,211,'å¼·åŒ– - å¿µç¸ï¼šé›·é¾å‡ºæµ·'),(327,1,212,'å¼·åŒ– - å´©æ‹³'),(328,1,214,'å¼·åŒ– - ç¢Žéª¨'),(329,1,215,'å¼·åŒ– - å¹»å½±é€£ç’°è¸¢'),(330,1,216,'å¼·åŒ– - æ“’æœˆç‚Ž'),(331,1,217,'å¼·åŒ– - æ¯’å½±é‡'),(332,1,218,'å¼·åŒ– - æ¯’é›·å¼•çˆ†'),(333,1,219,'å¼·åŒ– - è£‚åœ°é£›æ²™'),(334,1,220,'å¼·åŒ– - æ‹‹æŠ•'),(335,1,221,'å¼·åŒ– - æŠ˜é ¸'),(336,1,222,'å¼·åŒ– - æ—‹é¢¨è…¿'),(337,1,223,'å¼·åŒ– - éœ¹é‚è‚˜æ“Š '),(338,1,224,'å¼·åŒ– - è£‚çŸ³ç ´å¤©'),(339,2,1,'çˆ†ç‚Žå½ˆ'),(340,2,2,'å†°å‡å½ˆ'),(341,2,3,'è¿´æ—‹è¸¢'),(342,2,4,'è†æ’ž'),(343,2,5,'çˆ†é ­ä¸€æ“Š'),(344,2,6,'è¸å°„'),(345,2,7,'çž¬è¸¢'),(346,2,8,'èµ·èº«è¿´æ—‹è¸¢'),(347,2,9,'äº‚å°„'),(348,2,10,'é ç¨‹æ ¼æ“‹'),(349,2,11,'å¿«é€Ÿæ‹”æ§'),(350,2,12,'M-137æ ¼æž—æ©Ÿæ§'),(351,2,13,'M-3å™´ç«å™¨'),(352,2,14,'BBQ'),(353,2,15,'ç§»å‹•å°„æ“Š'),(354,2,20,'å›žé ­ä¸€æ“Š'),(355,2,21,'é‡ç«å™¨ç²¾é€š'),(356,2,22,'å·¦è¼ªç²¾é€š'),(357,2,23,'å¿«é€Ÿå¡«è£'),(358,2,26,'å¾©ä»‡åæ“Š'),(359,2,27,'RX-78è¿½æ“Šè€…'),(360,2,28,'Ez-8è‡ªçˆ†è€…'),(361,2,29,'Ex-Sæ¯’è›‡ç‚®'),(362,2,30,'éŠ€å½ˆ'),(363,2,31,'å½ˆè—¥æ”¹è‰¯'),(364,2,32,'ä¸‰é‡æŽ§åˆ¶'),(365,2,33,'ç©ºä¸­å°„æ“Š'),(366,2,34,'é‡ç«å™¨æ‹”æ“Š'),(367,2,35,'æµ®ç©ºæˆªæ“Š'),(368,2,36,'èšç„¦å™´ç«å™¨'),(369,2,37,'æµ®ç©ºéŸ'),(370,2,38,'FM-31æ¦´å½ˆç™¼å°„å™¨'),(371,2,39,'é³å°„ç‚®'),(372,2,40,'åå¦å…‹ç‚®'),(373,2,41,'è“„é›»é³å°„ç‚®'),(374,2,42,'å—œæˆ°è¿½æ“Šè€…'),(375,2,43,'å½è£'),(376,2,44,'é‡ç«å™¨å¥§ç¾©'),(377,2,45,'é‡å­çˆ†å½ˆ'),(378,2,46,'æ©Ÿæ¢°æ”¹è‰¯'),(379,2,47,'æµ®ç©ºå½ˆ'),(380,2,48,'äº¤å‰å°„æ“Š'),(381,2,49,'å½ˆåŒ£æ“´å……'),(382,2,50,'æ©Ÿæ¢°å¼•çˆ†'),(383,2,51,'é›™é·¹è¿´æ—‹'),(384,2,52,'ç ´ç”²å½ˆ'),(385,2,53,'åœ°ç„çƒˆç‚Ž'),(386,2,54,'è¡›æ˜Ÿå…‰æŸ'),(387,2,55,'éŠä¿ çš®ç”²å°ˆç²¾'),(388,2,56,'G-14 æ‰‹é›·'),(389,2,57,'G35L æ„Ÿé›»æ‰‹é›·'),(390,2,58,'G-18C å†°å‡æ‰‹é›·'),(391,2,59,'ç©ºæŠ•æ”¯æ´'),(392,2,60,'æ­»äº¡å·¦è¼ª'),(393,2,61,'é­”å½ˆå°„æ‰‹çš®ç”²å°ˆç²¾'),(394,2,62,'æ½›èƒ½çˆ†ç™¼'),(395,2,63,'ç©ºæˆ°æ©Ÿæ¢° : é¢¨æš´'),(396,2,64,'ç˜‹ç‹‚å± æˆ®'),(397,2,65,'è¡›æ˜Ÿå®šä½'),(398,2,66,'æ­»äº¡å°è¨˜'),(399,2,67,'è“‹æ³¢åŠ ä¹‹æ‹³'),(400,2,68,'é¬¥å¿—ä¹‹æ­Œ'),(401,2,69,'å½ˆè—¥ä¸»å®°'),(402,2,70,'é»‘çŽ«ç‘°ç‰¹ç¨®æˆ°éšŠ'),(403,2,71,'X-1 å£“ç¸®é‡å­ç‚®'),(404,2,72,'å¤šé‡çˆ†é ­'),(405,2,73,'åŠ è¾²ç‚®'),(406,2,74,'å¼·åˆ¶ - åŠ è¾²ç‚®'),(407,2,75,'FM-92 åˆºç ²å½ˆ'),(408,2,76,'é–ƒæ“Šåœ°é›·'),(409,2,77,'C4é ç«¯ç‚¸å½ˆ'),(410,2,78,'å°¼çˆ¾ç‹™æ“Š'),(411,2,79,'G-1æŸ¯æ´›ç´'),(412,2,80,'æ”¹è£ï¼š G-2 æ—‹é›·'),(413,2,81,'æ”¹è£ï¼šG-3 çŒ›ç¦½'),(414,2,82,'å½ˆè—¥æ”¯æ´'),(415,2,83,'æ””æˆªæ©Ÿå·¥å» '),(416,2,91,'æ©Ÿæ¢°å¸«å¸ƒç”²å°ˆç²¾'),(417,2,92,'é‡ç‚®æ‰‹é‡ç”²å°ˆç²¾'),(418,2,101,'è¿´æ—‹æˆªæ“Š'),(419,2,102,'C4é£›é€Ÿç‚¸å½ˆ'),(420,2,103,'M-61åœ°é›·'),(421,2,104,'æ¥µé™å¤šé‡çˆ†é ­'),(422,2,105,'Ez-10åæ“Šè€…'),(423,2,106,'Ex-S Zeroæ¯’è›‡ç‚®'),(424,2,107,'èšç„¦å¯’å†°å™´å°„å™¨'),(425,2,108,'FM-92 SWåˆºå½ˆç‚®'),(426,2,109,'ç ´è£‚å°„æ“Š'),(427,2,110,'æ­¥æ§ç²¾é€š'),(428,2,140,'å¼·åŒ– - çˆ†é ­ä¸€æ“Š'),(429,2,141,'å¼·åŒ– - BBQ'),(430,2,142,'å¼·åŒ– - RX-78è¿½æ“Šè€…'),(431,2,143,'å¼·åŒ– - éŠ€å½ˆ'),(432,2,144,'å¼·åŒ– - é ç¨‹æ ¼æª”'),(433,2,145,'å¼·åŒ– - è¸å°„'),(434,2,146,'å¼·åŒ– - M-3å™´ç«å™¨'),(435,2,147,'å¼·åŒ– - åå¦å…‹ç‚®'),(436,2,148,'å¼·åŒ– - æ©Ÿæ¢°å¼•çˆ†'),(437,2,149,'å¼·åŒ– - G-1æŸ¯æ´›ç´'),(438,2,150,'å¼·åŒ– - äº¤å‰å°„æ“Š'),(439,2,151,'å¼·åŒ– - å½ˆåŒ£æ“´å……'),(440,2,152,'é­”æ”»è½‰æ›'),(441,2,153,'å¼·åŒ– - çž¬è¸¢'),(442,2,154,'å¼·åŒ– - äº‚å°„'),(443,2,155,'å¼·åŒ– - G-14æ‰‹é›·'),(444,2,156,'å¼·åŒ– - åœ°ç„çƒˆç‚Ž'),(445,2,157,'å¼·åŒ– - Ez-8è‡ªçˆ†è€…'),(446,2,158,'å¼·åŒ– - æ””æˆªæ©Ÿå·¥å» '),(447,2,159,'å¼·åŒ– - M-137æ ¼æž—æ©Ÿæ§'),(448,2,160,'å¼·åŒ– - FM-92åˆºå½ˆç‚®'),(449,2,161,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(450,2,162,'å¼·åŒ– - çˆ†ç‚Žå½ˆ'),(451,2,163,'å¼·åŒ– - å†°å‡å½ˆ'),(452,2,164,'å¼·åŒ– - å¾©ä»‡åæ“Š'),(453,2,166,'å¼·åŒ– - è¿´æ—‹è¸¢'),(454,2,167,'å¼·åŒ– - æµ®ç©ºå½ˆ'),(455,2,168,'å¼·åŒ– - è†æ’ž'),(456,2,169,'å¾Œè·³'),(457,2,172,'è¼•ç”²ç²¾é€š'),(458,2,173,'é‡ç”²ç²¾é€š'),(459,2,174,'åŸºç¤Žç²¾é€š'),(460,2,175,'èºç¿”'),(461,2,176,'é å¤è¨˜æ†¶'),(462,2,177,'æŠ•æ“²ç²¾é€š'),(463,2,178,'ç‰©ç†èƒŒæ“Š'),(464,2,179,'ç‰©å“åˆ†è§£'),(465,2,180,'ä¸å±ˆæ„å¿—'),(466,2,181,'ç²¾å·¥'),(467,2,182,'ç´¡ç¹”'),(468,2,183,'æ©Ÿæ¢°'),(469,2,184,'ç…‰é‡‘'),(470,2,185,'çš®ç”²ç²¾é€š'),(471,2,186,'ç‰©ç†æš´æ“Š'),(472,2,187,'å¸ƒç”²ç²¾é€š'),(473,2,188,'é­”æ³•æš´æ“Š'),(474,2,189,'é­”æ³•èƒŒæ“Š'),(475,2,190,'å—èº«è¹²ä¼'),(476,2,191,'é­”æ³•è³¦äºˆ'),(477,2,192,'è£½ä½œå¬å–šäººå¶'),(478,2,193,'éŠé‡‘è¡“'),(479,2,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(480,2,195,'ç”Ÿå‘½ä¹‹æº'),(481,2,196,'æ¿ç”²ç²¾é€š'),(482,2,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(483,2,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(484,2,201,'æ¥µé€Ÿæˆé•·'),(485,2,211,'å¼·åŒ– - æµ®ç©ºæˆªæ“Š'),(486,2,212,'å¼·åŒ– - ç§»å‹•å°„æ“Š'),(487,2,213,'å¼·åŒ– - é›™é·¹è¿´æ—‹'),(488,2,214,'å¼·åŒ– - å¤šé‡çˆ†é ­'),(489,2,215,'å¼·åŒ– - é³å°„ç‚®'),(490,2,216,'å¼·åŒ– - X-1 å£“ç¸®é‡å­ç‚®'),(491,2,217,'å¼·åŒ– - åŠ è¾²ç‚®'),(492,2,218,'å¼·åŒ– - èšç„¦å™´ç«å™¨'),(493,2,219,'å¼·åŒ– - æ”¹è£ï¼šG-2 æ—‹é›·'),(494,2,220,'å¼·åŒ– - æ”¹è£ï¼šG-3 çŒ›ç¦½'),(495,2,221,'å¼·åŒ– - é‡å­çˆ†å½ˆ'),(496,2,222,'å¼·åŒ– - ç©ºæˆ°æ©Ÿæ¢°ï¼šé¢¨æš´'),(497,2,223,'å¼·åŒ– - G35L æ„Ÿé›»æ‰‹é›·'),(498,2,224,'å¼·åŒ– - G18C å†°å‡æ‰‹é›·'),(499,2,225,'å¼·åŒ– - ç ´ç”²å½ˆ'),(500,2,226,'å¼·åŒ– - ç ´è£‚å°„æ“Š'),(501,2,227,'å¼·åŒ– - é–ƒæ“Šåœ°é›·'),(502,2,228,'å¼·åŒ– - C4 é ç«¯ç‚¸å½ˆ'),(503,2,229,'å¼·åŒ– - å°¼çˆ¾ç‹™æ“Š'),(504,2,230,'å¼·åŒ– - Ex-S æ¯’è›‡ç‚®'),(505,2,231,'å¼·åŒ– - ç©ºæŠ•æ”¯æ´'),(506,3,1,'é¾èŠ±éœ¸'),(507,3,2,'é­”æ³•ç§€'),(508,3,3,'æ›¿èº«è‰äºº'),(509,3,4,'é¾ç‰™'),(510,3,5,'ç‚«ç´‹ : ç„¡å±¬æ€§'),(511,3,6,'ç‚«ç´‹ : ç«å±¬æ€§'),(512,3,7,'ç‚«ç´‹ : å†°å±¬æ€§'),(513,3,8,'ç‚«ç´‹ : é—‡å±¬æ€§'),(514,3,9,'ç‚«ç´‹ : å…‰å±¬æ€§'),(515,3,10,'ç‚«ç´‹å¼·å£“'),(516,3,11,'é­”æ³•æ˜Ÿå½ˆ'),(517,3,12,'å¤©æ“Š'),(518,3,13,'ç¢Žéœ¸'),(519,3,14,'è½èŠ±æŽŒ'),(520,3,15,'å‚‘å…‹çˆ†å½ˆ'),(521,3,16,'å†°éœœé›ªäºº'),(522,3,17,'å…‰é›»é°»'),(523,3,18,'æš—å½±å¤œè²“'),(524,3,19,'é­”æ³•è¨˜æ†¶'),(525,3,20,'éž­æ’»'),(526,3,21,'ç²¾éˆå¬å–š : äºžå¾·ç‚Ž'),(527,3,22,'ç²¾éˆå¬å–š : å†°å¥ˆæ–¯'),(528,3,23,'ç²¾éˆå¬å–š : ç‘Ÿå†¥ç‰¹å…‹'),(529,3,24,'ç²¾éˆå¬å–š : é›·æ²ƒæ–¯'),(530,3,25,'å¥‘ç´„å¬å–š : èµ«å¾·çˆ¾'),(531,3,26,'è™›ç„¡ä¹‹çƒ'),(532,3,27,'å‚‘å…‹é™è‡¨'),(533,3,28,'é©…æ•£é­”æ³•'),(534,3,29,'å…ƒç´ é»žç‡ƒ'),(535,3,30,'å¬å–šç¸è·Ÿéš¨'),(536,3,31,'é›·æ—‹'),(537,3,35,'çŸ›ç²¾é€š'),(538,3,36,'æ£æ£’ç²¾é€š'),(539,3,37,'é­”æ³•è­·ç›¾'),(540,3,38,'ç§»å‹•æ–½æ³•'),(541,3,39,'ç‚«ç´‹ç™¼å°„'),(542,3,40,'è‡ªå‹•ç‚«ç´‹'),(543,3,41,'é å¤é­”æ³•æ›¸'),(544,3,42,'ç©ºä¸­æ–½æ”¾  : å‚‘å…‹çˆ†å½ˆ'),(545,3,43,'æŒ‘é‡äººå¶ : èˆ’éœ²éœ²'),(546,3,44,'å¥‘ç´„å¬å–š :é»‘é¨Žå£« æ¡‘å¾·'),(547,3,45,'å¥‘ç´„å¬å–šï¼šé­”ç•ŒèŠ±è¥–ç´¢'),(548,3,46,'å¥‘ç´„å¬å–š :éœ²æ˜“çµ²å¤§å§!'),(549,3,47,'ç²¾éˆå¬å–šï¼šç²¾éˆçŽ‹ä¼Šä¼½'),(550,3,48,'å¬å–šç¸å¼·åŒ–'),(551,3,49,'ç²¾éˆç»ç¥­'),(552,3,50,'é­”åŠ›å°è¨˜'),(553,3,51,'ç»ç¥­æ”»æ“Š : äºžå¾·ç‚Ž'),(554,3,52,'ç»ç¥­æ”»æ“Š : å†°å¥ˆæ–¯'),(555,3,53,'ç»ç¥­æ”»æ“Š : ç‘Ÿå†¥ç‰¹å…‹'),(556,3,54,'ç»ç¥­æ”»æ“Š : é›·æ²ƒæ–¯'),(557,3,55,'å¤©é›·'),(558,3,56,'å†°ç‰†'),(559,3,57,'çƒˆç„°è¡æ“Š'),(560,3,58,'é»‘æ´ž'),(561,3,59,'æ¥µå†°ç››å®´'),(562,3,60,'é­”æ³•è­·ç›¾å¼·åŒ–'),(563,3,61,'ç«ç³»ç²¾é€š'),(564,3,62,'å†°ç³»ç²¾é€š'),(565,3,63,'æš—ç³»ç²¾é€š'),(566,3,64,'å…‰ç³»ç²¾é€š'),(567,3,65,'åœ“èˆžæ£'),(568,3,66,'æµæ˜Ÿé–ƒå½±æ“Š'),(569,3,67,'é­”é¬¥å£«çš®ç”²å°ˆç²¾'),(570,3,68,'å¼·è¥²æµæ˜Ÿæ‰“'),(571,3,69,'ç…Œé¾åƒæœˆåˆ€'),(572,3,73,'å…ƒç´ é›†ä¸­'),(573,3,74,'å±¬æ€§è½Ÿç‚¸'),(574,3,75,'éˆé­‚æ”¯é…'),(575,3,76,'ç²¾éˆå¬å–š : äº¡é­‚é»˜å…‹çˆ¾'),(576,3,77,'ç²¾éˆå¬å–š : æ¥µå…‰æ ¼é›·æž—'),(577,3,78,'ç²¾éˆå¬å–š : å†°å½±é˜¿å¥Žåˆ©'),(578,3,79,'ç²¾éˆå¬å–š : ç«ç„°èµ«ç‘žå…‹'),(579,3,80,'å¥‘ç´„å¬å–š : å¼—åˆ©ç‰¹'),(580,3,81,'å¬å–šç¸ç‹‚åŒ–'),(581,3,82,'å¥‘ç´„å¬å–š : å¾æœè€…å‡±è¥¿'),(582,3,83,'è®Šèº«è²äºžå¨œ'),(583,3,84,'é¬¥ç¥žæ„å¿—'),(584,3,85,'è¦ªå’Œ - æš—å½±å¤œè²“'),(585,3,86,'è¦ªå’Œ - å…‰é›»é°»'),(586,3,87,'è¦ªå’Œ - å†°éœœé›ªäºº'),(587,3,88,'è¦ªå’Œ - å‚‘å…‹çˆ†å½ˆ'),(588,3,89,'å†°å‡ç²‰æœ«'),(589,3,90,'æ­»äº¡ç²‰æœ«'),(590,3,91,'æŽƒæŠŠæŽŒæ¡'),(591,3,92,'æš—å½±æ–—ç¯·'),(592,3,93,'æ”¹é€ èˆ’éœ²éœ²'),(593,3,95,'è®Šç•°è’¼è …æ‹'),(594,3,97,'å¹¸é‹æ£’æ£’ç³–'),(595,3,98,'æ—‹è½‰æŽƒæŠŠ'),(596,3,99,'é¹½é…¸é›²éœ§'),(597,3,100,'æ”¹è‰¯é­”æ³•æ˜Ÿå½ˆ'),(598,3,101,'ç†”å²©è—¥ç“¶'),(599,3,102,'é­”é“å­¸è€…çš®ç”²å°ˆç²¾'),(600,3,103,'åé‡åŠ›è£ç½®'),(601,3,104,'å†°éœœé‘½å­”è»Š'),(602,3,105,'ç‰¹æ–¯æ‹‰ç·šåœˆ'),(603,3,106,'æš´ç‚ŽåŠ ç†±çˆ'),(604,3,107,'å…ƒç´ å¸«å¸ƒç”²å°ˆç²¾'),(605,3,108,'å¬å–šå¸«å¸ƒç”²å°ˆç²¾'),(606,3,109,'èžåˆå·¥è—'),(607,3,110,'æˆåŠŸé æ„Ÿ'),(608,3,111,'å…‰é›»å†°ç‰†'),(609,3,112,'æµæ˜Ÿé›·é€£æ“Š'),(610,3,113,'è™›ç„¡ç«å±±'),(611,3,114,'å½ˆè·³æ—‹è½‰æŽƒæŠŠ'),(612,3,115,'è¶…ç´šè’¼è …æ‹'),(613,3,116,'å¬å–šç¸æ·¨åŒ–'),(614,3,117,'ç‚«ç´‹ç¢Žéœ¸'),(615,3,118,'å¥‘ç´„å¬å–š : æ†¤æ€’çš„æ¡‘å¾·'),(616,3,119,'ç²¾éˆå¬å–š : æ‹‰ç‰¹åˆ©äºž'),(617,3,120,'ç²¾éˆå¬å–š : ç‘Ÿåˆ©æ–¯ç‰¹'),(618,3,121,'ç²¾éˆå¬å–š : å¸Œå¾·'),(619,3,122,'ç²¾éˆå¬å–š : è‰¾éº—è¥¿å©­'),(620,3,123,'ç‚«ç´‹èžåˆ'),(621,3,124,'å¼·åˆ¶ - ç‚«ç´‹èžåˆ'),(622,3,125,'é›™é‡éŒ˜æ“Š'),(623,3,127,'å®šæ™‚ç‚¸å½ˆ'),(624,3,129,'å¬å–šè§£é™¤'),(625,3,130,'é€£æ“Šç²¾é€š'),(626,3,140,'å¼·åŒ– - é­”æ³•è­·ç›¾'),(627,3,141,'å¼·åŒ– - å…‰é›»é°»'),(628,3,142,'å¼·åŒ– - éž­æ’»'),(629,3,143,'å¼·åŒ– - é å¤é­”æ³•æ›¸'),(630,3,144,'å¼·åŒ– - å†°éœœé›ªäºº'),(631,3,145,'å¼·åŒ– - é­”æ³•ç§€'),(632,3,146,'å¼·åŒ– - è½èŠ±æŽŒ'),(633,3,147,'å¼·åŒ– - æ›¿èº«è‰äºº'),(634,3,148,'å¼·åŒ– - å¹¸é‹æ£’æ£’ç³–'),(635,3,149,'å¼·åŒ– - æ”¹è‰¯é­”æ³•æ˜Ÿå½ˆ'),(636,3,150,'å¼·åŒ– - é­”åŠ›å°è¨˜'),(637,3,151,'å¼·åŒ– - ä¸‹ç´šç²¾éˆ'),(638,3,152,'å¼·åŒ– - å‚‘å…‹é™è‡¨'),(639,3,153,'å¼·åŒ– - è‡ªå‹•ç‚«ç´‹'),(640,3,154,'å¼·åŒ– - è™›ç„¡ä¹‹çƒ'),(641,3,155,'å¼·åŒ– - åœ“èˆžæ£'),(642,3,156,'å¼·åŒ– - ç‚«ç´‹'),(643,3,157,'å¼·åŒ– - å…ƒç´ é»žç‡ƒ'),(644,3,158,'å¼·åŒ– - æ¥µå†°ç››å®´'),(645,3,159,'å¼·åŒ– - å¥‘ç´„å¬å–š : èµ«å¾·'),(646,3,160,'å¼·åŒ– - å¥‘ç´„å¬å–š : éœ²æ˜“'),(647,3,161,'å¼·åŒ– - ç²¾éˆå¬å–š : ä¼Šä¼½'),(648,3,162,'å¼·åŒ– - å¼·è¥²æµæ˜Ÿæ‰“'),(649,3,163,'å¼·åŒ– - æŒ‘é‡äººå¶ : èˆ’éœ²'),(650,3,164,'å¼·åŒ– - åé‡åŠ›è£ç½®'),(651,3,165,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(652,3,166,'å¼·åŒ– - å¥‘ç´„å¬å–šï¼šé­”ç•Œ'),(653,3,169,'å¾Œè·³'),(654,3,172,'è¼•ç”²ç²¾é€š'),(655,3,173,'é‡ç”²ç²¾é€š'),(656,3,174,'åŸºç¤Žç²¾é€š'),(657,3,175,'èºç¿”'),(658,3,176,'é å¤è¨˜æ†¶'),(659,3,177,'æŠ•æ“²ç²¾é€š'),(660,3,178,'ç‰©ç†èƒŒæ“Š'),(661,3,179,'ç‰©å“åˆ†è§£'),(662,3,180,'ä¸å±ˆæ„å¿—'),(663,3,181,'ç²¾å·¥'),(664,3,182,'ç´¡ç¹”'),(665,3,183,'æ©Ÿæ¢°'),(666,3,184,'ç…‰é‡‘'),(667,3,185,'çš®ç”²ç²¾é€š'),(668,3,186,'ç‰©ç†æš´æ“Š'),(669,3,187,'å¸ƒç”²ç²¾é€š'),(670,3,188,'é­”æ³•æš´æ“Š'),(671,3,189,'é­”æ³•èƒŒæ“Š'),(672,3,190,'å—èº«è¹²ä¼'),(673,3,191,'é­”æ³•è³¦äºˆ'),(674,3,192,'è£½ä½œå¬å–šäººå¶'),(675,3,193,'éŠé‡‘è¡“'),(676,3,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(677,3,195,'ç”Ÿå‘½ä¹‹æº'),(678,3,196,'æ¿ç”²ç²¾é€š'),(679,3,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(680,3,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(681,3,201,'æ¥µé€Ÿæˆé•·'),(682,3,210,'å¼·åŒ– - å¤©æ“Š'),(683,3,211,'å¼·åŒ– - æš—å½±å¤œè²“'),(684,3,212,'å¼·åŒ– - é¾ç‰™'),(685,3,213,'å¼·åŒ– - é­”æ³•æ˜Ÿå½ˆ'),(686,3,214,'å¼·åŒ– - çƒˆç„°è¡æ“Š'),(687,3,215,'å¼·åŒ– - é›·æ—‹'),(688,3,216,'å¼·åŒ– - å†°ç‰†'),(689,3,217,'å¼·åŒ– - å¤©é›·'),(690,3,218,'å¼·åŒ– - é»‘æ´ž'),(691,3,219,'å¼·åŒ– - ç‚«ç´‹ç™¼å°„'),(692,3,221,'å¼·åŒ– - ç‚«ç´‹å¼·å£“'),(693,3,222,'å¼·åŒ– - é›™é‡éŒ˜æ“Š'),(694,3,223,'å¼·åŒ– - ç‚«ç´‹èžåˆ'),(695,3,224,'å¼·åŒ– - æµæ˜Ÿé–ƒå½±æ“Š'),(696,3,225,'å¼·åŒ– - ç¢Žéœ¸'),(697,3,226,'å¼·åŒ– - ç…Œé¾åƒæœˆåˆ€'),(698,3,227,'å¼·åŒ– - å®šæ™‚ç‚¸å½ˆ'),(699,3,228,'å¼·åŒ– - æš—å½±æ–—ç¯·'),(700,3,229,'å¼·åŒ– - æ—‹è½‰æŽƒæŠŠ'),(701,3,230,'å¼·åŒ– - é¹½é…¸é›²éœ§'),(702,3,231,'å¼·åŒ– - è®Šç•°è’¼è …æ‹'),(703,3,232,'å¼·åŒ– - ç†”å²©è—¥ç“¶'),(704,3,233,'å¼·åŒ– - å†°éœœé‘½å­”è»Š'),(705,3,234,'å¼·åŒ– - ç‰¹æ–¯æ‹‰ç·šåœˆ'),(706,3,235,'å¼·åŒ– - æš´ç‚ŽåŠ ç†±çˆ'),(707,3,236,'å¼·åŒ– - ç²¾éˆå¬å–šï¼šäº¡é­‚'),(708,3,237,'å¼·åŒ– - ç²¾éˆå¬å–šï¼šæ¥µå…‰'),(709,3,238,'å¼·åŒ– - ç²¾éˆå¬å–šï¼šå†°å½±'),(710,3,239,'å¼·åŒ– - ç²¾éˆå¬å–šï¼šç«ç„°'),(711,3,240,'å¼·åŒ– - å¥‘ç´„å¬å–šï¼šå¼—åˆ©'),(712,3,241,'å¼·åŒ– - å¥‘ç´„å¬å–šï¼šé»‘é¨Ž'),(713,4,1,'ç©ºæ–¬æ‰“'),(714,4,2,'ä¿¯è¡'),(715,4,3,'æ“ºå‹•'),(716,4,4,'æ¥µé€Ÿé¢¶é¢¨æ‹³'),(717,4,5,'ç–¾ç©ºæ—‹é¢¨ç ´'),(718,4,7,'æ­¦å™¨ç¥ç¦'),(719,4,8,'è™Žè¥²'),(720,4,10,'åŒ–é­”'),(721,4,11,'è½é³³éŒ˜'),(722,4,13,'æ„å¿µé©…å‹•'),(723,4,14,'æŠ€å·§ç²¾é€š'),(724,4,15,'æˆ°ç’°ç²¾é€š'),(725,4,16,'æ‹³æŠ€ç²¾é€š'),(726,4,17,'çµ„åˆç²¾é€š'),(727,4,18,'ç¡¬æ‹³ç²¾é€š'),(728,4,19,'å¤©ç±Ÿä¹‹éŸ³'),(729,4,20,'å®ˆè­·å¾½ç« '),(730,4,21,'ç”Ÿå‘½æ³‰æº'),(731,4,22,'è–å…‰å®ˆè­·'),(732,4,23,'å…‰ä¹‹å¾©ä»‡'),(733,4,24,'å¤©å ‚è«§éŸ³'),(734,4,25,'éˆé­‚çŠ§ç‰²'),(735,4,26,'è–ç™’ä¹‹é¢¨'),(736,4,27,'è–å…‰æ²ç›¾'),(737,4,28,'è–å…‰çƒ'),(738,4,29,'æ‹³æ°£'),(739,4,30,'ç¥žè–åæ“Š'),(740,4,31,'è–æ‹³é€£æ“Š'),(741,4,33,'ç ´ç¢Žä¹‹æ¶'),(742,4,34,'è–é¨Žå£«æ¿ç”²å°ˆç²¾'),(743,4,35,'å¹»å½±åŒ–èº«'),(744,4,36,'é›™é‡å¹»å½±'),(745,4,37,'å¤©è­´é¢¶é¢¨'),(746,4,38,'ç ´é­”ç¬¦'),(747,4,39,'å£“åˆ¶ç¬¦'),(748,4,40,'è½é›·ç¬¦'),(749,4,41,'æ˜Ÿè½æ‰“'),(750,4,42,'æ€¥é€Ÿé–ƒé¿'),(751,4,43,'å…‰ä¹‹æ‹³åˆƒ'),(752,4,45,'æ¦®è­½ç¥ç¦'),(753,4,47,'è„ˆè¼ª : çƒˆç„°'),(754,4,48,'è„ˆè¼ª : æ›œæ—¥'),(755,4,49,'ç‹‚äº‚éŒ˜æ“Š'),(756,4,50,'å·¨æ—‹é¢¨'),(757,4,51,'ç·©æ…¢ç™’åˆ'),(758,4,52,'æ·¨åŒ–'),(759,4,53,'å¤©ä½¿ç¥ç¦'),(760,4,54,'ç¥žçš„æ©è³œ'),(761,4,55,'å¿«é€Ÿç™’åˆ'),(762,4,56,'ä¿¯è¡ç›´æ‹³'),(763,4,57,'ä¿¯è¡è…¹æ‹³'),(764,4,58,'ä¿¯è¡ç¿”æ‹³'),(765,4,61,'ç›´æ‹³è¡æ“Š'),(766,4,63,'å‹¾æ‹³è¿½æ“Š'),(767,4,64,'æƒ¡é­”ä¹‹æ‰‹'),(768,4,65,'å¼·åˆ¶ - æƒ¡é­”ä¹‹æ‰‹'),(769,4,66,'æ½›é¾'),(770,4,67,'é©…é­”éœ‡æ‡¾'),(771,4,68,'é©…é­”å¸«å¸ƒç”²å°ˆç²¾'),(772,4,69,'å¼ç¥ž : çŽ„æ­¦'),(773,4,70,'å¼ç¥ž : ç™½è™Ž'),(774,4,73,'å‹åˆ©ä¹‹çŸ›'),(775,4,74,'æ‡ºæ‚”ä¹‹éŽš'),(776,4,75,'ç¥žè–çµ„åˆæ‹³'),(777,4,76,'è–æ‹³æ¶æ“Š'),(778,4,77,'çž¬æ‹³'),(779,4,78,'åˆºæ‹³çŒ›æ“Š'),(780,4,81,'æ­£ç¾©å¯©åˆ¤'),(781,4,82,'å·¨å…µç²¾é€š'),(782,4,83,'æˆ°æ–§ç²¾é€š'),(783,4,84,'å¤©å•Ÿä¹‹ç '),(784,4,85,'ç–¾é¢¨æ‰“'),(785,4,86,'ä¿¡å¿µå…‰ç’°'),(786,4,87,'æ¥µé™ç‡ƒç‡’'),(787,4,88,'ç„¡é›™æ“Š'),(788,4,89,'é¬¥å¿—æ•£ç™¼'),(789,4,90,'æ³¯æ»…ç¥žæ“Š'),(790,4,91,'è—æ‹³è–ä½¿çš„è¼•ç”²ç²¾é€š'),(791,4,92,'é©…é­”å¸«æ¿ç”²å°ˆç²¾'),(792,4,93,'è’¼é¾æ“Š'),(793,4,96,'é©…é­”å¸«é‡ç”²å°ˆç²¾'),(794,4,97,'å‹‡æ°£æ©å¯µ'),(795,4,98,'å®ˆè­·æ©è³œ'),(796,4,99,'å‡å¤©é™£'),(797,4,100,'é»‘æš—åˆ‡å‰²'),(798,4,101,'å¼ç¥žï¼šæ®¤'),(799,4,103,'åˆºæ‹³ç‹‚æ“Š'),(800,4,104,'ç ´é­‚çµ„åˆæ‹³'),(801,4,105,'ç‹‚æš´éŒ˜æ“Š'),(802,4,106,'æœ±é›€ç¬¦'),(803,4,107,'è–å…‰åå­—'),(804,4,108,'è–å…‰ç‰ç’ƒç¢Ž'),(805,4,109,'é›™å­æ²ç›¾'),(806,4,110,'å¼ç¥ž : çœŸçŽ„æ­¦'),(807,4,111,'æ–·ç©ºéŒ˜æ“Š'),(808,4,113,'è¿´æ—‹é£›é®'),(809,4,114,'é®åˆ€ç²¾é€š'),(810,4,115,'åŽ„é‹ä¹‹è¼ª'),(811,4,116,'å¾©ä»‡ä¹‹åˆº'),(812,4,117,'é»‘æš—ä¹‹è§¸'),(813,4,118,'è£‚åœ°æ¶'),(814,4,119,'é­”åŒ– : æœ«æ—¥å¯©åˆ¤è€…'),(815,4,120,'è™•åˆ‘'),(816,4,121,'æƒ¡é­”è©›å’’'),(817,4,122,'æƒ¡é­”å–šé†’'),(818,4,123,'æƒ¡é­”ä¹‹åŠ›'),(819,4,124,'æ­»äº¡åˆ‡å‰²'),(820,4,125,'é»‘æš—æ¬Šèƒ½'),(821,4,126,'å¾©ä»‡è€…é‡ç”²å°ˆç²¾'),(822,4,131,'å¢®è½ä¹‹é­‚'),(823,4,133,'åœ°ç„ä¹‹é–€'),(824,4,134,'æœ«æ—¥æµ©åŠ«'),(825,4,140,'å¼·åŒ– - ç·©æ…¢ç™’åˆ'),(826,4,141,'å¼·åŒ– - ç›´æ‹³è¡æ“Š'),(827,4,142,'å¼·åŒ– - è½é³³éŒ˜'),(828,4,143,'å¼·åŒ– - æƒ¡é­”ä¹‹æ‰‹'),(829,4,144,'å¼·åŒ– - å‹åˆ©ä¹‹çŸ›'),(830,4,145,'å¼·åŒ– - å…‰ä¹‹å¾©ä»‡'),(831,4,146,'å¼·åŒ– - ä¿¯è¡ç›´æ‹³'),(832,4,147,'å¼·åŒ– - æ„å¿µé©…å‹•'),(833,4,148,'å¼·åŒ– - å£“åˆ¶ç¬¦'),(834,4,149,'å¼·åŒ– - å·¨æ—‹é¢¨'),(835,4,150,'å¼·åŒ– - è–æ‹³é€£æ“Š'),(836,4,151,'å¼·åŒ– - æ·¨åŒ–'),(837,4,152,'å¼·åŒ– - æ‡ºæ‚”ä¹‹æ§Œ'),(838,4,153,'å¼·åŒ– - ä¿¯è¡è…¹æ‹³'),(839,4,154,'å¼·åŒ– - å¤©è­´é¢¶é¢¨'),(840,4,155,'å¼·åŒ– - å‡å¤©é™£'),(841,4,156,'å¼·åŒ– - ç–¾ç©ºæ—‹é¢¨ç ´'),(842,4,157,'å¼·åŒ– - ç–¾é¢¨æ‰“'),(843,4,158,'å¼·åŒ– - å¼ç¥ž : ç™½è™Ž'),(844,4,159,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(845,4,160,'å¼·åŒ– - ç ´é­”ç¬¦'),(846,4,161,'å¼·åŒ– - æ­»äº¡åˆ‡å‰²'),(847,4,162,'å¼·åŒ– - æƒ¡é­”ä¹‹åŠ›'),(848,4,163,'å¼·åŒ– - è£‚åœ°æ¶'),(849,4,164,'å¼·åŒ– - åŽ„é‹ä¹‹è¼ª'),(850,4,165,'å¼·åŒ– - é»‘æš—ä¹‹è§¸'),(851,4,166,'å¼·åŒ– - è–å…‰çƒ'),(852,4,167,'å¼·åŒ– - è–å…‰åå­—'),(853,4,168,'å¼·åŒ– - çž¬æ‹³'),(854,4,169,'å¾Œè·³'),(855,4,172,'è¼•ç”²ç²¾é€š'),(856,4,173,'é‡ç”²ç²¾é€š'),(857,4,174,'åŸºç¤Žç²¾é€š'),(858,4,175,'èºç¿”'),(859,4,176,'é å¤è¨˜æ†¶'),(860,4,177,'æŠ•æ“²ç²¾é€š'),(861,4,178,'ç‰©ç†èƒŒæ“Š'),(862,4,179,'ç‰©å“åˆ†è§£'),(863,4,180,'ä¸å±ˆæ„å¿—'),(864,4,181,'ç²¾å·¥'),(865,4,182,'ç´¡ç¹”'),(866,4,183,'æ©Ÿæ¢°'),(867,4,184,'ç…‰é‡‘'),(868,4,185,'çš®ç”²ç²¾é€š'),(869,4,186,'ç‰©ç†æš´æ“Š'),(870,4,187,'å¸ƒç”²ç²¾é€š'),(871,4,188,'é­”æ³•æš´æ“Š'),(872,4,189,'é­”æ³•èƒŒæ“Š'),(873,4,190,'å—èº«è¹²ä¼'),(874,4,191,'é­”æ³•è³¦äºˆ'),(875,4,192,'è£½ä½œå¬å–šäººå¶'),(876,4,193,'éŠé‡‘è¡“'),(877,4,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(878,4,195,'ç”Ÿå‘½ä¹‹æº'),(879,4,196,'æ¿ç”²ç²¾é€š'),(880,4,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(881,4,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(882,4,201,'æ¥µé€Ÿæˆé•·'),(883,4,210,'å¼·åŒ– - ç©ºæ–¬æ‰“'),(884,4,211,'å¼·åŒ– - è™Žè¥²'),(885,4,212,'å¼·åŒ– - å‹¾æ‹³è¿½æ“Š'),(886,4,213,'å¼·åŒ– - å…‰ä¹‹æ‹³åˆƒ'),(887,4,214,'å¼·åŒ– - è–å…‰æ²ç›¾ '),(888,4,215,'å¼·åŒ– - æ­£ç¾©å¯©åˆ¤'),(889,4,216,'å¼·åŒ– - æ–·ç©ºéŒ˜æ“Š'),(890,4,217,'å¼·åŒ– - é»‘æš—åˆ‡å‰²'),(891,4,218,'å¼·åŒ– - å¼ç¥žï¼šæ®¤'),(892,4,219,'å¼·åŒ– - æ˜Ÿè½æ‰“'),(893,4,220,'å¼·åŒ– - æœ±é›€ç¬¦'),(894,4,221,'å¼·åŒ– - ç‹‚äº‚éŒ˜æ“Š'),(895,4,223,'å¼·åŒ– - ç„¡é›™æ“Š'),(896,4,224,'å¼·åŒ– - è–æ‹³æ¶æ“Š'),(897,4,225,'å¼·åŒ– - ä¿¯è¡ç¿”æ‹³'),(898,4,227,'å¼·åŒ– - ç¥žè–åæ“Š'),(899,4,228,'å¼·åŒ– - ç ´ç¢Žä¹‹æ¶'),(900,4,229,'å¼·åŒ– - åˆºæ‹³çŒ›æ“Š'),(901,4,230,'å¼·åŒ– - ç¥žè–çµ„åˆæ‹³'),(902,4,231,'å¼·åŒ– - æ¥µé€Ÿé¢¶é¢¨æ‹³'),(903,4,232,'å¼·åŒ– - è¿´æ—‹é£›é®'),(904,4,233,'å¼·åŒ– - å¾©ä»‡ä¹‹åˆº'),(905,4,234,'å¼·åŒ– - é»‘æš—æ¬Šèƒ½'),(906,4,235,'å¼·åŒ– - å¼ç¥žï¼šçŽ„æ­¦'),(907,4,236,'å¼·åŒ– - è½é›·ç¬¦'),(908,5,1,'çˆ†ç‚Žå½ˆ'),(909,5,2,'å†°å‡å½ˆ'),(910,5,3,'ä¸Šæ—‹è¸¢'),(911,5,4,'ç‘ªéº—è“®çŽ«ç‘°'),(912,5,5,'çˆ†é ­ä¸€æ“Š'),(913,5,6,'é‡˜åˆºå°„'),(914,5,7,'åˆºè¸¢'),(915,5,8,'èµ·èº«ä¸Šæ—‹è¸¢'),(916,5,9,'æ§èˆž'),(917,5,10,'é ç¨‹æ ¼æ“‹'),(918,5,11,'å¿«é€Ÿæ‹”æ§'),(919,5,12,'M-137æ ¼æž—æ©Ÿæ§'),(920,5,13,'M-3å™´ç«å™¨'),(921,5,14,'BBQ'),(922,5,15,'ç§»å‹•å°„æ“Š'),(923,5,20,'å›žé ­ä¸€æ“Š'),(924,5,21,'é‡ç«å™¨ç²¾é€š'),(925,5,22,'å·¦è¼ªç²¾é€š'),(926,5,23,'å¿«é€Ÿå¡«è£'),(927,5,26,'å¾©ä»‡åæ“Š'),(928,5,27,'RX-78è¿½æ“Šè€…'),(929,5,28,'Ez-8è‡ªçˆ†è€…'),(930,5,29,'Ex-Sæ¯’è›‡ç‚®'),(931,5,30,'éŠ€å½ˆ'),(932,5,31,'å½ˆè—¥æ”¹è‰¯'),(933,5,32,'ä¸‰é‡æŽ§åˆ¶'),(934,5,33,'ç©ºä¸­å°„æ“Š'),(935,5,34,'é‡ç«å™¨æ‹”æ“Š'),(936,5,35,'éŸ³é€Ÿæˆªæ“Š'),(937,5,36,'èšç„¦å™´ç«å™¨'),(938,5,37,'æµ®ç©ºéŸ'),(939,5,38,'FM-31æ¦´å½ˆç™¼å°„å™¨'),(940,5,39,'é³å°„ç‚®'),(941,5,40,'åå¦å…‹ç‚®'),(942,5,41,'è“„é›»é³å°„ç‚®'),(943,5,42,'å—œæˆ°è¿½æ“Šè€…'),(944,5,43,'å½è£'),(945,5,44,'é‡ç«å™¨å¥§ç¾©'),(946,5,45,'é‡å­çˆ†å½ˆ'),(947,5,46,'æ©Ÿæ¢°æ”¹è‰¯'),(948,5,47,'æµ®ç©ºå½ˆ'),(949,5,48,'äº¤å‰å°„æ“Š'),(950,5,49,'å½ˆåŒ£æ“´å……'),(951,5,50,'æ©Ÿæ¢°å¼•çˆ†'),(952,5,51,'é›™é·¹è¿´æ—‹'),(953,5,52,'ç ´ç”²å½ˆ'),(954,5,53,'å…‰å­çˆ†å½ˆ'),(955,5,55,'éŠä¿ çš®ç”²å°ˆç²¾'),(956,5,56,'G-14 æ‰‹é›·'),(957,5,57,'G-35L æ„Ÿé›»æ‰‹é›·'),(958,5,58,'G-18C å†°å‡æ‰‹é›·'),(959,5,59,'ç©ºæŠ•æ”¯æ´'),(960,5,60,'æ­»äº¡å·¦è¼ª'),(961,5,61,'é­”å½ˆå°„æ‰‹çš®ç”²å°ˆç²¾'),(962,5,62,'æ½›èƒ½çˆ†ç™¼'),(963,5,63,'ç©ºæˆ°æ©Ÿæ¢° : ç‹‚é¢¨'),(964,5,71,'X-1 å£“ç¸®é‡å­ç‚®'),(965,5,72,'å¤šé‡çˆ†é ­'),(966,5,73,'åŠ è¾²ç‚®'),(967,5,74,'å¼·åˆ¶ - åŠ è¾²ç‚®'),(968,5,75,'FM-92 mk2æ¦´å½ˆ'),(969,5,76,'é–ƒæ“Šåœ°é›·'),(970,5,77,'C4é ç«¯ç‚¸å½ˆ'),(971,5,78,'å°¼çˆ¾ç‹™æ“Š'),(972,5,79,'G-1æŸ¯æ´›ç´'),(973,5,80,'æ”¹è£ï¼š G-2 æ—‹é›·'),(974,5,81,'æ”¹è£ï¼šG-3 çŒ›ç¦½'),(975,5,82,'å½ˆè—¥æ”¯æ´'),(976,5,83,'æ””æˆªæ©Ÿå·¥å» '),(977,5,91,'æ©Ÿæ¢°å¸«å¸ƒç”²å°ˆç²¾'),(978,5,92,'é‡ç‚®æ‰‹é‡ç”²å°ˆç²¾'),(979,5,93,'é‡ç«å™¨éŽè¼‰'),(980,5,94,'éš±æ™¦ä¹‹åˆƒ'),(981,5,95,'Gç³»æ“´å¼µ'),(982,5,96,'æ”¹è£ : G-0æˆ°çˆ­é ˜ä¸»'),(983,5,97,'é å¤ç²’å­ç‚®'),(984,5,98,'EMPç£æš´'),(985,5,99,'å½ˆè—¥å¼·åŒ–'),(986,5,100,'é›™æ§æ¥µèˆžåˆƒ'),(987,5,101,'ç†¾ç„°æˆªæ“Š'),(988,5,102,'C4é£›é€Ÿç‚¸å½ˆ'),(989,5,103,'M-61åœ°é›·'),(990,5,104,'æ¥µé™å¤šé‡çˆ†é ­'),(991,5,105,'Ez-10åæ“Šè€…'),(992,5,106,'Ex-S Zeroæ¯’è›‡ç‚®'),(993,5,107,'èšç„¦å¯’å†°å™´å°„å™¨'),(994,5,108,'FM-92 mk2 SWæ¦´å½ˆ'),(995,5,109,'ç ´è£‚å°„æ“Š'),(996,5,110,'æ­¥æ§ç²¾é€š'),(997,5,140,'å¼·åŒ– - çˆ†é ­ä¸€æ“Š'),(998,5,141,'å¼·åŒ– - BBQ'),(999,5,142,'å¼·åŒ– - RX-78è¿½æ“Šè€…'),(1000,5,143,'å¼·åŒ– - éŠ€å½ˆ'),(1001,5,144,'å¼·åŒ– - é ç¨‹æ ¼æ“‹'),(1002,5,145,'å¼·åŒ– - é‡˜åˆºå°„'),(1003,5,146,'å¼·åŒ– - M-3å™´ç«å™¨'),(1004,5,147,'å¼·åŒ– - åå¦å…‹ç‚®'),(1005,5,148,'å¼·åŒ– - æ©Ÿæ¢°å¼•çˆ†'),(1006,5,149,'å¼·åŒ– - G-1æŸ¯æ´›ç´'),(1007,5,150,'å¼·åŒ– - äº¤å‰å°„æ“Š'),(1008,5,151,'å¼·åŒ– - å½ˆåŒ£æ“´å……'),(1009,5,152,'é­”æ”»è½‰æ›'),(1010,5,153,'å¼·åŒ– - åˆºè¸¢'),(1011,5,154,'å¼·åŒ– - æ§èˆž'),(1012,5,155,'å¼·åŒ– - G-14æ‰‹é›·'),(1013,5,156,'å¼·åŒ– - å…‰å­çˆ†å½ˆ'),(1014,5,157,'å¼·åŒ– - Ez-8è‡ªçˆ†è€…'),(1015,5,158,'å¼·åŒ– - æ””æˆªæ©Ÿå·¥å» '),(1016,5,159,'å¼·åŒ– - M-137æ ¼æž—æ©Ÿæ§'),(1017,5,160,'å¼·åŒ– - FM-92 mk2æ¦´å½ˆ'),(1018,5,161,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(1019,5,162,'å¼·åŒ– - çˆ†ç‚Žå½ˆ'),(1020,5,163,'å¼·åŒ– - å†°å‡å½ˆ'),(1021,5,164,'å¼·åŒ– - å¾©ä»‡åæ“Š'),(1022,5,166,'å¼·åŒ– - ä¸Šæ—‹è¸¢'),(1023,5,167,'å¼·åŒ– - æµ®ç©ºå½ˆ'),(1024,5,168,'å¼·åŒ– - ç‘ªéº—è“®çŽ«ç‘°'),(1025,5,169,'å¾Œè·³'),(1026,5,172,'è¼•ç”²ç²¾é€š'),(1027,5,173,'é‡ç”²ç²¾é€š'),(1028,5,174,'åŸºç¤Žç²¾é€š'),(1029,5,175,'èºç¿”'),(1030,5,176,'é å¤è¨˜æ†¶'),(1031,5,177,'æŠ•æ“²ç²¾é€š'),(1032,5,178,'ç‰©ç†èƒŒæ“Š'),(1033,5,179,'ç‰©å“åˆ†è§£'),(1034,5,180,'ä¸å±ˆæ„å¿—'),(1035,5,181,'ç²¾å·¥'),(1036,5,182,'ç´¡ç¹”'),(1037,5,183,'æ©Ÿæ¢°'),(1038,5,184,'ç…‰é‡‘'),(1039,5,185,'çš®ç”²ç²¾é€š'),(1040,5,186,'ç‰©ç†æš´æ“Š'),(1041,5,187,'å¸ƒç”²ç²¾é€š'),(1042,5,188,'é­”æ³•æš´æ“Š'),(1043,5,189,'é­”æ³•èƒŒæ“Š'),(1044,5,190,'å—èº«è¹²ä¼'),(1045,5,191,'é­”æ³•è³¦äºˆ'),(1046,5,192,'è£½ä½œå¬å–šäººå¶'),(1047,5,193,'éŠé‡‘è¡“'),(1048,5,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(1049,5,195,'ç”Ÿå‘½ä¹‹æº'),(1050,5,196,'æ¿ç”²ç²¾é€š'),(1051,5,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(1052,5,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(1053,5,201,'æ¥µé€Ÿæˆé•·'),(1054,5,211,'å¼·åŒ– - éŸ³é€Ÿæˆªæ“Š'),(1055,5,212,'å¼·åŒ– - ç§»å‹•å°„æ“Š'),(1056,5,213,'å¼·åŒ– - é›™é·¹è¿´æ—‹'),(1057,5,214,'å¼·åŒ– - å¤šé‡çˆ†é ­'),(1058,5,215,'å¼·åŒ– - é³å°„ç‚®'),(1059,5,216,'å¼·åŒ– - X-1 å£“ç¸®é‡å­ç‚®'),(1060,5,217,'å¼·åŒ– - åŠ è¾²ç‚®'),(1061,5,218,'å¼·åŒ– - èšç„¦å™´ç«å™¨'),(1062,5,219,'å¼·åŒ– - æ”¹è£ï¼šG-2 æ—‹é›·'),(1063,5,220,'å¼·åŒ– - æ”¹è£ï¼šG-3 çŒ›ç¦½'),(1064,5,221,'å¼·åŒ– - é‡å­çˆ†å½ˆ'),(1065,5,222,'å¼·åŒ– - ç©ºæˆ°æ©Ÿæ¢° : ç‹‚é¢¨'),(1066,5,223,'å¼·åŒ– - G35L æ„Ÿé›»æ‰‹é›·'),(1067,5,224,'å¼·åŒ– - G18C å†°å‡æ‰‹é›·'),(1068,5,225,'å¼·åŒ– - ç ´ç”²å½ˆ'),(1069,5,226,'å¼·åŒ– - ç ´è£‚å°„æ“Š'),(1070,5,227,'å¼·åŒ– - é–ƒæ“Šåœ°é›·'),(1071,5,228,'å¼·åŒ– - C4 é ç«¯ç‚¸å½ˆ'),(1072,5,229,'å¼·åŒ– - å°¼çˆ¾ç‹™æ“Š'),(1073,5,230,'å¼·åŒ– - Ex-S æ¯’è›‡ç‚®'),(1074,5,231,'å¼·åŒ– - ç©ºæŠ•æ”¯æ´'),(1075,6,1,'ç¿”æ“Š'),(1076,6,2,'åˆ‡å‰²'),(1077,6,3,'å¼§å…‰é–ƒ'),(1078,6,4,'ç–¾ç©ºè¸'),(1079,6,5,'ç„°åˆƒ'),(1080,6,6,'å¿æ³• : é£›é¼ '),(1081,6,7,'å½±è¥²'),(1082,6,8,'å¤©èª…'),(1083,6,9,'çµ‚çµè¿½æ“Š'),(1084,6,16,'çµ•æ®ºæ–¬'),(1085,6,18,'ç©ºèº'),(1086,6,19,'ç–¾é¦³'),(1087,6,21,'æš—é­‚æ³¢'),(1088,6,22,'éª¨ç›¾'),(1089,6,23,'è©›å’’ä¹‹ç®­'),(1090,6,24,'æ‰‹è£¡åŠ'),(1091,6,25,'å¿æ³• : å½±åˆ†èº«'),(1092,6,26,'ç¢Žè¸'),(1093,6,27,'é›™åˆƒç©¿åˆº'),(1094,6,29,'åŒ•é¦–ç²¾é€š'),(1095,6,30,'é›™åŠç²¾é€š'),(1096,6,31,'åŠåˆƒé¢¨æš´'),(1097,6,33,'èžºæ—‹ç©¿åˆº'),(1098,6,34,'ç–¾é¢¨äº‚èˆž'),(1099,6,35,'æ­»äº¡ä¹‹çˆª'),(1100,6,36,'ç™¾é¬¼å¤œè¡Œ'),(1101,6,37,'é™è‡¨ : æš´å›å·´æ‹‰å…‹'),(1102,6,38,'æš—é­‚æ³¢'),(1103,6,39,'å·´æ‹‰å…‹çš„é‡Žå¿ƒ'),(1104,6,40,'å·´æ‹‰å…‹çš„æ†¤æ€’'),(1105,6,41,'æ—‹åˆƒ'),(1106,6,43,'å¼§å…‰é€£é–ƒ'),(1107,6,44,'å´æ­¥'),(1108,6,45,'é›·å…‰åˆƒå½±'),(1109,6,47,'çµ•å‘½çž¬ç„æ®º'),(1110,6,49,'æ­»éˆä¹‹æ€¨'),(1111,6,50,'æš—é»‘å„€å¼'),(1112,6,51,'é™è‡¨ : å°¼å¤æ‹‰æ–¯'),(1113,6,52,'é©…ä½¿åƒµå±'),(1114,6,53,'æš—å½±è››çµ²é™£'),(1115,6,54,'æœå¾ž'),(1116,6,55,'å¸é­‚æš—å‹æ³¢'),(1117,6,56,'æœˆå¼§'),(1118,6,57,'æœˆè¼ªèˆž'),(1119,6,58,'å± æˆ®ä¹‹æ‡¼'),(1120,6,59,'åƒé­‚ç¥­'),(1121,6,60,'ç›œè³Šçš®ç”²å°ˆç²¾'),(1122,6,61,'åˆºå®¢çš®ç”²å°ˆç²¾'),(1123,6,62,'æ­»éˆè¡“å£«è¼•ç”²å°ˆç²¾'),(1124,6,63,'å¿è€…å¸ƒç”²å°ˆç²¾'),(1125,6,64,'å½±æ­¦è€…çš®ç”²å°ˆç²¾'),(1126,6,74,'æ­»éˆä¹‹ç¸›'),(1127,6,75,'éš•è½èžºæ—‹åˆº'),(1128,6,76,'æ—‹åˆƒè¡æ“Š'),(1129,6,77,'é‡‹é­‚æš—å‹æ³¢'),(1130,6,140,'å¼·åŒ– - æ‰‹è£¡åŠ'),(1131,6,141,'å¼·åŒ– - è©›å’’ä¹‹ç®­'),(1132,6,142,'å¼·åŒ– - å¤©èª…'),(1133,6,143,'å¼·åŒ– - ç–¾ç©ºè¸'),(1134,6,144,'å¼·åŒ– - åŠåˆƒé¢¨æš´'),(1135,6,145,'å¼·åŒ– - çµ‚çµè¿½æ“Š'),(1136,6,146,'å¼·åŒ– - ç™¾é¬¼å¤œè¡Œ'),(1137,6,147,'å¼·åŒ– - æš—å½±è››çµ²é™£'),(1138,6,148,'å¼·åŒ– - å¼§å…‰é–ƒ'),(1139,6,149,'å¼·åŒ– - ç–¾é¢¨äº‚èˆž'),(1140,6,150,'å¼·åŒ– - æš—é­‚æ³¢'),(1141,6,151,'å¼·åŒ– - é™è‡¨ : æš´å›å·´æ‹‰'),(1142,6,152,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(1143,6,153,'å¼·åŒ– - ç¿”æ“Š'),(1144,6,154,'å¼·åŒ– - åˆ‡å‰²'),(1145,6,155,'å¼·åŒ– - ç„°åˆƒ'),(1146,6,156,'å¼·åŒ– - å½±è¥²'),(1147,6,157,'å¼·åŒ– - éª¨ç›¾'),(1148,6,158,'å¼·åŒ– - ç¢Žè¸'),(1149,6,159,'å¼·åŒ– - å¿æ³•ï¼šé£›é¼ '),(1150,6,160,'å¼·åŒ– - çµ•å‘½çž¬ç„æ®º'),(1151,6,161,'å¼·åŒ– - èžºæ—‹ç©¿åˆº'),(1152,6,162,'å¼·åŒ– - é›·å…‰åˆƒå½±'),(1153,6,163,'å¼·åŒ– - æ—‹åˆƒ'),(1154,6,164,'å¼·åŒ– - é›™åˆƒç©¿åˆº'),(1155,6,165,'å¼·åŒ– - çµ•æ®ºæ–¬'),(1156,6,169,'å¾Œè·³'),(1157,6,172,'è¼•ç”²ç²¾é€š'),(1158,6,173,'é‡ç”²ç²¾é€š'),(1159,6,174,'åŸºç¤Žç²¾é€š'),(1160,6,175,'èºç¿”'),(1161,6,176,'é å¤è¨˜æ†¶'),(1162,6,177,'æŠ•æ“²ç²¾é€š'),(1163,6,178,'ç‰©ç†èƒŒæ“Š'),(1164,6,179,'ç‰©å“åˆ†è§£'),(1165,6,180,'ä¸å±ˆæ„å¿—'),(1166,6,181,'ç²¾å·¥'),(1167,6,182,'ç´¡ç¹”'),(1168,6,183,'æ©Ÿæ¢°'),(1169,6,184,'ç…‰é‡‘'),(1170,6,185,'çš®ç”²ç²¾é€š'),(1171,6,186,'ç‰©ç†æš´æ“Š'),(1172,6,187,'å¸ƒç”²ç²¾é€š'),(1173,6,188,'é­”æ³•æš´æ“Š'),(1174,6,189,'é­”æ³•èƒŒæ“Š'),(1175,6,190,'å—èº«è¹²ä¼'),(1176,6,191,'é­”æ³•è³¦äºˆ'),(1177,6,192,'è£½ä½œå¬å–šäººå¶'),(1178,6,193,'éŠé‡‘è¡“'),(1179,6,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(1180,6,195,'ç”Ÿå‘½ä¹‹æº'),(1181,6,196,'æ¿ç”²ç²¾é€š'),(1182,6,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(1183,6,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(1184,6,201,'æ¥µé€Ÿæˆé•·'),(1185,6,210,'å¼·åŒ– - é™è‡¨ï¼šå°¼å¤æ‹‰æ–¯'),(1186,6,211,'å¼·åŒ– - æ­»äº¡ä¹‹çˆª'),(1187,6,212,'å¼·åŒ– - æ­»éˆä¹‹æ€¨'),(1188,6,213,'å¼·åŒ– - å·´æ‹‰å…‹çš„é‡Žå¿ƒ'),(1189,6,214,'å¼·åŒ– - å¸é­‚æš—å‹æ³¢'),(1190,6,215,'å¼·åŒ– - å·´æ‹‰å…‹çš„æ†¤æ€’'),(1191,6,216,'å¼·åŒ– - é©…ä½¿æ®­å±'),(1192,6,217,'å¼·åŒ– - å¿æ³•ï¼šå½±åˆ†èº«'),(1193,6,218,'å±¬æ€§æ”»æ“Šç²¾é€š'),(1194,6,219,'å±¬æ€§æŠ—æ€§ç²¾é€š'),(1195,7,1,'éµå±±é '),(1196,7,2,'è¹²ä¼'),(1197,7,3,'æ“’æœˆç‚Ž'),(1198,7,4,'ç¢Žéª¨'),(1199,7,5,'å¾Œè¸¢'),(1200,7,6,'ä¸‹æ®µè¸¢'),(1201,7,7,'é‹¼ç­‹éµéª¨'),(1202,7,8,'åˆ†èº«'),(1203,7,9,'è†æ“Š'),(1204,7,10,'è†æ“Šå¼·åŒ–'),(1205,7,11,'é›·éœ†è†æ“Š'),(1206,7,12,'å¿µæ°£æ³¢'),(1207,7,13,'æ‹‹æ²™'),(1208,7,14,'ä¼è™Žéœ¸çŽ‹æ‹³'),(1209,7,15,'ç…å­å¼'),(1210,7,16,'èžºæ—‹å¿µæ°£å ´'),(1211,7,17,'é·¹è¸'),(1212,7,18,'æµ®ç©ºæ·©é›²è¸¢'),(1213,7,19,'è¡è†'),(1214,7,20,'éœ¸é«”è­·ç”²'),(1215,7,21,'å¼·åˆ¶ - å¿µæ°£æ³¢'),(1216,7,22,'æ‘”æŠ€å¼·åŒ–'),(1217,7,29,'å…‰ä¹‹è¦ªå’Œ'),(1218,7,30,'å…‰ä¹‹å…µåˆƒ'),(1219,7,31,'é¢¨ä¹‹æ°£æ¯'),(1220,7,32,'åŠ‡æ¯’æŠµæŠ—'),(1221,7,33,'èµ°ç«å…¥é­”'),(1222,7,34,'æ‹³å¥—æŽŒæ¡'),(1223,7,35,'å¿µæ°£æ„ŸçŸ¥'),(1224,7,36,'çƒˆæ—¥å…‰è¼'),(1225,7,37,'å¼·æ‹³'),(1226,7,38,'æ¯’ç“¶æŠ•æ“²'),(1227,7,39,'å¼±é»žæ„ŸçŸ¥'),(1228,7,40,'å¿µæ°£ç’°ç¹ž'),(1229,7,41,'çƒˆç„°ç„šæ­¥'),(1230,7,42,'å¿µæ°£ç½©'),(1231,7,43,'é›™é‡æŠ•æ“²'),(1232,7,44,'æŒ‘é‡'),(1233,7,45,'çˆªç²¾é€š'),(1234,7,46,'å‰è¸¢'),(1235,7,49,'æ‹‹æŠ•'),(1236,7,50,'æš´åŠ›æŠ“å–'),(1237,7,51,'æ»‘è¡ŒæŠ“å–'),(1238,7,52,'ç¾…ç¶²æŠ•æ“²'),(1239,7,54,'é‡Žè »è¡æ’ž'),(1240,7,55,'æŠ“è½Ÿç‚®'),(1241,7,56,'æ­¦é¬¥è¼•ç”²å°ˆç²¾'),(1242,7,57,'æŸ”é“å®¶å®¶è¼•ç”²å°ˆç²¾'),(1243,7,58,'æ—‹é¢¨è…¿'),(1244,7,60,'ç£šå¡ŠæŠ•æ“²'),(1245,7,61,'å¼·åˆ¶ - æŠ•æ“²'),(1246,7,62,'ç©ºçµžéŒ˜'),(1247,7,63,'æ­»äº¡æ—‹å¾‹'),(1248,7,65,'çƒˆç„°ç‡ƒç‡’'),(1249,7,67,'å¿µç¸ : å¯©åˆ¤ä¹‹é‡‘é›·è™Ž'),(1250,7,68,'é–ƒé›»ä¹‹èˆž'),(1251,7,69,'å¹»å½±çˆ†ç¢Ž'),(1252,7,73,'è¡—éœ¸é‡ç”²å°ˆç²¾'),(1253,7,74,'ç‹‚ Â· éœ¸çŽ‹æ‹³'),(1254,7,75,'æ¯’é‡æŠ•æ“²'),(1255,7,76,'æ¯’é›·å¼•çˆ†'),(1256,7,77,'è¡€è‰²é¢¨æš´'),(1257,7,78,'è“„å¿µç‚®'),(1258,7,79,'å¿µç¸ : é¾è™Žå˜¯'),(1259,7,80,'è‚˜æ“Š'),(1260,7,81,'æŠ˜é ¸'),(1261,7,82,'çž¬å½±é€£ç’°è¸¢'),(1262,7,83,'ç†¾ç„°æ—‹é¢¨è…¿'),(1263,7,84,'ç–¾é¢¨è¿½æ“Š'),(1264,7,85,'ç–¾é¢¨é€£æ“Š'),(1265,7,86,'é‡‘å‰›ç¢Ž'),(1266,7,87,'éœ¹é‚æ—‹è¸¢'),(1267,7,88,'è£‚çŸ³ç ´å¤©'),(1268,7,89,'åœ°ç„é¢¨ç«è¼ª'),(1269,7,90,'å¿µç¸ : çŒ›è™Žéœ‡åœ°'),(1270,7,91,'æŸ”åŒ–è‚Œè‚‰'),(1271,7,97,'é¬¥æ°£å¸«å¸ƒç”²å°ˆç²¾'),(1272,7,105,'å¤©å´©åœ°è£‚'),(1273,7,106,'èžºæ—‹æ»‘éŸ'),(1274,7,108,'çž¬æ­¥'),(1275,7,109,'æŠ•æ“²å¼·åŒ–'),(1276,7,110,'è‡ªå‹•å¡«å……'),(1277,7,111,'å¿µæ°£ç’°ç¹ž : è¥²'),(1278,7,112,'å¿µæ°£ç’°ç¹ž : ç¦¦'),(1279,7,114,'å¿µä¹‹å¥§ç¾©'),(1280,7,115,'åŠ›ä¹‹å¥§ç¾©'),(1281,7,116,'åƒæ‰‹å¥§ç¾©'),(1282,7,117,'å¿µä¹‹æˆ°çŸ›'),(1283,7,118,'å½—æ˜Ÿè¡æ“Š'),(1284,7,119,'çˆ†ç ´é»çƒ'),(1285,7,120,'è¡é›²å¿µæ°£å ´'),(1286,7,121,'æ­¦è“®è¯'),(1287,7,122,'æ—‹é¢¨ç¢Žå¿ƒè¸¢'),(1288,7,123,'åƒçµ²äº‚èˆž'),(1289,7,124,'éœ¹é‚ä¸‰é‡è¸¢'),(1290,7,125,'å¼·åŒ– - é‡‘å‰›ç¢Ž'),(1291,7,126,'å¼·åŒ– - è†æ“Š'),(1292,7,127,'å¼·åŒ– - å¿µæ°£æ³¢'),(1293,7,128,'å¼·åŒ– - é‹¼ç­‹éµéª¨'),(1294,7,129,'å¼·åŒ– - æ—‹é¢¨è…¿'),(1295,7,130,'å¼·åŒ– - ä¸‹æ®µè¸¢'),(1296,7,131,'å¼·åŒ– - è¹²ä¼'),(1297,7,132,'å¼·åŒ– - æ‹‹æ²™'),(1298,7,133,'å¼·åŒ– - èžºæ—‹å¿µæ°£å ´'),(1299,7,134,'å¼·åŒ– - é›·éœ†è†æ“Š'),(1300,7,135,'å¼·åŒ– - çž¬å½±é€£ç’°è¸¢'),(1301,7,136,'å¼·åŒ– - å¿µç¸ : é¾è™Žå˜¯'),(1302,7,137,'å¼·åŒ– - ç¢Žéª¨'),(1303,7,138,'å¼·åŒ– - èžºæ—‹æ»‘éŸ'),(1304,7,139,'å¼·åŒ– - é–ƒé›»ä¹‹èˆž'),(1305,7,140,'å¼·åŒ– - ç†¾ç„°æ—‹é¢¨è…¿'),(1306,7,141,'å¼·åŒ– - ç¾…ç¶²æŠ•æ“²'),(1307,7,142,'å¼·åŒ– - æŒ‘é‡'),(1308,7,143,'å¼·åŒ– - æ¯’é›·å¼•çˆ†'),(1309,7,144,'å¼·åŒ– - è¡€è‰²é¢¨æš´'),(1310,7,145,'å¼·åŒ– - æŠ˜é ¸'),(1311,7,146,'å¼·åŒ– - é‡Žè »è¡æ’ž'),(1312,7,147,'å¼·åŒ– - åœ°ç„é¢¨ç«è¼ª'),(1313,7,148,'å¼·åŒ– - æµ®ç©ºæ·©é›²è¸¢'),(1314,7,149,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(1315,7,150,'å¼·åŒ– - å¾Œè¸¢'),(1316,7,151,'å¼·åŒ– - å‰è¸¢'),(1317,7,152,'å¼·åŒ– - åˆ†èº«'),(1318,7,153,'å¼·åŒ– - é·¹è¸'),(1319,7,154,'å¼·åŒ– - å¿µæ°£ç½©'),(1320,7,155,'å¼·åŒ– - å¹»å½±çˆ†ç¢Ž'),(1321,7,156,'å¼·åŒ– - ç…å­å¼'),(1322,7,157,'å¼·åŒ– - å¿µç¸ï¼šçŒ›è™Žéœ‡åœ°'),(1323,7,158,'å¼·åŒ– - å¿µæ°£ç’°ç¹žï¼šè¥²'),(1324,7,159,'å¼·åŒ– - å¿µæ°£ç’°ç¹žï¼šç¦¦'),(1325,7,160,'å¼·åŒ– - è‚˜æ“Š'),(1326,7,161,'å¼·åŒ– - è¡è†'),(1327,7,162,'å¼·åŒ– - éµå±±é '),(1328,7,163,'å¼·åŒ– - æ“’æœˆç‚Ž'),(1329,7,164,'å¼·åŒ– - æ¯’é‡æŠ•æ“²'),(1330,7,165,'å¼·åŒ– - æ¯’ç“¶æŠ•æ“²'),(1331,7,166,'å¼·åŒ– - æ‹‹æŠ•'),(1332,7,167,'å¼·åŒ– - ç©ºçµžéŒ˜'),(1333,7,168,'å¼·åŒ– - éœ¹é‚æ—‹è¸¢'),(1334,7,169,'å¾Œè·³'),(1335,7,172,'è¼•ç”²ç²¾é€š'),(1336,7,173,'é‡ç”²ç²¾é€š'),(1337,7,174,'åŸºç¤Žç²¾é€š'),(1338,7,175,'èºç¿”'),(1339,7,176,'é å¤è¨˜æ†¶'),(1340,7,177,'æŠ•æ“²ç²¾é€š'),(1341,7,178,'ç‰©ç†èƒŒæ“Š'),(1342,7,179,'ç‰©å“åˆ†è§£'),(1343,7,180,'ä¸å±ˆæ„å¿—'),(1344,7,181,'ç²¾å·¥'),(1345,7,182,'ç´¡ç¹”'),(1346,7,183,'æ©Ÿæ¢°'),(1347,7,184,'ç…‰é‡‘'),(1348,7,185,'çš®ç”²ç²¾é€š'),(1349,7,186,'ç‰©ç†æš´æ“Š'),(1350,7,187,'å¸ƒç”²ç²¾é€š'),(1351,7,188,'é­”æ³•æš´æ“Š'),(1352,7,189,'é­”æ³•èƒŒæ“Š'),(1353,7,190,'å—èº«è¹²ä¼'),(1354,7,191,'é­”æ³•è³¦äºˆ'),(1355,7,192,'è£½ä½œå¬å–šäººå¶'),(1356,7,193,'éŠé‡‘è¡“'),(1357,7,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(1358,7,195,'ç”Ÿå‘½ä¹‹æº'),(1359,7,196,'æ¿ç”²ç²¾é€š'),(1360,7,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(1361,7,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(1362,7,201,'æ¥µé€Ÿæˆé•·'),(1363,7,210,'å¼·åŒ– - æš´åŠ›æŠ“å–'),(1364,7,211,'å¼·åŒ– - è£‚çŸ³ç ´å¤©'),(1365,7,212,'æ™ºåŠ›ä¹‹æº'),(1366,7,213,'ç²¾ç¥žä¹‹æº'),(1367,7,214,'å‘½ä¸­ç²¾é€š'),(1368,7,215,'å›žé¿ç²¾é€š'),(1369,7,216,'HPæ¢å¾©ç²¾é€š'),(1370,7,217,'MPæ¢å¾©ç²¾é€š'),(1371,7,218,'å±¬æ€§æ”»æ“Šç²¾é€š'),(1372,7,219,'å±¬æ€§æŠ—æ€§ç²¾é€š'),(1373,8,1,'é­”æ³•æ—‹é¢¨'),(1374,8,2,'é›·å…‰éˆ'),(1375,8,3,'å†°æ™¶å¢œ'),(1376,8,4,'æš—åŸŸæ“´å¼µ'),(1377,8,5,'å±¬æ€§è®Šæ›'),(1378,8,6,'åœ°ç‚Ž'),(1379,8,7,'å†°éœœä¹‹å¾‘'),(1380,8,8,'å†°é­„åŠ'),(1381,8,9,'å¹½å†¥ç«'),(1382,8,10,'ç ´å†°é£›åˆƒ'),(1383,8,11,'æ—‹ç‚Žç ´'),(1384,8,12,'å†°é­„éŒ˜æ“Š'),(1385,8,13,'å†°é¾æ—‹èˆž'),(1386,8,14,'å†°æ™¶ä¹‹æµ´'),(1387,8,15,'æ—‹å†°ç©¿åˆº'),(1388,8,16,'å†°é­„ä¹‹å¼“'),(1389,8,17,'æ“’æ‹¿æŽŒ'),(1390,8,18,'é­”æ³•ç‚®'),(1391,8,19,'å…ƒç´ ç’°ç¹ž'),(1392,8,20,'çž¬ç§»'),(1393,8,21,'å¯’å†°é€£æ§'),(1394,8,22,'ç™¼ç¾'),(1395,8,23,'å†°é­„æ—‹æ§'),(1396,8,24,'é»‘æš—ç¦åŸŸ'),(1397,8,25,'é­”çƒé€£å°„'),(1398,8,26,'é­”æ³•å†°çƒ'),(1399,8,27,'æ—‹ç«ç›¾'),(1400,8,28,'é­”åŠ›ç‡ƒç‡’'),(1401,8,29,'é›·å…‰å±éšœ'),(1402,8,30,'å…ƒç´ è½Ÿç‚¸'),(1403,8,31,'å¯’å†°ä¹‹å¢ƒ'),(1404,8,32,'æ¥µå†°ç¶»æ”¾'),(1405,8,33,'ä¸æ­»ä¹‹èº«'),(1406,8,34,'å±¬æ€§ä¿è­·'),(1407,8,35,'å†°ä¹‹å°'),(1408,8,36,'å…ƒç´ çˆ†ç ´å¸«å¸ƒç”²å°ˆç²¾'),(1409,8,37,'å†°çµå¸«çš®ç”²å°ˆç²¾'),(1410,8,48,'åƒæ—‹å†°è¼ªç ´'),(1411,8,49,'å¹»é­”å››é‡å¥'),(1412,8,50,'å†°å°å¥§ç¾©'),(1413,8,51,'å…ƒç´ å–šé†’'),(1414,8,60,'å†°æ·©ç ´'),(1415,8,61,'å…ƒç´ æ¿ƒç¸®çƒ'),(1416,8,62,'å…ƒç´ å¹»æ»…'),(1417,8,63,'åƒé‡Œå†°å°'),(1418,8,91,'æŽƒæŠŠæŽŒæ¡'),(1419,8,92,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(1420,8,169,'å¾Œè·³'),(1421,8,172,'è¼•ç”²ç²¾é€š'),(1422,8,173,'é‡ç”²ç²¾é€š'),(1423,8,174,'åŸºç¤Žç²¾é€š'),(1424,8,175,'èºç¿”'),(1425,8,176,'é å¤è¨˜æ†¶'),(1426,8,177,'æŠ•æ“²ç²¾é€š'),(1427,8,178,'ç‰©ç†èƒŒæ“Š'),(1428,8,179,'ç‰©å“åˆ†è§£'),(1429,8,180,'ä¸å±ˆæ„å¿—'),(1430,8,181,'ç²¾å·¥'),(1431,8,182,'ç´¡ç¹”'),(1432,8,183,'æ©Ÿæ¢°'),(1433,8,184,'ç…‰é‡‘'),(1434,8,185,'çš®ç”²ç²¾é€š'),(1435,8,186,'ç‰©ç†æš´æ“Š'),(1436,8,187,'å¸ƒç”²ç²¾é€š'),(1437,8,188,'é­”æ³•æš´æ“Š'),(1438,8,189,'é­”æ³•èƒŒæ“Š'),(1439,8,190,'å—èº«è¹²ä¼'),(1440,8,191,'é­”æ³•è³¦äºˆ'),(1441,8,192,'è£½ä½œå¬å–šäººå¶'),(1442,8,193,'éŠé‡‘è¡“'),(1443,8,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(1444,8,195,'ç”Ÿå‘½ä¹‹æº'),(1445,8,196,'æ¿ç”²ç²¾é€š'),(1446,8,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(1447,8,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(1448,8,201,'æ¥µé€Ÿæˆé•·'),(1449,8,211,'å¼·åŒ– - é­”æ³•æ—‹é¢¨'),(1450,8,212,'å¼·åŒ– - é›·å…‰éˆ'),(1451,8,213,'å¼·åŒ– - å†°æ™¶å¢œ'),(1452,8,214,'å¼·åŒ– - æš—åŸŸæ“´å¼µ'),(1453,8,216,'å¼·åŒ– - åœ°ç‚Ž'),(1454,8,217,'å¼·åŒ– - å†°éœœä¹‹å¾‘'),(1455,8,218,'å¼·åŒ– - å†°é­„åŠ'),(1456,8,219,'å¼·åŒ– - å¹½å†¥ç«'),(1457,8,220,'å¼·åŒ– - ç ´å†°é£›åˆƒ'),(1458,8,221,'å¼·åŒ– - æ—‹ç‚Žç ´'),(1459,8,222,'å¼·åŒ– - å†°é­„éŒ˜æ“Š'),(1460,8,223,'å¼·åŒ– - å†°é¾æ—‹èˆž'),(1461,8,224,'å¼·åŒ– - å†°æ™¶ä¹‹æµ´'),(1462,8,225,'å¼·åŒ– - æ—‹å†°ç©¿åˆº'),(1463,8,226,'å¼·åŒ– - å†°é­„ä¹‹å¼“'),(1464,8,227,'å¼·åŒ– - æ“’æ‹¿æŽŒ'),(1465,8,228,'å¼·åŒ– - é­”æ³•ç‚®'),(1466,8,229,'å¼·åŒ– - å…ƒç´ ç’°ç¹ž'),(1467,8,231,'å¼·åŒ– - å¯’å†°é€£æ§'),(1468,8,233,'å¼·åŒ– - å†°é­„æ—‹æ§'),(1469,8,234,'å¼·åŒ– - é»‘æš—ç¦åŸŸ'),(1470,8,235,'å¼·åŒ– - é­”çƒé€£å°„'),(1471,8,236,'å¼·åŒ– - é­”æ³•å†°çƒ'),(1472,8,237,'å¼·åŒ– - æ—‹ç«ç›¾'),(1473,8,239,'å¼·åŒ– - é›·å…‰å±éšœ'),(1474,8,240,'å¼·åŒ– - å…ƒç´ è½Ÿç‚¸'),(1475,8,241,'å¼·åŒ– - å¯’å†°ä¹‹å¢ƒ'),(1476,8,242,'å¼·åŒ– - æ¥µå†°ç¶»æ”¾'),(1477,9,1,'æ ¼æ“‹'),(1478,9,2,'å†¥ç‚Ž'),(1479,9,3,'è‡ªå‹•æ ¼æ“‹'),(1480,9,4,'é»‘æš—å…‰åŠç²¾é€š'),(1481,9,5,'é¬¼æ–¬'),(1482,9,6,'å™¬éˆé¬¼æ–¬'),(1483,9,7,'é€†è½‰åæ“Š'),(1484,9,8,'è¿…æ·ä¹‹åˆ‡'),(1485,9,9,'æ‹–å¼•ä¹‹åŠ'),(1486,9,10,'å¼·åˆ¶ - æ³¢å‹•åŠ'),(1487,9,11,'é€£çªåˆº'),(1488,9,12,'æš—å½±åŠç²¾é€š'),(1489,9,13,'é»‘æš—ä¹‹åˆ€ç²¾é€š'),(1490,9,14,'é»‘æš—å¤§åˆ€ç²¾é€š'),(1491,9,15,'é»‘æš—éˆå™¨ç²¾é€š'),(1492,9,16,'éŠ€å…‰è½åˆƒ'),(1493,9,17,'ç©ºä¸­é€£æ–¬'),(1494,9,18,'æ†‘ä¾'),(1495,9,19,'è¡€æ°£å–šé†’'),(1496,9,20,'æ³¢æµª'),(1497,9,21,'å†°åˆƒ Â· æ³¢å‹•åŠ'),(1498,9,22,'çˆ†ç‚Ž Â· æ³¢å‹•åŠ'),(1499,9,23,'å—œè¡€'),(1500,9,24,'é—‡å½±çˆ†ç‚¸'),(1501,9,25,'é¬¼ç¥žâ€§å¡è´Š'),(1502,9,26,'å¼·åˆ¶ - ä¸‰æ®µæ–¬'),(1503,9,27,'æ­¦å™¨å¥§ç¾©'),(1504,9,28,'å–æ¶ˆ - é¬¼æ–¬'),(1505,9,29,'æš—ä¹‹è¦ªå’Œ'),(1506,9,30,'æš—æœˆé™è‡¨'),(1507,9,31,'æš—ä¹‹è¡åˆº'),(1508,9,32,'æ³¢å‹•çˆ†ç™¼'),(1509,9,33,'å…‰åŠæŽŒæ¡'),(1510,9,34,'æ­»äº¡æŠ—æ‹’'),(1511,9,35,'å°å°è§£é™¤'),(1512,9,36,'é¬¼ç¥žâ€§å†°éœœè–©äºž'),(1513,9,37,'ç–¾å½±æ‰‹'),(1514,9,38,'ç ´æ¥µå…µåˆƒ'),(1515,9,39,'æ­¦å™¨ç¯€åˆ¶'),(1516,9,40,'æš´èµ°'),(1517,9,41,'é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾è’™'),(1518,9,42,'é¬¼é£Ÿ'),(1519,9,43,'è‰ä¸Šé£›'),(1520,9,44,'é»‘æš—é™è‡¨'),(1521,9,45,'å¼·åˆ¶ - æ ¼æ“‹'),(1522,9,46,'ä¸Šå‡'),(1523,9,47,'æ³¢å‹•åˆ»å°'),(1524,9,48,'å¼·åˆ¶ - ä¸ŠæŒ‘'),(1525,9,49,'å¾Œè·³æ–¬'),(1526,9,50,'å·¨å¤§æ³¢æµª'),(1527,9,51,'ä¿®ç¾…é‚ªå…‰æ–¬'),(1528,9,52,'æ®ºæ„æ³¢å‹•'),(1529,9,53,'æŒ«æŠ˜æ„å¿—'),(1530,9,54,'å–æ¶ˆ - å—œé­‚ä¹‹æ‰‹'),(1531,9,55,'æ®ºæ°£æ„ŸçŸ¥'),(1532,9,56,'ç‹‚æˆ°å£«é‡ç”²å°ˆç²¾'),(1533,9,57,'éœ‡å‹•æ³¢'),(1534,9,58,'ç¾½ç¿¼çŒ›æ“Š'),(1535,9,59,'å¼·åˆ¶ - è£‚æ³¢æ–¬'),(1536,9,60,'çž¬é–“ç æ“Š'),(1537,9,61,'é˜¿ä¿®ç¾…æ¿ç”²å°ˆç²¾'),(1538,9,62,'ç„¡é›™æ³¢'),(1539,9,63,'è¡€æ°£æ—ºç››'),(1540,9,64,'æš—åå­—'),(1541,9,65,'è·³èºç²‰ç¢Ž'),(1542,9,66,'å¼·åˆ¶ - å´©å±±æ“Š'),(1543,9,67,'è£â€§é¬¼åŠè¡“'),(1544,9,68,'é—‡å½±çŒ›æ“Š'),(1545,9,69,'å¼·åˆ¶ - ç ´è»å‡é¾æ“Š'),(1546,9,70,'å¼·åˆ¶ - æ€’æ°£çˆ†ç™¼'),(1547,9,71,'å¼·åˆ¶ - é¬¼å°ç '),(1548,9,72,'çž¬å½±æ–¬'),(1549,9,73,'å¹»ä¹‹æ“Š'),(1550,9,74,'æ—‹æ³¢'),(1551,9,75,'é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž'),(1552,9,76,'è¡€ä¹‹ç‹‚æš´'),(1553,9,77,'æ—‹è½‰ä¹‹æ“Š'),(1554,9,78,'å¼·åˆ¶ - åå­—æ–¬'),(1555,9,79,'é—‡å½±ç‹‚å˜¯'),(1556,9,80,'æ»¿æœˆæ–¬'),(1557,9,81,'é—‡å½±è£‚åœ°æ–¬'),(1558,9,82,'é»‘è‰²ç«ç„°ä¹‹åŠ'),(1559,9,83,'å¼·åˆ¶ - æœˆå…‰æ–¬'),(1560,9,84,'é¬¼ç¥žâ€§æ®˜å½±å‡±è³ˆ'),(1561,9,85,'é­”ç„è¡€å‰Ž'),(1562,9,86,'æ¥µ Â· é¬¼åŠè¡“ (æš´é¢¨å¼)'),(1563,9,87,'æ€–æ‹‰ä¿®'),(1564,9,88,'æ³¢å‹•çœ¼:çµ‚çµæŠ€'),(1565,9,89,'ææ‡¼å…‰ç’°'),(1566,9,90,'é®®è¡€ä¹‹æ†¶'),(1567,9,91,'æ¥µ Â· é¬¼åŠè¡“ (æ–¬éµå¼)'),(1568,9,92,'å¿ƒçœ¼'),(1569,9,93,'å™¬é­‚è€…å¸ƒç”²å°ˆç²¾'),(1570,9,94,'åŠé­‚è¼•ç”²å°ˆç²¾'),(1571,9,95,'å¢“ç¢‘ä¸‰çµ•é™£'),(1572,9,96,'é¬¼ç¥žâ€§å†°æ™¶è–©äºž'),(1573,9,97,'ç ´ç©ºæ‹”åˆ€æ–¬'),(1574,9,98,'ç ´è»æ–¬é¾æ“Š'),(1575,9,99,'æ¥µç‚Ž Â· è£‚æ³¢åŠ'),(1576,9,100,'æ¥µå†° Â· è£‚æ³¢åŠ'),(1577,9,101,'è¡€æ°£çˆ†ç™¼'),(1578,9,102,'æ»…é­‚ä¹‹æ‰‹'),(1579,9,103,'é»‘æš—ä¹‹åŠ'),(1580,9,104,'å¼·åˆ¶ - è¡€æ°£ä¹‹åˆƒ'),(1581,9,105,'æµå¿ƒ'),(1582,9,106,'å¼·åˆ¶ - æµå¿ƒ'),(1583,9,107,'ç©¿åˆºæ”»æ“Š'),(1584,9,108,'åå½ˆçˆ†è£‚'),(1585,9,109,'æµå¿ƒ : å‡'),(1586,9,110,'æµå¿ƒ : ç‹‚'),(1587,9,111,'éž­æ“Š'),(1588,9,112,'ä¸‰é‡åˆºæ“Š'),(1589,9,113,'å¼·åˆ¶ - é¬¼å½±éž­'),(1590,9,114,'å¼·åˆ¶ - é¬¼å½±ä¸‰æ“ŠåŠ'),(1591,9,115,'å¼·åŒ– - é¬¼åŠéž­'),(1592,9,116,'å¼·åŒ– - é¬¼å½±ä¸‰æ“ŠåŠ'),(1593,9,117,'é»‘æš—æ³¢æµª'),(1594,9,118,'å·çˆ¾æ’¢0'),(1595,9,119,'å·çˆ¾æ’¢1'),(1596,9,120,'å·çˆ¾æ’¢2'),(1597,9,121,'å·çˆ¾æ’¢3'),(1598,9,122,'å·çˆ¾æ’¢4'),(1599,9,123,'å·çˆ¾æ’¢5'),(1600,9,139,'å¼·åŒ– - è¡€æ°£å–šé†’'),(1601,9,140,'å¼·åŒ– - åœ°è£‚ Â· æ³¢å‹•åŠ'),(1602,9,141,'å¼·åŒ– - åå­—æ–¬'),(1603,9,142,'å¼·åŒ– - é¬¼æ–¬'),(1604,9,143,'å¼·åŒ– - ä¸‰æ®µæ–¬'),(1605,9,144,'å¼·åŒ– - é€†è½‰åæ“Š'),(1606,9,145,'å¼·åŒ– - è‡ªå‹•æ ¼æ“‹'),(1607,9,146,'å¼·åŒ– - é¬¼ç¥žâ€§ä¾µè•æ™®æˆ¾'),(1608,9,147,'å¼·åŒ– - æ†‘ä¾'),(1609,9,148,'å¼·åŒ– - æ­»äº¡æŠ—æ‹’'),(1610,9,149,'å¼·åŒ– - æš´èµ°'),(1611,9,150,'å¼·åŒ– - æ®ºæ„æ³¢å‹•'),(1612,9,151,'å¼·åŒ– - æ³¢å‹•åˆ»å°'),(1613,9,152,'å¼·åŒ– - çŒ›é¾æ–·ç©ºæ–¬'),(1614,9,153,'å¼·åŒ– - éŠ€å…‰è½åˆƒ'),(1615,9,154,'å¼·åŒ– - æ‹”åˆ€æ–¬'),(1616,9,155,'å¼·åŒ– - æœˆå…‰æ–¬'),(1617,9,156,'å¼·åŒ– - é¬¼ç¥žâ€§ç˜Ÿç–«ç¾…ç…ž'),(1618,9,157,'å¼·åŒ– - å´©å±±æ“Š'),(1619,9,158,'å¼·åŒ– - å—œé­‚å°é­”æ–¬'),(1620,9,159,'å¼·åŒ– - è£‚æ³¢æ–¬'),(1621,9,160,'å¼·åŒ– - é¬¼å°ç '),(1622,9,161,'å¼·åŒ– - åŸºç¤Žç²¾é€š'),(1623,9,162,'å¼·åŒ– - é€£çªåˆº'),(1624,9,163,'å¼·åŒ– - æ ¼æª”'),(1625,9,164,'å¼·åŒ– - é¬¼ç¥žâ€§å¡è´Š'),(1626,9,165,'å¼·åŒ– - å—œé­‚ä¹‹æ‰‹'),(1627,9,166,'å¼·åŒ– - æ€’æ°£çˆ†ç™¼'),(1628,9,167,'å¼·åŒ– - å´©å±±è£‚åœ°æ–¬'),(1629,9,168,'å¼·åŒ– - è¡€æ°£ä¹‹åˆƒ'),(1630,9,169,'å¾Œè·³'),(1631,9,170,'å–æ¶ˆ - å¾Œè·³'),(1632,9,171,'å–æ¶ˆ - æŠ•æ“²'),(1633,9,172,'è¼•ç”²ç²¾é€š'),(1634,9,173,'é‡ç”²ç²¾é€š'),(1635,9,174,'åŸºç¤Žç²¾é€š'),(1636,9,175,'èºç¿”'),(1637,9,176,'é å¤è¨˜æ†¶'),(1638,9,177,'æŠ•æ“²ç²¾é€š'),(1639,9,178,'ç‰©ç†èƒŒæ“Š'),(1640,9,179,'ç‰©å“åˆ†è§£'),(1641,9,180,'ä¸å±ˆæ„å¿—'),(1642,9,181,'ç²¾å·¥'),(1643,9,182,'ç´¡ç¹”'),(1644,9,183,'æ©Ÿæ¢°'),(1645,9,184,'ç…‰é‡‘'),(1646,9,185,'çš®ç”²ç²¾é€š'),(1647,9,186,'ç‰©ç†æš´æ“Š'),(1648,9,187,'å¸ƒç”²ç²¾é€š'),(1649,9,188,'é­”æ³•æš´æ“Š'),(1650,9,189,'é­”æ³•èƒŒæ“Š'),(1651,9,190,'å—èº«è¹²ä¼'),(1652,9,191,'é­”æ³•è³¦äºˆ'),(1653,9,192,'è£½ä½œå¬å–šäººå¶'),(1654,9,193,'éŠé‡‘è¡“'),(1655,9,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(1656,9,195,'ç”Ÿå‘½ä¹‹æº'),(1657,9,196,'æ¿ç”²ç²¾é€š'),(1658,9,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(1659,9,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(1660,9,201,'æ¥µé€Ÿæˆé•·'),(1661,9,210,'å¼·åŒ– - æ³¢å‹•çˆ†ç™¼'),(1662,9,211,'å¼·åŒ– - é‚ªå…‰æ–¬'),(1663,9,212,'å¼·åŒ– - çˆ†ç‚Žæ³¢å‹•åŠ'),(1664,9,213,'å¼·åŒ– - ç„¡é›™æ³¢'),(1665,9,214,'å¼·åŒ– - ä¸å‹•æ˜ŽçŽ‹é™£'),(1666,9,215,'å¼·åŒ– - ä¸ŠæŒ‘'),(1667,9,216,'å†°åˆƒ Â· æ³¢å‹•åŠ'),(1668,9,217,'å¼·åŒ– - å¹»å½±åŠèˆž'),(1669,9,218,'å¼·åŒ– - ç ´è»å‡é¾æ“Š'),(1670,9,219,'å¼·åŒ– - æµå¿ƒï¼šåˆº'),(1671,9,220,'å¼·åŒ– - æµå¿ƒï¼šèº'),(1672,9,221,'å¼·åŒ– - æµå¿ƒï¼šå‡'),(1673,9,224,'å¼·åŒ– - é¬¼ç¥žâ€§å†°éœœè–©äºž'),(1674,9,225,'å¼·åŒ– - æ­»äº¡å¢“ç¢‘'),(1675,9,226,'å¼·åŒ– - é¬¼å½±é–ƒ'),(1676,9,227,'å¼·åŒ– - é¬¼ç¥žâ€§å†¥ç‚Žé¬¼ç¥ž'),(1677,9,228,'å¼·åŒ– - é¬¼å°ç '),(1678,10,91,'æŽƒæŠŠæŽŒæ¡'),(1679,10,131,'é˜²ç«ç‰†'),(1680,10,132,'ç«ç„°æš´é¢¨'),(1681,10,133,'éš•çŸ³è½ä¸‹'),(1682,10,134,'å†°ä¹‹çŸ³'),(1683,10,135,'å†°ä¹‹ç›¾'),(1684,10,136,'å†°æ¿'),(1685,10,137,'ä¸Ÿæ“²'),(1686,10,138,'æ¨¹æž—ç±¬ç¬†'),(1687,10,169,'å¾Œè·³'),(1688,10,170,'å–æ¶ˆ - å¾Œè·³'),(1689,10,171,'å–æ¶ˆ - æŠ•æ“²'),(1690,10,172,'è¼•ç”²ç²¾é€š'),(1691,10,173,'é‡ç”²ç²¾é€š'),(1692,10,174,'åŸºç¤Žç²¾é€š'),(1693,10,175,'èºç¿”'),(1694,10,176,'é å¤è¨˜æ†¶'),(1695,10,177,'æŠ•æ“²ç²¾é€š'),(1696,10,178,'ç‰©ç†èƒŒæ“Š'),(1697,10,179,'ç‰©å“åˆ†è§£'),(1698,10,180,'ä¸å±ˆæ„å¿—'),(1699,10,181,'ç²¾å·¥'),(1700,10,182,'ç´¡ç¹”'),(1701,10,183,'æ©Ÿæ¢°'),(1702,10,184,'ç…‰é‡‘'),(1703,10,185,'çš®ç”²ç²¾é€š'),(1704,10,186,'ç‰©ç†æš´æ“Š'),(1705,10,187,'å¸ƒç”²ç²¾é€š'),(1706,10,188,'é­”æ³•æš´æ“Š'),(1707,10,189,'é­”æ³•èƒŒæ“Š'),(1708,10,190,'å—èº«è¹²ä¼'),(1709,10,191,'é­”æ³•è³¦äºˆ'),(1710,10,192,'è£½ä½œå¬å–šäººå¶'),(1711,10,193,'éŠé‡‘è¡“'),(1712,10,194,'é–‹å•Ÿåˆ†è§£å•†åº—'),(1713,10,195,'ç”Ÿå‘½ä¹‹æº'),(1714,10,196,'æ¿ç”²ç²¾é€š'),(1715,10,197,'æ”»æ“Šé¡žåž‹è½‰æ›'),(1716,10,200,'å…¬æœƒ : å¢žåŠ è§’è‰²å±¬æ€§'),(1717,10,201,'æ¥µé€Ÿæˆé•·'),(1718,10,248,'é¢¨ä¹‹å™¬'),(1719,10,249,'é¢¨ä¹‹æš´é¢¨'),(1720,10,250,'ç«ç„°'),(1721,10,251,'å†·æ°£'),(1722,10,252,'å¦¨ç¤™'),(1723,10,253,'å®ˆè­·'),(1724,10,254,'é¢¨');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_lethe` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `skill_slot` blob NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`charac_no`),
  KEY `indx` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `store` blob NOT NULL,
  `use_doll` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_charac` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_items` (
  `ui_id` int(11) NOT NULL AUTO_INCREMENT,
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL DEFAULT '0',
  `it_id` int(11) NOT NULL DEFAULT '0',
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `obtain_from` tinyint(4) DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `ability_no` tinyint(4) NOT NULL DEFAULT '0',
  `stat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `clear_avatar_id` int(11) NOT NULL DEFAULT '0',
  `jewel_socket` blob NOT NULL,
  `item_lock_key` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `to_ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `m_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hidden_option` smallint(5) unsigned NOT NULL DEFAULT '0',
  `emblem_endurance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `color1` int(11) DEFAULT '0',
  `color2` int(11) DEFAULT '0',
  `trade_restrict` int(11) DEFAULT '0',
  PRIMARY KEY (`ui_id`),
  KEY `idxm_id` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_items_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `ui_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL DEFAULT '0',
  `it_id` int(11) NOT NULL DEFAULT '0',
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `obtain_from` tinyint(4) DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `ability_no` tinyint(4) NOT NULL DEFAULT '0',
  `stat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `clear_avatar_id` int(11) NOT NULL DEFAULT '0',
  `jewel_socket` varbinary(30) NOT NULL DEFAULT '',
  `item_lock_key` tinyint(4) NOT NULL DEFAULT '0',
  `to_ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `m_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hidden_option` smallint(5) unsigned NOT NULL DEFAULT '0',
  `emblem_endurance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `color1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `color2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `trade_restrict` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sdate`,`ui_id`),
  KEY `idxm_id` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_items_history` (
  `ui_id` int(11) NOT NULL AUTO_INCREMENT,
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL DEFAULT '0',
  `it_id` int(11) NOT NULL DEFAULT '0',
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `obtain_from` tinyint(4) DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `ability_no` tinyint(4) NOT NULL DEFAULT '0',
  `stat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `clear_avatar_id` int(11) NOT NULL DEFAULT '0',
  `jewel_socket` blob NOT NULL,
  `item_lock_key` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `to_ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `m_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hidden_option` smallint(5) unsigned NOT NULL DEFAULT '0',
  `emblem_endurance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `color1` int(11) DEFAULT '0',
  `color2` int(11) DEFAULT '0',
  `trade_restrict` int(11) DEFAULT '0',
  PRIMARY KEY (`ui_id`),
  KEY `idxm_id` (`charac_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_items_work` (
  `ui_id` int(11) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL DEFAULT '0',
  `it_id` int(11) NOT NULL DEFAULT '0',
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `obtain_from` tinyint(4) DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipg_agency_no` varchar(32) NOT NULL DEFAULT '',
  `ability_no` tinyint(4) NOT NULL DEFAULT '0',
  `stat` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `clear_avatar_id` int(11) NOT NULL DEFAULT '0',
  `jewel_socket` blob NOT NULL,
  `item_lock_key` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village_attack_dungeon` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `attack_count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `revenge_dungeon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village_ticket` (
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `village` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charac_no`,`village`),
  KEY `idx_village_charac` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
