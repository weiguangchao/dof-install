/*
 Navicat Premium Data Transfer

 Source Server         : dnf-local
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : localhost:5000
 Source Schema         : taiwan_login

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 19/11/2021 10:40:25
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for allow_proxy_user
-- ----------------------------
DROP TABLE IF EXISTS `allow_proxy_user`;
CREATE TABLE `allow_proxy_user` (
  `m_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allow_proxy_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_punish_blackip_info
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_blackip_info`;
CREATE TABLE `auto_punish_blackip_info` (
  `ip` varchar(11) NOT NULL default '',
  `start_ip` tinyint(3) unsigned NOT NULL default '0',
  `end_ip` tinyint(3) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `apply_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`ip`,`start_ip`,`end_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_punish_blackip_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_punish_first_user
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_first_user`;
CREATE TABLE `auto_punish_first_user` (
  `m_id` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `ip` varchar(15) NOT NULL default '',
  `hack_type` smallint(5) unsigned NOT NULL default '0',
  `cnt` int(10) unsigned NOT NULL default '0',
  `punish_flag` tinyint(4) NOT NULL default '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL default '0',
  `hack_sub_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`hack_type`,`hack_sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_punish_first_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_punish_hack_full_ip
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_hack_full_ip`;
CREATE TABLE `auto_punish_hack_full_ip` (
  `occ_date` date NOT NULL default '2021-11-19',
  `hack_type` smallint(5) unsigned NOT NULL default '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL default '0',
  `full_ip` varchar(15) NOT NULL default '',
  `cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`occ_date`,`hack_type`,`hack_sub_type`,`full_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_punish_hack_full_ip
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_punish_hack_info
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_hack_info`;
CREATE TABLE `auto_punish_hack_info` (
  `hack_type` smallint(5) unsigned NOT NULL default '0',
  `cnt` int(10) unsigned NOT NULL default '0',
  `etc` bigint(20) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `apply_flag` tinyint(4) NOT NULL default '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL default '0',
  `hack_sub_cnt` int(10) unsigned NOT NULL default '0',
  `ip_cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`hack_type`,`apply_flag`,`hack_sub_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_punish_hack_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_punish_hack_ip
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_hack_ip`;
CREATE TABLE `auto_punish_hack_ip` (
  `occ_date` date NOT NULL default '2021-11-19',
  `hack_type` smallint(5) unsigned NOT NULL default '0',
  `hack_sub_type` smallint(5) unsigned NOT NULL default '0',
  `c_class_ip` varchar(12) NOT NULL default '',
  `cnt` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`occ_date`,`hack_type`,`hack_sub_type`,`c_class_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_punish_hack_ip
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_punish_second_log
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_second_log`;
CREATE TABLE `auto_punish_second_log` (
  `m_id` int(11) NOT NULL default '0',
  `hack_m_id` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `trade_cnt` int(10) unsigned NOT NULL default '0',
  `trade_gold` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`hack_m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_punish_second_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auto_punish_second_user
-- ----------------------------
DROP TABLE IF EXISTS `auto_punish_second_user`;
CREATE TABLE `auto_punish_second_user` (
  `m_id` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `total_trade_cnt` int(10) unsigned NOT NULL default '0',
  `trade_cnt` int(10) unsigned NOT NULL default '0',
  `total_trade_gold` bigint(20) unsigned NOT NULL default '0',
  `trade_gold` bigint(20) unsigned NOT NULL default '0',
  `punish_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`m_id`),
  KEY `idx_punish_flag` USING BTREE (`punish_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auto_punish_second_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for churn_member_info
-- ----------------------------
DROP TABLE IF EXISTS `churn_member_info`;
CREATE TABLE `churn_member_info` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `accrue_cera` int(10) unsigned NOT NULL default '0',
  `play_info` char(30) NOT NULL default '',
  `first_reward_time` int(10) unsigned NOT NULL default '0',
  `last_reward_time` int(10) unsigned NOT NULL default '0',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` tinyint(4) NOT NULL default '0',
  `luck_point` int(10) unsigned NOT NULL default '0',
  `last_update_time` int(10) unsigned NOT NULL default '0',
  `second_reward_time` int(10) unsigned NOT NULL default '0',
  `quest_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of churn_member_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for churn_reward_history_201506
-- ----------------------------
DROP TABLE IF EXISTS `churn_reward_history_201506`;
CREATE TABLE `churn_reward_history_201506` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(10) unsigned NOT NULL default '0',
  `luck_point` int(10) unsigned NOT NULL default '0',
  `reward_order` int(10) unsigned NOT NULL default '0',
  `cera` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of churn_reward_history_201506
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for churn_reward_history_201507
-- ----------------------------
DROP TABLE IF EXISTS `churn_reward_history_201507`;
CREATE TABLE `churn_reward_history_201507` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(10) unsigned NOT NULL default '0',
  `luck_point` int(10) unsigned NOT NULL default '0',
  `reward_order` int(10) unsigned NOT NULL default '0',
  `cera` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`,`occ_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of churn_reward_history_201507
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for churn_reward_manager
-- ----------------------------
DROP TABLE IF EXISTS `churn_reward_manager`;
CREATE TABLE `churn_reward_manager` (
  `min_day` tinyint(4) NOT NULL default '0',
  `max_day` tinyint(4) NOT NULL default '0',
  `min_val` int(10) unsigned NOT NULL default '0',
  `max_val` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `add_info` int(10) unsigned NOT NULL default '0',
  `luck_point` int(10) unsigned NOT NULL default '0',
  `quest_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`min_day`,`max_day`,`min_val`,`max_val`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of churn_reward_manager
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for churn_system_manager
-- ----------------------------
DROP TABLE IF EXISTS `churn_system_manager`;
CREATE TABLE `churn_system_manager` (
  `no` int(10) unsigned NOT NULL auto_increment,
  `weekday_var_a` int(11) NOT NULL default '0',
  `weekday_var_b` int(11) NOT NULL default '0',
  `weekday_var_c` int(11) NOT NULL default '0',
  `weekend_var_x` int(11) NOT NULL default '0',
  `weekend_var_y` int(11) NOT NULL default '0',
  `weekend_var_z` int(11) NOT NULL default '0',
  `next_reward_day` int(11) NOT NULL default '0',
  `admin_id` int(10) unsigned NOT NULL default '0',
  `reg_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `state_flag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of churn_system_manager
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dnf_event_entry
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_entry`;
CREATE TABLE `dnf_event_entry` (
  `event_id` int(11) NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `occ_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_id` tinyint(4) NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `obtain_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`event_id`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`),
  KEY `idx_charac_no` USING BTREE (`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dnf_event_entry
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for event_server_message
-- ----------------------------
DROP TABLE IF EXISTS `event_server_message`;
CREATE TABLE `event_server_message` (
  `server_info` tinyint(4) unsigned NOT NULL default '0',
  `channel_no` tinyint(4) unsigned NOT NULL default '0',
  `kind` char(1) NOT NULL default '',
  `message_index` char(1) NOT NULL default '',
  `charac_name` char(64) NOT NULL default '',
  `message` char(128) NOT NULL default '',
  `update_time` int(10) unsigned NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_server_message
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gm_manifest
-- ----------------------------
DROP TABLE IF EXISTS `gm_manifest`;
CREATE TABLE `gm_manifest` (
  `m_id` int(11) NOT NULL default '0',
  `level` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_manifest
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for hack_cleanpad_ratio_info
-- ----------------------------
DROP TABLE IF EXISTS `hack_cleanpad_ratio_info`;
CREATE TABLE `hack_cleanpad_ratio_info` (
  `hack_type` smallint(5) unsigned NOT NULL default '0',
  `value` int(10) unsigned NOT NULL default '0',
  `reg_date` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`hack_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hack_cleanpad_ratio_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for human_certify_try_count
-- ----------------------------
DROP TABLE IF EXISTS `human_certify_try_count`;
CREATE TABLE `human_certify_try_count` (
  `m_id` int(11) NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of human_certify_try_count
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ip_monitor_punish
-- ----------------------------
DROP TABLE IF EXISTS `ip_monitor_punish`;
CREATE TABLE `ip_monitor_punish` (
  `ip` varchar(15) NOT NULL default '',
  `type` tinyint(4) NOT NULL default '0',
  `m_id_cnt` smallint(5) unsigned NOT NULL default '0',
  `start_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`ip`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ip_monitor_punish
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_growth
-- ----------------------------
DROP TABLE IF EXISTS `log_growth`;
CREATE TABLE `log_growth` (
  `m_id` int(11) NOT NULL default '0',
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `charac_no` int(11) NOT NULL default '0',
  `charac_name` varchar(25) NOT NULL default '',
  `job` tinyint(3) unsigned NOT NULL default '0',
  `grow_type` tinyint(3) unsigned NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`m_id`,`server_info`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_growth
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_query_dbmw_ref
-- ----------------------------
DROP TABLE IF EXISTS `log_query_dbmw_ref`;
CREATE TABLE `log_query_dbmw_ref` (
  `query_hash` varchar(16) NOT NULL default '',
  `q_id` smallint(5) unsigned NOT NULL auto_increment,
  `query` text NOT NULL,
  PRIMARY KEY  (`q_id`),
  UNIQUE KEY `query_hash` USING BTREE (`query_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_query_dbmw_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for log_query_ref
-- ----------------------------
DROP TABLE IF EXISTS `log_query_ref`;
CREATE TABLE `log_query_ref` (
  `query_hash` varchar(16) NOT NULL default '',
  `q_id` smallint(5) unsigned NOT NULL auto_increment,
  `query` text NOT NULL,
  PRIMARY KEY  (`q_id`),
  UNIQUE KEY `query_hash` (`query_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=65536 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_query_ref
-- ----------------------------
BEGIN;
INSERT INTO `log_query_ref` VALUES ('1dd8de3308618de9', 1, 'seLect slang from slang_list_name');
INSERT INTO `log_query_ref` VALUES ('6b215f401f3314d5', 2, 'seLect @@identity');
INSERT INTO `log_query_ref` VALUES ('62ccd15761c9d281', 4, 'seLect slang from slang_list');
INSERT INTO `log_query_ref` VALUES ('18d247791758cc63', 5, 'seLect m_id, level from gm_manifest');
INSERT INTO `log_query_ref` VALUES ('6782577c63d0444f', 6, 'trUncate table dnf_item_info_master');
INSERT INTO `log_query_ref` VALUES ('7be4d77e79e8a727', 7, 'inSert into dnf_item_info_master(master_no, sub_no, name, master_explain) values(%u, %u, \'%s\', \'%s\')');
INSERT INTO `log_query_ref` VALUES ('681ee0b4410810fa', 8, 'trUncate table dnf_old_equip_info');
INSERT INTO `log_query_ref` VALUES ('4f0b734428dc45c5', 9, 'inSert into dnf_old_equip_info(it_id, hp_max, mp_max, phy_att, phy_def, mag_att, mag_def, equip_phy_att, equip_phy_def, equip_mag_att, equip_mag_def, ref_fire, ref_water, ref_dark, ref_light, ref_all_elements, ref_slow, ref_freeze, ref_poison, ref_stun, ref_curse, ref_blind, ref_lightning, ref_stone, ref_sleep, ref_burn, ref_weapon_break, ref_bleeding, ref_pierce, ref_stuck, ref_confuse, ref_hold, ref_armor_break, ref_all_state) values(%d, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i)');
INSERT INTO `log_query_ref` VALUES ('17a6840e3d1ce86e', 10, 'trUncate table equip_mapping_info');
INSERT INTO `log_query_ref` VALUES ('625e7fc7075e9467', 11, 'inSert into equip_mapping_info(equip_idx, mapping_idx) values(%d, %d)');
INSERT INTO `log_query_ref` VALUES ('77bea87a3c43dcdc', 12, 'trUncate table charac_action_point_desc');
INSERT INTO `log_query_ref` VALUES ('6728bb7651accdd9', 13, 'trUncate table charac_advance_altar_item_desc');
INSERT INTO `log_query_ref` VALUES ('1ae6e0f57e31c744', 14, 'inSert into charac_advance_altar_item_desc 				  (ridable_id, item_type, item_id, item_desc) values (1,0,1000,\'\'), (1,0,2000,\'\'), (1,0,3000,\'\'), (1,0,4000,\'\'), (1,0,5000,\'\'), (1,0,6000,\'\'), (1,0,7000,\'\'), (1,0,8000,\'\'),(1,1,100,\'\'), (1,1,1001,\'\'), (1,1,1501,\'\'), (1,1,2001,\'\'), (1,1,3001,\'\'), (1,1,5001,\'\'), (1,1,4001,\'\'),(1,2,64597,\'\'), (1,2,12610,\'\'), (1,2,12617,\'\'), (1,2,64632,\'\')');
INSERT INTO `log_query_ref` VALUES ('34c7e74d2c0f3932', 15, 'trUncate table dnf_aicharacter_info');
INSERT INTO `log_query_ref` VALUES ('4537ade237a74a9e', 16, 'inSert into dnf_aicharacter_info(idx, ai_name_kr) values(%d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('6a17c1fe3f825f1e', 17, 'trUncate table dnf_monster_info');
INSERT INTO `log_query_ref` VALUES ('57b4c947693d77d1', 18, 'inSert into dnf_monster_info(idx, mon_name_kr) values(%d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('5084b2a2727a176f', 19, 'trUncate table skill_index');
INSERT INTO `log_query_ref` VALUES ('62fd07f1639b99e8', 20, 'trUncate table skill_info; ');
INSERT INTO `log_query_ref` VALUES ('24e2fa125f0fc56b', 21, 'inSert into skill_index(job, skill_idx, skill_name) values(%d, %d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('179e2e7e394d19a1', 22, 'inSert into skill_info(job_index, skill_index, module_type, name, name2, basic_explain, skill_explain, purchase_cost, type, skill_class, growtype_maximum_level, second_growtype_maximum_level, skill_fitness_growtype, skill_fitness_second_growtype, consume_item, required_level, required_level_range, pre_required_skill, consume_mp, cool_time, casting_time, icon, command_key_explain, skill_command_advantage, static_data, level_info, start_cool_time) values(%s)');
INSERT INTO `log_query_ref` VALUES ('457771253148118c', 23, 'trUncate table dnf_item_info');
INSERT INTO `log_query_ref` VALUES ('4fd6e2a34d47a594', 24, 'trUncate table avatar_select_ability');
INSERT INTO `log_query_ref` VALUES ('18edc9b82127cc54', 25, 'trUncate table dnf_artifact_info');
INSERT INTO `log_query_ref` VALUES ('07b043142ff6067c', 26, 'inSert into dnf_item_info(it_no, it_name, it_eng_name, it_explain, master_type, sub_type, job, class, revert, level, skill, create_ratio, rarity, weight, price, cash, medal, durability, cooltime, hp_max, mp_max, phy_att, phy_def, mag_att, mag_def, equip_phy_att, equip_phy_def, equip_mag_att, equip_mag_def, ref_fire, ref_water, ref_dark, ref_light, ref_all, ref_slow, ref_freeze, ref_poison, ref_stun, ref_cus, ref_blind, ref_lite, ref_ston, ref_sleep, ref_deekement, ref_deadlystrike, ref_bleeding, ref_confuse, ref_hold, ref_all_stat, ref_pierce, ref_stuck, inven_max, hp_regenrate, mp_regenrate, mov_speed, att_speed, quest, hit_recovery, jump, att_element, att_active_status, att_active_status_ratio, att_active_status_pow, att_backforce, att_upforce, att_hp_drain, att_mp_drain, criticalhit_rate, stuck_rate, att_defenseIgnore, skill_levelup, set_type, jewel_type, detail_explain, flavor_text, anti_evil, value, required_skill, need_material, physical_absolute_damage, physical_damage_reduce, physical_absolute_defense, magical_absolute_damage, magical_damage_reduce, magical_absolute_defense, fire_attack, water_attack, dark_attack, light_attack, all_attack, weapon_break_resistance, armor_break_resistance, all_activestatus_resistance, rigidity, item_aura, magical_critical_hit, set_name, set_item, fullset_basic_explain, fullset_detail_explain, parameter_basic_explain, parameter_detail_explain, part_set_index, hide_equipment, skill_data_up, it_set_no, db_piece_count, set_item_master, ani_variation, ani_variation_expand, ani_variation2, ani_variation_expand2, hide_growtype_avatar, room_list_move_speed_rate, url, icon_mark_number, extra_icon_idx_list, hp_max_rate, mp_max_rate) values(%s)');
INSERT INTO `log_query_ref` VALUES ('777d766f44902e02', 27, 'inSert into avatar_select_ability(it_no, ability_no, ability_type, rate_change, value, job, skill_index, skill_level) values(%d,%d,%d,%d,%f,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('7f1ab3981abc40ff', 28, 'inSert into dnf_artifact_info(it_id, creature_min_level, physical_attack, magical_attack, skill_consume_mp_rate, skill_charge_time_rate, skill_overcharge_time_rate, experience_amount, physical_critical_hit, magical_critical_hit, stuck) values(%d, %d, %d, %d, %f, %f, %f, %f, %f, %f, %f)');
INSERT INTO `log_query_ref` VALUES ('2125ad4a7a04d8f6', 29, 'inSert into dnf_item_info(it_no, it_name, it_eng_name, it_explain, master_type, sub_type, job, class, revert, level, skill, create_ratio, rarity, weight, price, cash, medal, durability, cooltime, hp_max, mp_max, phy_att, phy_def, mag_att, mag_def, equip_phy_att, equip_phy_def, equip_mag_att, equip_mag_def, ref_fire, ref_water, ref_dark, ref_light, ref_all, ref_slow, ref_freeze, ref_poison, ref_stun, ref_cus, ref_blind, ref_lite, ref_ston, ref_sleep, ref_deekement, ref_deadlystrike, ref_bleeding, ref_confuse, ref_hold, ref_all_stat, ref_pierce, ref_stuck, inven_max, hp_regenrate, mp_regenrate, mov_speed, att_speed, quest, hit_recovery, jump, att_element, att_active_status, att_active_status_ratio, att_active_status_pow, att_backforce, att_upforce, att_hp_drain, att_mp_drain, criticalhit_rate, stuck_rate, att_defenseIgnore, room_list_move_speed_rate, hp_max_rate, mp_max_rate, fire_attack, water_attack, dark_attack, light_attack, all_attack, rigidity, magical_critical_hit, physical_absolute_damage, physical_damage_reduce, physical_absolute_defense, magical_absolute_damage, magical_damage_reduce, magical_absolute_defense, armor_break_resistance, skill_levelup, set_type, url, icon_mark_number) values(%s)');
INSERT INTO `log_query_ref` VALUES ('173bf7ef15750685', 30, 'trUncate table dnf_item_price; ');
INSERT INTO `log_query_ref` VALUES ('40a49506627e3a77', 31, 'inSert into dnf_item_price(ipg_no, it_no, it_cnt, cera_price) values(%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('700b072538ce63a1', 32, 'trUncate table random_option_ref');
INSERT INTO `log_query_ref` VALUES ('39269792560d18a5', 33, 'inSert into random_option_ref(random_option_index, random_option_value, random_option_name) values(%d,%d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('09cf12df5add5a17', 34, 'trUncate table quest_category');
INSERT INTO `log_query_ref` VALUES ('0c2ee1c528ad4164', 35, 'inSert into quest_category(quest_idx, quest_name) values(%d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('C0D155921D7BA43', 36, 'seLect level, exp from monster_reward_ref');
INSERT INTO `log_query_ref` VALUES ('5667ddf12a670ce2', 37, 'trUncate table dnf_creature_info');
INSERT INTO `log_query_ref` VALUES ('43da529f5586ad7a', 38, 'inSert into dnf_creature_info(it_id, creature_id, creature_name, skill_recovery_time, overskill_recovery_time, artifact_slot, learn_overskill_level, skill_info, overskill_info, piercing, skill_name, skill_desc, overskill_name, overskill_desc, skill_level_values, overskill_level_values, evolution_creature_id, evolution_level) values(%u, %d, \'%s\', %d, %d, \'%s\', %d, \'%s\', \'%s\', \'%s\', \'%s\', \'%s\', \'%s\', \'%s\', \'%s\', \'%s\', %d, %d)');
INSERT INTO `log_query_ref` VALUES ('7984325c38377d89', 39, 'trUncate table item_part_set');
INSERT INTO `log_query_ref` VALUES ('3142d0d75f109d31', 40, 'inSert into item_part_set(part_set_index, part_name, part_type, part_grade, part_rarity) values(%d, \'%s\',%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('2546d43e737ded37', 41, 'trUncate table dnf_town_info');
INSERT INTO `log_query_ref` VALUES ('7ebed7817a053fd9', 42, 'inSert into dnf_town_info(idx, town_name_kr) values(%d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('42924b2533eed074', 43, 'upDate login_account_%d set login_status=0 where m_channel_no=%d');
INSERT INTO `log_query_ref` VALUES ('2b249072516a84df', 44, 'seLect event_id, event_name from dnf_event_info');
INSERT INTO `log_query_ref` VALUES ('42c67897133f2a12', 45, 'inSert into dnf_event_info(event_id, apply_type, event_name, event_explain) values%s');
INSERT INTO `log_query_ref` VALUES ('4cffd17913f875c4', 46, 'seLect event_type, parameter1, parameter2 from dnf_event_log where end_time = 0 and server_id in (0,%d) and unix_timestamp() >= start_time order by start_time');
INSERT INTO `log_query_ref` VALUES ('5f9ea93c4f2727e7', 47, 'seLect guild_id, guild_name, lev , power_side, guild_agit_flag from guild_info where expire_flag = 0 and server_id = %d');
INSERT INTO `log_query_ref` VALUES ('62ddebd33aae6fec', 48, 'seLect * from in_game_ad where visible = 1');
INSERT INTO `log_query_ref` VALUES ('158fbd516ac3c7a8', 49, 'seLect item_id,upgrade,average_price from auction_average_price');
INSERT INTO `log_query_ref` VALUES ('52e9acfb51bc0d3f', 50, 'seLect ip,start_ip,end_ip from auto_punish_blackip_info where apply_flag=1 limit %d');
INSERT INTO `log_query_ref` VALUES ('109f78003ace0351', 51, 'seLect hack_type,cnt,etc,hack_sub_type,hack_sub_cnt,apply_flag, ip_cnt from auto_punish_hack_info where apply_flag > 0');
INSERT INTO `log_query_ref` VALUES ('2dfb1eca1356a6cb', 52, 'seLect hack_type,value from hack_cleanpad_ratio_info');
INSERT INTO `log_query_ref` VALUES ('7166a85b304d16b6', 53, 'seLect ip, type, m_id_cnt, unix_timestamp(start_time), unix_timestamp(end_time) from ip_monitor_punish ORDER BY start_time ASC');
INSERT INTO `log_query_ref` VALUES ('0a91a1fc377fe6c6', 54, 'seLect charac_no from charac_tower_despair_apc limit 10');
INSERT INTO `log_query_ref` VALUES ('219a068d0309bb25', 55, 'inSert into dnf_restrict_state values(%d, %d, %d, \'%d\', now(), now())');
INSERT INTO `log_query_ref` VALUES ('4d8b7f8933269cc0', 56, 'inSert into dnf_restrict_info values(%d, %d, \'%s\', now())');
INSERT INTO `log_query_ref` VALUES ('598323a11e3bfa95', 57, 'seLect category, restrict_code, restrict_value from dnf_restrict_state where server_group=%d');
INSERT INTO `log_query_ref` VALUES ('276cb3d85528977e', 58, 'seLect country_code from geo_allow_country where server_group = %d');
INSERT INTO `log_query_ref` VALUES ('21c2fcf864aac3fe', 59, 'inSert into game_channel (gc_no,gc_now,gc_ip,gc_port,gc_max,gc_game,gc_channel,gc_ch_group,gc_channeltype,gc_up_time, gc_type) values(%d,0,\'%s\',%d,%d,%d,\'%s\',%d,\'%s\',now(),%d)');
INSERT INTO `log_query_ref` VALUES ('6b7899fd6f3e276f', 60, 'inSert into channel_occ_info (gc_no, age, occ_num) values %s');
INSERT INTO `log_query_ref` VALUES ('12334a35356afa95', 61, 'seLect kind, message_index, charac_name, message, unix_timestamp(update_time) from event_server_message where server_info=%d and (channel_no=%d or channel_no=0)');
INSERT INTO `log_query_ref` VALUES ('0cd6fbc66a75f4d0', 62, ' seLect category, code, state from server_state_info where end_time >= now()');
INSERT INTO `log_query_ref` VALUES ('0e75e05d78982740', 63, 'inSert into log_response_time_%s(channel_no,occ_time,packet_id,packet_count,total_response_time,avg_response_time) values%s');
INSERT INTO `log_query_ref` VALUES ('7e83be597793b56a', 64, 'seLect optimum_gold_supply, over_gold from auto_market_condition_ctrl limit 1');
INSERT INTO `log_query_ref` VALUES ('1643c1876429a02e', 65, 'seLect total_gold, auction_gold, optimum_gold_supply, over_gold, gold_phase, item_phase, durability_phase from auto_market_condition_ctrl_daily where occ_time >= DATE_SUB(CURDATE(), INTERVAL 1 DAY) order by occ_time limit 2');
INSERT INTO `log_query_ref` VALUES ('611aba726285eb73', 66, 'truncate limit_create_character');
INSERT INTO `log_query_ref` VALUES ('1bf744971a8facf8', 67, 'upDate client_down set occ_count = occ_count+%d where occ_date = cast(now() as date)');
INSERT INTO `log_query_ref` VALUES ('379159425e398e80', 68, 'seLect charac_no,pvp_grade,pvp_point,unix_timestamp(last_play_time) from pvp_grade_expand where pvp_grade>=%d order by pvp_point desc limit 1500');
INSERT INTO `log_query_ref` VALUES ('3d8d8e84551177fd', 70, 'inSert into dnf_dbq_log(occ_time,channel_no,dbq) values(NOW(),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('695d19dd715cd699', 72, 'seLect count(*) from charac_tower_rank where tower_index=%d and part_type=%d');
INSERT INTO `log_query_ref` VALUES ('3e02ee92335c7950', 73, 'seLect b.rank,a.tower_index, a.member_info_%d,a.stage_%d,a.play_time_%d from charac_tower_record a,charac_tower_rank b where b.tower_index=%d and b.tower_index=a.tower_index and (b.rank>5 and (b.rank%%%d)=0) and a.charac_no=b.charac_no and b.part_type=%d order by b.rank asc limit %d');
INSERT INTO `log_query_ref` VALUES ('222f950f773db6b1', 74, 'seLect b.rank,a.tower_index, a.member_info_%d,a.stage_%d,a.play_time_%d from charac_tower_record a,charac_tower_rank_top5 b where b.tower_index=%d and b.tower_index=a.tower_index and b.rank<=5 and a.charac_no=b.charac_no and b.part_type=%d order by b.rank asc limit %d');
INSERT INTO `log_query_ref` VALUES ('53b7991c0e9c7a1e', 75, 'inSert into log_query_stat(occ_time,q_id,total,response_time,gc_no) values(from_unixtime(%d),%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('23b2437a0ea10221', 97, 'upDate game_channel set gc_now=%d,gc_up_time=now(),gc_swordman_cnt=%d,gc_fighter_cnt=%d,gc_gunner_cnt=%d,gc_mage_cnt=%d,gc_priest_cnt=%d,gc_at_gunner_cnt=%d,gc_thief_cnt=%d,gc_hangame=%d,gc_nexon=%d where gc_no=%d');
INSERT INTO `log_query_ref` VALUES ('7eb5f83f378fc86e', 98, 'inSert into log_game_channel(gc_up_time,gc_game,gc_no,gc_channel,gc_ch_group,gc_ip,gc_now,gc_new,gc_out) values(now(),%d,%d,\'%s\',%d,\'%s\',%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('1349562410bee65b', 99, 'upDate game_channel set gc_now=0,gc_ip=\'%s\',gc_port=%d,gc_max=%d,gc_game=%d,gc_channel=\'%s\',gc_ch_group=%d,gc_channeltype=\'%s\',gc_up_time=now(),gc_type=%d where gc_no=%d');
INSERT INTO `log_query_ref` VALUES ('05c3d968630953e6', 130, 'inSert into channel_lev_status(occ_time,channel_no,lev,occ_count) values(from_unixtime(%d),%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('4e39ded37db4e15c', 6570, 'seLect m_id, passwd,first_ssn, second_ssn,DATE_FORMAT(from_unixtime(reg_date),\'%%Y%%m%%d%%H\'),user_name,email,hangame_flag,reg_date from  member_info  where  user_id=\'%s\' and hangame_flag=%d');
INSERT INTO `log_query_ref` VALUES ('1667a9af2b8558d7', 6571, 'seLect login_time,expire_time,report_cnt,last_play_time,account_fail,total_account_fail,reliable_flag,trade_gold_daily,login_ip,security_flag,dungeon_gain_gold,school_id,rating,tutorial_skipable,event_charac_flag from %s where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('566a6d34637ef566', 6572, 'inSert into %s(m_id, login_time, login_ip) values(%s, %d, \'%s\') on duplicate key upDate login_time=%d, login_ip=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('3ebcdbec5a556b37', 6573, 'seLect punish_type, unix_timestamp(occ_time), punish_value, apply_flag, unix_timestamp(start_time), unix_timestamp(end_time) from member_punish_info where m_id=%s and apply_flag>=1 LIMIT %d');
INSERT INTO `log_query_ref` VALUES ('1c8bff301f5eb7d7', 6574, 'seLect unix_timestamp(last_check_time), unix_timestamp(m_opt_reg), unix_timestamp(pc_opt_reg), unix_timestamp(security_card_reg), unix_timestamp(goblin_pass_mod), unix_timestamp(member_pc_reg), unix_timestamp(gatekeeper_otp_reg), goblin_validity_time>unix_timestamp(now()), security_card_validity_time>unix_timestamp(now()), validity_ip from member_security_grade where m_id = %s ');
INSERT INTO `log_query_ref` VALUES ('3040621f36025eab', 6575, 'seLect event_id,unix_timestamp(occ_date),server_id,charac_no,unix_timestamp(obtain_date) from dnf_event_entry where m_id=%s and server_id in(0,%d)');
INSERT INTO `log_query_ref` VALUES ('5f8240be36d1ee67', 6576, 'seLect info,hash_key,password(info),slot_effect_count,charac_slot_limit from charac_view where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('4fa8ed585c52f365', 6577, 'seLect message_flag from charac_link_message where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('2e1742313a0762f0', 6578, 'inSert into charac_link_message(m_id,message_flag) values(%s,0)');
INSERT INTO `log_query_ref` VALUES ('79f746795c2e3142', 6579, 'seLect accrue_cera, play_info, last_reward_time, first_reward_time, luck_point, last_update_time, add_info, second_reward_time, quest_time from churn_member_info where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('561c0f4008757587', 6580, 'inSert into churn_member_info(m_id,accrue_cera,play_info,last_reward_time,first_reward_time,server_id,charac_no,item_id,add_info,luck_point,last_update_time,second_reward_time) values(%s,0,\'%s\',0,0,0,0,0,0,0,0,0)');
INSERT INTO `log_query_ref` VALUES ('5c38a8f80cb7be1e', 6581, 'seLect cleanpad_point from member_login where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('1362c1881504affc', 6582, 'seLect count(*) from geo_allow where allow_ip = \'%s\'');
INSERT INTO `log_query_ref` VALUES ('03cd11ea1f7eb804', 6583, 'insert into member_join_info(m_id, reg_date, ip) values(%d, now(), \'%s\')');
INSERT INTO `log_query_ref` VALUES ('01d6e4e12426f22e', 6584, 'seLect unix_timestamp(expire_time), first_login from return_user where m_id=%s and expire_time > now()');
INSERT INTO `log_query_ref` VALUES ('610a3bf45f805a28', 6585, 'seLect  member_bonus_fatigue , update_time , login_ip , inform_notice  from login_common where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('23de9a0f061e2dad', 6586, 'seLect check_count from check_pick_up_random_option_item where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('589892cb4614baf0', 6587, 'seLect last_no from event_1112_ontime_user_%u where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('71893d32525f2de8', 6588, 'inSert into event_1112_ontime_user_%u(m_id,last_no) values (%s,%u )');
INSERT INTO `log_query_ref` VALUES ('3042bbb56f765dcc', 6589, 'seLect type , history_1 ,history_2 from event_ingame_history where m_id=%s order by type desc');
INSERT INTO `log_query_ref` VALUES ('03f00e550b63f99a', 6590, 'upDate login_common set login_ip=\'%s\' where m_id=%u');
INSERT INTO `log_query_ref` VALUES ('52c551c750328876', 6591, 'upDate login_account_%d set m_channel_no=%d,login_status=1,last_login_date=now(),login_ip=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('7e2d9a61034eb051', 6592, 'inSert into login_account_%d (m_id,m_channel_no,login_status,last_login_date,login_ip) values(%s,%d,1,now(),\'%s\')');
INSERT INTO `log_query_ref` VALUES ('698d04cc63c9fc88', 6593, 'seLect option_1,option_3,shortcut_emoticon from %s where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('0290b4bb5f241577', 6594, 'upDate churn_member_info set play_info =\'%s\', last_update_time=%u where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('03ee523d2d867b01', 6595, 'seLect capacity, money, cargo from account_cargo where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('01e822b76479e018', 6596, 'seLect hack_type,cnt from dnf_hack_log where m_id=%s and (hack_type>=%d and hack_type<%d) and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)');
INSERT INTO `log_query_ref` VALUES ('7b978459490fdb99', 6597, 'seLect count, unix_timestamp(last_access_time) from limit_create_character where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('6721956820e22cff', 6598, 'seLect count(*) from charac_info where m_id=%s and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('66b619a16b22e837', 6599, 'seLect delete_flag from %s.charac_info where charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('3dabef4f5ac065c4', 6600, 'seLect user_id from member_info where m_id = \'%s\'');
INSERT INTO `log_query_ref` VALUES ('090067f66808cb05', 6601, 'seLect if(user_id = \'%s\',1,0) as result from event_reserving_charac_name where server_info=%d and charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('02e95e27193870ee', 6602, 'inSert into charac_info (m_id,charac_name,job,sex,maxHP,maxMP,phy_attack,phy_defense,mag_attack,mag_defense,element_resist,spec_property,inven_weight,hp_regen,mp_regen,move_speed,attack_speed,cast_speed,hit_recovery,jump,charac_weight,max_fatigue,create_time,expert_job,event_charac_level) values(%s,\'%s\',%d,%d,%d,%u,%d,%d,%d,%d,\'%s\',\'%s\',%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,NOW(),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('65d19e0447799cce', 6603, 'inSert into charac_stat (charac_no,HP, forbidden_to_play, forbidden_due_to) values(%d,100,0,0)');
INSERT INTO `log_query_ref` VALUES ('3e603fa708b37750', 6604, 'inSert into inventory (charac_no, inventory,coin) values(%u, \'%s\',%d)');
INSERT INTO `log_query_ref` VALUES ('1d69ae733b3b447a', 6605, 'inSert into charac_inven_expand(charac_no,cargo,cargo_capacity,jewel) values(%u,\'\',0,\'\')');
INSERT INTO `log_query_ref` VALUES ('0a66a16412b42bfa', 6606, 'upDate inventory set equipslot=\'%s\' where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('47d43eed6f07133c', 6607, 'inSert into skill (charac_no, remain_sp ,skill_slot, skill_slot_2nd) values(%u,%u, \'%s\', \'%s\')');
INSERT INTO `log_query_ref` VALUES ('6e87ebf740fd574a', 6608, 'inSert into pvp_result (charac_no) values(%u)');
INSERT INTO `log_query_ref` VALUES ('39c6ff38340ed15c', 6609, 'seLect * from member_dungeon where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('095d9955619f719b', 6610, 'inSert into member_dungeon (m_id,dungeon) values (%s,\'\')');
INSERT INTO `log_query_ref` VALUES ('0976b3695dfe4ca7', 6611, 'inSert into new_charac_quest(charac_no, clear_quest) values(%u,\'\')');
INSERT INTO `log_query_ref` VALUES ('596a48dd0cb685fc', 6612, 'inSert into charac_npc(charac_no,npc_cnt,npc_data) values(%d,0,\'\')');
INSERT INTO `log_query_ref` VALUES ('301827c419fbba9c', 6613, 'upDate limit_create_character set count=count+1, last_access_time=now() where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('6bc59268429fd61c', 6614, 'inSert into limit_create_character(m_id, count, last_access_time) values(%s, 1, now() )');
INSERT INTO `log_query_ref` VALUES ('5e05f05153bf59d1', 6615, 'upDate charac_view set info=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('1b5ac49672eb2ece', 6616, 'inSert into charac_view(m_id,info) values(%s,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('0ce8d09b11c8988e', 6617, 'seLect key_option from member_key_option where m_id = %s and key_type = %d');
INSERT INTO `log_query_ref` VALUES ('0bb6e99230537f73', 6618, 'seLect charac_no,charac_name,job,lev,grow_type,maxHP,maxMP,phy_attack,phy_defense,mag_attack,mag_defense,inven_weight,hp_regen,mp_regen,move_speed, attack_speed, cast_speed, hit_recovery, jump, charac_weight, max_fatigue, create_time,guild_id,guild_right,max_premium_fatigue,member_flag,element_resist,spec_property,m_id,expert_job, skill_tree_index, event_charac_level, guild_secede from charac_info where charac_no=%d and delete_flag!=1');
INSERT INTO `log_query_ref` VALUES ('38224a841f09d6c8', 6619, 'seLect village,exp,HP,fatigue,premium_fatigue,unix_timestamp(last_play_time),used_fatigue,tutorial_flag,trade_gold_total,trade_gold_daily,open_flag,chaos_point,chaos_exp,chaos_mode_count,chaos_kill_count,chaos_die_count,unix_timestamp(chaos_die_time),assault_count,luck_point,dungeon_play_count,unix_timestamp(chaos_kill_time),help_abuse_ratio,help_abuse_exp,expert_job_exp,fatigue_battery_charging,escalade_tutorial_flag,power_war_point,village_prev,power_war_assault_count,power_war_assault_victory_count,unix_timestamp(last_play_time_powerwar),fatigue_grownup_buff,emotion,add_slot_flag,member_dungeon_flag,member_bonus_fatigue,last_play_dungeon_index, add_equipslot_flag, channel_equipslot_switch, expand_equipslot_switch, visible_flags, growth_power_reward, unix_timestamp(chaos_respon_time) from charac_stat where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('701e0c6a5338f9ef', 6620, 'seLect black_point,offset_point,unix_timestamp(problem_child_time) from charac_black_info where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('57b3c53e18dec743', 6621, 'seLect money,coin,inventory,equipslot,pay_coin,event_coin,creature,creature_flag,inventory_capacity, avatar_coin from inventory where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('38e7df3d1fa352eb', 6622, 'seLect slot,it_id,unix_timestamp(expire_date),ability_no,ipg_agency_no,unix_timestamp(reg_date),ui_id,clear_avatar_id,jewel_socket,item_lock_key, hidden_option, emblem_endurance, color1, color2, trade_restrict from user_items where charac_no=%u and expire_date>now() and stat=0 limit %d');
INSERT INTO `log_query_ref` VALUES ('26aa1dc364615288', 6623, 'seLect cargo_capacity,cargo,jewel,expand_equipslot from charac_inven_expand where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('4faaeaa34e9ecd03', 6624, 'seLect item_lock_info  from charac_item_lock_info where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('656070063ec625dc', 6625, 'seLect max_equip_level from charac_manage_info where charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('18f79b292c7abb6a', 6626, 'seLect charac_no, clear_quest,play_1, play_1_trigger, play_2, play_2_trigger, play_3, play_3_trigger, play_4, play_4_trigger, play_5, play_5_trigger,play_6, play_6_trigger, play_7, play_7_trigger, play_8, play_8_trigger, play_9, play_9_trigger, play_10, play_10_trigger,play_11, play_11_trigger, play_12, play_12_trigger, play_13, play_13_trigger, play_14, play_14_trigger, play_15, play_15_trigger,play_16, play_16_trigger, play_17, play_17_trigger, play_18, play_18_trigger, play_19, play_19_trigger, play_20, play_20_trigger,urgentQuestIndex,quest_notify from new_charac_quest  where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('3041e2620af52d05', 6627, 'seLect dungeon from member_dungeon where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('0fb950b015c07d4c', 6628, 'seLect boss_info, named_info, apc_boss_info from charac_kill_monster_info where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('2dcdba762a535228', 6629, 'inSert into charac_kill_monster_info (charac_no) values(%u)');
INSERT INTO `log_query_ref` VALUES ('07dbd93e24ba138c', 6630, 'select ridable_id, ticket_free, ticket_cera, 				  star_game, star_cera, star_usable, 				  survival_best, star_reset_count, is_unlock_stage_effect, 				  stage_list, slot_list, buy_item_list, reward_list 				  from charac_advance_altar					  where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('58a6d824738674c6', 6631, 'seLect win,lose,pvp_point,pvp_grade,avg_kill_count,avg_buf_count,avg_debuf_count,avg_heal_count,avg_counter_count,avg_back_atk_count,avg_union_hit_count,avg_overkill_count,avg_combo_count,avg_aerial_count,avg_attacked_count,avg_deal_damage,avg_technic,avg_style,avg_hit_penalty,pvp_count,win_point,pvp_grade_ext,unix_timestamp(last_play_time),play_count,play_time,unix_timestamp(pvp_grade_ext_update_time) from pvp_result where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('749aa7d944c9dd46', 6632, 'seLect cooltime_item, effect_item, check_flag from charac_item_stat where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('4fe9e2f32029ddff', 6633, 'seLect remain_sp,skill_slot,remain_sp_2nd, skill_slot_2nd, remain_sfp_1st, remain_sfp_2nd, skill_command, skill_slot_lethe, lethe_flag, skill_slot_lethe_2nd, lethe_flag_2nd,script_version from %s where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('13658cb45b537d91', 6634, 'seLect clear_cnt from event_dungeon_clear where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('1b9368eb34d82db2', 6635, 'seLect redeem_info from charac_inven_expand where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('7f165da678041ee0', 6636, 'seLect pvp_mission_info from fair_pvp_score where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('4f679e4d785771fa', 6637, 'seLect unix_timestamp(first_layer_start_date),today_enter_count,last_clear_layer,enter_count_by_week,unix_timestamp(m_date),unix_timestamp(last_clear_date) from charac_tower_despair where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('15316c9f7c5ef6f8', 6638, 'seLect attack_count, revenge_dungeon from village_attack_dungeon 						   where occ_date = \'%s\' and charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('77c0ea7837bb690a', 6639, 'seLect m_id from %s where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('70c75c276c0fff6c', 6640, 'seLect private_win,private_lose,private_draw,relay_battle_win, relay_battle_lose, relay_battle_draw,relay_battle_2kill, relay_battle_3kill, successive_win, max_successive_win, job_score,daily_play_count, unix_timestamp(last_play_time), give_item from fair_pvp_score where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('29d08791047a46ad', 6641, 'inSert into fair_pvp_score (charac_no) values(%u)');
INSERT INTO `log_query_ref` VALUES ('35989d771c083cb1', 6642, 'seLect weapon, cloth, leather, light_armor, heavy_armor, plate, amulet, wrist, ring, support, magic_stone from item_making_skill_info where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('67c25e4e6a574f2f', 6643, 'seLect qp, init_count, max_hp, max_mp, psy_attack, psy_defense, mag_attack, mag_defence, move_speed, attack_speed, hp_regen, mp_regen, all_element_resist, fire_element_resist, water_element_resist, light_element_resist, dark_element_resist, all_element_attack,fire_element_attack, water_element_attack, light_element_attack, dark_element_attack, psy_critical, mag_critical, good_hit , evasion , hit_recovery , separate_psy_mag_attack , quest_piece from charac_quest_shop where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('73ebadaa7e22e3b1', 6644, 'seLect general_section, specific_section, despair, event from charac_titlebook where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('2a00b27506ee0352', 6645, 'seLect achievement, unix_timestamp(last_update_time) from charac_achievement where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('2316d28f4e11c988', 6646, 'seLect m_id from event_1107_avenger_plan where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('7d8730a4607e34a6', 6647, 'seLect option_type, value_1 from aura_avatar_option where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('1a14853a3ef318de', 6648, 'seLect options , best_clear_time, blue_marble_enter_count, charac_inform_notice from charac_option where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('1114d8ed53553a8d', 6649, 'seLect id,it_id,stack_count,event_code from charac_event_items where charac_no=%d and delete_flag=0 limit %d');
INSERT INTO `log_query_ref` VALUES ('7a5ccf831413a692', 6650, 'seLect tower_index, 		member_info_1,stage_1,play_time_1, 		member_info_2,stage_2,play_time_2, 		member_info_3,stage_3,play_time_3, 		member_info_4,stage_4,play_time_4 		from charac_tower_record where charac_no=%d limit %d');
INSERT INTO `log_query_ref` VALUES ('07b8e8d749555593', 6651, 'seLect DATE_FORMAT(from_unixtime(reg_date),\'%%Y%%m%%d%%H\') ,reg_date from member_info where m_id=%d');
INSERT INTO `log_query_ref` VALUES ('356dd1820f336404', 6652, 'upDate postal set delete_flag=%d where receive_charac_no=%d and unlimit_flag=0 and occ_time<subdate(now(),interval %d day) and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('2930f2845a0b9276', 6653, 'seLect postal_id,unix_timestamp(occ_time),send_charac_no,seal_flag,item_id,add_info,endurance,upgrade,gold,send_charac_name,unlimit_flag,avata_flag,creature_flag,letter_id,extend_info,item_guid,amplify_option,amplify_value,random_option,seperate_upgrade,type from postal where receive_charac_no=%d and delete_flag=0 %s and (unlimit_flag=1 or occ_time>subdate(now(),interval 15 day)) order by postal_id limit %d');
INSERT INTO `log_query_ref` VALUES ('68fd796124f6c7e8', 6654, 'deLete from letter where charac_no=%d and reg_date<subdate(now(),interval %d day) and stat=%d');
INSERT INTO `log_query_ref` VALUES ('612c9fe10214f7ae', 6655, 'seLect letter_id,send_charac_no,send_charac_name,letter_text,unix_timestamp(reg_date),stat from letter where (charac_no=%d and stat = 3) or (charac_no=%d and reg_date>subdate(now(),interval %d day)) order by letter_id');
INSERT INTO `log_query_ref` VALUES ('67f782255971b56e', 6656, 'upDate member_key_option set key_option=\'%s\' where m_id=%s and key_type=%d');
INSERT INTO `log_query_ref` VALUES ('37adfdfa4bd933d7', 6657, 'inSert into member_key_option(m_id, key_type, key_option) values(%s,%d,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('3105c6ce5aa8045a', 6658, 'seLect store, use_doll from store where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('6ac0731a5ea3c56c', 6659, 'upDate %s set shortcut_emoticon=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('33105a7b3e0b25f9', 6660, 'inSert into %s(m_id, shortcut_emoticon) values(%s,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('3521777972ca76fe', 6661, 'seLect week_point,week_enter_count,week_use_gold,unix_timestamp(last_play_date),enter_count,rank,reward,reward_item_id,reward_gold from charac_blood_dungeon_reward where charac_no=%d and week_occ_date = cast(from_unixtime(%d) as date)');
INSERT INTO `log_query_ref` VALUES ('237658fe5ee5546d', 6662, 'seLect rank,reward,reward_item_id,reward_gold from charac_blood_dungeon_reward where charac_no=%d and week_occ_date = cast(from_unixtime(%d) as date)');
INSERT INTO `log_query_ref` VALUES ('211f6ddb66647caa', 6663, ' seLect event_id, charac_no from event_reward_item_arad  where (m_id = %u and end_date > from_unixtime(%u))  order by occ_date desc limit 10 ');
INSERT INTO `log_query_ref` VALUES ('52a772510ad186c6', 6664, 'inSert into letter(charac_no,send_charac_no,send_charac_name,letter_text,reg_date,stat) values(%d,%d,\'%s\',\'%s\',from_unixtime(%d),%d)');
INSERT INTO `log_query_ref` VALUES ('137ff13d2d96d39f', 6665, 'inSert into postal(occ_time,send_charac_no,receive_charac_no,seal_flag,item_id,add_info,endurance,upgrade,amplify_option,amplify_value,gold,send_charac_name,creature_flag,avata_flag,letter_id,extend_info,item_guid,random_option,seperate_upgrade,unlimit_flag) values(from_unixtime(%d),%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,\'%s\',%d,%d,%d,%d,\'%s\',\'%s\',%d,%d)');
INSERT INTO `log_query_ref` VALUES ('065262773d9c0f5a', 6666, 'inSert into %s(m_id,server_id, charac_no, occ_date) values(%s,%d, %u, now())');
INSERT INTO `log_query_ref` VALUES ('24a88def7632d7e4', 6667, 'seLect ipg_no, count, next_date from account_cerashop_restrict where m_id = %u and end_date > UNIX_TIMESTAMP() limit 10');
INSERT INTO `log_query_ref` VALUES ('24017f3d2daef5ad', 6668, 'seLect ipg_no, count, next_date from charac_cerashop_restrict where charac_no = %u and end_date > UNIX_TIMESTAMP() limit 10');
INSERT INTO `log_query_ref` VALUES ('3d164e785ded1087', 6669, 'seLect miles from member_miles where m_id = %u');
INSERT INTO `log_query_ref` VALUES ('7c8b7ac13ed8f462', 6670, 'inSert into member_miles (m_id, miles, daily_miles) values (%u, 0, 0)');
INSERT INTO `log_query_ref` VALUES ('77ba4d5f6f033305', 6671, 'inSert into concurrent_user_status(occ_time,player_status,dungeon_index,channel_no,occ_count) values(from_unixtime(%d),%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('32bb7dce5a8a4363', 6672, 'upDate inventory set money=%u,coin=%d,pay_coin=%d,event_coin=%d, avatar_coin=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('6900105d611be838', 6673, 'upDate member_login set cleanpad_point=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('720219b07ed8c05b', 6674, 'upDate charac_stat set total_play_time=total_play_time + %d where charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('23bf3f4154340b27', 6675, 'upDate %s set login_time=%d, expire_time=%d, last_play_time=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('4e7a269305830ad7', 6676, 'upDate charac_info set lev=%d,grow_type=%d,maxHP=%d,maxMP=%d,phy_attack=%d,phy_defense=%d,mag_attack=%d,mag_defense=%d,inven_weight=%d,hp_regen=%d,mp_regen=%d,move_speed=%d,attack_speed=%d,cast_speed=%d,hit_recovery=%d,jump=%d,charac_weight=%d,element_resist=\'%s\',spec_property=\'%s\',max_premium_fatigue=%d,guild_right=%d,expert_job=%d,skill_tree_index=%d, event_charac_level=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('2d1a37c34f3c425a', 6677, 'upDate charac_stat set village=%d,exp=%d,HP=%d,fatigue=%d,premium_fatigue=%d,last_play_time=from_unixtime(%d),used_fatigue=%d,tutorial_flag=%d,trade_gold_total=%d,trade_gold_total_billion=trade_gold_total_billion+%d,trade_gold_daily=%d,help_abuse_ratio=%d,help_abuse_exp=%d,chaos_point=%d,chaos_exp=%d,chaos_mode_count=%d,chaos_kill_count=%d,chaos_die_count=%d,chaos_die_time=from_unixtime(%d),assault_count=%d,luck_point=%d,dungeon_play_count=%d,chaos_kill_time=from_unixtime(%d),expert_job_exp=%d,open_flag=%d,fatigue_battery_charging=%d,escalade_tutorial_flag=\'%s\',power_war_point=%d,village_prev=%d,power_war_assault_count=%d,power_war_assault_victory_count=%d,last_play_time_powerwar=from_unixtime(%d),fatigue_grownup_buff=%d, emotion=%d, add_slot_flag=%d, member_dungeon_flag=%d, member_bonus_fatigue=%d, last_play_dungeon_index=%u, add_equipslot_flag=%d, channel_equipslot_switch=%d, expand_equipslot_switch=%d, visible_flags=%d, growth_power_reward=%d, chaos_respon_time=from_unixtime(%d) where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('21259d41215be804', 6678, 'upDate %s set expire_time=%d,last_play_time=%d,report_cnt=%d,trade_gold_daily=%d,dungeon_gain_gold=%d,rating=%f,tutorial_skipable=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('1e9d4d4d210cab86', 6679, 'upDate charac_inven_expand set expand_equipslot=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('6688e953705de910', 6680, 'upDate charac_stat set channel_equipslot_switch=%d, expand_equipslot_switch=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('424991da13b26df2', 6681, 'upDate inventory set money=%u,coin=%d,pay_coin=%d,event_coin=%d,equipslot=\'%s\',inventory=\'%s\',creature=\'%s\', avatar_coin=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('476c68e51f6cd9cb', 6682, 'upDate charac_inven_expand set cargo_capacity=%d,cargo=\'%s\',jewel=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('5b9230db2152b325', 6683, 'upDate %s set remain_sp=%u,skill_slot=\'%s\',remain_sp_2nd=%u, skill_slot_2nd=\'%s\', remain_sfp_1st=%u, remain_sfp_2nd=%u, skill_command =\'%s\',script_version=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('159c5a9432bcd48c', 6684, 'upDate member_dungeon set dungeon=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('740dfb4e6dcb92d4', 6685, 'upDate new_charac_quest set clear_quest=\'%s\', play_1=%d, play_1_trigger=%d, play_2=%d, play_2_trigger=%d, play_3=%d, play_3_trigger=%d, play_4=%d, play_4_trigger=%d, play_5=%d, play_5_trigger=%d,play_6=%d, play_6_trigger=%d, play_7=%d, play_7_trigger=%d, play_8=%d, play_8_trigger=%d, play_9=%d, play_9_trigger=%d, play_10=%d, play_10_trigger=%d, play_11=%d, play_11_trigger=%d, play_12=%d, play_12_trigger=%d, play_13=%d, play_13_trigger=%d, play_14=%d, play_14_trigger=%d, play_15=%d, play_15_trigger=%d,play_16=%d, play_16_trigger=%d, play_17=%d, play_17_trigger=%d, play_18=%d, play_18_trigger=%d, play_19=%d, play_19_trigger=%d, play_20=%d, play_20_trigger=%d,urgentQuestIndex=%d,quest_notify=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('3a96673e4b3cb6c7', 6686, 'upDate login_common set inform_notice = \'%s\' where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('219d03677f3ae693', 6687, 'inSert into login_common(m_id, inform_notice) values(%s, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('3f96e7a41d3f7281', 6688, 'upDate fair_pvp_score set pvp_mission_info=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('39daf951719eadda', 6689, 'upDate charac_quest_shop set qp=%u, init_count=%u, max_hp=%d, max_mp=%d, psy_attack=%d, psy_defense=%d, mag_attack=%d, mag_defence=%d, move_speed=%d, attack_speed=%d, hp_regen=%d, mp_regen=%d, all_element_resist=%d, fire_element_resist=%d, water_element_resist=%d, light_element_resist=%d, dark_element_resist=%d, all_element_attack=%d,fire_element_attack=%d, water_element_attack=%d, light_element_attack=%d, dark_element_attack=%d, psy_critical=%d, mag_critical=%d, good_hit=%d, evasion=%d, hit_recovery=%d, separate_psy_mag_attack=%d, quest_piece=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('0e0313fa2642d76d', 6690, 'inSert into charac_quest_shop(charac_no, qp, init_count, max_hp, max_mp, psy_attack, psy_defense, mag_attack, mag_defence, move_speed, attack_speed, hp_regen, mp_regen, all_element_resist, fire_element_resist, water_element_resist, light_element_resist, dark_element_resist, all_element_attack,fire_element_attack, water_element_attack, light_element_attack, dark_element_attack, psy_critical, mag_critical, good_hit , evasion , hit_recovery , separate_psy_mag_attack , quest_piece) values(%u, %u, %u, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d)');
INSERT INTO `log_query_ref` VALUES ('7f71f2d43f5e0b7e', 6691, 'upDate charac_kill_monster_info set boss_info=\'%s\', named_info=\'%s\', apc_boss_info=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('7cf6fb0971e51844', 6692, 'upDate charac_titlebook set general_section=\'%s\', specific_section=\'%s\', despair=\'%s\', event=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('238224ef48d75c43', 6693, 'inSert into charac_titlebook(charac_no, general_section, specific_section, despair, event) values(%u, \'%s\',\'%s\',\'%s\',\'%s\')');
INSERT INTO `log_query_ref` VALUES ('0570a44d1b67eb0b', 6694, 'upDate charac_achievement set achievement=\'%s\', last_update_time=now() where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('169c1f1178998c10', 6695, 'inSert into charac_achievement(charac_no, achievement, last_update_time) values(%u, \'%s\', now())');
INSERT INTO `log_query_ref` VALUES ('4612468c41c2bba2', 6696, 'upDate charac_option set best_clear_time = \'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('0fb2288908e30451', 6697, 'inSert into charac_option(charac_no, best_clear_time) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('7b611eb46c7943ef', 6698, 'upDate event_dungeon_clear set clear_cnt=%d, update_time=now() where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('4c6aed2035af9fd0', 6699, 'inSert into event_dungeon_clear(charac_no, clear_cnt, update_time) values(%u, %d, now())');
INSERT INTO `log_query_ref` VALUES ('459e759565d70d72', 6700, 'upDate charac_option set blue_marble_enter_count = %u where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('5eef633a58c7541f', 6701, 'inSert into charac_option(charac_no, blue_marble_enter_count) values(%u, %u)');
INSERT INTO `log_query_ref` VALUES ('27fe75f32890d6fe', 6702, 'upDate dnf_hack_log set charac_no=%d,last_time=now(),cnt=cnt+%d,etc=%d where m_id=%s and hack_type=%d and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)');
INSERT INTO `log_query_ref` VALUES ('403d46965e14e790', 6703, 'inSert into dnf_hack_log(m_id,charac_no,hack_type,occ_date,last_time,etc,cnt) values(%s,%d,%d,cast(now() as date),now(),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('1292e0af21723334', 6724, 'upDate login_account_%d set m_channel_no=%d,login_status=%d,last_login_date=now() where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('38f8b35202cd0fca', 6725, 'upDate member_play_info set play_time=play_time+%d,play_count=play_count+1,trade_cnt=trade_cnt+%d, exp=exp+%u, used_fatigue=used_fatigue+%u, ting_count=ting_count+%d, ip=\'%s\', last_play_time=%u, end_ip=\'%s\', mac_addr=\'%s\', server_id = %d where occ_date=cast(now() as date) and m_id=%s');
INSERT INTO `log_query_ref` VALUES ('37fa7bc67c0bcf7b', 6726, 'inSert into member_play_info(occ_date,m_id,play_time,play_count,trade_cnt,exp,used_fatigue,ting_count, ip, last_play_time, pcbang_flag, end_ip, mac_addr, server_id) values(cast(now() as date),%s,%d,1,%d,%u,%u,%d,\'%s\', %u, %d, \'%s\', \'%s\',%d)');
INSERT INTO `log_query_ref` VALUES ('679d759f5442448e', 6727, 'upDate login_common set member_bonus_fatigue=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('420163e2084ddcff', 6728, 'inSert into login_common(m_id,member_bonus_fatigue,update_time) values(%s,%d,unix_timestamp(now()))');
INSERT INTO `log_query_ref` VALUES ('0af49eaf721df500', 6729, 'upDate %s set expire_time=%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('7db8c48672fa7ba5', 6730, 'inSert into log_dungeon_entrance_hour(channel_no,occ_date,dungeon_index,hour_enter_count, cnt_enter_count) values %s');
INSERT INTO `log_query_ref` VALUES ('2c50af650606d14b', 6731, 'inSert into dungeon_fail(occ_date,lev,occ_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('544cf8485cc8fe5e', 6767, 'upDate member_security_card set validity_time=unix_timestamp(now())+%d where m_id=%s and apply_flag=1');
INSERT INTO `log_query_ref` VALUES ('4e08d45f0a865dd8', 6768, 'upDate member_mousepass set validity_time=unix_timestamp(now())+%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('3e9ae7ea1cd0570a', 6769, 'upDate dungeon_fail set occ_count = occ_count + %d where occ_date = now() and lev = %d');
INSERT INTO `log_query_ref` VALUES ('1d19facd7eb22605', 6770, 'upDate channel_occ_info set occ_num = 0 where gc_no = %d');
INSERT INTO `log_query_ref` VALUES ('4a494d3925dcbe60', 6801, 'upDate postal set delete_flag=%d,receive_time=now() where postal_id=%d');
INSERT INTO `log_query_ref` VALUES ('75216d4a62fcef9a', 6802, 'deLete from letter where letter_id = %d');
INSERT INTO `log_query_ref` VALUES ('686d7d2b5d4ae63f', 6803, 'seLect guild_id,memo from guild_join_list where charac_no=%d and server_group=%d');
INSERT INTO `log_query_ref` VALUES ('15cff64b70957346', 6804, 'upDate inventory set money=%u,equipslot=\'%s\',inventory=\'%s\',creature=\'%s\', avatar_coin=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('48604d80070b58ee', 6806, 'call usp_create_account(\'%s\')');
INSERT INTO `log_query_ref` VALUES ('12586d6c23d7ebd4', 6809, 'seLect m_id from member_white_account where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('60bc15aa78e97535', 6837, 'upDate %s set option_1=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('231c9f0b1e210791', 6838, 'inSert into %s(m_id, option_1) values(%s,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('3204308307aa8d48', 6908, 'seLect m_id from mobile_auth_reward_tw where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('1e3822f6432d2b2a', 6909, 'inSert into mobile_auth_reward_tw(m_id,occ_date) VALUES(%s,now())');
INSERT INTO `log_query_ref` VALUES ('104eee465274cf4b', 6910, 'inSert into postal(occ_time,send_charac_no,receive_charac_no,seal_flag,item_id,add_info,endurance,upgrade ,amplify_option,amplify_value,gold,send_charac_name,creature_flag,avata_flag,letter_id,extend_info,item_guid,random_option,seperate_upgrade,unlimit_flag) values %s');
INSERT INTO `log_query_ref` VALUES ('0dbf8853449b4e0f', 7104, 'upDate new_charac_quest set play_1=%d, play_1_trigger=%d, play_2=%d, play_2_trigger=%d, play_3=%d, play_3_trigger=%d, play_4=%d, play_4_trigger=%d, play_5=%d, play_5_trigger=%d,play_6=%d, play_6_trigger=%d, play_7=%d, play_7_trigger=%d, play_8=%d, play_8_trigger=%d, play_9=%d, play_9_trigger=%d, play_10=%d, play_10_trigger=%d, play_11=%d, play_11_trigger=%d, play_12=%d, play_12_trigger=%d, play_13=%d, play_13_trigger=%d, play_14=%d, play_14_trigger=%d, play_15=%d, play_15_trigger=%d,play_16=%d, play_16_trigger=%d, play_17=%d, play_17_trigger=%d, play_18=%d, play_18_trigger=%d, play_19=%d, play_19_trigger=%d, play_20=%d, play_20_trigger=%d,urgentQuestIndex=%d,quest_notify=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('0e9c3730744e8348', 7108, 'seLect m_id from charac_info where charac_name=\'%s\' limit 1');
INSERT INTO `log_query_ref` VALUES ('6953d1cd21a6e422', 7109, 'seLect * from guild_info where expire_flag=0 and guild_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('2e9cc8046dfddf4d', 7160, 'upDate member_security_grade set goblin_validity_time		=unix_timestamp(now())+%d , validity_ip = \'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('2822db9b23026b1c', 7161, 'seLect letter_id,send_charac_no,send_charac_name,letter_text,unix_timestamp(reg_date),stat from letter where (charac_no=%d and stat = 3) or (charac_no=%d and letter_id > %d and reg_date>subdate(now(),interval %d day)) order by letter_id');
INSERT INTO `log_query_ref` VALUES ('7cd5aecc0c9c605b', 7163, 'seLect m_id from charac_info where charac_name=\'%s\' and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('3d1c0ab56bfc4085', 7173, 'upDate charac_info set lev=%d,grow_type=%d,maxHP=%d,maxMP=%d,phy_attack=%d,phy_defense=%d,mag_attack=%d,mag_defense=%d,inven_weight=%d,hp_regen=%d,mp_regen=%d,move_speed=%d,attack_speed=%d,cast_speed=%d,hit_recovery=%d,jump=%d,charac_weight=%d,element_resist=\'%s\',spec_property=\'%s\', expert_job=%d, skill_tree_index=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('41ed6a72645d869d', 7176, 'inSert into charac_inven_expand(charac_no, expand_equipslot) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('062f746e18a7329e', 7369, 'inSert into log_nat_stat(occ_time,nat_type,nat_cnt) values(from_unixtime(%d),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('1da1c0875cebd91d', 7389, 'delete from guild_join_list where guild_id=%d and server_group != %d');
INSERT INTO `log_query_ref` VALUES ('4e57e4fa29b6320c', 7390, 'seLect charac_no,memo,unix_timestamp(occ_time) from guild_join_list where guild_id=%d');
INSERT INTO `log_query_ref` VALUES ('19d20f79706aaf69', 7406, 'upDate member_punish_info set occ_time=now(), start_time=now(), end_time=adddate(now(),interval %d day), punish_value=%d, apply_flag=2 where m_id=%s and punish_type=%d');
INSERT INTO `log_query_ref` VALUES ('2b83b06227486fca', 7407, 'inSert into member_punish_info(m_id, occ_time, start_time, end_time, punish_type, punish_value, apply_flag) values(%s, now(), now(), adddate(now(),interval %d day), %d, %d, 2)');
INSERT INTO `log_query_ref` VALUES ('548cf8a0724fd1ab', 7408, 'inSert into dnf_event_entry(event_id,m_id,occ_date,server_id,charac_no,obtain_date) values(%d,%s,from_unixtime(%d),%d,%d,from_unixtime(%d))');
INSERT INTO `log_query_ref` VALUES ('05ca0e635557290d', 7509, 'seLect guild_name,master_name,lev,member_count from guild_info where server_id=%d and expire_flag=0 and guild_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('726edc7613098c2e', 7510, 'seLect * from guild_join_list where charac_no=%d and server_group=%d');
INSERT INTO `log_query_ref` VALUES ('6e75720475f696c0', 7511, 'seLect guild_id,guild_name,master_name,lev,member_count from guild_info where server_id=%d and expire_flag=0 and guild_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('6e5f9f2d41d451f1', 7512, 'seLect * from guild_join_list where guild_id=%d');
INSERT INTO `log_query_ref` VALUES ('6baea84b5b927296', 7513, 'inSert into guild_join_list(guild_id,m_id,server_group,charac_no,born_year,memo,occ_time) values(%d,%s,%d,%d,\'%s\',\'%s\',now())');
INSERT INTO `log_query_ref` VALUES ('47aa6a9a63d7ed23', 7514, 'seLect charac_name,lev,job,grow_type,sex from charac_info where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('2df9b35c3a4fe248', 7745, 'upDate member_premium set service_end=from_unixtime(%d) where event_id=%d and pre_type=%d and m_id=%s and service_end>from_unixtime(%d) and server_id=%d');
INSERT INTO `log_query_ref` VALUES ('3d0a182319956bf3', 7746, 'inSert into member_premium(pre_type,m_id,service_start,service_end,event_id,server_id) values(%d,%s,from_unixtime(%d),from_unixtime(%d),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('7df4be8215be4322', 7747, 'seLect pre_type,unix_timestamp(service_start),unix_timestamp(service_end) from member_premium where m_id=%s and event_id=%d and service_end>now() and server_id in(0,%d) order by service_end desc limit 1');
INSERT INTO `log_query_ref` VALUES ('0390c410538cd57e', 7815, 'seLect rate, HOUR(CURTIME()), event_day FROM event_create_dnf_info WHERE occ_time=DATE_ADD(CURDATE(), INTERVAL HOUR(CURTIME()) HOUR)');
INSERT INTO `log_query_ref` VALUES ('12481369361e0a1d', 7877, 'seLect m_id from event_create_dnf_user where occ_date=CURDATE() and m_id=%s');
INSERT INTO `log_query_ref` VALUES ('7b3760781bac5be6', 7878, 'seLect level, state from event_levelup_support where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('0815e90e5cfd7d65', 7879, 'upDate event_levelup_support set state = %d where charac_no = %d and level = %d');
INSERT INTO `log_query_ref` VALUES ('0d3bbde7788c795f', 7880, 'inSert into event_levelup_support(charac_no, level, state) values(%d, %d, %d)');
INSERT INTO `log_query_ref` VALUES ('7dff01be7c543b46', 7881, 'inSert into user_items (charac_no,slot,it_id,expire_date,obtain_from,reg_date,ability_no,ipg_agency_no,stat,jewel_socket,hidden_option,emblem_endurance) values(%u,%d,%u,from_unixtime(\'%s\'),%d,now(),%d,\'%s\',%d,\'%s\',%d,%d)');
INSERT INTO `log_query_ref` VALUES ('11a9f0a716017b7e', 7882, 'upDate user_items set slot=%d,clear_avatar_id=%d where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('34079dd179939d80', 9047, 'upDate member_miles set miles = %d where m_id = %u');
INSERT INTO `log_query_ref` VALUES ('70c9d8bb3633fefd', 9048, 'upDate account_cerashop_restrict set count=%u, next_date=%d, last_access_date=UNIX_TIMESTAMP() where m_id = %u and ipg_no=%u');
INSERT INTO `log_query_ref` VALUES ('17244cab32c5e642', 9049, 'inSert into account_cerashop_restrict(m_id, ipg_no, count, next_date, end_date, last_access_date) values(%u, %u, %u, %d, %d, UNIX_TIMESTAMP())');
INSERT INTO `log_query_ref` VALUES ('5fa678004fbdc950', 9050, 'upDate churn_member_info set accrue_cera= accrue_cera+%u where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('797c9cae5eded4dc', 9051, ' upDate prod_buy_user  set user_id = \'%s\', sex = %d, birthday = \'%s\', last_buy_time = now()  where m_id = %d ');
INSERT INTO `log_query_ref` VALUES ('2640610e2e4689b8', 9052, 'seLect m_id, user_id from prod_buy_user where m_id = %d');
INSERT INTO `log_query_ref` VALUES ('038a62da25242115', 9053, ' inSert into prod_buy_user ( m_id, user_id, sex, birthday, first_buy_time, last_buy_time )  values(%d, \'%s\', %d, \'%s\', now(), now() ) ');
INSERT INTO `log_query_ref` VALUES ('0999dee34b69cdd2', 9054, ' insert into prod_sale_entry_%s  ( agency_no, seal_flag, sale_time, price, slot_part_type, slot_part_code, ipg_no, bonus_ipg_no, m_id, user_id  , server_id, charac_no, job, grow_type, level, prize_flag, new_flag, result_code, result_message, gift_server_info, gift_get_charac_no  , charge_price, free_price, count_no, each_price, price_type, user_ip, buy_type, tran_id )  values( \'%s\', %d, now(), %d, %d, %d, %d, %d, %d, \'%s\', %d, %d, %d, %d, %d, %d, %d, %d, \'%s\', %d, %d, %d, %d, %d, %d, %d, \'%s\', %u, %u ) ');
INSERT INTO `log_query_ref` VALUES ('43e9700440c8e736', 9055, 'seLect m_id from pu_user_list where m_id = %u');
INSERT INTO `log_query_ref` VALUES ('66e8c8c80199bce6', 9056, 'inSert into pu_user_list(m_id) values(%u)');
INSERT INTO `log_query_ref` VALUES ('4225e8602e44df66', 9062, 'upDate pvp_result set win=%d,lose=%d,pvp_point=%d,pvp_grade=%d,avg_kill_count=%d,avg_buf_count=%d,avg_debuf_count=%d,avg_heal_count=%d,avg_counter_count=%d,avg_back_atk_count=%d,avg_union_hit_count=%d,avg_overkill_count=%d,avg_combo_count=%d,avg_aerial_count=%d,avg_attacked_count=%d,avg_deal_damage=%d,avg_technic=%d,avg_style=%d,avg_hit_penalty=%d,pvp_count=%d,win_point=%d,last_play_time=from_unixtime(%d), play_count=%u,play_time=%u where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('1adcbfa50618aff7', 9266, 'seLect charac_no,lev,delete_flag,m_id from charac_info where charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('184c754357deb108', 9267, 'seLect count(*) from charac_black_list where m_id = %s and charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('5a7f71c566f19dab', 9820, 'upDate charac_inven_expand set redeem_info=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('12a09b156419d636', 9824, 'inSert into log_item_drop(occ_date,channel_no,drop_type,stackable_common,stackable_uncommon,stackable_rare,stackable_unique,stackable_epic,stackable_chronicle,equip_common,equip_uncommon,equip_rare,equip_unique,equip_epic,equip_chronicle,recipe_common,recipe_uncommon,recipe_rare,recipe_unique,recipe_epic,recipe_chronicle,artifact_common,artifact_uncommon,artifact_rare,artifact_unique,artifact_epic,artifact_chronicle) values(cast(now() as date),%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('25d569f96d22f1ce', 10163, 'upDate guild_member set grow_type=%d,lev=%d where guild_id=%d and charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('766d5601073dc688', 10236, 'inSert into re_stamina_shusia(occ_date,lev,occ_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('20addc4c5ae7b367', 10314, 'upDate letter set stat=%d where letter_id=%d');
INSERT INTO `log_query_ref` VALUES ('4ac8be7e183e2858', 10375, 'seLect best_round, best_time, dungeon_index from charac_blood_best_record where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('3077da387cd5fdaf', 10376, 'seLect dungeon1, dungeon2, dungeon3, dungeon4, dungeon5, dungeon6 from charac_dimension_inout where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('10e1e2d353e073f5', 10377, 'inSert into charac_dimension_inout(charac_no,dungeon1,dungeon2,dungeon3,dungeon4,dungeon5,dungeon6) values(%u,%d,%d,%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('2500c252620ce2f8', 10378, 'seLect dungeon1 from charac_blood_inout where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('1c518fd031126184', 10379, 'inSert into charac_blood_inout(charac_no,dungeon1) values(%u,%d)');
INSERT INTO `log_query_ref` VALUES ('7b5f18fa6275c3e0', 10411, 'inSert into log_dungeon_entrance(channel_no,occ_date,dungeon_index,enter_count, exercise_count) values%s');
INSERT INTO `log_query_ref` VALUES ('163cf2b75d1a8cdc', 10412, 'upDate log_level_dungeon_play_count set total_charac_count=total_charac_count+%d,total_dungeon_play_count=total_dungeon_play_count+%d where level=%d');
INSERT INTO `log_query_ref` VALUES ('31e0459747475585', 10413, 'inSert into log_dungeon_exp(occ_time,channel_no,lev,exp,fatigue,user_count) values%s');
INSERT INTO `log_query_ref` VALUES ('57a1404409112078', 10432, 'inSert into log_level_dungeon_play_count (level,total_charac_count,total_dungeon_play_count) values(%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('52cfd79c19b5f894', 10441, 'inSert into log_party_type(channel_no,occ_date,guild_count,member_count,helped_count,normal_count,member_helped_count) values(%d,now(),%d,%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('0b3ca3381ca26a4e', 10453, 'upDate charac_info set max_premium_fatigue=%d,guild_right=%d,event_charac_level=%d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('6e944c637d333bb8', 10454, 'upDate charac_dimension_inout set dungeon1=%d, dungeon2=%d, dungeon3=%d,  dungeon4=%d, dungeon5=%d, dungeon6=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('6fac34e77796497f', 10456, 'upDate charac_blood_inout set dungeon1=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('72803ef154910b77', 11601, 'upDate pvp_result set pvp_grade_ext=%d, pvp_grade_ext_update_time=from_unixtime(%d) where charac_no %s');
INSERT INTO `log_query_ref` VALUES ('6b8c78be12aca2f2', 11602, 'deLete from game_channel where gc_no=%d');
INSERT INTO `log_query_ref` VALUES ('1028ba3411b03951', 11603, 'deLete from channel_occ_info where gc_no=%d');
INSERT INTO `log_query_ref` VALUES ('3f9af1b65073d6b4', 11608, 'inSert into check_pick_up_random_option_item(m_id, check_count) values(%s, %u)');
INSERT INTO `log_query_ref` VALUES ('474c2bbc203e295e', 11609, 'inSert into crash_down_by_dungeon(occ_time,dungeon_index,down_count) values(from_unixtime(%d),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('1b3663ee308df5e9', 11610, 'inSert into crash_down_by_packet(occ_date,packet_index,down_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('0ff868f222d76e15', 11611, 'inSert into crash_down_by_playstatus(occ_date,play_status,down_count) values(cast(now() as date),%d,%d)');
INSERT INTO `log_query_ref` VALUES ('5d6d895120a4534a', 11612, 'inSert into fair_pvp_score(charac_no, pvp_mission_info) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('6f9aea2079597642', 11613, 'inSert into pvp_status(occ_date,room_number,play_type,no_participants,occ_count) values(cast(now() as date),%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('11f82c960777a961', 11614, 'upDate charac_option set options = \'%s\' where charac_no= %u');
INSERT INTO `log_query_ref` VALUES ('165d134524c526b0', 11615, 'upDate pvp_status set occ_count = occ_count + %d , no_participants = no_participants + %d where occ_date = cast(now() as date) and room_number = %d and play_type = %d');
INSERT INTO `log_query_ref` VALUES ('6975c5dc264ccd98', 11625, 'upDate inventory set inventory_capacity=%d where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('30f972f079a6576a', 11626, 'upDate crash_down_by_playstatus set down_count = down_count + %d where occ_date = cast(now() as date) and play_status = %d');
INSERT INTO `log_query_ref` VALUES ('6b068433768b78ef', 11627, 'inSert into user_items (charac_no,slot,it_id,expire_date,obtain_from,reg_date,ability_no,ipg_agency_no,stat,jewel_socket,hidden_option,emblem_endurance) values(%u,%d,%u,\'%s\',%d,now(),%d,\'%s\',%d,\'%s\',%d,%d)');
INSERT INTO `log_query_ref` VALUES ('349f86900bebe118', 11628, 'seLect delete_flag,m_id,charac_no,job,lev,grow_type,sex from charac_info where charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('16a912435043fe93', 11630, 'inSert into log_gameserver_load_stat set occ_time=now(), server_id=%d, channel_no=%d, dbq_cnt=%d, logdbq_cnt=%d, netq_cnt=%d, packetq_cnt=%d');
INSERT INTO `log_query_ref` VALUES ('48c1ed8c6282c2ef', 11634, 'upDate crash_down_by_packet set down_count = down_count + %d where occ_date = cast(now() as date) and packet_index = %d');
INSERT INTO `log_query_ref` VALUES ('3d4b4e1619b03dc3', 11635, 'upDate re_stamina_shusia set occ_count = occ_count + %d where occ_date = now() and lev = %d');
INSERT INTO `log_query_ref` VALUES ('28fc11ed76cca115', 11640, 'seLect * from account_cargo where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('672fb36147a4ecab', 11641, 'inSert into account_cargo(m_id, capacity, money, occ_time, cargo) values(%s, %d, 0, now(),\'\')');
INSERT INTO `log_query_ref` VALUES ('25d1725230facc15', 11642, 'upDate account_cargo set capacity = %d where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('7001d7be1db6d84b', 11643, 'seLect ui_id,unix_timestamp(reg_date),unix_timestamp(expire_date),ipg_agency_no,jewel_socket from user_items where charac_no=%d and ui_id %s');
INSERT INTO `log_query_ref` VALUES ('0a44b045009f678e', 11644, 'upDate user_items set stat=%d,slot=%d where ui_id=%d and charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('3dbb7a08538c6ab5', 11645, 'seLect slot,ui_id,it_id,unix_timestamp(reg_date),unix_timestamp(expire_date),ability_no,ipg_agency_no,jewel_socket,hidden_option,emblem_endurance from user_items where charac_no=%u and ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('562c3516134f89c8', 11646, 'inSert into user_items_change_history(ui_id,from_charac_no,to_charac_no,occ_date,change_type) values(%u,%u,%u,now(),%u)');
INSERT INTO `log_query_ref` VALUES ('38d3a0b52f820c6b', 11648, 'upDate human_certify_try_count set count = count + 1 where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('64aafb361f8e0fe0', 11649, 'inSert into human_certify_try_count(m_id, count) values(%s, 1)');
INSERT INTO `log_query_ref` VALUES ('6d2c252413de7302', 11650, 'upDate inventory set creature_flag=%d where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('28d2455c3bbfa919', 11651, 'inSert into creature_items(charac_no,slot,it_id,expire_date,delete_date,reg_date,name,stomach,exp,endurance,no_charge,stat,creature_type)values(%d,%d,%d,%s,%s,NOW(),\'%s\',%d,%d,%d,0,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('7f59286c1291852a', 11652, 'upDate creature_items set slot=%d where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('3e1c25b02f727c6a', 11653, 'upDate creature_items set exp=%d,stomach=%d where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('2f47ec621e8796ef', 11654, 'upDate crash_down_by_dungeon set down_count = down_count + %d where occ_time = from_unixtime(%d) and dungeon_index = %d');
INSERT INTO `log_query_ref` VALUES ('70b6465c0f64dc5e', 11655, 'seLect slot,it_id,name,stomach,exp,endurance,creature_type,ui_id,no_charge,stat,item_lock_key,unix_timestamp(expire_date) from creature_items where charac_no=%u and stat = 0 and expire_date>now()');
INSERT INTO `log_query_ref` VALUES ('0bd10a3b5c0f4c53', 11656, 'seLect ui_id,unix_timestamp(expire_date),unix_timestamp(reg_date) from creature_items where ui_id %s and stat = 1');
INSERT INTO `log_query_ref` VALUES ('33f3b55d010ff887', 11657, 'upDate charac_item_stat set cooltime_item=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('5823442244c685d0', 11658, 'inSert into charac_item_stat(charac_no, cooltime_item) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('520677c850f08abe', 11661, 'upDate store set store = \'%s\', use_doll = \'%d\' where charac_no =%d');
INSERT INTO `log_query_ref` VALUES ('21d0c49c57fd2568', 11662, 'inSert into store(charac_no, store, use_doll) values(%d, \'%s\', \'%d\')');
INSERT INTO `log_query_ref` VALUES ('5b074fe73efb0d54', 11664, 'inSert into charac_option(charac_no, options) values(%u,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('6563c5f655581541', 11666, 'seLect m_id, remain_reward_count, unix_timestamp(occ_date) FROM pcroom_daily_reward_tw WHERE m_id=%s');
INSERT INTO `log_query_ref` VALUES ('689c39ec1d7cf85c', 11667, 'upDate member_play_info set play_time=play_time+%d,play_count=play_count+1,trade_cnt=trade_cnt+%d, exp=exp+%u, used_fatigue=used_fatigue+%u, ting_count=ting_count+%d, ip=\'%s\', last_play_time=%u, pcbang_flag=%d, end_ip=\'%s\', mac_addr=\'%s\', server_id = %d where occ_date=cast(now() as date) and m_id=%s');
INSERT INTO `log_query_ref` VALUES ('4a5ba61049a1ae87', 11676, 'seLect m_id from pcroom_daily_reward_tw where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('037154267424e989', 11677, 'inSert into pcroom_daily_reward_tw(m_id, occ_date, remain_reward_count) values(\'%s\', now(), %d)');
INSERT INTO `log_query_ref` VALUES ('37b432221f0b8b8b', 11695, 'seLect m_id from allow_proxy_user where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('2c9309a23d5837b9', 11696, 'inSert into dnf_proxy_log values(now(),%s,\'%s\',\'%s\',%d)');
INSERT INTO `log_query_ref` VALUES ('1aa422c010832cc8', 12151, 'upDate pcroom_daily_reward_tw set occ_date=now(), remain_reward_count=%d where m_id = %s');
INSERT INTO `log_query_ref` VALUES ('1974fd886e67c6a1', 12263, 'upDate %s set option_3=\'%s\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('12204c485983a8ca', 12469, 'upDate %s set last_play_time=unix_timestamp(now()),account_fail=%d,total_account_fail=total_account_fail+%d where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('0bd33df61cb8a77e', 12962, 'upDate charac_item_stat set effect_item=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('393c456057455f6a', 13654, 'seLect cnt from dnf_hack_log where m_id=%s and hack_type=%d and occ_date=CAST(DATE_FORMAT(now(), \'%%Y-%%m-%%d\') AS CHAR)');
INSERT INTO `log_query_ref` VALUES ('40448b8d241ec1f3', 13841, 'upDate charac_item_lock_info set item_lock_info=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('75ead132179c4fa2', 13842, 'inSert into charac_item_lock_info(charac_no, item_lock_info) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('261516c2017cb77a', 15653, 'seLect enable_flag from member_mousepass where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('4765280172fb1466', 15654, 'inSert into member_mousepass(m_id,mousepass,occ_time,version_info, validity_time, reward_time,enable_flag) values(%s,\'%s\',now(),\'2\', unix_timestamp(now()), 0,\'1\')');
INSERT INTO `log_query_ref` VALUES ('7bce6102718d9f87', 15655, 'seLect mousepass from member_mousepass where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('1c6e8bdd47bfc671', 15656, 'inSert into member_mousepass_history_%s (occ_time, m_id, pre_mousepass, modify_type, ip_info, port_info) values (now(),%s,\'%s\',%d,\'%s\',\'\')');
INSERT INTO `log_query_ref` VALUES ('146c938957c96ea6', 15657, 'upDate member_security_grade set goblin_pass_mod=now() where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('67a97a5e4e9dc6e0', 15658, 'inSert into member_security_grade(m_id, goblin_pass_mod) values(%s, now())');
INSERT INTO `log_query_ref` VALUES ('724ba0b437908bed', 15659, 'upDate member_punish_info set apply_flag = 0 where m_id = %s and punish_type = 10');
INSERT INTO `log_query_ref` VALUES ('5bdca0576b384c9a', 15660, 'upDate member_punish_info_history_%s set apply_flag = 0 , reason = \'%s\' where m_id = %s and punish_type = %d and apply_flag = 1');
INSERT INTO `log_query_ref` VALUES ('4174bcab1f074fb6', 15661, 'seLect unix_timestamp(last_check_time) from member_security_grade where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('0bf77b8d50895d9c', 15925, 'upDate user_items set item_lock_key=%d where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('1305463c3c803b65', 15985, 'upDate creature_items set %s where ui_id=%d');
INSERT INTO `log_query_ref` VALUES ('4569a9a5207c78dd', 15992, 'inSert into dnf_zeromoney_log(to_m_id,to_nat_ip,to_peer_ip,to_nat_type,from_m_id,from_nat_ip,from_peer_ip,from_nat_type,occ_time,injury_money,to_mac_addr,from_mac_addr) values(%s,\'%s\',\'%s\',%d,%s,\'%s\',\'%s\',%d,now(),%d,\'%s\',\'%s\')');
INSERT INTO `log_query_ref` VALUES ('0d5ff31a3e788d24', 15998, 'inSert into charac_inven_expand(charac_no, redeem_info) values(%u, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('551cf9b024349fd1', 16152, 'upDate geo_reject set rej_ip_count = rej_ip_count + 1, rej_src = \'g\' where rej_ip = \'%s\'');
INSERT INTO `log_query_ref` VALUES ('21925a4b4b6eb288', 16153, 'inSert into geo_reject(rej_ip, rej_c_code, rej_ip_count, rej_src) values(\'%s\', \'%s\', 1, \'g\')');
INSERT INTO `log_query_ref` VALUES ('6a9302f27ddf3010', 17477, 'seLect charac_no,m_id from charac_info where charac_name=\'%s\'');
INSERT INTO `log_query_ref` VALUES ('10bb39a90164c22a', 19943, 'upDate charac_tower_record set member_info_%d=\'%s\',stage_%d=%d,play_time_%d=%d,occ_time_%d=now() where charac_no=%d and tower_index=%d and stage_%d<=%d');
INSERT INTO `log_query_ref` VALUES ('0630207263d16e1c', 19944, 'inSert into charac_tower_record(charac_no,tower_index,member_info_%d,stage_%d,play_time_%d,occ_time_%d) values(%d,%d,\'%s\',%d,%d,now())');
INSERT INTO `log_query_ref` VALUES ('5bc92b891231b98b', 20232, 'inSert into %s(m_id, option_3) values(%s,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('02da7b050b3146da', 21285, 'deLete from member_mousepass where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('47365ad446066233', 21286, 'upDate member_security_grade set goblin_pass_mod=\'2021-11-19 00:00:00\' where m_id=%s');
INSERT INTO `log_query_ref` VALUES ('5e57f6e6312bdce3', 24576, 'inSert into event_create_dnf_user(occ_date,m_id,server_id,occ_time) VALUES(CURDATE(),%s,%d,CURTIME())');
INSERT INTO `log_query_ref` VALUES ('63477ee656f681ab', 25147, 'seLect guild_name,master_name,lev,member_count from guild_info where expire_flag=0 and guild_id=%d');
INSERT INTO `log_query_ref` VALUES ('63ebc36d3c895c5f', 27906, 'deLete from guild_join_list where guild_id=%d and charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('229735815089c3a9', 28274, 'inSert into log_police_chatting(charac_no, msg_type, occ_time, message) values(%u, %d, unix_timestamp(now()), \'%s\')');
INSERT INTO `log_query_ref` VALUES ('5777b65f3dc9fc5e', 29137, 'seLect mousepass, fail_cnt, cancel_cnt, version_info, validity_time>unix_timestamp(now()), adddate(now(),interval -1 month) >= occ_time from member_mousepass where m_id=%s and enable_flag = \'1\'');
INSERT INTO `log_query_ref` VALUES ('1631cb4c3a7b0558', 29673, 'upDate charac_expert_job set expert_job_giveup_cnt=%d, expert_job_info=%d, expert_job_info_ex=%d, recipe=\'%s\' where charac_no=%u');
INSERT INTO `log_query_ref` VALUES ('4892534e111f7d17', 29674, 'inSert into charac_expert_job(charac_no, expert_job_giveup_cnt, expert_job_info, expert_job_info_ex, recipe) values(%u, %d, %d, %d, \'%s\')');
INSERT INTO `log_query_ref` VALUES ('5e214ce047e73148', 30468, 'upDate item_making_skill_info set weapon=%d, cloth=%d, leather=%d, light_armor=%d, heavy_armor=%d, plate=%d, amulet=%d, wrist=%d, ring=%d, support=%d, magic_stone=%d where charac_no =%u');
INSERT INTO `log_query_ref` VALUES ('211cbaa74a458de8', 30469, 'inSert into item_making_skill_info (charac_no, weapon, cloth, leather, light_armor, heavy_armor, plate, amulet, wrist, ring, support, magic_stone) values(%u, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d )');
INSERT INTO `log_query_ref` VALUES ('5f5799df658ace90', 33202, 'seLect expert_job_giveup_cnt, expert_job_info, expert_job_info_ex, recipe  from charac_expert_job where charac_no=%d');
INSERT INTO `log_query_ref` VALUES ('4181122d29b24c62', 36157, 'inSert into member_dungeon (m_id,dungeon) values (%s,\'%s\')');
INSERT INTO `log_query_ref` VALUES ('6b38a2c34ee81973', 36165, 'inSert into charac_kill_monster_info(charac_no, boss_info, named_info, apc_boss_info) values(%u, \'%s\', \'%s\', \'%s\')');
INSERT INTO `log_query_ref` VALUES ('30c5153342260027', 39945, 'seLect guild_id from charac_info where charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('253c7b452168a846', 39946, 'seLect event_charac_level from charac_info where m_id=%s and charac_no=%d and delete_flag=0');
INSERT INTO `log_query_ref` VALUES ('38004e201db40715', 39947, 'upDate charac_info set delete_time=now(),delete_flag=1 where charac_no=%u and m_id=%s');
INSERT INTO `log_query_ref` VALUES ('2d36120b7e03a9ed', 39948, 'deLete from dnf_master_charac where m_id=\'%u\' and server_id=\'%u\' and charac_no=\'%u\'');
INSERT INTO `log_query_ref` VALUES ('16e513bb1a4421e9', 39949, 'deLete from charac_option where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('2ccae20c2d958e72', 42917, 'seLect master_no from guild_info where guild_id = %d');
INSERT INTO `log_query_ref` VALUES ('10da50cc36614cdc', 42918, 'upDate guild_member set member_flag = 2, secede_time = now(), secede_type = 2 where guild_id = %d and charac_no = %d');
INSERT INTO `log_query_ref` VALUES ('7caf42060e957cdf', 42919, 'seLect count(*) from guild_member where guild_id = %d and member_flag = 1');
INSERT INTO `log_query_ref` VALUES ('38103b0551ee47b1', 42920, 'upDate guild_info set member_count = %d where guild_id = %d');
INSERT INTO `log_query_ref` VALUES ('7b235dcf4fa0c25d', 44749, 'inSert into log_vending_stat(occ_date,channel_no,item_id,cnt) values(cast(now() as date),%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('595af0534f980edd', 45068, 'inSert into log_pvp_player_rate(channel_no,occ_date,single_one_to_one,single_one_to_one_other,team_one_to_one,team_one_to_one_other,relay_one_to_one,relay_one_to_one_other) values(%d,now(),%d,%d,%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('1daa4a9d660ed8a8', 45069, 'inSert into log_pvp_map(channel_no,occ_date,map_id,play_count) values%s');
INSERT INTO `log_query_ref` VALUES ('4f9121b53412dbde', 47396, 'upDate charac_info set guild_secede = %d where charac_no = %u');
INSERT INTO `log_query_ref` VALUES ('3c1e2a9a6914dd56', 50938, 'inSert into log_nat_daily(occ_time,nat_type,nat_type_other,success_cnt,fail_cnt) values(from_unixtime(%d),%d,%d,%d,%d)');
INSERT INTO `log_query_ref` VALUES ('6d986dad283ff5a4', 65535, 'upDate expert_job_product_cnt set item_cnt=item_cnt+%d where expert_job_type=%d and occ_date=curdate() and item_id=%d');
COMMIT;

-- ----------------------------
-- Table structure for log_query_ref@007e
-- ----------------------------
DROP TABLE IF EXISTS `log_query_ref@007e`;
CREATE TABLE `log_query_ref@007e` (
  `query_hash` varchar(16) NOT NULL default '',
  `q_id` smallint(5) unsigned NOT NULL auto_increment,
  `query` text NOT NULL,
  PRIMARY KEY  (`q_id`),
  UNIQUE KEY `query_hash` USING BTREE (`query_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=65536 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_query_ref@007e
-- ----------------------------
BEGIN;
INSERT INTO `log_query_ref@007e` VALUES ('*B8583582EDEAD9C', 65535, 'seLect slang from slang_list_name');
COMMIT;

-- ----------------------------
-- Table structure for login_account_1
-- ----------------------------
DROP TABLE IF EXISTS `login_account_1`;
CREATE TABLE `login_account_1` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_channel_no` int(11) NOT NULL default '0',
  `login_status` tinyint(1) NOT NULL default '0',
  `last_login_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `login_ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_account_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for login_account_2
-- ----------------------------
DROP TABLE IF EXISTS `login_account_2`;
CREATE TABLE `login_account_2` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_channel_no` int(11) NOT NULL default '0',
  `login_status` tinyint(1) NOT NULL default '0',
  `last_login_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `login_ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_account_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for login_account_3
-- ----------------------------
DROP TABLE IF EXISTS `login_account_3`;
CREATE TABLE `login_account_3` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `m_channel_no` int(11) NOT NULL default '0',
  `login_status` tinyint(1) NOT NULL default '0',
  `last_login_date` datetime NOT NULL default '2021-11-19 00:00:00',
  `login_ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_account_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for login_history
-- ----------------------------
DROP TABLE IF EXISTS `login_history`;
CREATE TABLE `login_history` (
  `m_id` int(11) NOT NULL default '0',
  `occ_time` int(11) NOT NULL default '0',
  `trigger` tinyint(4) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_captcha_info
-- ----------------------------
DROP TABLE IF EXISTS `member_captcha_info`;
CREATE TABLE `member_captcha_info` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `cert_time` int(10) unsigned NOT NULL default '0',
  `fail_count` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_captcha_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_doubt_trade
-- ----------------------------
DROP TABLE IF EXISTS `member_doubt_trade`;
CREATE TABLE `member_doubt_trade` (
  `m_id` int(11) NOT NULL default '0',
  `last_update_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `over_count` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_doubt_trade
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_game_option
-- ----------------------------
DROP TABLE IF EXISTS `member_game_option`;
CREATE TABLE `member_game_option` (
  `m_id` int(11) NOT NULL default '0',
  `option_1` blob NOT NULL,
  `option_2` blob NOT NULL,
  `option_3` blob NOT NULL,
  `shortcut_emoticon` blob NOT NULL,
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_game_option
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_game_option_1
-- ----------------------------
DROP TABLE IF EXISTS `member_game_option_1`;
CREATE TABLE `member_game_option_1` (
  `m_id` int(11) NOT NULL default '0',
  `option_1` blob NOT NULL,
  `option_2` blob NOT NULL,
  `option_3` blob NOT NULL,
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_game_option_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_join_info
-- ----------------------------
DROP TABLE IF EXISTS `member_join_info`;
CREATE TABLE `member_join_info` (
  `m_id` int(10) unsigned NOT NULL default '0',
  `reg_date` int(11) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `contry_code` tinyint(3) unsigned NOT NULL default '0',
  `login_time` int(11) NOT NULL default '0',
  `error_type` tinyint(3) unsigned NOT NULL default '0',
  `login_ip` varchar(15) NOT NULL default '',
  `game_use_history` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`m_id`),
  KEY `idx_ip` (`ip`),
  KEY `idx_reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_join_info
-- ----------------------------
BEGIN;
INSERT INTO `member_join_info` VALUES (6200001, 2016, '219.134.52.191', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200002, 2016, '117.32.69.251', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200004, 2016, '124.238.38.5', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200005, 2016, '36.48.112.196', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200006, 2016, '113.57.158.187', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200007, 2016, '14.153.244.188', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200008, 2016, '27.156.6.139', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200009, 2016, '125.41.236.216', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200010, 2016, '42.49.233.193', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200011, 2016, '1.84.204.226', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200012, 2016, '42.227.144.192', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200013, 2016, '121.68.135.236', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200014, 2016, '219.134.52.191', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200016, 2016, '210.41.101.127', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200017, 2016, '153.36.212.171', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200018, 2016, '223.73.130.89', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200019, 2016, '118.113.39.210', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200020, 2016, '223.20.138.25', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200021, 2016, '113.103.253.61', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200022, 2016, '183.16.105.114', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200023, 2016, '113.45.56.24', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200024, 2016, '182.133.251.243', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200025, 2016, '220.191.222.6', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200027, 2016, '106.117.121.106', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200028, 2016, '222.185.9.101', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200029, 2016, '27.17.13.18', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200031, 2016, '110.185.16.183', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200032, 2016, '36.63.135.101', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200033, 2016, '119.125.194.81', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200037, 2016, '61.158.85.143', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200038, 2016, '110.52.132.64', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200039, 2016, '122.224.209.222', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200040, 2016, '171.106.77.2', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200041, 2016, '222.241.249.100', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200042, 2016, '119.248.118.79', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200043, 2016, '123.186.1.156', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200044, 2016, '27.203.152.15', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200045, 2016, '180.142.213.93', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200049, 2016, '106.117.94.214', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200050, 2016, '183.11.95.149', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200051, 2016, '125.115.39.106', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200052, 2016, '119.126.185.222', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200053, 2016, '221.9.102.52', 0, 0, 0, '', 0);
INSERT INTO `member_join_info` VALUES (6200054, 2016, '123.163.64.151', 0, 0, 0, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for member_key_option
-- ----------------------------
DROP TABLE IF EXISTS `member_key_option`;
CREATE TABLE `member_key_option` (
  `m_id` bigint(20) unsigned NOT NULL default '0',
  `key_type` tinyint(4) NOT NULL default '0',
  `key_option` blob NOT NULL,
  PRIMARY KEY  (`m_id`,`key_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_key_option
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_login
-- ----------------------------
DROP TABLE IF EXISTS `member_login`;
CREATE TABLE `member_login` (
  `m_id` int(11) NOT NULL default '0',
  `login_time` int(10) unsigned NOT NULL default '0',
  `expire_time` int(10) unsigned NOT NULL default '0',
  `last_play_time` int(10) unsigned NOT NULL default '0',
  `total_account_fail` int(10) unsigned NOT NULL default '0',
  `account_fail` tinyint(4) NOT NULL default '0',
  `report_cnt` int(11) NOT NULL default '0',
  `reliable_flag` tinyint(4) NOT NULL default '0',
  `trade_gold_daily` int(10) unsigned NOT NULL default '0',
  `last_gift_time` int(10) unsigned NOT NULL default '0',
  `gift_cnt` smallint(5) unsigned NOT NULL default '0',
  `login_ip` varchar(15) NOT NULL default '',
  `security_flag` tinyint(4) NOT NULL default '0',
  `power_side` tinyint(4) NOT NULL default '0',
  `dungeon_gain_gold` int(10) unsigned NOT NULL default '0',
  `school_id` int(11) NOT NULL default '0',
  `rating` float NOT NULL default '0',
  `cleanpad_point` int(10) unsigned NOT NULL default '0',
  `tutorial_skipable` char(1) NOT NULL default '0',
  `event_charac_flag` tinyint(3) unsigned NOT NULL default '0',
  `garena_token_key` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_login
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_login_backup
-- ----------------------------
DROP TABLE IF EXISTS `member_login_backup`;
CREATE TABLE `member_login_backup` (
  `m_id` int(11) NOT NULL default '0',
  `login_time` int(10) unsigned NOT NULL default '0',
  `expire_time` int(10) unsigned NOT NULL default '0',
  `last_play_time` int(10) unsigned NOT NULL default '0',
  `total_account_fail` int(10) unsigned NOT NULL default '0',
  `account_fail` tinyint(4) NOT NULL default '0',
  `report_cnt` int(11) NOT NULL default '0',
  `reliable_flag` tinyint(4) NOT NULL default '0',
  `trade_gold_daily` int(10) unsigned NOT NULL default '0',
  `last_gift_time` int(10) unsigned NOT NULL default '0',
  `gift_cnt` smallint(5) unsigned NOT NULL default '0',
  `login_ip` varchar(15) NOT NULL default '',
  `security_flag` tinyint(4) NOT NULL default '0',
  `power_side` tinyint(4) NOT NULL default '0',
  `dungeon_gain_gold` int(10) unsigned NOT NULL default '0',
  `school_id` int(11) NOT NULL default '0',
  `rating` float NOT NULL default '0',
  `cleanpad_point` int(10) unsigned NOT NULL default '0',
  `tutorial_skipable` char(1) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_login_backup
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_mousepass
-- ----------------------------
DROP TABLE IF EXISTS `member_mousepass`;
CREATE TABLE `member_mousepass` (
  `m_id` int(11) NOT NULL default '0',
  `mousepass` varchar(32) NOT NULL default '',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `fail_cnt` tinyint(4) NOT NULL default '0',
  `cancel_cnt` smallint(5) unsigned NOT NULL default '0',
  `version_info` char(1) NOT NULL default '1',
  `validity_time` int(11) NOT NULL default '0',
  `reward_time` int(11) NOT NULL default '0',
  `enable_flag` char(1) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_mousepass
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_mousepass_history
-- ----------------------------
DROP TABLE IF EXISTS `member_mousepass_history`;
CREATE TABLE `member_mousepass_history` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `m_id` int(11) NOT NULL default '0',
  `pre_mousepass` varchar(32) NOT NULL default '',
  `modify_type` tinyint(4) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_mousepass_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_mousepass_history_201506
-- ----------------------------
DROP TABLE IF EXISTS `member_mousepass_history_201506`;
CREATE TABLE `member_mousepass_history_201506` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `m_id` int(11) NOT NULL default '0',
  `pre_mousepass` varchar(32) NOT NULL default '',
  `modify_type` tinyint(4) NOT NULL default '0',
  `ip_info` varchar(15) NOT NULL default '',
  `port_info` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`occ_time`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_mousepass_history_201506
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_mousepass_history_201604
-- ----------------------------
DROP TABLE IF EXISTS `member_mousepass_history_201604`;
CREATE TABLE `member_mousepass_history_201604` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `m_id` int(11) NOT NULL default '0',
  `pre_mousepass` varchar(32) NOT NULL default '',
  `modify_type` tinyint(4) NOT NULL default '0',
  `ip_info` varchar(15) NOT NULL default '',
  `port_info` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`occ_time`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_mousepass_history_201604
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_play_info
-- ----------------------------
DROP TABLE IF EXISTS `member_play_info`;
CREATE TABLE `member_play_info` (
  `occ_date` date NOT NULL default '2021-11-19',
  `m_id` int(11) NOT NULL default '0',
  `play_time` int(10) unsigned NOT NULL default '0',
  `play_count` int(10) unsigned NOT NULL default '0',
  `trade_cnt` int(11) NOT NULL default '0',
  `exp` int(10) unsigned NOT NULL default '0',
  `used_fatigue` smallint(5) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `last_play_time` int(10) unsigned NOT NULL default '0',
  `pcbang_flag` tinyint(4) NOT NULL default '0',
  `end_ip` varchar(3) NOT NULL default '',
  `ting_count` smallint(5) unsigned NOT NULL default '0',
  `mac_addr` varchar(64) NOT NULL default '',
  `server_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`occ_date`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_play_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_play_info_20130502
-- ----------------------------
DROP TABLE IF EXISTS `member_play_info_20130502`;
CREATE TABLE `member_play_info_20130502` (
  `occ_date` date NOT NULL default '2021-11-19',
  `m_id` int(11) NOT NULL default '0',
  `play_time` int(10) unsigned NOT NULL default '0',
  `play_count` int(10) unsigned NOT NULL default '0',
  `trade_cnt` int(11) NOT NULL default '0',
  `exp` int(10) unsigned NOT NULL default '0',
  `used_fatigue` smallint(5) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `last_play_time` int(10) unsigned NOT NULL default '0',
  `pcbang_flag` tinyint(4) NOT NULL default '0',
  `end_ip` varchar(3) NOT NULL default '',
  `ting_count` smallint(5) unsigned NOT NULL default '0',
  `mac_addr` varchar(64) NOT NULL default '',
  `server_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`occ_date`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_play_info_20130502
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_play_info_del
-- ----------------------------
DROP TABLE IF EXISTS `member_play_info_del`;
CREATE TABLE `member_play_info_del` (
  `sdate` date NOT NULL default '2021-11-19',
  `occ_date` date NOT NULL default '2021-11-19',
  `m_id` int(11) NOT NULL default '0',
  `play_time` int(10) unsigned NOT NULL default '0',
  `play_count` int(10) unsigned NOT NULL default '0',
  `trade_cnt` int(11) NOT NULL default '0',
  `exp` int(10) unsigned NOT NULL default '0',
  `used_fatigue` smallint(5) unsigned NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `last_play_time` int(10) unsigned NOT NULL default '0',
  `pcbang_flag` tinyint(4) NOT NULL default '0',
  `end_ip` varchar(3) NOT NULL default '',
  `ting_count` smallint(5) unsigned NOT NULL default '0',
  `mac_addr` varchar(64) NOT NULL default '',
  `server_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`sdate`,`occ_date`,`m_id`),
  KEY `idx_m_id` USING BTREE (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_play_info_del
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_premium
-- ----------------------------
DROP TABLE IF EXISTS `member_premium`;
CREATE TABLE `member_premium` (
  `event_id` int(11) NOT NULL default '0',
  `pre_type` tinyint(3) unsigned NOT NULL default '0',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `service_start` datetime NOT NULL default '2021-11-19 00:00:00',
  `service_end` datetime NOT NULL default '2021-11-19 00:00:00',
  PRIMARY KEY  (`event_id`,`pre_type`,`server_id`,`m_id`,`service_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_premium
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_premium_old
-- ----------------------------
DROP TABLE IF EXISTS `member_premium_old`;
CREATE TABLE `member_premium_old` (
  `event_id` int(11) NOT NULL default '0',
  `pre_type` tinyint(3) unsigned NOT NULL default '0',
  `m_id` int(11) NOT NULL default '0',
  `service_start` datetime NOT NULL default '2021-11-19 00:00:00',
  `service_end` datetime NOT NULL default '2021-11-19 00:00:00',
  `server_id` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`event_id`,`pre_type`,`server_id`,`m_id`,`service_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_premium_old
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_security_card
-- ----------------------------
DROP TABLE IF EXISTS `member_security_card`;
CREATE TABLE `member_security_card` (
  `m_id` int(11) NOT NULL default '0',
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `phone` varchar(11) NOT NULL default '',
  `cert_key` varchar(12) NOT NULL default '',
  `server_key` varchar(32) NOT NULL default '',
  `card` varchar(255) NOT NULL default '',
  `fail_cnt` tinyint(4) NOT NULL default '0',
  `re_issue_cnt` tinyint(4) NOT NULL default '0',
  `last_issue_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `validity_time` int(11) NOT NULL default '0',
  `apply_flag` tinyint(4) NOT NULL default '0',
  `cancel_cnt` smallint(5) unsigned NOT NULL default '0',
  `web_flag` tinyint(4) NOT NULL default '0',
  `cert_flag` char(1) NOT NULL default '0',
  PRIMARY KEY  (`m_id`),
  KEY `idx_phone` USING BTREE (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_security_card
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_security_card_history
-- ----------------------------
DROP TABLE IF EXISTS `member_security_card_history`;
CREATE TABLE `member_security_card_history` (
  `occ_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `m_id` int(11) NOT NULL default '0',
  `modify_type` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`occ_time`,`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_security_card_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for nexon_none_memner_restriction
-- ----------------------------
DROP TABLE IF EXISTS `nexon_none_memner_restriction`;
CREATE TABLE `nexon_none_memner_restriction` (
  `m_id` int(11) unsigned NOT NULL default '0',
  `charac_id` int(11) unsigned NOT NULL default '0',
  `last_trade_time` datetime NOT NULL default '2021-11-19 00:00:00',
  `total_trade_gold` int(12) unsigned NOT NULL default '0',
  `trade_count` smallint(6) unsigned NOT NULL default '0',
  `nexon_user` tinyint(4) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nexon_none_memner_restriction
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(111) NOT NULL auto_increment,
  `hashs` varchar(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
BEGIN;
INSERT INTO `test` VALUES (1, '*C0D155921D7BA43');
INSERT INTO `test` VALUES (2, '*C0D155921D7BA43');
COMMIT;

-- ----------------------------
-- Table structure for village_attacked_charac_point_rank
-- ----------------------------
DROP TABLE IF EXISTS `village_attacked_charac_point_rank`;
CREATE TABLE `village_attacked_charac_point_rank` (
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `occ_date` date NOT NULL default '2021-11-19',
  `charac_no` int(10) unsigned NOT NULL default '0',
  `hunting_point` int(10) unsigned NOT NULL default '0',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`server_info`,`occ_date`,`charac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of village_attacked_charac_point_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for village_attacked_server_point_rank
-- ----------------------------
DROP TABLE IF EXISTS `village_attacked_server_point_rank`;
CREATE TABLE `village_attacked_server_point_rank` (
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `occ_date` date NOT NULL default '2021-11-19',
  `hunting_point` int(10) unsigned NOT NULL default '0',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`server_info`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of village_attacked_server_point_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for village_attacked_server_time_rank
-- ----------------------------
DROP TABLE IF EXISTS `village_attacked_server_time_rank`;
CREATE TABLE `village_attacked_server_time_rank` (
  `server_info` tinyint(3) unsigned NOT NULL default '0',
  `occ_date` date NOT NULL default '2021-11-19',
  `clear_time` int(10) unsigned NOT NULL default '0',
  `rank` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`server_info`,`occ_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of village_attacked_server_time_rank
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
