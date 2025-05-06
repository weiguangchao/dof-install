/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.0
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : 192.168.223.130:3002
 Source Schema         : d_technical_report

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 13/01/2022 13:41:48
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accessibility_stat
-- ----------------------------
DROP TABLE IF EXISTS `accessibility_stat`;
CREATE TABLE `accessibility_stat`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `main_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `val` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `main_type`, `sub_type`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for assert_manager
-- ----------------------------
DROP TABLE IF EXISTS `assert_manager`;
CREATE TABLE `assert_manager`  (
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `file_line` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`file_name`, `file_line`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for captcha_info
-- ----------------------------
DROP TABLE IF EXISTS `captcha_info`;
CREATE TABLE `captcha_info`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `total_try_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `success_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fail_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `block_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `incomplete_request_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invalid_request_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `idx_occ_time` USING BTREE(`occ_time`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for captcha_invalid_request
-- ----------------------------
DROP TABLE IF EXISTS `captcha_invalid_request`;
CREATE TABLE `captcha_invalid_request`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `request_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`id`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for captcha_invalid_request_type
-- ----------------------------
DROP TABLE IF EXISTS `captcha_invalid_request_type`;
CREATE TABLE `captcha_invalid_request_type`  (
  `type` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_desc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`type`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for challenge_lag_index
-- ----------------------------
DROP TABLE IF EXISTS `challenge_lag_index`;
CREATE TABLE `challenge_lag_index`  (
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `min_fps` smallint(6) NOT NULL DEFAULT 0,
  `avg_fps` smallint(6) NOT NULL DEFAULT 0,
  `max_fps` smallint(6) NOT NULL DEFAULT 0,
  `win_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_win_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT 0,
  `frame1` int(11) NOT NULL DEFAULT 0,
  `time1` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame2` int(11) NOT NULL DEFAULT 0,
  `time2` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame3` int(11) NOT NULL DEFAULT 0,
  `time3` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame4` int(11) NOT NULL DEFAULT 0,
  `time4` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame5` int(11) NOT NULL DEFAULT 0,
  `time5` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame6` int(11) NOT NULL DEFAULT 0,
  `time6` float(7, 3) NOT NULL DEFAULT 0.000,
  `share_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`spec_id`, `occ_time`, `server_group`),
  INDEX `idx2` USING BTREE(`occ_time`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for challenge_lag_index_daily
-- ----------------------------
DROP TABLE IF EXISTS `challenge_lag_index_daily`;
CREATE TABLE `challenge_lag_index_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_nosync_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `spec_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for collect_interval
-- ----------------------------
DROP TABLE IF EXISTS `collect_interval`;
CREATE TABLE `collect_interval`  (
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `value` smallint(5) UNSIGNED NULL DEFAULT 60
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for common_index
-- ----------------------------
DROP TABLE IF EXISTS `common_index`;
CREATE TABLE `common_index`  (
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NULL DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `share_rate` int(10) UNSIGNED NULL DEFAULT NULL,
  `crash_count` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `village_to_dungeon_lag` smallint(6) NOT NULL DEFAULT 0,
  `dungeon_to_village_lag` smallint(6) NOT NULL DEFAULT 0,
  `crash_village` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_dungeon` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_challenge` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_wararea` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_fight_village` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_dead_tower` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_channel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_chaos` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `crash_load` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`spec_id`, `occ_time`, `server_group`),
  INDEX `idx2` USING BTREE(`occ_time`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for common_index_daily
-- ----------------------------
DROP TABLE IF EXISTS `common_index_daily`;
CREATE TABLE `common_index_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `share_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crash_village` int(11) NOT NULL DEFAULT 0,
  `crash_dungeon` int(11) NOT NULL DEFAULT 0,
  `crash_challenge` int(11) NOT NULL DEFAULT 0,
  `crash_wararea` int(11) NOT NULL DEFAULT 0,
  `crash_fight_village` int(11) NOT NULL DEFAULT 0,
  `crash_dead_tower` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `server_group`, `spec_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dead_tower_lag_index
-- ----------------------------
DROP TABLE IF EXISTS `dead_tower_lag_index`;
CREATE TABLE `dead_tower_lag_index`  (
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NULL DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `min_fps` smallint(6) NOT NULL DEFAULT 0,
  `avg_fps` smallint(6) NOT NULL DEFAULT 0,
  `max_fps` smallint(6) NOT NULL DEFAULT 0,
  `win_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_win_fps` smallint(6) NULL DEFAULT 0,
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT 0,
  `frame1` int(11) NOT NULL DEFAULT 0,
  `time1` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame2` int(11) NOT NULL DEFAULT 0,
  `time2` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame3` int(11) NOT NULL DEFAULT 0,
  `time3` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame4` int(11) NOT NULL DEFAULT 0,
  `time4` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame5` int(11) NOT NULL DEFAULT 0,
  `time5` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame6` int(11) NOT NULL DEFAULT 0,
  `time6` float(7, 3) NOT NULL DEFAULT 0.000,
  `share_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`spec_id`, `occ_time`, `server_group`),
  INDEX `idx2` USING BTREE(`occ_time`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dead_tower_lag_index_daily
-- ----------------------------
DROP TABLE IF EXISTS `dead_tower_lag_index_daily`;
CREATE TABLE `dead_tower_lag_index_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_nosync_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `spec_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for deathtower_ting_log
-- ----------------------------
DROP TABLE IF EXISTS `deathtower_ting_log`;
CREATE TABLE `deathtower_ting_log`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ting_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `level`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for deathtower_ting_log_daily
-- ----------------------------
DROP TABLE IF EXISTS `deathtower_ting_log_daily`;
CREATE TABLE `deathtower_ting_log_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ting_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `level`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for directx_version
-- ----------------------------
DROP TABLE IF EXISTS `directx_version`;
CREATE TABLE `directx_version`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `ver_etc` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ver_8_x` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ver_9_0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ver_9_0_a` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ver_9_0_b` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ver_9_0_c` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ver_10_x` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ver_11_x` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `server_group`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dungeon_lag_index
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_lag_index`;
CREATE TABLE `dungeon_lag_index`  (
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NULL DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `min_fps` smallint(6) NOT NULL DEFAULT 0,
  `avg_fps` smallint(6) NOT NULL DEFAULT 0,
  `max_fps` smallint(6) NOT NULL DEFAULT 0,
  `win_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_win_fps` smallint(6) NULL DEFAULT 0,
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT 0,
  `frame1` int(11) NOT NULL DEFAULT 0,
  `time1` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame2` int(11) NOT NULL DEFAULT 0,
  `time2` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame3` int(11) NOT NULL DEFAULT 0,
  `time3` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame4` int(11) NOT NULL DEFAULT 0,
  `time4` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame5` int(11) NOT NULL DEFAULT 0,
  `time5` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame6` int(11) NOT NULL DEFAULT 0,
  `time6` float(7, 3) NOT NULL DEFAULT 0.000,
  `share_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`spec_id`, `occ_time`, `server_group`),
  INDEX `idx2` USING BTREE(`occ_time`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dungeon_lag_index_daily
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_lag_index_daily`;
CREATE TABLE `dungeon_lag_index_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_nosync_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `spec_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for fight_village_lag_index
-- ----------------------------
DROP TABLE IF EXISTS `fight_village_lag_index`;
CREATE TABLE `fight_village_lag_index`  (
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NULL DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `min_fps` smallint(6) NOT NULL DEFAULT 0,
  `avg_fps` smallint(6) NOT NULL DEFAULT 0,
  `max_fps` smallint(6) NOT NULL DEFAULT 0,
  `win_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_win_fps` smallint(6) NULL DEFAULT 0,
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT 0,
  `frame1` int(11) NOT NULL DEFAULT 0,
  `time1` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame2` int(11) NOT NULL DEFAULT 0,
  `time2` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame3` int(11) NOT NULL DEFAULT 0,
  `time3` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame4` int(11) NOT NULL DEFAULT 0,
  `time4` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame5` int(11) NOT NULL DEFAULT 0,
  `time5` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame6` int(11) NOT NULL DEFAULT 0,
  `time6` float(7, 3) NOT NULL DEFAULT 0.000,
  `share_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`spec_id`, `occ_time`, `server_group`),
  INDEX `idx2` USING BTREE(`occ_time`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for fight_village_lag_index_daily
-- ----------------------------
DROP TABLE IF EXISTS `fight_village_lag_index_daily`;
CREATE TABLE `fight_village_lag_index_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_nosync_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `spec_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lag_stat_dungeon
-- ----------------------------
DROP TABLE IF EXISTS `lag_stat_dungeon`;
CREATE TABLE `lag_stat_dungeon`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `dungeon_idx` int(11) NOT NULL DEFAULT 0,
  `first_average` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `first_deviation` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `first_count` int(11) NOT NULL DEFAULT 0,
  `boss_average` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `boss_deviation` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `boss_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `server_id`, `dungeon_idx`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lag_stat_module
-- ----------------------------
DROP TABLE IF EXISTS `lag_stat_module`;
CREATE TABLE `lag_stat_module`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `module` tinyint(4) NOT NULL DEFAULT 0,
  `average` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deviation` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `server_id`, `module`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for loading_time
-- ----------------------------
DROP TABLE IF EXISTS `loading_time`;
CREATE TABLE `loading_time`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `load_sec` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `server_id`, `type`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for log_launcher_stat
-- ----------------------------
DROP TABLE IF EXISTS `log_launcher_stat`;
CREATE TABLE `log_launcher_stat`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `execute` int(11) NOT NULL DEFAULT 0,
  `cancel` int(11) NOT NULL DEFAULT 0,
  `success` int(11) NOT NULL DEFAULT 0,
  `first_success` int(11) NOT NULL DEFAULT 0,
  `p2p` double NOT NULL DEFAULT 0,
  `all_time` bigint(20) NOT NULL DEFAULT 0,
  `p2p_count` int(11) NOT NULL DEFAULT 0,
  `all_time_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for monitoring_spec
-- ----------------------------
DROP TABLE IF EXISTS `monitoring_spec`;
CREATE TABLE `monitoring_spec`  (
  `unique_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `modify_time` datetime NULL DEFAULT NULL,
  `spec_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `cpu_vendor` tinyint(4) NOT NULL DEFAULT 0,
  `cpu_processor_num` tinyint(4) NOT NULL DEFAULT 0,
  `above_cpu_clock` int(11) NOT NULL DEFAULT 0,
  `below_cpu_clock` int(11) NOT NULL DEFAULT 0,
  `ram` smallint(6) NOT NULL DEFAULT 0,
  `videocard_vendor` int(11) NOT NULL DEFAULT 0,
  `videocard_device` int(11) NOT NULL DEFAULT 0,
  `videocard_texture_mem` smallint(6) NOT NULL DEFAULT 0,
  `os_version` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`unique_id`),
  INDEX `idx1` USING BTREE(`spec_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 301 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for p2p_connect_success_rate
-- ----------------------------
DROP TABLE IF EXISTS `p2p_connect_success_rate`;
CREATE TABLE `p2p_connect_success_rate`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `server_group` tinyint(3) UNSIGNED NOT NULL,
  `connected_type` tinyint(4) NOT NULL,
  `required_time` int(10) UNSIGNED NOT NULL,
  `check_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `nation_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peer_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `occ_date` datetime NOT NULL,
  PRIMARY KEY USING BTREE (`no`)
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '대만 P2P 홀펀칭 성공&실패 여결 타입과 IP까지 함께남기는 작업' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for p2p_statistics
-- ----------------------------
DROP TABLE IF EXISTS `p2p_statistics`;
CREATE TABLE `p2p_statistics`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `p2p_user` int(10) UNSIGNED NULL DEFAULT 0,
  `p2p_min_ping` int(10) UNSIGNED NULL DEFAULT 0,
  `p2p_max_ping` int(10) UNSIGNED NULL DEFAULT 0,
  `p2p_avg_ping` int(10) UNSIGNED NULL DEFAULT 0,
  `p2p_over_ping_100` int(10) UNSIGNED NULL DEFAULT 0,
  `p2p_over_ping_200` int(10) UNSIGNED NULL DEFAULT 0,
  `p2p_over_ping_300` int(10) UNSIGNED NULL DEFAULT 0,
  `p2p_over_ping_400` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_user` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_min_ping` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_max_ping` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_avg_ping` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_over_ping_100` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_over_ping_200` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_over_ping_300` int(10) UNSIGNED NULL DEFAULT 0,
  `relay_over_ping_400` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `server_group`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for p2pnetwork_statistic
-- ----------------------------
DROP TABLE IF EXISTS `p2pnetwork_statistic`;
CREATE TABLE `p2pnetwork_statistic`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `success_party_try` int(11) NOT NULL DEFAULT 0,
  `total_party_try` int(11) NOT NULL DEFAULT 0,
  `dungeon_bad_ping` int(11) NOT NULL DEFAULT 0,
  `dungeon_total` int(11) NOT NULL DEFAULT 0,
  `pvp_bad_ping` int(11) NOT NULL DEFAULT 0,
  `pvp_total` int(11) NOT NULL DEFAULT 0,
  `success_dungeon_clear` int(11) NOT NULL DEFAULT 0,
  `total_dungeon_clear` int(11) NOT NULL DEFAULT 0,
  `fair_pvp_total` int(11) NULL DEFAULT NULL,
  `fair_pvp_bad_ping` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `idx1` USING BTREE(`occ_time`)
) ENGINE = MyISAM AUTO_INCREMENT = 17542 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for p2pnetwork_statistic_daily
-- ----------------------------
DROP TABLE IF EXISTS `p2pnetwork_statistic_daily`;
CREATE TABLE `p2pnetwork_statistic_daily`  (
  `cur_date` date NOT NULL DEFAULT '2021-11-19',
  `success_party` float(3, 2) NOT NULL DEFAULT 0.00,
  `dungeon_bad` float(3, 2) NOT NULL DEFAULT 0.00,
  `pvp_bad` float(3, 2) NOT NULL DEFAULT 0.00,
  `success_dungeon_clear` float(3, 2) NOT NULL DEFAULT 0.00,
  `fair_pvp_bad` float(3, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY USING BTREE (`cur_date`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for packet_overflow
-- ----------------------------
DROP TABLE IF EXISTS `packet_overflow`;
CREATE TABLE `packet_overflow`  (
  `packet_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `packet_kind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`packet_type`, `packet_kind`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for powerwar_lag
-- ----------------------------
DROP TABLE IF EXISTS `powerwar_lag`;
CREATE TABLE `powerwar_lag`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `round` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `player` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lag_avg` float UNSIGNED NOT NULL DEFAULT 0,
  `lag_cnt` float UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `occ_time`, `round`),
  INDEX `round_idx` USING BTREE(`occ_time`, `round`),
  INDEX `player_idx` USING BTREE(`occ_time`, `player`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for powerwar_loading
-- ----------------------------
DROP TABLE IF EXISTS `powerwar_loading`;
CREATE TABLE `powerwar_loading`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `round` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `player` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `my_loading` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `other_loading` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `vs_loading` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `occ_time`, `round`),
  INDEX `round_idx` USING BTREE(`occ_time`, `round`),
  INDEX `player_idx` USING BTREE(`occ_time`, `player`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for powerwar_ting_type
-- ----------------------------
DROP TABLE IF EXISTS `powerwar_ting_type`;
CREATE TABLE `powerwar_ting_type`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ting_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ting_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `server_id`, `ting_type`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spec_info
-- ----------------------------
DROP TABLE IF EXISTS `spec_info`;
CREATE TABLE `spec_info`  (
  `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `device_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vendor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `device_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`uid`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for technical_category
-- ----------------------------
DROP TABLE IF EXISTS `technical_category`;
CREATE TABLE `technical_category`  (
  `cateno` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pcateno` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `step` int(11) NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`cateno`, `pcateno`),
  INDEX `idx2` USING BTREE(`pcateno`, `cateno`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ting_user_account
-- ----------------------------
DROP TABLE IF EXISTS `ting_user_account`;
CREATE TABLE `ting_user_account`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `minute` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ting_user_spec
-- ----------------------------
DROP TABLE IF EXISTS `ting_user_spec`;
CREATE TABLE `ting_user_spec`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reg_datetime` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `cpu_vendor` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `cpu_num` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `cpu_clock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ram` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `video_vendor` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `video_device` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `video_ram` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `os` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `os_bit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for used_memory
-- ----------------------------
DROP TABLE IF EXISTS `used_memory`;
CREATE TABLE `used_memory`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `minute_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `module` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `memory` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `minute_type`, `module`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for user_ting_timecheck
-- ----------------------------
DROP TABLE IF EXISTS `user_ting_timecheck`;
CREATE TABLE `user_ting_timecheck`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `minute` int(11) NOT NULL DEFAULT 0,
  `cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `minute`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for village_lag_index
-- ----------------------------
DROP TABLE IF EXISTS `village_lag_index`;
CREATE TABLE `village_lag_index`  (
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NULL DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `min_fps` smallint(6) NOT NULL DEFAULT 0,
  `avg_fps` smallint(6) NOT NULL DEFAULT 0,
  `max_fps` smallint(6) NOT NULL DEFAULT 0,
  `win_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_win_fps` smallint(6) NULL DEFAULT 0,
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT 0,
  `frame1` int(11) NOT NULL DEFAULT 0,
  `time1` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame2` int(11) NOT NULL DEFAULT 0,
  `time2` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame3` int(11) NOT NULL DEFAULT 0,
  `time3` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame4` int(11) NOT NULL DEFAULT 0,
  `time4` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame5` int(11) NOT NULL DEFAULT 0,
  `time5` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame6` int(11) NOT NULL DEFAULT 0,
  `time6` float(7, 3) NOT NULL DEFAULT 0.000,
  `share_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`spec_id`, `occ_time`, `server_group`),
  INDEX `idx2` USING BTREE(`occ_time`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for village_lag_index_daily
-- ----------------------------
DROP TABLE IF EXISTS `village_lag_index_daily`;
CREATE TABLE `village_lag_index_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_nosync_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `spec_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for wararea_lag_index
-- ----------------------------
DROP TABLE IF EXISTS `wararea_lag_index`;
CREATE TABLE `wararea_lag_index`  (
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NULL DEFAULT NULL,
  `server_group` tinyint(4) NOT NULL DEFAULT 0,
  `min_fps` smallint(6) NOT NULL DEFAULT 0,
  `avg_fps` smallint(6) NOT NULL DEFAULT 0,
  `max_fps` smallint(6) NOT NULL DEFAULT 0,
  `win_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_fps` smallint(6) NOT NULL DEFAULT 0,
  `full_win_fps` smallint(6) NULL DEFAULT 0,
  `full_win_nosync_fps` smallint(6) NOT NULL DEFAULT 0,
  `frame1` int(11) NOT NULL DEFAULT 0,
  `time1` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame2` int(11) NOT NULL DEFAULT 0,
  `time2` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame3` int(11) NOT NULL DEFAULT 0,
  `time3` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame4` int(11) NOT NULL DEFAULT 0,
  `time4` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame5` int(11) NOT NULL DEFAULT 0,
  `time5` float(7, 3) NOT NULL DEFAULT 0.000,
  `frame6` int(11) NOT NULL DEFAULT 0,
  `time6` float(7, 3) NOT NULL DEFAULT 0.000,
  `share_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx1` USING BTREE(`spec_id`, `occ_time`, `server_group`),
  INDEX `idx2` USING BTREE(`occ_time`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for wararea_lag_index_daily
-- ----------------------------
DROP TABLE IF EXISTS `wararea_lag_index_daily`;
CREATE TABLE `wararea_lag_index_daily`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `spec_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_fps_cnt` int(11) NOT NULL DEFAULT 0,
  `full_win_nosync_fps` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `full_win_nosync_fps_cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `spec_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

SET FOREIGN_KEY_CHECKS = 1;
