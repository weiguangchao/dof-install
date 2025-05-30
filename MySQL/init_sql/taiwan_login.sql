
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_login` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `taiwan_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allow_proxy_user` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_punish_blackip_info` (
  `ip` varchar(11) NOT NULL DEFAULT '',
  `start_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `end_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `apply_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`,`start_ip`,`end_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_punish_first_user` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `hack_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `punish_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hack_sub_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`hack_type`,`hack_sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_punish_hack_full_ip` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `hack_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `full_ip` varchar(15) NOT NULL DEFAULT '',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`hack_type`,`hack_sub_type`,`full_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_punish_hack_info` (
  `hack_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `etc` bigint(20) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `apply_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hack_sub_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hack_type`,`apply_flag`,`hack_sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_punish_hack_ip` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `hack_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `c_class_ip` varchar(12) NOT NULL DEFAULT '',
  `cnt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`hack_type`,`hack_sub_type`,`c_class_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_punish_second_log` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `hack_m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trade_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`,`hack_m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_punish_second_user` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_trade_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_cnt` int(10) unsigned NOT NULL DEFAULT '0',
  `total_trade_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `trade_gold` bigint(20) unsigned NOT NULL DEFAULT '0',
  `punish_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_punish_flag` (`punish_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `churn_member_info` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `accrue_cera` int(10) unsigned NOT NULL DEFAULT '0',
  `play_info` char(30) NOT NULL DEFAULT '',
  `first_reward_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_reward_time` int(10) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_info` tinyint(4) NOT NULL DEFAULT '0',
  `luck_point` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `second_reward_time` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `churn_member_info` VALUES (1,0,'000000000000000000000000000011',0,0,0,0,0,0,0,1599145335,0,0);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `churn_reward_manager` (
  `min_day` tinyint(4) NOT NULL DEFAULT '0',
  `max_day` tinyint(4) NOT NULL DEFAULT '0',
  `min_val` int(10) unsigned NOT NULL DEFAULT '0',
  `max_val` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `add_info` int(10) unsigned NOT NULL DEFAULT '0',
  `luck_point` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`min_day`,`max_day`,`min_val`,`max_val`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `churn_system_manager` (
  `no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weekday_var_a` int(11) NOT NULL DEFAULT '0',
  `weekday_var_b` int(11) NOT NULL DEFAULT '0',
  `weekday_var_c` int(11) NOT NULL DEFAULT '0',
  `weekend_var_x` int(11) NOT NULL DEFAULT '0',
  `weekend_var_y` int(11) NOT NULL DEFAULT '0',
  `weekend_var_z` int(11) NOT NULL DEFAULT '0',
  `next_reward_day` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_event_entry` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `obtain_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`,`m_id`),
  KEY `idx_m_id` (`m_id`) USING BTREE,
  KEY `idx_charac_no` (`charac_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `dnf_event_entry` VALUES (50016,1,'2020-09-03 23:11:58',0,1,'2020-09-03 23:11:58');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_server_message` (
  `server_info` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `channel_no` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `kind` char(1) NOT NULL DEFAULT '',
  `message_index` char(1) NOT NULL DEFAULT '',
  `charac_name` char(64) NOT NULL DEFAULT '',
  `message` char(128) NOT NULL DEFAULT '',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_manifest` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gm_manifest` VALUES (1,7);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hack_cleanpad_ratio_info` (
  `hack_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hack_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `human_certify_try_count` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_monitor_punish` (
  `ip` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `m_id_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ip`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_growth` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `charac_no` int(11) NOT NULL DEFAULT '0',
  `charac_name` varchar(25) NOT NULL DEFAULT '',
  `job` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grow_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`m_id`,`server_info`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_query_dbmw_ref` (
  `query_hash` varchar(16) NOT NULL DEFAULT '',
  `q_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `query` text NOT NULL,
  PRIMARY KEY (`q_id`),
  UNIQUE KEY `query_hash` (`query_hash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_query_ref` (
  `query_hash` varchar(16) NOT NULL DEFAULT '',
  `q_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `query` text NOT NULL,
  PRIMARY KEY (`q_id`),
  UNIQUE KEY `query_hash` (`query_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `log_query_ref` VALUES ('*6F0167591240276',1,'upDate game_channel set gc_now=%d,gc_up_time=now(),gc_swordman_cnt=%d,gc_fighter_cnt=%d,gc_gunner_cnt=%d,gc_mage_cnt=%d,gc_priest_cnt=%d,gc_at_gunner_cnt=%d,gc_thief_cnt=%d,gc_hangame=%d,gc_nexon=%d where gc_no=%d'),('*D97DCEA3E7673B2',2,'seLect @@identity'),('*353051563A61124',4,'upDate member_login set cleanpad_point=%d where m_id=%s'),('*5737CFAF398B024',5,'upDate %s set login_time=%d, expire_time=%d, last_play_time=%d where m_id=%s'),('*B29B72BC433D669',6,'upDate login_account_%d set m_channel_no=%d,login_status=%d,last_login_date=now() where m_id=%s'),('*1A6B30790E8151C',7,'upDate member_play_info set play_time=play_time+%d,play_count=play_count+1,trade_cnt=trade_cnt+%d, exp=exp+%u, used_fatigue=used_fatigue+%u, ting_count=ting_count+%d, ip=\'%s\', last_play_time=%u, end_ip=\'%s\', mac_addr=\'%s\', server_id = %d where occ_date=cast(now() as date) and m_id=%s'),('*48291F7C652CACC',8,'upDate member_security_grade set goblin_validity_time		=unix_timestamp(now())+%d , validity_ip = \'%s\' where m_id=%s'),('*A17AC54BB22555F',9,'upDate %s set expire_time=%d where m_id=%s'),('*BD83AB96A6726BD',10,'upDate member_security_card set validity_time=unix_timestamp(now())+%d where m_id=%s and apply_flag=1'),('*F6A965C84BF873A',11,'upDate member_mousepass set validity_time=unix_timestamp(now())+%d where m_id=%s'),('*EDEA5AEAFDFCBE8',12,'seLect m_id, passwd,first_ssn, second_ssn,DATE_FORMAT(from_unixtime(reg_date),\'%%Y%%m%%d%%H\'),user_name,email,hangame_flag,reg_date from  member_info  where  user_id=\'%s\' and hangame_flag=%d'),('*564DFD026EEB2BD',13,'seLect login_time,expire_time,report_cnt,last_play_time,account_fail,total_account_fail,reliable_flag,trade_gold_daily,login_ip,security_flag,dungeon_gain_gold,school_id,rating,tutorial_skipable,event_charac_flag from %s where m_id=%s'),('*C8BE6995508778D',14,'inSert into %s(m_id, login_time, login_ip) values(%s, %d, \'%s\') on duplicate key upDate login_time=%d, login_ip=\'%s\''),('*D1DCFEA6BC37D05',15,'seLect punish_type, unix_timestamp(occ_time), punish_value, apply_flag, unix_timestamp(start_time), unix_timestamp(end_time) from member_punish_info where m_id=%s and apply_flag>=1 LIMIT %d'),('*D0940D92B1930FB',16,'seLect unix_timestamp(last_check_time), unix_timestamp(m_opt_reg), unix_timestamp(pc_opt_reg), unix_timestamp(security_card_reg), unix_timestamp(goblin_pass_mod), unix_timestamp(member_pc_reg), unix_timestamp(gatekeeper_otp_reg), goblin_validity_time>unix_timestamp(now()), security_card_validity_time>unix_timestamp(now()), validity_ip from member_security_grade where m_id = %s '),('*0866AB6194418A6',17,'seLect event_id,unix_timestamp(occ_date),server_id,charac_no,unix_timestamp(obtain_date) from dnf_event_entry where m_id=%s and server_id in(0,%d)'),('*30CB1A14F25A5BC',18,'seLect info,hash_key,password(info),slot_effect_count,charac_slot_limit from charac_view where m_id=%s'),('*EA33583E60E9654',19,'seLect message_flag from charac_link_message where m_id=%s'),('*9D5A23A13D6029C',20,'seLect accrue_cera, play_info, last_reward_time, first_reward_time, luck_point, last_update_time, add_info, second_reward_time, quest_time from churn_member_info where m_id=%s'),('*B3D29C5E2CFE7B3',21,'seLect cleanpad_point from member_login where m_id=%s'),('*0D8A2642B652F86',22,'seLect count(*) from geo_allow where allow_ip = \'%s\''),('*0CEBE556A8B0174',23,'insert into member_join_info(m_id, reg_date, ip) values(%d, now(), \'%s\')'),('*3E8762F35887514',24,'seLect unix_timestamp(expire_time), first_login from return_user where m_id=%s and expire_time > now()'),('*7D66076A1D3D723',25,'seLect  member_bonus_fatigue , update_time , login_ip , inform_notice  from login_common where m_id=%s'),('*33E242F4260B9DC',26,'seLect check_count from check_pick_up_random_option_item where m_id = %s'),('*E148337C1C4591F',27,'seLect last_no from event_1112_ontime_user_%u where m_id=%s'),('*BB2C4492FBACE57',28,'seLect type , history_1 ,history_2 from event_ingame_history where m_id=%s order by type desc'),('*2DEAF1FBE9ECC24',29,'upDate login_account_%d set m_channel_no=%d,login_status=1,last_login_date=now(),login_ip=\'%s\' where m_id=%s'),('*12CCE217D251A93',30,'seLect option_1,option_3,shortcut_emoticon from %s where m_id = %s'),('*BA8974100570DB9',31,'seLect capacity, money, cargo from account_cargo where m_id = %s'),('*75078C8B6AB83EC',32,'seLect hack_type,cnt from dnf_hack_log where m_id=%s and (hack_type>=%d and hack_type<%d) and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)'),('*4F8D59BAEEDD8BF',34,'seLect count, unix_timestamp(last_access_time) from limit_create_character where m_id=%s'),('*6FCDD1351CE70C3',35,'seLect count(*) from charac_info where m_id=%s and delete_flag=0'),('*9B532D58147AB8E',36,'seLect delete_flag from %s.charac_info where charac_name=\'%s\''),('*80A292621858C9E',37,'inSert into charac_info (m_id,charac_name,job,sex,maxHP,maxMP,phy_attack,phy_defense,mag_attack,mag_defense,element_resist,spec_property,inven_weight,hp_regen,mp_regen,move_speed,attack_speed,cast_speed,hit_recovery,jump,charac_weight,max_fatigue,create_time,expert_job,event_charac_level) values(%s,\'%s\',%d,%d,%d,%u,%d,%d,%d,%d,\'%s\',\'%s\',%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,NOW(),%d,%d)'),('*F333A424343897E',38,'inSert into charac_stat (charac_no,HP, forbidden_to_play, forbidden_due_to) values(%d,100,0,0)'),('*1FE889E4A44E945',39,'inSert into inventory (charac_no, inventory,coin) values(%u, \'%s\',%d)'),('*0886551D3574D19',40,'inSert into charac_inven_expand(charac_no,cargo,cargo_capacity,jewel) values(%u,\'\',0,\'\')'),('*CBA2F6168DA3330',41,'upDate inventory set equipslot=\'%s\' where charac_no = %u'),('*5F7EF9CED9C9810',42,'inSert into skill (charac_no, remain_sp ,skill_slot, skill_slot_2nd) values(%u,%u, \'%s\', \'%s\')'),('*6C23CB9728674FD',43,'inSert into pvp_result (charac_no) values(%u)'),('*AAB936D95D03884',44,'seLect * from member_dungeon where m_id=%s'),('*BF3101E9BF92946',45,'inSert into member_dungeon (m_id,dungeon) values (%s,\'\')'),('*212BFB5CD9391F4',46,'inSert into new_charac_quest(charac_no, clear_quest) values(%u,\'\')'),('*8479FEE928048C2',47,'inSert into charac_npc(charac_no,npc_cnt,npc_data) values(%d,0,\'\')'),('*79247043844DD1C',48,'upDate limit_create_character set count=count+1, last_access_time=now() where m_id=%s'),('*522CA6408A3BB8D',49,'inSert into limit_create_character(m_id, count, last_access_time) values(%s, 1, now() )'),('*AA4DC6312B0C1D7',50,'upDate charac_view set info=\'%s\' where m_id=%s'),('*2828FB81EF97A47',51,'inSert into charac_view(m_id,info) values(%s,\'%s\')'),('*6FDB1156CD1B096',53,'seLect key_option from member_key_option where m_id = %s and key_type = %d'),('*05E8F5A2887666A',54,'seLect charac_no,charac_name,job,lev,grow_type,maxHP,maxMP,phy_attack,phy_defense,mag_attack,mag_defense,inven_weight,hp_regen,mp_regen,move_speed, attack_speed, cast_speed, hit_recovery, jump, charac_weight, max_fatigue, create_time,guild_id,guild_right,max_premium_fatigue,member_flag,element_resist,spec_property,m_id,expert_job, skill_tree_index, event_charac_level, guild_secede from charac_info where charac_no=%d and delete_flag!=1'),('*7C164A853A62E80',55,'seLect village,exp,HP,fatigue,premium_fatigue,unix_timestamp(last_play_time),used_fatigue,tutorial_flag,trade_gold_total,trade_gold_daily,open_flag,chaos_point,chaos_exp,chaos_mode_count,chaos_kill_count,chaos_die_count,unix_timestamp(chaos_die_time),assault_count,luck_point,dungeon_play_count,unix_timestamp(chaos_kill_time),help_abuse_ratio,help_abuse_exp,expert_job_exp,fatigue_battery_charging,escalade_tutorial_flag,power_war_point,village_prev,power_war_assault_count,power_war_assault_victory_count,unix_timestamp(last_play_time_powerwar),fatigue_grownup_buff,emotion,add_slot_flag,member_dungeon_flag,member_bonus_fatigue,last_play_dungeon_index, add_equipslot_flag, channel_equipslot_switch, expand_equipslot_switch, visible_flags, growth_power_reward, unix_timestamp(chaos_respon_time) from charac_stat where charac_no=%u'),('*8BB198BC538003B',56,'seLect black_point,offset_point,unix_timestamp(problem_child_time) from charac_black_info where charac_no=%d'),('*D000424F1E5E4FE',57,'seLect money,coin,inventory,equipslot,pay_coin,event_coin,creature,creature_flag,inventory_capacity from inventory where charac_no=%u'),('*36390EB93F160D3',58,'seLect ifnull(min(avatar_coin),0) as avatar_coin from member_avatar_coin where m_id = %s'),('*649FA4CF665AA88',59,'seLect slot,it_id,unix_timestamp(expire_date),ability_no,ipg_agency_no,unix_timestamp(reg_date),ui_id,clear_avatar_id,jewel_socket,item_lock_key, hidden_option, emblem_endurance, color1, color2, trade_restrict from user_items where charac_no=%u and expire_date>now() and stat=0 limit %d'),('*1305E6FD9E0A6E0',60,'seLect cargo_capacity,cargo,jewel,expand_equipslot from charac_inven_expand where charac_no=%u'),('*E65B749D250A384',61,'seLect item_lock_info  from charac_item_lock_info where charac_no=%u'),('*87949C4632B909B',62,'seLect max_equip_level from charac_manage_info where charac_no = %d'),('*694F379E098E87E',63,'seLect charac_no, clear_quest,play_1, play_1_trigger, play_2, play_2_trigger, play_3, play_3_trigger, play_4, play_4_trigger, play_5, play_5_trigger,play_6, play_6_trigger, play_7, play_7_trigger, play_8, play_8_trigger, play_9, play_9_trigger, play_10, play_10_trigger,play_11, play_11_trigger, play_12, play_12_trigger, play_13, play_13_trigger, play_14, play_14_trigger, play_15, play_15_trigger,play_16, play_16_trigger, play_17, play_17_trigger, play_18, play_18_trigger, play_19, play_19_trigger, play_20, play_20_trigger,urgentQuestIndex,quest_notify from new_charac_quest  where charac_no=%u'),('*4FD6DD20307227E',64,'seLect dungeon from member_dungeon where m_id=%s'),('*650D17063FE5B17',65,'seLect boss_info, named_info, apc_boss_info from charac_kill_monster_info where charac_no=%u'),('*14C6FF15FBFC12C',66,'inSert into charac_kill_monster_info (charac_no) values(%u)'),('*8E88FA18C510556',67,'select ridable_id, ticket_free, ticket_cera, 				  star_game, star_cera, star_usable, 				  survival_best, star_reset_count, is_unlock_stage_effect, 				  stage_list, slot_list, buy_item_list, reward_list 				  from charac_advance_altar					  where charac_no = %u'),('*15B14AFB6ED4FC1',68,'seLect win,lose,pvp_point,pvp_grade,avg_kill_count,avg_buf_count,avg_debuf_count,avg_heal_count,avg_counter_count,avg_back_atk_count,avg_union_hit_count,avg_overkill_count,avg_combo_count,avg_aerial_count,avg_attacked_count,avg_deal_damage,avg_technic,avg_style,avg_hit_penalty,pvp_count,win_point,pvp_grade_ext,unix_timestamp(last_play_time),play_count,play_time,unix_timestamp(pvp_grade_ext_update_time) from pvp_result where charac_no=%u'),('*6C0BEC32ED9F159',69,'seLect cooltime_item, effect_item, check_flag from charac_item_stat where charac_no=%u'),('*07AFB07DBC65EDB',70,'seLect remain_sp,skill_slot,remain_sp_2nd, skill_slot_2nd, remain_sfp_1st, remain_sfp_2nd, skill_command, skill_slot_lethe, lethe_flag, skill_slot_lethe_2nd, lethe_flag_2nd,script_version from %s where charac_no=%u'),('*A1F42D127A9198D',71,'seLect clear_cnt from event_dungeon_clear where charac_no=%u'),('*129F502F8C11EFE',72,'seLect redeem_info from charac_inven_expand where charac_no=%u'),('*525715341690085',73,'seLect pvp_mission_info from fair_pvp_score where charac_no=%u'),('*D91AAA585221014',74,'seLect unix_timestamp(first_layer_start_date),today_enter_count,last_clear_layer,enter_count_by_week,unix_timestamp(m_date),unix_timestamp(last_clear_date) from charac_tower_despair where charac_no = %u'),('*B5ACE8F8933D4D9',75,'seLect attack_count, revenge_dungeon from village_attack_dungeon 						   where occ_date = \'%s\' and charac_no = %u'),('*1F85B727DA6B39E',76,'seLect private_win,private_lose,private_draw,relay_battle_win, relay_battle_lose, relay_battle_draw,relay_battle_2kill, relay_battle_3kill, successive_win, max_successive_win, job_score,daily_play_count, unix_timestamp(last_play_time), give_item from fair_pvp_score where charac_no=%u'),('*87F4624D7196F88',77,'inSert into fair_pvp_score (charac_no) values(%u)'),('*AFBA91E55BCE673',78,'seLect weapon, cloth, leather, light_armor, heavy_armor, plate, amulet, wrist, ring, support, magic_stone from item_making_skill_info where charac_no=%u'),('*1F9F869853FB30A',79,'seLect qp, init_count, max_hp, max_mp, psy_attack, psy_defense, mag_attack, mag_defence, move_speed, attack_speed, hp_regen, mp_regen, all_element_resist, fire_element_resist, water_element_resist, light_element_resist, dark_element_resist, all_element_attack,fire_element_attack, water_element_attack, light_element_attack, dark_element_attack, psy_critical, mag_critical, good_hit , evasion , hit_recovery , separate_psy_mag_attack , quest_piece from charac_quest_shop where charac_no=%u'),('*35B7616EED5F352',80,'seLect general_section, specific_section, despair, event from charac_titlebook where charac_no=%u'),('*A87B4A75010E355',81,'seLect achievement, unix_timestamp(last_update_time) from charac_achievement where charac_no=%u'),('*CC8B459EF6F2F95',82,'seLect m_id from event_1107_avenger_plan where m_id=%s'),('*D6FAB89779A40FD',83,'seLect option_type, value_1 from aura_avatar_option where charac_no=%u'),('*08852DD9D1CBED9',84,'seLect options , best_clear_time, blue_marble_enter_count, charac_inform_notice from charac_option where charac_no=%u'),('*E421B65CB676688',85,'seLect gage from member_booster_gage where m_id=%u'),('*050D7A72626D7EB',86,'seLect id,it_id,stack_count,event_code from charac_event_items where charac_no=%d and delete_flag=0 limit %d'),('*6905051F282F689',87,'seLect tower_index, 		member_info_1,stage_1,play_time_1, 		member_info_2,stage_2,play_time_2, 		member_info_3,stage_3,play_time_3, 		member_info_4,stage_4,play_time_4 		from charac_tower_record where charac_no=%d limit %d'),('*CE5B6D15C17B4F5',88,'upDate postal set delete_flag=%d where receive_charac_no=%d and unlimit_flag=0 and occ_time<subdate(now(),interval %d day) and delete_flag=0'),('*71B33EC3586BB17',89,'seLect postal_id,unix_timestamp(occ_time),send_charac_no,seal_flag,item_id,add_info,endurance,upgrade,gold,send_charac_name,unlimit_flag,avata_flag,creature_flag,letter_id,extend_info,item_guid,amplify_option,amplify_value,random_option,seperate_upgrade,type from postal where receive_charac_no=%d and delete_flag=0 %s and (unlimit_flag=1 or occ_time>subdate(now(),interval 15 day)) order by postal_id limit %d'),('*4444F1021F41B71',90,'deLete from letter where charac_no=%d and reg_date<subdate(now(),interval %d day) and stat=%d'),('*596B7A7E73B8AAF',91,'seLect letter_id,send_charac_no,send_charac_name,letter_text,unix_timestamp(reg_date),stat from letter where (charac_no=%d and stat = 3) or (charac_no=%d and reg_date>subdate(now(),interval %d day)) order by letter_id'),('*5E0CA0F3E5300A9',92,'upDate member_key_option set key_option=\'%s\' where m_id=%s and key_type=%d'),('*CE94EE86D8B15BE',93,'inSert into member_key_option(m_id, key_type, key_option) values(%s,%d,\'%s\')'),('*809DE78DC90E221',94,'seLect store, use_doll from store where charac_no=%d'),('*C3D33DDEDABE200',95,'upDate %s set shortcut_emoticon=\'%s\' where m_id=%s'),('*37458875A1038D0',96,'inSert into %s(m_id, shortcut_emoticon) values(%s,\'%s\')'),('*2F6074AB3B90893',97,'seLect week_point,week_enter_count,week_use_gold,unix_timestamp(last_play_date),enter_count,rank,reward,reward_item_id,reward_gold from charac_blood_dungeon_reward where charac_no=%d and week_occ_date = cast(from_unixtime(%d) as date)'),('*C2D8D2936541F6D',98,'seLect rank,reward,reward_item_id,reward_gold from charac_blood_dungeon_reward where charac_no=%d and week_occ_date = cast(from_unixtime(%d) as date)'),('*1A40A3D0F03DEF4',99,' seLect event_id, charac_no from event_reward_item_arad  where (m_id = %u and end_date > from_unixtime(%u))  order by occ_date desc limit 10 '),('*07624510784C702',100,'upDate %s set charac_no=%u, occ_date=now() where m_id=%u'),('*E590CB17E293787',101,'inSert into %s(m_id, charac_no, occ_date) values(%u, %u, now())'),('*FF94EBEB9221631',102,'seLect ipg_no, count, next_date from account_cerashop_restrict where m_id = %u and end_date > UNIX_TIMESTAMP() limit 10'),('*B5640B169FC2666',103,'seLect ipg_no, count, next_date from charac_cerashop_restrict where charac_no = %u and end_date > UNIX_TIMESTAMP() limit 10'),('*80C73FECCABA3F1',104,'seLect m_id from mobile_auth_reward_tw where m_id=%s'),('*29220699254C9C1',105,'inSert into mobile_auth_reward_tw(m_id,occ_date) VALUES(%s,now())'),('*8C7DF0C570EA7AE',106,'inSert into letter(charac_no,send_charac_no,send_charac_name,letter_text,reg_date,stat) values(%d,%d,\'%s\',\'%s\',from_unixtime(%d),%d)'),('*92489EA005903C1',107,'inSert into postal(occ_time,send_charac_no,receive_charac_no,seal_flag,item_id,add_info,endurance,upgrade ,amplify_option,amplify_value,gold,send_charac_name,creature_flag,avata_flag,letter_id,extend_info,item_guid,random_option,seperate_upgrade,unlimit_flag) values %s'),('*B4911272DAD50B5',108,'seLect miles from member_miles where m_id = %u'),('*67A02944012343D',109,'inSert into member_miles (m_id, miles, daily_miles) values (%u, 0, 0)'),('*A905C56F50923AA',112,'seLect m_id from event_1306_account_reward_2nd where m_id=%s and occ_date > FROM_UNIXTIME(%d)'),('*7D9D7F41EEB73DB',113,'inSert into event_1306_account_reward_2nd (m_id , charac_no , occ_date ) values (%s , %u , now())'),('*EEFA5ABF8FC3559',114,'upDate inventory set money=%u,coin=%d,pay_coin=%d,event_coin=%d  where charac_no=%u'),('*C3E93F3C1D7D962',115,'inSert into member_avatar_coin (m_id , avatar_coin ) values (%s , %u) on duplicate key upDate avatar_coin = %u '),('*1C27A2E86DA4FEA',119,'inSert into dnf_event_entry(event_id,m_id,occ_date,server_id,charac_no,obtain_date) values(%d,%s,from_unixtime(%d),%d,%d,from_unixtime(%d))'),('*BB89673DA996520',120,'upDate member_premium set service_end=from_unixtime(%d) where event_id=%d and pre_type=%d and m_id=%s and service_end>from_unixtime(%d) and server_id=%d'),('*43D527158EFDE8E',121,'inSert into member_premium(pre_type,m_id,service_start,service_end,event_id,server_id) values(%d,%s,from_unixtime(%d),from_unixtime(%d),%d,%d)'),('*8BDC6E486E5C079',122,'upDate postal set delete_flag=%d,receive_time=now() where postal_id=%d'),('*A310703E99DFB8A',123,'deLete from letter where letter_id = %d'),('*6773E38D9FBFF0B',129,'inSert into log_game_channel(gc_up_time,gc_game,gc_no,gc_channel,gc_ch_group,gc_ip,gc_now,gc_new,gc_out) values(now(),%d,%d,\'%s\',%d,\'%s\',%d,%d,%d)'),('*2B4EF13CA44D8B5',130,'inSert into log_response_time_%s(channel_no,occ_time,packet_id,packet_count,total_response_time,avg_response_time) values%s'),('*51C260B7135B773',133,'upDate %s set option_1=\'%s\' where m_id=%s'),('*D7DA33A416F3D2A',147,'upDate charac_info set lev=%d,grow_type=%d,maxHP=%d,maxMP=%d,phy_attack=%d,phy_defense=%d,mag_attack=%d,mag_defense=%d,inven_weight=%d,hp_regen=%d,mp_regen=%d,move_speed=%d,attack_speed=%d,cast_speed=%d,hit_recovery=%d,jump=%d,charac_weight=%d,element_resist=\'%s\',spec_property=\'%s\',max_premium_fatigue=%d,guild_right=%d,expert_job=%d,skill_tree_index=%d, event_charac_level=%d where charac_no = %u'),('*E2B77616B53A789',148,'upDate charac_stat set village=%d,exp=%d,HP=%d,fatigue=%d,premium_fatigue=%d,last_play_time=from_unixtime(%d),used_fatigue=%d,tutorial_flag=%d,trade_gold_total=%d,trade_gold_total_billion=trade_gold_total_billion+%d,trade_gold_daily=%d,help_abuse_ratio=%d,help_abuse_exp=%d,chaos_point=%d,chaos_exp=%d,chaos_mode_count=%d,chaos_kill_count=%d,chaos_die_count=%d,chaos_die_time=from_unixtime(%d),assault_count=%d,luck_point=%d,dungeon_play_count=%d,chaos_kill_time=from_unixtime(%d),expert_job_exp=%d,open_flag=%d,fatigue_battery_charging=%d,escalade_tutorial_flag=\'%s\',power_war_point=%d,village_prev=%d,power_war_assault_count=%d,power_war_assault_victory_count=%d,last_play_time_powerwar=from_unixtime(%d),fatigue_grownup_buff=%d, emotion=%d, add_slot_flag=%d, member_dungeon_flag=%d, member_bonus_fatigue=%d, last_play_dungeon_index=%u, add_equipslot_flag=%d, channel_equipslot_switch=%d, expand_equipslot_switch=%d, visible_flags=%d, growth_power_reward=%d, chaos_respon_time=from_unixtime(%d) where charac_no = %u'),('*ED163853BC75E97',149,'upDate %s set expire_time=%d,last_play_time=%d,report_cnt=%d,trade_gold_daily=%d,dungeon_gain_gold=%d,rating=%f,tutorial_skipable=%d where m_id=%s'),('*E6162ADE91B7746',150,'upDate charac_inven_expand set expand_equipslot=\'%s\' where charac_no=%u'),('*5693D22737AB34B',151,'upDate charac_stat set channel_equipslot_switch=%d, expand_equipslot_switch=%d where charac_no = %u'),('*3B231024A8A4495',152,'upDate inventory set money=%u,coin=%d,pay_coin=%d,event_coin=%d,equipslot=\'%s\',inventory=\'%s\',creature=\'%s\' where charac_no=%u'),('*72902F3BE34AE6E',153,'upDate charac_inven_expand set cargo_capacity=%d,cargo=\'%s\',jewel=\'%s\' where charac_no=%u'),('*2D1936103F95274',154,'upDate %s set remain_sp=%u,skill_slot=\'%s\',remain_sp_2nd=%u, skill_slot_2nd=\'%s\', remain_sfp_1st=%u, remain_sfp_2nd=%u, skill_command =\'%s\',script_version=%d where charac_no=%u'),('*6CD0BD2FF4B7FE7',155,'upDate member_dungeon set dungeon=\'%s\' where m_id=%s'),('*107E3DA9031127B',156,'upDate new_charac_quest set clear_quest=\'%s\', play_1=%d, play_1_trigger=%d, play_2=%d, play_2_trigger=%d, play_3=%d, play_3_trigger=%d, play_4=%d, play_4_trigger=%d, play_5=%d, play_5_trigger=%d,play_6=%d, play_6_trigger=%d, play_7=%d, play_7_trigger=%d, play_8=%d, play_8_trigger=%d, play_9=%d, play_9_trigger=%d, play_10=%d, play_10_trigger=%d, play_11=%d, play_11_trigger=%d, play_12=%d, play_12_trigger=%d, play_13=%d, play_13_trigger=%d, play_14=%d, play_14_trigger=%d, play_15=%d, play_15_trigger=%d,play_16=%d, play_16_trigger=%d, play_17=%d, play_17_trigger=%d, play_18=%d, play_18_trigger=%d, play_19=%d, play_19_trigger=%d, play_20=%d, play_20_trigger=%d,urgentQuestIndex=%d,quest_notify=\'%s\' where charac_no=%u'),('*66C50E7C7937392',157,'upDate login_common set inform_notice = \'%s\' where m_id = %s'),('*49546969A5DD98F',158,'upDate dnf_hack_log set charac_no=%d,last_time=now(),cnt=cnt+%d,etc=%d where m_id=%s and hack_type=%d and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)'),('*FAE28CE7F757B41',159,'inSert into dnf_hack_log(m_id,charac_no,hack_type,occ_date,last_time,etc,cnt) values(%s,%d,%d,cast(now() as date),now(),%d,%d)'),('*DAF56D495D5BE5E',162,'upDate charac_inven_expand set redeem_info=\'%s\' where charac_no=%u'),('*1B44B175A6FD0DC',163,'upDate fair_pvp_score set pvp_mission_info=\'%s\' where charac_no=%u'),('*2677DC6369817CB',164,'upDate charac_quest_shop set qp=%u, init_count=%u, max_hp=%d, max_mp=%d, psy_attack=%d, psy_defense=%d, mag_attack=%d, mag_defence=%d, move_speed=%d, attack_speed=%d, hp_regen=%d, mp_regen=%d, all_element_resist=%d, fire_element_resist=%d, water_element_resist=%d, light_element_resist=%d, dark_element_resist=%d, all_element_attack=%d,fire_element_attack=%d, water_element_attack=%d, light_element_attack=%d, dark_element_attack=%d, psy_critical=%d, mag_critical=%d, good_hit=%d, evasion=%d, hit_recovery=%d, separate_psy_mag_attack=%d, quest_piece=%d where charac_no=%u'),('*FC26C8B8A0B88F2',165,'inSert into charac_quest_shop(charac_no, qp, init_count, max_hp, max_mp, psy_attack, psy_defense, mag_attack, mag_defence, move_speed, attack_speed, hp_regen, mp_regen, all_element_resist, fire_element_resist, water_element_resist, light_element_resist, dark_element_resist, all_element_attack,fire_element_attack, water_element_attack, light_element_attack, dark_element_attack, psy_critical, mag_critical, good_hit , evasion , hit_recovery , separate_psy_mag_attack , quest_piece) values(%u, %u, %u, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)'),('*3E94BFC2721137C',166,'upDate charac_kill_monster_info set boss_info=\'%s\', named_info=\'%s\', apc_boss_info=\'%s\' where charac_no=%u'),('*8152AFD38279FF4',167,'upDate charac_titlebook set general_section=\'%s\', specific_section=\'%s\', despair=\'%s\', event=\'%s\' where charac_no=%u'),('*9A65A92006556AE',168,'inSert into charac_titlebook(charac_no, general_section, specific_section, despair, event) values(%u, \'%s\',\'%s\',\'%s\',\'%s\')'),('*B84F688F158F40D',169,'upDate charac_achievement set achievement=\'%s\', last_update_time=now() where charac_no=%u'),('*4A611DB1073E4CA',170,'inSert into charac_achievement(charac_no, achievement, last_update_time) values(%u, \'%s\', now())'),('*679C2EE43100F0C',171,'upDate charac_option set best_clear_time = \'%s\' where charac_no=%u'),('*4774599D6A3B5E5',172,'inSert into charac_option(charac_no, best_clear_time) values(%u, \'%s\')'),('*ECDA6299A85BD66',173,'upDate event_dungeon_clear set clear_cnt=%d, update_time=now() where charac_no=%u'),('*725DE8C94D94865',174,'inSert into event_dungeon_clear(charac_no, clear_cnt, update_time) values(%u, %d, now())'),('*ED4DFE0996CA893',175,'upDate charac_option set options = \'%s\' where charac_no= %u'),('*435C259A7B3486E',176,'upDate charac_option set blue_marble_enter_count = %u where charac_no = %u'),('*85BC1AFB4D2BE51',177,'inSert into charac_option(charac_no, blue_marble_enter_count) values(%u, %u)'),('*6C8081DFDB9D713',244,'upDate charac_stat set total_play_time=total_play_time + %d where charac_no = %d'),('*935F55732A8212D',245,'seLect pre_type,unix_timestamp(service_start),unix_timestamp(service_end) from member_premium where m_id=%s and event_id=%d and service_end>now() and server_id in(0,%d) order by service_end desc limit 1'),('*5C4B2E64CA6AEC0',257,'inSert into concurrent_user_status(occ_time,player_status,dungeon_index,channel_no,occ_count) values(from_unixtime(%d),%d,%d,%d,%d)');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_query_ref@007e` (
  `query_hash` varchar(16) NOT NULL DEFAULT '',
  `q_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `query` text NOT NULL,
  PRIMARY KEY (`q_id`),
  UNIQUE KEY `query_hash` (`query_hash`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_account_1` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_channel_no` int(11) NOT NULL DEFAULT '0',
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `login_account_1` VALUES (1,3011,1,'2020-09-03 23:24:35','192.168.50.2');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_account_2` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_channel_no` int(11) NOT NULL DEFAULT '0',
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_account_3` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `m_channel_no` int(11) NOT NULL DEFAULT '0',
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_history` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` int(11) NOT NULL DEFAULT '0',
  `trigger` tinyint(4) NOT NULL DEFAULT '0'
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
CREATE TABLE `member_doubt_trade` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `last_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `over_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_game_option` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `option_1` blob NOT NULL,
  `option_2` blob NOT NULL,
  `option_3` blob NOT NULL,
  `shortcut_emoticon` blob NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_game_option` VALUES (1,0x48000000789C63646064F85FCFCCC0C7C0C98000FFEB191918C13220C80C157BC10C1267038A230023140200D5FF0B8C,'','',0x10020000789C636018058319686115D5C62AAA83555417ABA81E56517D06003C02010C);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_game_option_1` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `option_1` blob NOT NULL,
  `option_2` blob NOT NULL,
  `option_3` blob NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_join_info` (
  `m_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `contry_code` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `error_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `game_use_history` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_ip` (`ip`),
  KEY `idx_reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_key_option` (
  `m_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `key_type` tinyint(4) NOT NULL DEFAULT '0',
  `key_option` blob NOT NULL,
  PRIMARY KEY (`m_id`,`key_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_login` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `login_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_play_time` int(10) unsigned NOT NULL DEFAULT '0',
  `total_account_fail` int(10) unsigned NOT NULL DEFAULT '0',
  `account_fail` tinyint(4) NOT NULL DEFAULT '0',
  `report_cnt` int(11) NOT NULL DEFAULT '0',
  `reliable_flag` tinyint(4) NOT NULL DEFAULT '0',
  `trade_gold_daily` int(10) unsigned NOT NULL DEFAULT '0',
  `last_gift_time` int(10) unsigned NOT NULL DEFAULT '0',
  `gift_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `security_flag` tinyint(4) NOT NULL DEFAULT '0',
  `power_side` tinyint(4) NOT NULL DEFAULT '0',
  `dungeon_gain_gold` int(10) unsigned NOT NULL DEFAULT '0',
  `school_id` int(11) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `cleanpad_point` int(10) unsigned NOT NULL DEFAULT '0',
  `tutorial_skipable` char(1) NOT NULL DEFAULT '0',
  `event_charac_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `garena_token_key` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_mousepass` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `mousepass` varchar(32) NOT NULL DEFAULT '',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fail_cnt` tinyint(4) NOT NULL DEFAULT '0',
  `cancel_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_info` char(1) NOT NULL DEFAULT '1',
  `validity_time` int(11) NOT NULL DEFAULT '0',
  `reward_time` int(11) NOT NULL DEFAULT '0',
  `enable_flag` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_mousepass_history` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `pre_mousepass` varchar(32) NOT NULL DEFAULT '',
  `modify_type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_play_info` (
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `play_time` int(10) unsigned NOT NULL DEFAULT '0',
  `play_count` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_cnt` int(11) NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `used_fatigue` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `last_play_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pcbang_flag` tinyint(4) NOT NULL DEFAULT '0',
  `end_ip` varchar(3) NOT NULL DEFAULT '',
  `ting_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mac_addr` varchar(64) NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_date`,`m_id`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_play_info` VALUES ('2020-09-03',1,2610,5,0,33067,21,'192.168.50',1599145727,0,'2',0,'6EE0FB433F713B155AF5A75695CAD342F77A6FEB97A9C813FEE153A4C4D52849',1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_play_info_del` (
  `sdate` date NOT NULL DEFAULT '0000-00-00',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `play_time` int(10) unsigned NOT NULL DEFAULT '0',
  `play_count` int(10) unsigned NOT NULL DEFAULT '0',
  `trade_cnt` int(11) NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `used_fatigue` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `last_play_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pcbang_flag` tinyint(4) NOT NULL DEFAULT '0',
  `end_ip` varchar(3) NOT NULL DEFAULT '',
  `ting_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mac_addr` varchar(64) NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sdate`,`occ_date`,`m_id`),
  KEY `idx_m_id` (`m_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_premium` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `pre_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `server_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `service_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `service_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`,`pre_type`,`server_id`,`m_id`,`service_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `member_premium` VALUES (50016,79,0,1,'2020-09-03 23:11:58','2020-09-10 23:11:58');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_premium_old` (
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
CREATE TABLE `member_security_card` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `phone` varchar(11) NOT NULL DEFAULT '',
  `cert_key` varchar(12) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `card` varchar(255) NOT NULL DEFAULT '',
  `fail_cnt` tinyint(4) NOT NULL DEFAULT '0',
  `re_issue_cnt` tinyint(4) NOT NULL DEFAULT '0',
  `last_issue_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `validity_time` int(11) NOT NULL DEFAULT '0',
  `apply_flag` tinyint(4) NOT NULL DEFAULT '0',
  `cancel_cnt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `web_flag` tinyint(4) NOT NULL DEFAULT '0',
  `cert_flag` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `idx_phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_security_card_history` (
  `occ_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `m_id` int(11) NOT NULL DEFAULT '0',
  `modify_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`occ_time`,`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nexon_none_memner_restriction` (
  `m_id` int(11) unsigned NOT NULL DEFAULT '0',
  `charac_id` int(11) unsigned NOT NULL DEFAULT '0',
  `last_trade_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total_trade_gold` int(12) unsigned NOT NULL DEFAULT '0',
  `trade_count` smallint(6) unsigned NOT NULL DEFAULT '0',
  `nexon_user` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `hashs` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village_attacked_charac_point_rank` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `charac_no` int(10) unsigned NOT NULL DEFAULT '0',
  `hunting_point` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_info`,`occ_date`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village_attacked_server_point_rank` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `hunting_point` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_info`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village_attacked_server_time_rank` (
  `server_info` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `occ_date` date NOT NULL DEFAULT '0000-00-00',
  `clear_time` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`server_info`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
