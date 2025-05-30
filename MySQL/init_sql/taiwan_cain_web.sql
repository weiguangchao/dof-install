
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `taiwan_cain_web` /*!40100 DEFAULT CHARACTER SET big5 */;

USE `taiwan_cain_web`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_aicharacter_info` (
  `idx` int(10) unsigned NOT NULL DEFAULT '0',
  `ai_name_kr` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnf_artifact_info` (
  `it_id` int(11) NOT NULL DEFAULT '0',
  `creature_min_level` int(11) NOT NULL DEFAULT '0',
  `physical_attack` int(11) NOT NULL DEFAULT '0',
  `magical_attack` int(11) NOT NULL DEFAULT '0',
  `skill_consume_mp_rate` float NOT NULL DEFAULT '0',
  `skill_charge_time_rate` float NOT NULL DEFAULT '0',
  `skill_overcharge_time_rate` float NOT NULL DEFAULT '0',
  `experience_amount` float NOT NULL DEFAULT '0',
  `physical_critical_hit` float NOT NULL DEFAULT '0',
  `magical_critical_hit` float NOT NULL DEFAULT '0',
  `stuck` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`it_id`)
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
  `artifact_slot` varchar(3) NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
