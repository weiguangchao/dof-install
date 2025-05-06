/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.0
 Source Server Type    : MySQL
 Source Server Version : 50095
 Source Host           : 192.168.223.130:3002
 Source Schema         : d_taiwan

 Target Server Type    : MySQL
 Target Server Version : 50095
 File Encoding         : 65001

 Date: 13/01/2022 13:34:57
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_cerashop_restrict
-- ----------------------------
DROP TABLE IF EXISTS `account_cerashop_restrict`;
CREATE TABLE `account_cerashop_restrict`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `next_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `end_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_access_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `ipg_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dzuid` int(8) NULL DEFAULT NULL,
  `billing` int(8) NULL DEFAULT 0,
  `VIP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`UID`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for accountss
-- ----------------------------
DROP TABLE IF EXISTS `accountss`;
CREATE TABLE `accountss`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`uid`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_member
-- ----------------------------
DROP TABLE IF EXISTS `admin_member`;
CREATE TABLE `admin_member`  (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `msn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reg_date` int(13) NULL DEFAULT NULL,
  `confirm` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `level` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level_group1` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_',
  `level_group2` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_',
  `level_group3` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_',
  `level_group4` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_',
  `level_group5` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_',
  `level_group6` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_',
  PRIMARY KEY USING BTREE (`no`),
  INDEX `user_id` USING BTREE(`user_id`),
  INDEX `password` USING BTREE(`password`),
  INDEX `name` USING BTREE(`name`)
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_member
-- ----------------------------
INSERT INTO `admin_member` VALUES (6, 'administrator', '1c416520253fdde8', 'admin', '', '', '', '', NULL, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (7, 'JO HUANG', '5ef72ffe13b46308', 'JO HUANG', 'huangjo@garena.com', '0922797078', 'iamjo0214@hotmail.com', '', 1356418840, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w=       ', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (8, 'changc', '45271aba0b765d95', 'Chris', 'changc@garena.com', '0972205730', '', '', 1356419987, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (9, 'tangr', '13fa8b4e31b79be9', 'ruby', 'tangr@garena.com', '0916916786', 'chunghua1221@hotmail.com', '', 1356428104, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w=       ', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (10, 'cocohbo1', '620a258e29d3563c', 'Nuekami', 'changm@garena.com', '0927730299', 'direngrey7243@hotmail.com', '', 1356508648, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|_====|_=|w|w|w|w|w=|_|w|w|_==|w|w|w|w|w|w|_|w==|w=       ', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (11, 'eunae814', '15d901c76bc33b51', '김은애', 'eunae814@neople.co.kr', '010-8638-9987', '-', '승인 부탁드립니다.', 1360994314, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (12, 'kiwiciel', '78dede1a624b193d', '곽수민', 'kiwiciel@neople.co.kr', '010 9592 2572', '', '', 1361166795, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|r|w|w|w==|w|w|w|w|w|w|r|w|_|w|w|w|_|_|w|w|_|_|w===|w|r|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|r|r', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (13, 'cecilim', '62b9cfee2a68f121', '임순식', '', '', '', '', 1361215563, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (14, 'neogaia', '3c6ebdaa2094a7cf', '이인', 'neogaia@neople.co.kr', '', '', '이인 실장님', 1361259170, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (15, 'tmdwo', '6fa5bc972011cd27', 'Seungjae Lee', 'tmdwo@neople.co.kr', '010-9800-1330', '', '', 1361266143, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (16, 'gendhi', '49773cef56e85a9a', '정재동', 'gendhi@neople.co.kr', '010-3661-5792', 'gendhi52@hotmail.com', '', 1361345241, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (17, 'youknowmail', '0252e8b749cce351', 'youknow1', '', '', '', '', 1361352850, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (18, 'syslab', '39268b21731faf65', 'syslab', 'syslab@neople.co.kr', '010-5047-0620', '', '대만 동접 확인 위해서 신청합니다.', 1361421671, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (19, 'dblab', '42b9473e04279d10', 'dblab', 'dblab@neople.co.kr', '', '', '', 1361422212, '1', '==|w|w|w|w|_|_|_|_|_|_|_|_|w|w|w|_|w|_|w|w|w|_|w|w|w|w|_|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w==|w|w|w|w|w|w|w|_|_|w|w|w|w==|w|w|w|w|w|w|w|w|_|w|w|w|_|_|w|w|_|_|w===|w|w|w====|w=|w|w|w|w|w=|w|w|w|w==|w|w|w|w|w|w|_|w==|w==|w|w|w=|w|w|w', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (20, 'DNFGM01', '180a388d0f721fca', '陳哲?', '', '', '', '總監', 1361450938, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (21, 'DNFGM02', '36d7468e434452a7', '陳怡如', '', '', '', '總監特助', 1361450976, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|_==|w==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (22, 'DNFGM03', '6e9144fe5e78d437', '李詩?', '', '', '', '經理', 1361451035, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (23, 'DNFGM04', '15fad7d15efe455f', '胡育嘉', '', '', '', '經理', 1361451080, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (24, 'DNFGM05', '1b6b837f7e0d37b0', '蘇潔民', '', '', '', '遊?二組專員', 1361451118, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|w|w|w====|w=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (25, 'DNFGM06', '79c8c1aa5bc2cb39', '鄒家銘', '', '', '', '遊?二組專員', 1361451147, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (26, 'DNFGM07', '09b9805500befcd0', '林曉?', '', '', '', '遊?二組專員', 1361451182, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (27, 'DNFGM08', '4df65dba1a2252e7', '黃韋揚', '', '', '', '遊?二組專員', 1361451210, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (28, 'DNFGM09', '04ed5515533a7078', '陳唯剛', '', '', '', '遊?二組專員', 1361451243, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (29, 'DNFGM10', '46bb3ce723c4adec', '陳明衛', '', '', '', '遊?二組專員', 1361451270, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|r|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (30, 'DNFGM11', '359d995e3b955196', '潘冠瑾', '', '', '', '?緝組專員', 1361451306, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (31, 'DNFGM12', '2966bf5511fecd7c', '張維倫', '', '', '', '?緝組專員', 1361451349, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (32, 'DNFGM13', '3982a37114068035', '吳金韋', '', '', '', '?緝組專員', 1361451375, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (33, 'DNFGM14', '26683cad62d18763', '*預備用', '', '', '', '*預備用', 1361451407, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (34, 'DNFGM15', '26683cad62d18763', '*預備用', '', '', '', '*預備用', 1361451422, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (36, 'conspira', '324ba3650e059209', 'conspira', '', '', '', 'test', 1361610627, '1', '==|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|_|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|w|w|w|_|w|w|w|_|w|w|w|_|_|w|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|r|r|_==|w|_|w|w|_|w|_|w==|w==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (37, 'changwl', '3c67f3ae0b4a96ab', 'changwl', '', '', '', '', 1361952125, '0', '', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (38, 'nexon', '4cf5921449bccede', '넥슨코리아', '', '', '', '', 1366097093, '1', '==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (39, 'garena_earvin', '2b4b0888112f4f47', 'earvin', 'cheni@garena.com', '886975058341', 'nokia27@ms48.hinet.net', '', 1366781127, '1', '==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (40, 'Garena_Jo', '2b4b0888112f4f47', 'Jo', 'huangjo@garena.com', '', '', '', 1366783958, '1', '==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (41, 'Garena_Nix', '2b4b0888112f4f47', 'Nix', 'fangn@garena.com', '', '', '', 1366783998, '1', '==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (42, 'Garena_Mandy', '2b4b0888112f4f47', 'Mandy', 'chienm@garena.com', '', '', '', 1366784037, '1', '==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (43, 'Garena_Visnu', '2b4b0888112f4f47', 'Visnu', 'changm@garena.com', '', '', '', 1366784069, '1', '==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (44, 'Ocean', '2b4b0888112f4f47', 'Ocean', 'lino@garena.com', '', '', '', 1366784107, '1', '==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_===|_|_|_====|_=|w|w|w|w|w=|_|_|_|_==|_|_|_|_|_|_|_|_==|_==|_|_|_=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (46, 'DNFGM16', '008ed89501dff083', '江愷力', '', '', '', '查緝組新進人員', 1370240141, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (47, 'DNFGM17', '008edf5a01dfeb48', '預備用', '', '', '', '因人員即將擴編，所以先行申請。', 1370240247, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (48, 'DNFGM18', '008edd2f01dfed1d', '預備用', '', '', '', '因人員即將擴編，所以先行申請。', 1370240260, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (49, 'DNFGM19', '008ed3f401dff7e2', '預備用', '', '', '', '因人員即將擴編，所以先行申請。', 1370240273, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');
INSERT INTO `admin_member` VALUES (50, 'DNFGM20', '008c67e001e08c97', '預備用', '', '', '', '因人員即將擴編，所以先行申請。', 1370240291, '1', '==|r|r|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|w|w|w|w|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|_|_|_|_|_|_|_|_|_|_|_|_==|_|r|r|_|_|_|_|_|_|r|r|_|_|_|_|_|_|_|_===|w|w|w====|w=|_|_|_|_|_=|_|_|_|_==|r|_|_|_|_|w|_|w==|_==|w|w|w=|_|_|_', '_', '_', '_', '_', '_', '_');

-- ----------------------------
-- Table structure for bad_user
-- ----------------------------
DROP TABLE IF EXISTS `bad_user`;
CREATE TABLE `bad_user`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `bad_code` int(11) NOT NULL DEFAULT 0,
  `create_day` int(11) NOT NULL DEFAULT 0,
  `exit_day` int(11) NOT NULL DEFAULT 0,
  `admin_n` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`no`),
  INDEX `idx_mid` USING BTREE(`m_id`),
  INDEX `idx_code` USING BTREE(`bad_code`),
  INDEX `idx_eday` USING BTREE(`exit_day`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bak_dnf_item_info
-- ----------------------------
DROP TABLE IF EXISTS `bak_dnf_item_info`;
CREATE TABLE `bak_dnf_item_info`  (
  `it_no` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `it_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `it_eng_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `it_explain` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `master_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sub_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `job` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `revert` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `skill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `create_ratio` float NOT NULL DEFAULT 0,
  `rarity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(6) NOT NULL DEFAULT 0,
  `price` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cash` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `medal` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `durability` smallint(6) NOT NULL DEFAULT 0,
  `cooltime` smallint(6) NOT NULL DEFAULT 0,
  `hp_max` smallint(6) NOT NULL DEFAULT 0,
  `mp_max` smallint(6) NOT NULL DEFAULT 0,
  `phy_att` smallint(6) NOT NULL DEFAULT 0,
  `phy_def` smallint(6) NOT NULL DEFAULT 0,
  `mag_att` smallint(6) NOT NULL DEFAULT 0,
  `mag_def` smallint(6) NOT NULL DEFAULT 0,
  `equip_phy_att` smallint(6) NOT NULL DEFAULT 0,
  `equip_phy_def` smallint(6) NOT NULL DEFAULT 0,
  `equip_mag_att` smallint(6) NOT NULL DEFAULT 0,
  `equip_mag_def` smallint(6) NOT NULL DEFAULT 0,
  `ref_fire` tinyint(4) NOT NULL DEFAULT 0,
  `ref_water` tinyint(4) NOT NULL DEFAULT 0,
  `ref_dark` tinyint(4) NOT NULL DEFAULT 0,
  `ref_light` tinyint(4) NOT NULL DEFAULT 0,
  `ref_all` tinyint(4) NOT NULL DEFAULT 0,
  `ref_slow` tinyint(4) NOT NULL DEFAULT 0,
  `ref_freeze` tinyint(4) NOT NULL DEFAULT 0,
  `ref_poison` tinyint(4) NOT NULL DEFAULT 0,
  `ref_stun` tinyint(4) NOT NULL DEFAULT 0,
  `ref_cus` tinyint(4) NOT NULL DEFAULT 0,
  `ref_blind` tinyint(4) NOT NULL DEFAULT 0,
  `ref_lite` tinyint(4) NOT NULL DEFAULT 0,
  `ref_ston` tinyint(4) NOT NULL DEFAULT 0,
  `ref_sleep` tinyint(4) NOT NULL DEFAULT 0,
  `ref_deekement` tinyint(4) NOT NULL DEFAULT 0,
  `ref_deadlystrike` tinyint(4) NOT NULL DEFAULT 0,
  `ref_bleeding` tinyint(4) NOT NULL DEFAULT 0,
  `ref_confuse` tinyint(4) NOT NULL DEFAULT 0,
  `ref_hold` tinyint(4) NOT NULL DEFAULT 0,
  `ref_all_stat` tinyint(4) NOT NULL DEFAULT 0,
  `ref_pierce` smallint(6) NOT NULL DEFAULT 0,
  `ref_stuck` smallint(6) NOT NULL DEFAULT 0,
  `inven_max` smallint(6) NOT NULL DEFAULT 0,
  `hp_regenrate` smallint(6) NOT NULL DEFAULT 0,
  `mp_regenrate` smallint(6) NOT NULL DEFAULT 0,
  `mov_speed` smallint(6) NOT NULL DEFAULT 0,
  `att_speed` smallint(6) NOT NULL DEFAULT 0,
  `quest` smallint(6) NOT NULL DEFAULT 0,
  `hit_recovery` smallint(6) NOT NULL DEFAULT 0,
  `jump` smallint(6) NOT NULL DEFAULT 0,
  `att_element` enum('Void','Fire','Water','Dark','Light') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Void',
  `att_active_status` smallint(6) NOT NULL DEFAULT 0,
  `att_active_status_ratio` float NOT NULL DEFAULT 0,
  `att_active_status_pow` smallint(6) NOT NULL DEFAULT 0,
  `att_backforce` smallint(6) NOT NULL DEFAULT 0,
  `att_upforce` smallint(6) NOT NULL DEFAULT 0,
  `att_hp_drain` tinyint(4) NOT NULL DEFAULT 0,
  `att_mp_drain` tinyint(4) NOT NULL DEFAULT 0,
  `criticalhit_rate` float NOT NULL DEFAULT 0,
  `stuck_rate` float NOT NULL DEFAULT 0,
  `att_defenseIgnore` tinyint(4) NOT NULL DEFAULT 0,
  `skill_levelup` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `set_type` enum('n','y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'n',
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `jewel_type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`it_no`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bak_m_id_20130426_2
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_20130426_2`;
CREATE TABLE `bak_m_id_20130426_2`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  INDEX `m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bak_m_id_20130426_3
-- ----------------------------
DROP TABLE IF EXISTS `bak_m_id_20130426_3`;
CREATE TABLE `bak_m_id_20130426_3`  (
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reg_date` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_status
-- ----------------------------
DROP TABLE IF EXISTS `ch_status`;
CREATE TABLE `ch_status`  (
  `gc_group` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `gc_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for check_pick_up_random_option_item
-- ----------------------------
DROP TABLE IF EXISTS `check_pick_up_random_option_item`;
CREATE TABLE `check_pick_up_random_option_item`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `check_count` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for db_connect
-- ----------------------------
DROP TABLE IF EXISTS `db_connect`;
CREATE TABLE `db_connect`  (
  `no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `host_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `db_server_group` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `db_type` int(10) UNSIGNED NOT NULL,
  `db_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_port` int(10) UNSIGNED NOT NULL,
  `db_userid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of db_connect
-- ----------------------------
INSERT INTO `db_connect` VALUES (1, '', 1, 1, 'd_taiwan', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (2, '', 1, 2, 'taiwan_cain', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (3, '', 1, 3, 'taiwan_cain_2nd', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (4, '', 1, 4, 'taiwan_cain_log', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (5, '', 1, 5, 'taiwan_cain_web', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (6, '', 1, 6, 'taiwan_login', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (7, '', 1, 7, 'taiwan_prod', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (8, '', 1, 8, 'd_guild', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (9, '', 1, 9, 'taiwan_game_event', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (10, '', 1, 10, 'd_taiwan_secu', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (12, '', 1, 12, 'taiwan_cain_auction_gold', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (13, '', 1, 13, 'taiwan_se_event', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (11, '', 1, 11, 'taiwan_login_play', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (14, '', 1, 15, 'd_technical_report', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (15, '', 1, 14, 'taiwan_billing', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', 'taiwan billing');
INSERT INTO `db_connect` VALUES (16, '', 2, 1, 'd_taiwan', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (17, '', 2, 2, 'taiwan_diregie', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (18, '', 2, 3, 'taiwan_diregie_2nd', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (19, '', 2, 4, 'taiwan_diregie_log', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (20, '', 2, 5, 'taiwan_diregie_web', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (21, '', 2, 6, 'taiwan_login', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (22, '', 2, 7, 'taiwan_prod', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (23, '', 2, 8, 'd_guild', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (24, '', 2, 9, 'taiwan_game_event', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (25, '', 2, 10, 'd_taiwan_secu', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (26, '', 2, 11, 'taiwan_login_play', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (27, '', 2, 12, 'taiwan_diregie_auction_gold', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (28, '', 2, 13, 'taiwan_se_event', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (29, '', 2, 15, 'd_technical_report', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (30, '', 2, 14, 'taiwan_billing', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', 'taiwan billing');
INSERT INTO `db_connect` VALUES (31, '', 3, 1, 'd_taiwan', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (32, '', 3, 2, 'taiwan_cain', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (33, '', 3, 3, 'taiwan_cain_2nd', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (34, '', 3, 4, 'taiwan_cain_log', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (35, '', 3, 5, 'taiwan_cain_web', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (36, '', 3, 6, 'taiwan_login', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (37, '', 3, 7, 'taiwan_prod', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (38, '', 3, 8, 'd_guild', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (39, '', 3, 9, 'taiwan_game_event', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (40, '', 3, 10, 'd_taiwan_secu', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (41, '', 3, 12, 'taiwan_cain_auction_gold', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (42, '', 3, 13, 'taiwan_se_event', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (43, '', 3, 11, 'taiwan_login_play', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (44, '', 3, 15, 'd_technical_report', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', '');
INSERT INTO `db_connect` VALUES (45, '', 3, 14, 'taiwan_billing', '192.168.200.131', 3306, 'game', '20e35501e56fcedbe8b10c1f8bc3595be8b10c1f8bc3595b', 'taiwan billing');

-- ----------------------------
-- Table structure for dblab_db_connect_130516
-- ----------------------------
DROP TABLE IF EXISTS `dblab_db_connect_130516`;
CREATE TABLE `dblab_db_connect_130516`  (
  `no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `host_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `db_server_group` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `db_type` int(10) UNSIGNED NOT NULL,
  `db_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_port` int(10) UNSIGNED NOT NULL,
  `db_userid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dblab_db_connect_130516
-- ----------------------------
INSERT INTO `dblab_db_connect_130516` VALUES (1, '', 1, 1, 'd_taiwan', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (2, '', 1, 2, 'taiwan_cain', '172.1.2.101', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (3, '', 1, 3, 'taiwan_cain_2nd', '172.1.2.103', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (4, '', 1, 4, 'taiwan_cain_log', '172.1.2.143', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (5, '', 1, 5, 'taiwan_cain_web', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (6, '', 1, 6, 'taiwan_login', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (7, '', 1, 7, 'taiwan_prod', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (8, '', 1, 8, 'd_guild', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (9, '', 1, 9, 'taiwan_game_event', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (10, '', 1, 10, 'd_taiwan_secu', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (12, '', 1, 12, 'taiwan_cain_auction_gold', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (13, '', 1, 13, 'taiwan_se_event', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (11, '', 1, 11, 'taiwan_login_play', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (14, '', 1, 15, 'd_technical_report', '172.1.2.143', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (15, '', 1, 14, 'taiwan_billing', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', 'taiwan billing');
INSERT INTO `dblab_db_connect_130516` VALUES (16, '', 2, 1, 'd_taiwan', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (17, '', 2, 2, 'taiwan_diregie', '172.1.2.111', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (18, '', 2, 3, 'taiwan_diregie_2nd', '172.1.2.113', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (19, '', 2, 4, 'taiwan_diregie_log', '172.1.2.143', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (20, '', 2, 5, 'taiwan_diregie_web', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (21, '', 2, 6, 'taiwan_login', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (22, '', 2, 7, 'taiwan_prod', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (23, '', 2, 8, 'd_guild', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (24, '', 2, 9, 'taiwan_game_event', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (25, '', 2, 10, 'd_taiwan_secu', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (26, '', 2, 11, 'taiwan_login_play', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (27, '', 2, 12, 'taiwan_diregie_auction_gold', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (28, '', 2, 13, 'taiwan_se_event', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (29, '', 2, 15, 'd_technical_report', '172.1.2.143', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (30, '', 2, 14, 'taiwan_billing', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', 'taiwan billing');
INSERT INTO `dblab_db_connect_130516` VALUES (31, '', 3, 1, 'd_taiwan', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (32, '', 3, 2, 'taiwan_siroco', '172.1.2.121', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (33, '', 3, 3, 'taiwan_siroco_2nd', '172.1.2.123', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (34, '', 3, 4, 'taiwan_siroco_log', '172.1.2.143', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (35, '', 3, 5, 'taiwan_siroco_web', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (36, '', 3, 6, 'taiwan_login', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (37, '', 3, 7, 'taiwan_prod', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (38, '', 3, 8, 'd_guild', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (39, '', 3, 9, 'taiwan_game_event', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (40, '', 3, 10, 'd_taiwan_secu', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (41, '', 3, 11, 'taiwan_login_play', '172.1.2.141', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (42, '', 3, 12, 'taiwan_siroco_auction_gold', '172.1.2.133', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (43, '', 3, 13, 'taiwan_se_event', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (44, '', 3, 15, 'd_technical_report', '172.1.2.143', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', '');
INSERT INTO `dblab_db_connect_130516` VALUES (45, '', 3, 14, 'taiwan_billing', '172.1.2.131', 3306, 'taiwan_game', 'e57da631f47c906741616e764bfee89568b80c38ec48cad4', 'taiwan billing');

-- ----------------------------
-- Table structure for dnf_charac_mov
-- ----------------------------
DROP TABLE IF EXISTS `dnf_charac_mov`;
CREATE TABLE `dnf_charac_mov`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `move_server_id` tinyint(4) NOT NULL DEFAULT 0,
  `move_charac_no` int(11) NOT NULL DEFAULT 0,
  `move_check` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`),
  UNIQUE INDEX `m_id` USING BTREE(`m_id`, `server_id`, `charac_no`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_event_address
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_address`;
CREATE TABLE `dnf_event_address`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `zipcode` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `phone_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`event_id`, `m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_event_entry_notuse
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_entry_notuse`;
CREATE TABLE `dnf_event_entry_notuse`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `obtain_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`event_id`, `m_id`),
  INDEX `idx_m_id` USING BTREE(`m_id`),
  INDEX `idx_charac_no` USING BTREE(`charac_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_event_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_info`;
CREATE TABLE `dnf_event_info`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `event_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `event_explain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apply_type` tinyint(4) NOT NULL DEFAULT 0,
  `start_date` date NOT NULL DEFAULT '2021-11-19',
  `end_date` date NOT NULL DEFAULT '2021-11-19',
  PRIMARY KEY USING BTREE (`event_id`),
  UNIQUE INDEX `event_name` USING BTREE(`event_name`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dnf_event_info
-- ----------------------------
INSERT INTO `dnf_event_info` VALUES (1, 'CUnlimitFatigueEvent', '疲勞度無限大', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (2, 'CMaxFatigueFactorEvent', '最大疲勞度|百分比', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (3, 'CExpDoubleEvent', '雙倍經驗|百分比', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (4, 'CCoinEventPerDay', '每日分發復活幣|1~17級|18~26級|27級以上|未使用', 4, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (5, 'CCoinEventOnCharCreate', '創建角色時，分發復活幣|復活幣數|', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (6, 'CLeadingChannelEvent', '頻道引導', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (7, 'CItemDropRatioEvent', '道具掉落率加倍|倍數', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (8, 'CPCRoomBurningEvent', '網咖燃燒時間|百分比', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (9, 'CSchoolMatchEvent', '超級學校對戰', 3, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (10, 'CPCRoomFatigueEvent', '網咖玩家疲勞度無限大活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (12, 'CReformingDanjinEvent', '土罐改版活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (13, 'CCoinRefillEvent', '復活幣加值活動|第一時間|第二十間', 2, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (15, 'CBurningFatigueEvent', '燃燒疲勞度活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (16, 'CClearRewardCardEvent', '完成地下城 獎賞限定道具活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (17, 'CCeraShopBonusItemEvent', '商城BONUS道具活動|給予BONUS道具的機率是（1000分比。如為100，將無條件獲得道具。如為10，將有10%機率可獲得）', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (18, 'CTournamentPvPEvent', '撥放用決戰場', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (19, 'CGoldCardBlankItemEvent', '金卡活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (21, 'CCollectArchieveEventLog', '收集達成成就的Log', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (22, 'CPCRoomWorldDropEvent', '網咖world掉落活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (24, 'CPartyExpBonusEvent', '組隊經驗值獎賞|百分比', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (29, 'CPcRoomCardBlankItemEvent', '網咖卡Blank活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (30, 'CPowerWarEvent', '勢力戰活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (32, 'CStabToDeathEvent', '刺殺週活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (33, 'CGuildWarEvent', '', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (34, 'CAutoMarketConditionsControlEv', '', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (35, 'CVendingMachineBonusEvent', '自動售貨機BONUS活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (36, 'CBurnigGoldMonsterEvent', '燃燒金怪物活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (38, 'CNoNeedGoldOnGuildCreateEvent', '免費創設公會活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (39, 'CDeathTowerWinPointEvent', '死亡之塔/迷妄之塔 apc活動|百分比', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (40, 'CNotApplyBalkeunEvent', '未套用COF指數活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (41, 'CCharacterDayEvent', '角色日活動|職業號碼（0:鬼劍士,1:格鬥家,2:神槍手,3:魔法師,4:聖職者,5:女神槍手,6:盜賊,7:格鬥家(男),100:Game Script）', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (42, 'CAssaultOnOffEvent', '防止街頭爭霸活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (43, 'CFatigueBuffEvent', '疲勞度 Buff活動', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (45, 'CBloodDungeonRewardFirstEvent', '無盡的祭壇中獎金 平時|中獎金', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (46, 'CBloodDungeonRewardSecondEvent', '無盡的祭壇中獎金 活動時|中獎金', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (48, 'CPCRoomWorldDropEvent2nd', '網咖world掉落活動 2nd', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (49, 'CRestrictCharacCreationEvent', '角色伺服器生成限制', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (50, 'CReduceUpgradeItemPay', '強化費用折扣活動', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (51, 'COnTimeEvent', 'On Time活動', 2, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (52, 'CBreakAwayPreventEvent', '防止脫離系統', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (53, 'CPowerWarVictoriousEvent', '勢力戰勝利勢力耐久度活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (54, 'CPvPExpPenaltyEvent', '決鬥場經驗值處罰 ', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (55, 'CPvPLiveEvent', 'Live 統合決鬥場活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (56, 'CIntegratedPvPServerMatchEvent', '伺服器對抗戰活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (57, 'COnlinePreliminaryEvent', '聯賽線上預選', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (58, 'CSecretShopEvent', '神秘商店活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (61, 'CDnFLeaguePromoteFirstEvent', '聯賽宣傳（星期四）', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (62, 'CDnFLeaguePromoteSecondEvent', '聯賽宣傳（星期五）', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (64, 'CDoubleGoldCardEvent', '金卡獎賞2倍活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (65, 'CPremiumGoldCard', '優惠金卡活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (67, 'CGmRegistEvent', 'GM Web manager tool登入', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (86, 'CFatigueAttendance', '出席活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (87, 'CWeekendBonusEvent', '周末BONUS活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (91, 'CUXGameLogEvent', 'UX Game Log 系統', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (92, 'CPCRoomPlayTimeEvent', '網咖遊戲時間活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (93, 'LevelUpBefore70LvEvent', '升級活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (94, 'CDimensionActivationEvent', '異界地下城活性化活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (95, 'BlueMarbleDungeonEvent', '活動地下城', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (96, 'AttendanceEvent', '2012年出席活動', 1, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (100, 'GrowthEquipEvent', '成長型裝備活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (101, 'CFatigueGiveItemEvent', '消耗疲勞度分發道具活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (102, 'CStopOverlabExpEvent', '成長之秘方禁止效果重複活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (103, 'GiveGrowCreatureEvent', '分發成長型道具寵物活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (104, 'NewAccountLevelUpEventToJob', '達成職業別等級 分發道具活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (105, 'SeriaRoomAniDecoEvent', '布置賽莉亞房活動(動畫)', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (106, 'BingoEvent', '賓果活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (109, 'OneADayItemShopEvent', 'OneADay商店活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (113, 'CConditionEvent', 'event_msg_67 == NULL, Etc/Etc.kor.str : ', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (116, 'CAradRyosikaEvent', 'event_msg_190 == NULL, Etc/Etc.kor.str : ', 2, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (119, 'CEventAdvanceAltarOpen', '分發成長型道具寵物活動', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (155, 'Arad_MomijiEvent', 'event_msg_196 == NULL, Etc/Etc.kor.str : ', 4, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (158, 'LevelupSupportEvent', 'event_msg_158 == NULL, Etc/Etc.kor.str : ', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (159, 'CEventStayTime', 'event_msg_159 == NULL, Etc/Etc.kor.str : ', 2, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (160, 'CEventCreateDnf', 'event_msg_160 == NULL, Etc/Etc.kor.str : ', 4, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (161, 'CEventCeraShopRewardPoint', 'Cera Point Event', 2, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (162, 'EventNewCharacterReward', 'event_msg_162 == NULL, Etc/Etc.kor.str : ', 2, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (163, 'LevelupSupport2ndEvent', 'event_msg_164 == NULL, Etc/Etc.kor.str : ', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (164, 'HeroMissionEvent', 'event_msg_163 == NULL, Etc/Etc.kor.str : ', 0, '2016-04-14', '2099-01-16');
INSERT INTO `dnf_event_info` VALUES (165, 'EventGiveMeBox', 'event_msg_165 == NULL, Etc/Etc.kor.str : ', 0, '2016-04-14', '2099-01-16');

-- ----------------------------
-- Table structure for dnf_event_log
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_log`;
CREATE TABLE `dnf_event_log`  (
  `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `occ_time` int(11) NOT NULL DEFAULT 0,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `parameter1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parameter2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `event_flag` tinyint(3) NULL DEFAULT 0,
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `expl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `etc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`log_id`),
  INDEX `idx_occ_time` USING BTREE(`occ_time`),
  INDEX `idx_sever_id` USING BTREE(`server_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dnf_event_log
-- ----------------------------
INSERT INTO `dnf_event_log` VALUES (1, 0, 1, 1, 0, 0, 0, 0, 0, 0, '', '');

-- ----------------------------
-- Table structure for dnf_event_prize
-- ----------------------------
DROP TABLE IF EXISTS `dnf_event_prize`;
CREATE TABLE `dnf_event_prize`  (
  `prize_id` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `check_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`prize_id`, `m_id`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_game_message
-- ----------------------------
DROP TABLE IF EXISTS `dnf_game_message`;
CREATE TABLE `dnf_game_message`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `display_type` tinyint(4) NOT NULL DEFAULT 1,
  `start_h` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `end_h` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  PRIMARY KEY USING BTREE (`no`),
  INDEX `display_type` USING BTREE(`display_type`, `occ_date`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_gamein_notice
-- ----------------------------
DROP TABLE IF EXISTS `dnf_gamein_notice`;
CREATE TABLE `dnf_gamein_notice`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `reg_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `open_flag` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'n',
  PRIMARY KEY USING BTREE (`no`),
  INDEX `idx_server_id` USING BTREE(`server_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_master_charac
-- ----------------------------
DROP TABLE IF EXISTS `dnf_master_charac`;
CREATE TABLE `dnf_master_charac`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `global_type` tinyint(4) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `lev` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `global_type`, `server_id`),
  INDEX `server_id` USING BTREE(`server_id`, `charac_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_pcroom
-- ----------------------------
DROP TABLE IF EXISTS `dnf_pcroom`;
CREATE TABLE `dnf_pcroom`  (
  `ip_no` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `firm_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `leader` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `start_ip` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `end_ip` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`ip_no`),
  UNIQUE INDEX `start_ip` USING BTREE(`start_ip`),
  UNIQUE INDEX `end_ip` USING BTREE(`end_ip`),
  INDEX `idx_district` USING BTREE(`district`),
  INDEX `idx_leader` USING BTREE(`leader`),
  INDEX `idx_firm_name` USING BTREE(`firm_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_restrict_info
-- ----------------------------
DROP TABLE IF EXISTS `dnf_restrict_info`;
CREATE TABLE `dnf_restrict_info`  (
  `category` int(11) NOT NULL,
  `restrict_code` int(11) NOT NULL,
  `restrict_str` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY USING BTREE (`category`, `restrict_code`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '서비스 제재 정보 문자열' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dnf_restrict_info
-- ----------------------------
INSERT INTO `dnf_restrict_info` VALUES (1, 1, 'DeleteItem', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 2, 'DropGold', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 3, 'UseNpc', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 4, 'UseMail', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 5, 'UseAuction', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 6, 'UseTrade', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 7, 'UseUpgrade', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 8, 'UseEnchant', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 9, 'UseCompound', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 10, 'UseDisjoint', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 11, 'UsePrivateStore', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 12, 'UseStackable', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 13, 'UseBindSphere', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 14, 'UseSeal', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 15, 'UseRandomOptionChange', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 16, 'UseRandomOptionReGeneration', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 17, 'UseCeraShop', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 18, 'UseRandomBox', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 19, 'UseExportJob', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 20, 'UseDisjointAvatar', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 21, 'UseEmblemCompound', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 22, 'RecoverStamina', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 23, 'DeleteCharacter', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 24, 'AccountCargo', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 25, 'AccountUpgrade', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 26, 'AccountMoveGold', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 27, 'AccountMoveItem', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 28, 'GuildCreate', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 29, 'GuildLevelUp', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 30, 'GuildSkillUp', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 31, 'GuildBreak', '2013-01-21 20:34:41');
INSERT INTO `dnf_restrict_info` VALUES (1, 32, 'CreateCharacter', '2013-04-25 10:41:21');
INSERT INTO `dnf_restrict_info` VALUES (1, 33, 'LoginChannel', '2013-04-25 10:41:21');
INSERT INTO `dnf_restrict_info` VALUES (3, 1, 'DropRate', '2013-05-16 12:24:23');

-- ----------------------------
-- Table structure for dnf_restrict_state
-- ----------------------------
DROP TABLE IF EXISTS `dnf_restrict_state`;
CREATE TABLE `dnf_restrict_state`  (
  `server_group` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `restrict_code` int(11) NOT NULL,
  `restrict_value` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mod_date` datetime NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY USING BTREE (`server_group`, `category`, `restrict_code`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dnf_restrict_state
-- ----------------------------
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 1, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 2, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 3, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 4, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 5, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 6, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 7, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 8, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 9, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 10, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 11, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 12, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 13, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 14, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 15, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 16, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 17, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 18, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 19, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 20, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 21, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 22, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 23, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 24, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 25, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 26, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 27, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 28, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 29, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 30, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 31, '1', '2013-03-27 17:42:15', '2013-03-27 17:42:15');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 32, '1', '2013-04-25 10:41:21', '2013-04-25 10:41:21');
INSERT INTO `dnf_restrict_state` VALUES (1, 1, 33, '1', '2013-04-25 10:41:21', '2013-04-25 10:41:21');
INSERT INTO `dnf_restrict_state` VALUES (1, 3, 1, '0', '2013-05-16 12:24:23', '2013-05-16 12:24:23');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 1, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 2, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 3, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 4, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 5, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 6, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 7, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 8, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 9, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 10, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 11, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 12, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 13, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 14, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 15, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 16, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 17, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 18, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 19, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 20, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 21, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 22, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 23, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 24, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 25, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 26, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 27, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 28, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 29, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 30, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 31, '1', '2013-02-14 22:13:16', '2013-02-14 22:13:16');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 32, '1', '2013-04-25 10:41:24', '2013-04-25 10:41:24');
INSERT INTO `dnf_restrict_state` VALUES (2, 1, 33, '1', '2013-04-25 10:41:24', '2013-04-25 10:41:24');
INSERT INTO `dnf_restrict_state` VALUES (2, 3, 1, '0', '2013-05-16 12:24:43', '2013-05-16 12:24:43');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 1, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 2, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 3, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 4, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 5, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 6, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 7, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 8, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 9, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 10, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 11, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 12, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 13, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 14, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 15, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 16, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 17, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 18, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 19, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 20, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 21, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 22, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 23, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 24, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 25, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 26, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 27, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 28, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 29, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 30, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 31, '0', '2013-03-27 17:43:44', '2013-03-27 17:43:44');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 32, '0', '2013-04-25 10:41:21', '2013-04-25 10:41:21');
INSERT INTO `dnf_restrict_state` VALUES (3, 1, 33, '0', '2013-04-25 10:41:21', '2013-04-25 10:41:21');
INSERT INTO `dnf_restrict_state` VALUES (3, 3, 1, '0', '2013-05-16 12:24:45', '2013-05-16 12:24:45');

-- ----------------------------
-- Table structure for dnf_story
-- ----------------------------
DROP TABLE IF EXISTS `dnf_story`;
CREATE TABLE `dnf_story`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `story_type` tinyint(4) NOT NULL DEFAULT 0,
  `notice_flag` tinyint(4) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `reg_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `img_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `opt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `open_flag` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'n',
  `reg_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reserve_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY USING BTREE (`no`),
  INDEX `idx_mid` USING BTREE(`m_id`),
  INDEX `idx_reg` USING BTREE(`reg_date`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dnf_testr_m_id
-- ----------------------------
DROP TABLE IF EXISTS `dnf_testr_m_id`;
CREATE TABLE `dnf_testr_m_id`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `sex` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_arad_birthday_6th
-- ----------------------------
DROP TABLE IF EXISTS `event_arad_birthday_6th`;
CREATE TABLE `event_arad_birthday_6th`  (
  `server` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`server`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_aradlotto_0809_entry
-- ----------------------------
DROP TABLE IF EXISTS `event_aradlotto_0809_entry`;
CREATE TABLE `event_aradlotto_0809_entry`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_date` int(11) NOT NULL DEFAULT 0,
  `lotto_num` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx1` USING BTREE(`lotto_num`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_charac_mov_1th
-- ----------------------------
DROP TABLE IF EXISTS `event_charac_mov_1th`;
CREATE TABLE `event_charac_mov_1th`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `move_server_id` tinyint(4) NOT NULL DEFAULT 0,
  `move_charac_no` int(11) NOT NULL DEFAULT 0,
  `move_check` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`),
  UNIQUE INDEX `m_id` USING BTREE(`m_id`, `server_id`, `charac_no`),
  INDEX `idx_move_charac_no` USING BTREE(`move_charac_no`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_charac_mov_1th_entry
-- ----------------------------
DROP TABLE IF EXISTS `event_charac_mov_1th_entry`;
CREATE TABLE `event_charac_mov_1th_entry`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` int(11) NOT NULL DEFAULT 0,
  `it_no` int(11) NOT NULL DEFAULT 0,
  `item_check` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_goldcard_cnt
-- ----------------------------
DROP TABLE IF EXISTS `event_goldcard_cnt`;
CREATE TABLE `event_goldcard_cnt`  (
  `item_no` int(10) NOT NULL DEFAULT 0,
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `cnt` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`item_no`, `occ_date`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_goldcard_entry1
-- ----------------------------
DROP TABLE IF EXISTS `event_goldcard_entry1`;
CREATE TABLE `event_goldcard_entry1`  (
  `occ_date` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `item_no` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `m_id`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_goldcard_entry2
-- ----------------------------
DROP TABLE IF EXISTS `event_goldcard_entry2`;
CREATE TABLE `event_goldcard_entry2`  (
  `occ_date` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `item_no` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_check` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `m_id`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_goldcard_info
-- ----------------------------
DROP TABLE IF EXISTS `event_goldcard_info`;
CREATE TABLE `event_goldcard_info`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `coupon` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_hinamatsuri_cnt
-- ----------------------------
DROP TABLE IF EXISTS `event_hinamatsuri_cnt`;
CREATE TABLE `event_hinamatsuri_cnt`  (
  `cnt` int(11) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_mage_2years
-- ----------------------------
DROP TABLE IF EXISTS `event_mage_2years`;
CREATE TABLE `event_mage_2years`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL AUTO_INCREMENT,
  `charac_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `delete_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `server_info`, `charac_no`),
  INDEX `charac_no` USING BTREE(`charac_no`),
  INDEX `idx_create_time` USING BTREE(`create_time`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_newmember0709_entry
-- ----------------------------
DROP TABLE IF EXISTS `event_newmember0709_entry`;
CREATE TABLE `event_newmember0709_entry`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `item1_no` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item1_check` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item2_no` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item2_check` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_occ_date` USING BTREE(`occ_date`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_pandora_entry_200905
-- ----------------------------
DROP TABLE IF EXISTS `event_pandora_entry_200905`;
CREATE TABLE `event_pandora_entry_200905`  (
  `m_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `server_id` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `charac_no` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `occ_date`, `server_id`),
  INDEX `idx_date` USING BTREE(`occ_date`),
  INDEX `idx_charac` USING BTREE(`server_id`, `charac_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_quest_party_member_web
-- ----------------------------
DROP TABLE IF EXISTS `event_quest_party_member_web`;
CREATE TABLE `event_quest_party_member_web`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `quest_no` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `send_charac_no` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `server_id`, `charac_no`, `quest_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_quizquiz_stamp
-- ----------------------------
DROP TABLE IF EXISTS `event_quizquiz_stamp`;
CREATE TABLE `event_quizquiz_stamp`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `degree` tinyint(4) NOT NULL DEFAULT 0,
  `stamp` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`m_id`, `degree`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_skill2025_entry
-- ----------------------------
DROP TABLE IF EXISTS `event_skill2025_entry`;
CREATE TABLE `event_skill2025_entry`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_tower_entry
-- ----------------------------
DROP TABLE IF EXISTS `event_tower_entry`;
CREATE TABLE `event_tower_entry`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `occ_check` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `item1_no` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item1_check` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item2_no` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item2_check` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item3_no` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item3_check` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_occ_date` USING BTREE(`occ_date`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_webmoneystamp_entry
-- ----------------------------
DROP TABLE IF EXISTS `event_webmoneystamp_entry`;
CREATE TABLE `event_webmoneystamp_entry`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `attend_point` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `last_attend_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `return_flag` tinyint(4) NOT NULL DEFAULT 0,
  `entry_item` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event_webmoneystamp_item
-- ----------------------------
DROP TABLE IF EXISTS `event_webmoneystamp_item`;
CREATE TABLE `event_webmoneystamp_item`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` tinyint(4) NOT NULL DEFAULT 0,
  `item_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_check` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`, `occ_time`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for game_channel
-- ----------------------------
DROP TABLE IF EXISTS `game_channel`;
CREATE TABLE `game_channel`  (
  `gc_no` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gc_now` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gc_ip` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gc_port` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gc_max` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gc_game` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gc_channel` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gc_ch_group` smallint(5) NOT NULL DEFAULT 0,
  `gc_channeltype` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`gc_no`),
  INDEX `idxGC_GAME` USING BTREE(`gc_game`),
  INDEX `idxch_group` USING BTREE(`gc_ch_group`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for geo_allow
-- ----------------------------
DROP TABLE IF EXISTS `geo_allow`;
CREATE TABLE `geo_allow`  (
  `allow_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `allow_c_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `allow_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY USING BTREE (`allow_ip`),
  INDEX `idx_c_code` USING BTREE(`allow_c_code`),
  INDEX `idx_date` USING BTREE(`allow_date`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of geo_allow
-- ----------------------------
INSERT INTO `geo_allow` VALUES ('*', 'CN', '2016-04-09 23:52:55');
INSERT INTO `geo_allow` VALUES ('127.0.0.1', 'CN', '2016-04-09 23:53:04');
INSERT INTO `geo_allow` VALUES ('192.168.200.0', 'CN', '2015-08-14 17:27:28');
INSERT INTO `geo_allow` VALUES ('192.168.200.1', 'CN', '2015-09-03 13:05:23');

-- ----------------------------
-- Table structure for geo_allow_country
-- ----------------------------
DROP TABLE IF EXISTS `geo_allow_country`;
CREATE TABLE `geo_allow_country`  (
  `server_group` tinyint(4) NOT NULL,
  `country_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY USING BTREE (`country_code`, `server_group`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of geo_allow_country
-- ----------------------------
INSERT INTO `geo_allow_country` VALUES (1, 'CN', '2015-07-09 18:42:50');
INSERT INTO `geo_allow_country` VALUES (2, 'CN', '2015-07-09 18:42:57');
INSERT INTO `geo_allow_country` VALUES (3, 'CN', '2015-07-09 18:43:04');
INSERT INTO `geo_allow_country` VALUES (1, 'HK', '2013-02-19 22:00:23');
INSERT INTO `geo_allow_country` VALUES (2, 'HK', '2013-02-19 22:00:29');
INSERT INTO `geo_allow_country` VALUES (3, 'HK', '2013-04-08 14:36:28');
INSERT INTO `geo_allow_country` VALUES (1, 'KR', '2013-01-21 20:50:53');
INSERT INTO `geo_allow_country` VALUES (2, 'KR', '2013-01-25 20:54:19');
INSERT INTO `geo_allow_country` VALUES (3, 'KR', '2013-04-08 14:36:32');
INSERT INTO `geo_allow_country` VALUES (1, 'MO', '2013-02-19 21:59:29');
INSERT INTO `geo_allow_country` VALUES (2, 'MO', '2013-02-19 21:59:34');
INSERT INTO `geo_allow_country` VALUES (3, 'MO', '2013-04-08 14:36:36');
INSERT INTO `geo_allow_country` VALUES (1, 'TW', '2013-01-21 20:50:48');
INSERT INTO `geo_allow_country` VALUES (2, 'TW', '2013-01-25 20:54:25');
INSERT INTO `geo_allow_country` VALUES (3, 'TW', '2013-04-08 14:36:40');

-- ----------------------------
-- Table structure for geo_country_code
-- ----------------------------
DROP TABLE IF EXISTS `geo_country_code`;
CREATE TABLE `geo_country_code`  (
  `code_no` int(11) NOT NULL,
  `country_code_a2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country_code_a3` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`code_no`),
  UNIQUE INDEX `geo_country_code_unq001` USING BTREE(`country_code_a2`),
  UNIQUE INDEX `geo_country_code_unq002` USING BTREE(`country_code_a3`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of geo_country_code
-- ----------------------------
INSERT INTO `geo_country_code` VALUES (4, 'AF', 'AFG', 'AFGHANISTAN');
INSERT INTO `geo_country_code` VALUES (8, 'AL', 'ALB', 'ALBANIA');
INSERT INTO `geo_country_code` VALUES (10, 'AQ', 'ATA', 'ANTARCTICA');
INSERT INTO `geo_country_code` VALUES (12, 'DZ', 'DZA', 'ALGERIA');
INSERT INTO `geo_country_code` VALUES (16, 'AS', 'ASM', 'AMERICAN SAMOA');
INSERT INTO `geo_country_code` VALUES (20, 'AD', 'AND', 'ANDORRA');
INSERT INTO `geo_country_code` VALUES (24, 'AO', 'AGO', 'ANGOLA');
INSERT INTO `geo_country_code` VALUES (28, 'AG', 'ATG', 'ANTIGUA AND BARBUDA');
INSERT INTO `geo_country_code` VALUES (31, 'AZ', 'AZE', 'AZERBAIJAN');
INSERT INTO `geo_country_code` VALUES (32, 'AR', 'ARG', 'ARGENTINA');
INSERT INTO `geo_country_code` VALUES (36, 'AU', 'AUS', 'AUSTRALIA');
INSERT INTO `geo_country_code` VALUES (40, 'AT', 'AUT', 'AUSTRIA');
INSERT INTO `geo_country_code` VALUES (44, 'BS', 'BHS', 'BAHAMAS');
INSERT INTO `geo_country_code` VALUES (48, 'BH', 'BHR', 'BAHRAIN');
INSERT INTO `geo_country_code` VALUES (50, 'BD', 'BGD', 'BANGLADESH');
INSERT INTO `geo_country_code` VALUES (51, 'AM', 'ARM', 'ARMENIA');
INSERT INTO `geo_country_code` VALUES (52, 'BB', 'BRB', 'BARBADOS');
INSERT INTO `geo_country_code` VALUES (56, 'BE', 'BEL', 'BELGIUM');
INSERT INTO `geo_country_code` VALUES (60, 'BM', 'BMU', 'BERMUDA');
INSERT INTO `geo_country_code` VALUES (64, 'BT', 'BTN', 'BHUTAN');
INSERT INTO `geo_country_code` VALUES (68, 'BO', 'BOL', 'BOLIVIA');
INSERT INTO `geo_country_code` VALUES (70, 'BA', 'BIH', 'BOSNIA AND HERZEGOWINA');
INSERT INTO `geo_country_code` VALUES (72, 'BW', 'BWA', 'BOTSWANA');
INSERT INTO `geo_country_code` VALUES (74, 'BV', 'BVT', 'BOUVET ISLAND');
INSERT INTO `geo_country_code` VALUES (76, 'BR', 'BRA', 'BRAZIL');
INSERT INTO `geo_country_code` VALUES (84, 'BZ', 'BLZ', 'BELIZE');
INSERT INTO `geo_country_code` VALUES (86, 'IO', 'IOT', 'BRITISH INDIAN OCEAN TERRITORY');
INSERT INTO `geo_country_code` VALUES (90, 'SB', 'SLB', 'SOLOMON ISLANDS ');
INSERT INTO `geo_country_code` VALUES (92, 'VG', 'VGB', 'VIRGIN ISLANDS (BRITISH)');
INSERT INTO `geo_country_code` VALUES (96, 'BN', 'BRN', 'BRUNEI DARUSSALAM');
INSERT INTO `geo_country_code` VALUES (100, 'BG', 'BGR', 'BULGARIA');
INSERT INTO `geo_country_code` VALUES (104, 'MM', 'MMR', 'MYANMAR ');
INSERT INTO `geo_country_code` VALUES (108, 'BI', 'BDI', 'BURUNDI');
INSERT INTO `geo_country_code` VALUES (112, 'BY', 'BLR', 'BELARUS');
INSERT INTO `geo_country_code` VALUES (116, 'KH', 'KHM', 'CAMBODIA');
INSERT INTO `geo_country_code` VALUES (120, 'CM', 'CMR', 'CAMEROON');
INSERT INTO `geo_country_code` VALUES (124, 'CA', 'CAN', 'CANADA');
INSERT INTO `geo_country_code` VALUES (132, 'CV', 'CPV', 'CAPE VERDE');
INSERT INTO `geo_country_code` VALUES (136, 'KY', 'CYM', 'CAYMAN ISLANDS');
INSERT INTO `geo_country_code` VALUES (140, 'CF', 'CAF', 'CENTRAL AFRICAN REPUBLIC');
INSERT INTO `geo_country_code` VALUES (144, 'LK', 'LKA', 'SRI LANKA ');
INSERT INTO `geo_country_code` VALUES (148, 'TD', 'TCD', 'CHAD');
INSERT INTO `geo_country_code` VALUES (152, 'CL', 'CHL', 'CHILE ');
INSERT INTO `geo_country_code` VALUES (156, 'CN', 'CHN', 'CHINA ');
INSERT INTO `geo_country_code` VALUES (158, 'TW', 'TWN', 'TAIWAN');
INSERT INTO `geo_country_code` VALUES (162, 'CX', 'CXR', 'CHRISTMAS ISLAND');
INSERT INTO `geo_country_code` VALUES (166, 'CC', 'CCK', 'COCOS (KEELING) ISLANDS ');
INSERT INTO `geo_country_code` VALUES (170, 'CO', 'COL', 'COLOMBIA');
INSERT INTO `geo_country_code` VALUES (174, 'KM', 'COM', 'COMOROS ');
INSERT INTO `geo_country_code` VALUES (175, 'YT', 'MYT', 'MAYOTTE ');
INSERT INTO `geo_country_code` VALUES (178, 'CG', 'COG', 'CONGO, Republic of');
INSERT INTO `geo_country_code` VALUES (180, 'CD', 'COD', 'CONGO, Democratic Republic of (was Zaire) ');
INSERT INTO `geo_country_code` VALUES (184, 'CK', 'COK', 'COOK ISLANDS');
INSERT INTO `geo_country_code` VALUES (188, 'CR', 'CRI', 'COSTA RICA');
INSERT INTO `geo_country_code` VALUES (191, 'HR', 'HRV', 'CROATIA (local name: Hrvatska)');
INSERT INTO `geo_country_code` VALUES (192, 'CU', 'CUB', 'CUBA');
INSERT INTO `geo_country_code` VALUES (196, 'CY', 'CYP', 'CYPRUS');
INSERT INTO `geo_country_code` VALUES (203, 'CZ', 'CZE', 'CZECH REPUBLIC');
INSERT INTO `geo_country_code` VALUES (204, 'BJ', 'BEN', 'BENIN');
INSERT INTO `geo_country_code` VALUES (208, 'DK', 'DNK', 'DENMARK ');
INSERT INTO `geo_country_code` VALUES (212, 'DM', 'DMA', 'DOMINICA');
INSERT INTO `geo_country_code` VALUES (214, 'DO', 'DOM', 'DOMINICAN REPUBLIC');
INSERT INTO `geo_country_code` VALUES (218, 'EC', 'ECU', 'ECUADOR ');
INSERT INTO `geo_country_code` VALUES (222, 'SV', 'SLV', 'EL SALVADOR ');
INSERT INTO `geo_country_code` VALUES (226, 'GQ', 'GNQ', 'EQUATORIAL GUINEA ');
INSERT INTO `geo_country_code` VALUES (231, 'ET', 'ETH', 'ETHIOPIA');
INSERT INTO `geo_country_code` VALUES (232, 'ER', 'ERI', 'ERITREA ');
INSERT INTO `geo_country_code` VALUES (233, 'EE', 'EST', 'ESTONIA ');
INSERT INTO `geo_country_code` VALUES (234, 'FO', 'FRO', 'FAROE ISLANDS ');
INSERT INTO `geo_country_code` VALUES (238, 'FK', 'FLK', 'FALKLAND ISLANDS (MALVINAS) ');
INSERT INTO `geo_country_code` VALUES (239, 'GS', 'SGS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS');
INSERT INTO `geo_country_code` VALUES (242, 'FJ', 'FJI', 'FIJI');
INSERT INTO `geo_country_code` VALUES (246, 'FI', 'FIN', 'FINLAND ');
INSERT INTO `geo_country_code` VALUES (248, 'AX', 'ALA', 'AALAND ISLANDS');
INSERT INTO `geo_country_code` VALUES (250, 'FR', 'FRA', 'FRANCE');
INSERT INTO `geo_country_code` VALUES (254, 'GF', 'GUF', 'FRENCH GUIANA ');
INSERT INTO `geo_country_code` VALUES (258, 'PF', 'PYF', 'FRENCH POLYNESIA');
INSERT INTO `geo_country_code` VALUES (260, 'TF', 'ATF', 'FRENCH SOUTHERN TERRITORIES ');
INSERT INTO `geo_country_code` VALUES (262, 'DJ', 'DJI', 'DJIBOUTI');
INSERT INTO `geo_country_code` VALUES (266, 'GA', 'GAB', 'GABON ');
INSERT INTO `geo_country_code` VALUES (268, 'GE', 'GEO', 'GEORGIA ');
INSERT INTO `geo_country_code` VALUES (270, 'GM', 'GMB', 'GAMBIA');
INSERT INTO `geo_country_code` VALUES (275, 'PS', 'PSE', 'PALESTINIAN TERRITORY, Occupied ');
INSERT INTO `geo_country_code` VALUES (276, 'DE', 'DEU', 'GERMANY ');
INSERT INTO `geo_country_code` VALUES (288, 'GH', 'GHA', 'GHANA ');
INSERT INTO `geo_country_code` VALUES (292, 'GI', 'GIB', 'GIBRALTAR ');
INSERT INTO `geo_country_code` VALUES (296, 'KI', 'KIR', 'KIRIBATI');
INSERT INTO `geo_country_code` VALUES (300, 'GR', 'GRC', 'GREECE');
INSERT INTO `geo_country_code` VALUES (304, 'GL', 'GRL', 'GREENLAND ');
INSERT INTO `geo_country_code` VALUES (308, 'GD', 'GRD', 'GRENADA ');
INSERT INTO `geo_country_code` VALUES (312, 'GP', 'GLP', 'GUADELOUPE');
INSERT INTO `geo_country_code` VALUES (316, 'GU', 'GUM', 'GUAM');
INSERT INTO `geo_country_code` VALUES (320, 'GT', 'GTM', 'GUATEMALA ');
INSERT INTO `geo_country_code` VALUES (324, 'GN', 'GIN', 'GUINEA');
INSERT INTO `geo_country_code` VALUES (328, 'GY', 'GUY', 'GUYANA');
INSERT INTO `geo_country_code` VALUES (332, 'HT', 'HTI', 'HAITI ');
INSERT INTO `geo_country_code` VALUES (334, 'HM', 'HMD', 'HEARD AND MC DONALD ISLANDS ');
INSERT INTO `geo_country_code` VALUES (336, 'VA', 'VAT', 'VATICAN CITY STATE (HOLY SEE) ');
INSERT INTO `geo_country_code` VALUES (340, 'HN', 'HND', 'HONDURAS');
INSERT INTO `geo_country_code` VALUES (344, 'HK', 'HKG', 'HONG KONG ');
INSERT INTO `geo_country_code` VALUES (348, 'HU', 'HUN', 'HUNGARY ');
INSERT INTO `geo_country_code` VALUES (352, 'IS', 'ISL', 'ICELAND ');
INSERT INTO `geo_country_code` VALUES (356, 'IN', 'IND', 'INDIA ');
INSERT INTO `geo_country_code` VALUES (360, 'ID', 'IDN', 'INDONESIA ');
INSERT INTO `geo_country_code` VALUES (364, 'IR', 'IRN', 'IRAN (ISLAMIC REPUBLIC OF)');
INSERT INTO `geo_country_code` VALUES (368, 'IQ', 'IRQ', 'IRAQ');
INSERT INTO `geo_country_code` VALUES (372, 'IE', 'IRL', 'IRELAND ');
INSERT INTO `geo_country_code` VALUES (376, 'IL', 'ISR', 'ISRAEL');
INSERT INTO `geo_country_code` VALUES (380, 'IT', 'ITA', 'ITALY ');
INSERT INTO `geo_country_code` VALUES (384, 'CI', 'CIV', 'COTE D\'IVOIRE ');
INSERT INTO `geo_country_code` VALUES (388, 'JM', 'JAM', 'JAMAICA ');
INSERT INTO `geo_country_code` VALUES (392, 'JP', 'JPN', 'JAPAN ');
INSERT INTO `geo_country_code` VALUES (398, 'KZ', 'KAZ', 'KAZAKHSTAN');
INSERT INTO `geo_country_code` VALUES (400, 'JO', 'JOR', 'JORDAN');
INSERT INTO `geo_country_code` VALUES (404, 'KE', 'KEN', 'KENYA ');
INSERT INTO `geo_country_code` VALUES (408, 'KP', 'PRK', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF');
INSERT INTO `geo_country_code` VALUES (410, 'KR', 'KOR', 'KOREA, REPUBLIC OF');
INSERT INTO `geo_country_code` VALUES (414, 'KW', 'KWT', 'KUWAIT');
INSERT INTO `geo_country_code` VALUES (417, 'KG', 'KGZ', 'KYRGYZSTAN');
INSERT INTO `geo_country_code` VALUES (418, 'LA', 'LAO', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC');
INSERT INTO `geo_country_code` VALUES (422, 'LB', 'LBN', 'LEBANON ');
INSERT INTO `geo_country_code` VALUES (426, 'LS', 'LSO', 'LESOTHO ');
INSERT INTO `geo_country_code` VALUES (428, 'LV', 'LVA', 'LATVIA');
INSERT INTO `geo_country_code` VALUES (430, 'LR', 'LBR', 'LIBERIA ');
INSERT INTO `geo_country_code` VALUES (434, 'LY', 'LBY', 'LIBYAN ARAB JAMAHIRIYA');
INSERT INTO `geo_country_code` VALUES (438, 'LI', 'LIE', 'LIECHTENSTEIN ');
INSERT INTO `geo_country_code` VALUES (440, 'LT', 'LTU', 'LITHUANIA ');
INSERT INTO `geo_country_code` VALUES (442, 'LU', 'LUX', 'LUXEMBOURG');
INSERT INTO `geo_country_code` VALUES (446, 'MO', 'MAC', 'MACAU ');
INSERT INTO `geo_country_code` VALUES (450, 'MG', 'MDG', 'MADAGASCAR');
INSERT INTO `geo_country_code` VALUES (454, 'MW', 'MWI', 'MALAWI');
INSERT INTO `geo_country_code` VALUES (458, 'MY', 'MYS', 'MALAYSIA');
INSERT INTO `geo_country_code` VALUES (462, 'MV', 'MDV', 'MALDIVES');
INSERT INTO `geo_country_code` VALUES (466, 'ML', 'MLI', 'MALI');
INSERT INTO `geo_country_code` VALUES (470, 'MT', 'MLT', 'MALTA ');
INSERT INTO `geo_country_code` VALUES (474, 'MQ', 'MTQ', 'MARTINIQUE');
INSERT INTO `geo_country_code` VALUES (478, 'MR', 'MRT', 'MAURITANIA');
INSERT INTO `geo_country_code` VALUES (480, 'MU', 'MUS', 'MAURITIUS ');
INSERT INTO `geo_country_code` VALUES (484, 'MX', 'MEX', 'MEXICO');
INSERT INTO `geo_country_code` VALUES (492, 'MC', 'MCO', 'MONACO');
INSERT INTO `geo_country_code` VALUES (496, 'MN', 'MNG', 'MONGOLIA');
INSERT INTO `geo_country_code` VALUES (498, 'MD', 'MDA', 'MOLDOVA, REPUBLIC OF');
INSERT INTO `geo_country_code` VALUES (500, 'MS', 'MSR', 'MONTSERRAT');
INSERT INTO `geo_country_code` VALUES (504, 'MA', 'MAR', 'MOROCCO ');
INSERT INTO `geo_country_code` VALUES (508, 'MZ', 'MOZ', 'MOZAMBIQUE');
INSERT INTO `geo_country_code` VALUES (512, 'OM', 'OMN', 'OMAN');
INSERT INTO `geo_country_code` VALUES (516, 'NA', 'NAM', 'NAMIBIA ');
INSERT INTO `geo_country_code` VALUES (520, 'NR', 'NRU', 'NAURU ');
INSERT INTO `geo_country_code` VALUES (524, 'NP', 'NPL', 'NEPAL ');
INSERT INTO `geo_country_code` VALUES (528, 'NL', 'NLD', 'NETHERLANDS ');
INSERT INTO `geo_country_code` VALUES (530, 'AN', 'ANT', 'NETHERLANDS ANTILLES');
INSERT INTO `geo_country_code` VALUES (533, 'AW', 'ABW', 'ARUBA');
INSERT INTO `geo_country_code` VALUES (540, 'NC', 'NCL', 'NEW CALEDONIA ');
INSERT INTO `geo_country_code` VALUES (548, 'VU', 'VUT', 'VANUATU ');
INSERT INTO `geo_country_code` VALUES (554, 'NZ', 'NZL', 'NEW ZEALAND ');
INSERT INTO `geo_country_code` VALUES (558, 'NI', 'NIC', 'NICARAGUA ');
INSERT INTO `geo_country_code` VALUES (562, 'NE', 'NER', 'NIGER ');
INSERT INTO `geo_country_code` VALUES (566, 'NG', 'NGA', 'NIGERIA ');
INSERT INTO `geo_country_code` VALUES (570, 'NU', 'NIU', 'NIUE');
INSERT INTO `geo_country_code` VALUES (574, 'NF', 'NFK', 'NORFOLK ISLAND');
INSERT INTO `geo_country_code` VALUES (578, 'NO', 'NOR', 'NORWAY');
INSERT INTO `geo_country_code` VALUES (580, 'MP', 'MNP', 'NORTHERN MARIANA ISLANDS');
INSERT INTO `geo_country_code` VALUES (581, 'UM', 'UMI', 'UNITED STATES MINOR OUTLYING ISLANDS');
INSERT INTO `geo_country_code` VALUES (583, 'FM', 'FSM', 'MICRONESIA, FEDERATED STATES OF ');
INSERT INTO `geo_country_code` VALUES (584, 'MH', 'MHL', 'MARSHALL ISLANDS');
INSERT INTO `geo_country_code` VALUES (585, 'PW', 'PLW', 'PALAU ');
INSERT INTO `geo_country_code` VALUES (586, 'PK', 'PAK', 'PAKISTAN');
INSERT INTO `geo_country_code` VALUES (591, 'PA', 'PAN', 'PANAMA');
INSERT INTO `geo_country_code` VALUES (598, 'PG', 'PNG', 'PAPUA NEW GUINEA');
INSERT INTO `geo_country_code` VALUES (600, 'PY', 'PRY', 'PARAGUAY');
INSERT INTO `geo_country_code` VALUES (604, 'PE', 'PER', 'PERU');
INSERT INTO `geo_country_code` VALUES (608, 'PH', 'PHL', 'PHILIPPINES ');
INSERT INTO `geo_country_code` VALUES (612, 'PN', 'PCN', 'PITCAIRN');
INSERT INTO `geo_country_code` VALUES (616, 'PL', 'POL', 'POLAND');
INSERT INTO `geo_country_code` VALUES (620, 'PT', 'PRT', 'PORTUGAL');
INSERT INTO `geo_country_code` VALUES (624, 'GW', 'GNB', 'GUINEA-BISSAU ');
INSERT INTO `geo_country_code` VALUES (626, 'TL', 'TLS', 'TIMOR-LESTE ');
INSERT INTO `geo_country_code` VALUES (630, 'PR', 'PRI', 'PUERTO RICO ');
INSERT INTO `geo_country_code` VALUES (634, 'QA', 'QAT', 'QATAR ');
INSERT INTO `geo_country_code` VALUES (638, 'RE', 'REU', 'REUNION ');
INSERT INTO `geo_country_code` VALUES (642, 'RO', 'ROU', 'ROMANIA ');
INSERT INTO `geo_country_code` VALUES (643, 'RU', 'RUS', 'RUSSIAN FEDERATION');
INSERT INTO `geo_country_code` VALUES (646, 'RW', 'RWA', 'RWANDA');
INSERT INTO `geo_country_code` VALUES (654, 'SH', 'SHN', 'SAINT HELENA');
INSERT INTO `geo_country_code` VALUES (659, 'KN', 'KNA', 'SAINT KITTS AND NEVIS ');
INSERT INTO `geo_country_code` VALUES (660, 'AI', 'AIA', 'ANGUILLA');
INSERT INTO `geo_country_code` VALUES (662, 'LC', 'LCA', 'SAINT LUCIA ');
INSERT INTO `geo_country_code` VALUES (666, 'PM', 'SPM', 'SAINT PIERRE AND MIQUELON ');
INSERT INTO `geo_country_code` VALUES (670, 'VC', 'VCT', 'SAINT VINCENT AND THE GRENADINES');
INSERT INTO `geo_country_code` VALUES (674, 'SM', 'SMR', 'SAN MARINO');
INSERT INTO `geo_country_code` VALUES (678, 'ST', 'STP', 'SAO TOME AND PRINCIPE ');
INSERT INTO `geo_country_code` VALUES (682, 'SA', 'SAU', 'SAUDI ARABIA');
INSERT INTO `geo_country_code` VALUES (686, 'SN', 'SEN', 'SENEGAL ');
INSERT INTO `geo_country_code` VALUES (690, 'SC', 'SYC', 'SEYCHELLES');
INSERT INTO `geo_country_code` VALUES (694, 'SL', 'SLE', 'SIERRA LEONE');
INSERT INTO `geo_country_code` VALUES (702, 'SG', 'SGP', 'SINGAPORE ');
INSERT INTO `geo_country_code` VALUES (703, 'SK', 'SVK', 'SLOVAKIA');
INSERT INTO `geo_country_code` VALUES (704, 'VN', 'VNM', 'VIET NAM');
INSERT INTO `geo_country_code` VALUES (705, 'SI', 'SVN', 'SLOVENIA');
INSERT INTO `geo_country_code` VALUES (706, 'SO', 'SOM', 'SOMALIA ');
INSERT INTO `geo_country_code` VALUES (710, 'ZA', 'ZAF', 'SOUTH AFRICA');
INSERT INTO `geo_country_code` VALUES (716, 'ZW', 'ZWE', 'ZIMBABWE');
INSERT INTO `geo_country_code` VALUES (724, 'ES', 'ESP', 'SPAIN ');
INSERT INTO `geo_country_code` VALUES (732, 'EH', 'ESH', 'WESTERN SAHARA');
INSERT INTO `geo_country_code` VALUES (736, 'SD', 'SDN', 'SUDAN ');
INSERT INTO `geo_country_code` VALUES (740, 'SR', 'SUR', 'SURINAME');
INSERT INTO `geo_country_code` VALUES (744, 'SJ', 'SJM', 'SVALBARD AND JAN MAYEN ISLANDS');
INSERT INTO `geo_country_code` VALUES (748, 'SZ', 'SWZ', 'SWAZILAND ');
INSERT INTO `geo_country_code` VALUES (752, 'SE', 'SWE', 'SWEDEN');
INSERT INTO `geo_country_code` VALUES (756, 'CH', 'CHE', 'SWITZERLAND ');
INSERT INTO `geo_country_code` VALUES (760, 'SY', 'SYR', 'SYRIAN ARAB REPUBLIC');
INSERT INTO `geo_country_code` VALUES (762, 'TJ', 'TJK', 'TAJIKISTAN');
INSERT INTO `geo_country_code` VALUES (764, 'TH', 'THA', 'THAILAND');
INSERT INTO `geo_country_code` VALUES (768, 'TG', 'TGO', 'TOGO');
INSERT INTO `geo_country_code` VALUES (772, 'TK', 'TKL', 'TOKELAU ');
INSERT INTO `geo_country_code` VALUES (776, 'TO', 'TON', 'TONGA ');
INSERT INTO `geo_country_code` VALUES (780, 'TT', 'TTO', 'TRINIDAD AND TOBAGO ');
INSERT INTO `geo_country_code` VALUES (784, 'AE', 'ARE', 'UNITED ARAB EMIRATES');
INSERT INTO `geo_country_code` VALUES (788, 'TN', 'TUN', 'TUNISIA ');
INSERT INTO `geo_country_code` VALUES (792, 'TR', 'TUR', 'TURKEY');
INSERT INTO `geo_country_code` VALUES (795, 'TM', 'TKM', 'TURKMENISTAN');
INSERT INTO `geo_country_code` VALUES (796, 'TC', 'TCA', 'TURKS AND CAICOS ISLANDS');
INSERT INTO `geo_country_code` VALUES (798, 'TV', 'TUV', 'TUVALU');
INSERT INTO `geo_country_code` VALUES (800, 'UG', 'UGA', 'UGANDA');
INSERT INTO `geo_country_code` VALUES (804, 'UA', 'UKR', 'UKRAINE ');
INSERT INTO `geo_country_code` VALUES (807, 'MK', 'MKD', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF');
INSERT INTO `geo_country_code` VALUES (818, 'EG', 'EGY', 'EGYPT ');
INSERT INTO `geo_country_code` VALUES (826, 'GB', 'GBR', 'UNITED KINGDOM');
INSERT INTO `geo_country_code` VALUES (834, 'TZ', 'TZA', 'TANZANIA, UNITED REPUBLIC OF');
INSERT INTO `geo_country_code` VALUES (840, 'US', 'USA', 'UNITED STATES ');
INSERT INTO `geo_country_code` VALUES (850, 'VI', 'VIR', 'VIRGIN ISLANDS (U.S.) ');
INSERT INTO `geo_country_code` VALUES (854, 'BF', 'BFA', 'BURKINA FASO');
INSERT INTO `geo_country_code` VALUES (858, 'UY', 'URY', 'URUGUAY ');
INSERT INTO `geo_country_code` VALUES (860, 'UZ', 'UZB', 'UZBEKISTAN');
INSERT INTO `geo_country_code` VALUES (862, 'VE', 'VEN', 'VENEZUELA ');
INSERT INTO `geo_country_code` VALUES (876, 'WF', 'WLF', 'WALLIS AND FUTUNA ISLANDS ');
INSERT INTO `geo_country_code` VALUES (882, 'WS', 'WSM', 'SAMOA ');
INSERT INTO `geo_country_code` VALUES (887, 'YE', 'YEM', 'YEMEN ');
INSERT INTO `geo_country_code` VALUES (891, 'CS', 'SCG', 'SERBIA AND MONTENEGRO ');
INSERT INTO `geo_country_code` VALUES (894, 'ZM', 'ZMB', 'ZAMBIA');

-- ----------------------------
-- Table structure for geo_reject
-- ----------------------------
DROP TABLE IF EXISTS `geo_reject`;
CREATE TABLE `geo_reject`  (
  `rej_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rej_c_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rej_ip_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rej_last_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rej_chk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `rej_src` enum('w','g') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'w',
  PRIMARY KEY USING BTREE (`rej_ip`),
  INDEX `idx_c_code` USING BTREE(`rej_c_code`),
  INDEX `idx_date` USING BTREE(`rej_last_date`),
  INDEX `idx_chk` USING BTREE(`rej_chk`),
  INDEX `rej_src` USING BTREE(`rej_src`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of geo_reject
-- ----------------------------
INSERT INTO `geo_reject` VALUES ('', '', 91, '2013-04-09 08:14:26', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('101.109.40.146', 'TH', 5, '2013-02-21 09:27:59', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('101.164.17.133', 'AU', 12, '2013-02-21 09:41:25', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('101.165.112.83', 'AU', 4, '2013-02-21 09:25:24', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.11.51.194', '', 2, '2013-02-21 07:32:10', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.20.192.212', '', 2, '2013-02-21 07:37:00', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.20.193.205', '', 1, '2013-02-21 07:39:05', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.20.193.206', '', 1, '2013-02-21 07:41:49', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.20.193.207', '', 4, '2013-02-21 09:35:13', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.246.245.134', '', 14, '2013-02-21 15:45:58', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.246.246.190', '', 16, '2013-02-21 12:41:39', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('103.30.7.64', '', 3, '2013-02-21 08:37:52', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('106.177.160.176', 'JP', 12, '2013-02-21 08:30:13', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('107.193.96.201', 'US', 5, '2013-02-21 07:58:26', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('107.204.174.187', 'US', 16, '2013-02-21 09:30:44', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('108.13.225.230', 'US', 8, '2013-02-21 07:51:47', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('108.80.149.72', 'US', 5, '2013-02-21 08:54:59', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('110.169.251.46', 'TH', 2, '2013-02-21 09:46:33', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('110.20.204.144', 'AU', 9, '2015-07-27 08:46:13', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('110.32.206.225', 'AU', 1, '2013-02-21 08:55:20', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('110.34.234.155', 'TH', 1, '2013-02-21 07:20:43', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('111.171.157.103', 'JP', 2, '2013-02-21 09:21:03', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('111.232.112.215', 'JP', 10, '2013-02-21 07:33:15', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('112.79.42.24', 'IN', 2, '2013-02-21 09:35:25', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.161.96.160', 'VN', 5, '2013-04-04 07:59:18', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.120', 'CN', 351, '2013-04-16 11:04:17', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.121', 'CN', 7, '2013-04-11 10:29:35', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.122', 'CN', 20, '2013-04-15 15:35:32', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.123', 'CN', 33, '2013-04-17 18:16:25', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.124', 'CN', 18, '2013-04-16 17:49:44', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.140', 'CN', 56, '2013-04-17 15:42:35', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.163', 'CN', 131, '2013-04-11 13:37:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.174', 'CN', 11, '2013-04-10 10:23:01', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.192', 'CN', 128, '2013-04-16 04:38:16', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.196', 'CN', 86, '2013-04-14 13:06:27', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.216', 'CN', 110, '2013-04-14 09:44:28', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.71', 'CN', 26, '2013-04-16 09:55:07', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.72', 'CN', 103, '2013-04-17 15:09:56', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('113.196.70.73', 'CN', 116, '2013-04-17 09:02:06', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('114.156.221.177', 'JP', 1, '2013-02-21 09:53:00', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('114.182.3.144', 'JP', 1, '2013-02-21 07:55:53', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('114.182.3.180', 'JP', 6, '2013-02-21 08:03:04', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('114.188.138.94', 'JP', 11, '2013-02-21 07:39:49', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('114.48.180.24', 'JP', 10, '2013-02-21 08:23:21', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('115.132.16.115', 'MY', 8, '2013-02-21 09:44:00', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('115.135.99.205', 'MY', 9, '2013-02-21 08:14:35', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('115.176.26.138', 'JP', 1, '2013-02-21 09:44:56', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('115.252.180.67', 'IN', 7, '2013-02-21 09:47:06', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('115.30.37.8', 'AU', 11, '2013-02-21 08:57:20', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('115.42.235.162', 'SG', 39, '2013-06-12 11:46:41', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('115.66.233.130', 'SG', 17, '2013-02-21 09:52:30', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('116.12.204.156', 'SG', 7, '2013-02-20 07:34:30', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('116.88.82.181', 'SG', 13, '2013-02-21 09:23:07', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('116.88.82.48', 'SG', 3, '2013-02-21 09:48:32', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('117.55.68.47', 'JP', 1, '2013-02-21 09:19:58', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.100.32.221', 'MY', 1, '2013-02-21 08:59:28', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.100.87.189', 'MY', 14, '2013-02-21 09:47:10', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.169.173.108', 'A1', 3, '2013-05-05 07:42:58', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.208.243.21', 'AU', 1, '2013-02-21 09:02:35', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.152', 'SG', 37, '2013-04-21 11:32:37', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.156', 'SG', 28, '2013-05-01 11:02:53', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.158', 'SG', 59, '2013-06-28 04:07:23', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.20', 'SG', 1, '2013-05-14 08:37:38', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.213', 'SG', 73, '2013-05-09 09:14:35', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.221', 'SG', 8, '2013-04-23 03:32:07', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.43', 'SG', 26, '2013-04-28 05:09:02', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.44', 'SG', 14, '2013-05-04 12:46:51', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.50', 'SG', 14, '2013-05-30 12:20:13', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('118.232.170.77', 'SG', 16, '2013-06-28 21:54:32', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('119.238.176.194', 'JP', 3, '2013-02-21 07:17:39', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('119.74.170.107', 'SG', 7, '2013-02-21 08:18:47', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('119.74.208.15', 'SG', 3, '2013-02-21 09:38:08', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('119.81.35.147', 'SG', 2, '2013-04-04 11:39:44', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('12.227.116.209', 'US', 12, '2013-02-21 08:56:59', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('121.217.196.221', 'AU', 5, '2013-02-21 09:44:53', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('121.222.192.176', 'AU', 13, '2013-02-21 09:32:09', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('121.7.169.93', 'SG', 6, '2013-02-21 09:17:14', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('121.7.33.66', 'SG', 25, '2013-02-21 09:44:31', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('122.147.142.47', 'FR', 22, '2013-04-16 08:45:05', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('122.171.22.239', 'IN', 2, '2013-02-21 09:01:04', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('122.178.195.137', 'IN', 8, '2013-02-21 09:29:22', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('123.243.151.246', 'AU', 4, '2013-02-21 08:41:17', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('124.120.223.168', 'TH', 8, '2013-02-21 08:00:24', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('124.13.0.144', 'MY', 8, '2013-02-21 08:18:18', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('124.24.199.199', 'JP', 20, '2013-02-21 09:08:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('124.82.65.18', 'MY', 2, '2013-02-21 08:11:56', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('126.11.214.96', 'JP', 5, '2013-02-21 08:17:42', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('126.13.205.170', 'JP', 2, '2013-02-21 07:42:23', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('126.71.72.103', 'JP', 1, '2013-02-21 09:07:38', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('126.71.78.53', 'JP', 5, '2013-02-21 09:05:34', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('126.71.93.107', 'JP', 2, '2013-02-21 09:16:25', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('134.169.174.4', 'DE', 18, '2013-02-21 08:43:04', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('134.71.147.84', 'US', 5, '2013-02-21 07:35:44', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('135.0.34.229', 'US', 9, '2013-02-21 07:17:42', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('137.132.212.52', 'SG', 8, '2013-02-21 08:03:34', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('137.132.228.5', 'SG', 10, '2013-02-21 08:51:01', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('14.192.64.38', 'MY', 8, '2013-02-21 09:30:54', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('14.200.180.160', 'AU', 11, '2013-02-21 09:16:08', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('142.129.89.112', '', 15, '2013-02-21 09:03:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('142.91.217.171', 'CA', 4, '2013-02-21 09:45:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('153.185.47.102', 'JP', 8, '2013-02-21 09:47:46', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('154.20.218.170', 'CA', 3, '2013-02-21 07:45:23', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('158.255.208.10', 'US', 3, '2013-02-21 09:45:52', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('161.64.141.157', 'CN', 2, '2013-04-24 17:03:52', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('161.64.141.55', 'CN', 5, '2013-04-25 07:27:50', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('169.235.99.121', 'US', 2, '2013-02-21 08:31:44', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('172.16.5.6', '', 3, '2015-08-13 15:02:26', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('173.252.209.100', 'US', 1, '2013-02-21 07:54:47', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('173.51.75.11', 'US', 11, '2013-02-21 09:43:01', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('174.139.186.157', 'US', 4, '2013-02-21 09:15:54', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('174.139.186.158', 'US', 2, '2013-02-21 09:05:22', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('175.139.187.193', 'MY', 4, '2013-02-21 08:35:29', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('175.156.113.218', 'SG', 8, '2013-02-21 09:40:33', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('175.156.131.110', 'SG', 2, '2013-02-21 08:33:51', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('175.156.165.178', 'SG', 7, '2013-02-21 07:40:24', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('176.67.81.193', 'A1', 4, '2013-05-13 16:05:51', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('176.67.81.241', 'A1', 37, '2013-05-17 03:44:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.12.112.15', 'JP', 3, '2013-02-21 08:02:45', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.183.251.147', 'TH', 1, '2013-02-21 08:48:50', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.218.208.31', 'AU', 12, '2013-04-04 07:23:52', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.218.208.4', 'AU', 3, '2013-04-13 18:23:53', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.218.208.8', 'AU', 5, '2013-04-11 09:08:14', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.218.209.108', 'AU', 20, '2013-06-17 05:19:26', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.218.209.172', 'AU', 7, '2013-04-07 15:55:34', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.218.209.36', 'AU', 25, '2013-04-28 08:03:10', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.47.247.106', 'JP', 26, '2013-02-21 09:07:05', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('180.63.77.206', 'JP', 4, '2013-02-21 08:53:59', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('182.237.0.43', 'AE', 141, '2013-06-06 11:51:37', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('182.237.0.89', 'AE', 310, '2013-04-22 02:33:55', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('182.55.199.204', 'SG', 6, '2013-02-21 08:05:13', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('184.171.34.56', 'US', 2, '2013-02-21 09:22:41', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('184.22.223.125', 'US', 2, '2013-02-21 07:09:24', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('184.58.22.145', 'US', 7, '2013-02-21 09:15:58', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('184.98.153.243', 'US', 4, '2013-02-21 09:00:57', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('192.161.92.7', '', 5, '2013-02-21 09:00:22', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('192.168.1.160', '', 2, '2015-06-29 13:11:42', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('198.148.116.54', 'US', 2, '2013-02-21 07:06:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('198.55.101.200', 'US', 2, '2013-02-23 12:19:57', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('198.55.102.234', '', 2, '2013-02-21 09:41:43', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('198.84.222.220', 'US', 2, '2013-02-21 07:56:20', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('199.101.117.11', '', 12, '2013-02-21 09:25:54', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('199.101.117.163', '', 14, '2013-02-21 09:50:53', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('199.119.202.117', 'US', 3, '2013-02-21 09:37:44', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('199.255.209.163', 'A1', 1, '2013-02-21 09:00:35', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('199.255.210.79', 'A1', 1, '2013-02-21 09:36:48', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('199.255.213.107', 'A1', 1, '2013-02-21 07:59:49', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('202.83.101.31', 'SG', 4, '2013-02-21 09:06:56', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('207.161.75.155', 'CA', 7, '2013-02-21 09:00:02', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('207.237.46.254', 'US', 7, '2013-02-21 09:09:07', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('207.237.59.230', 'US', 14, '2013-02-21 08:55:06', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('210.175.52.93', 'JP', 4, '2013-02-21 09:52:11', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('210.186.229.128', 'MY', 2, '2013-02-21 08:42:41', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('210.186.230.232', 'MY', 4, '2013-02-21 07:25:39', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('210.89.224.55', 'JP', 2, '2013-02-21 09:26:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('216.174.135.133', 'CA', 22, '2013-02-21 08:34:31', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('216.58.28.29', 'CA', 7, '2013-02-21 08:07:28', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('218.111.10.218', 'MY', 5, '2013-02-21 09:43:16', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('218.212.125.90', 'SG', 9, '2013-02-21 09:07:11', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('218.212.171.53', 'SG', 14, '2013-02-21 09:21:37', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('218.212.212.179', 'SG', 13, '2013-02-21 07:54:37', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('218.212.52.64', 'SG', 3, '2013-02-21 07:50:41', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('218.212.88.140', 'SG', 56, '2013-02-21 09:24:43', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('218.228.244.219', 'JP', 3, '2013-02-21 08:45:06', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('219.134.213.238', 'CN', 3, '2013-04-09 07:25:58', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('219.74.198.112', 'SG', 5, '2013-02-21 07:18:15', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('219.92.248.28', 'MY', 2, '2013-02-21 09:49:14', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('220.146.65.116', 'JP', 16, '2013-02-21 09:51:14', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('222.164.182.42', 'SG', 1, '2013-02-21 09:53:35', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('222.164.243.63', 'SG', 9, '2013-02-21 08:38:46', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('222.164.70.165', 'SG', 9, '2013-02-21 09:33:01', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('222.165.8.31', 'SG', 5, '2013-02-21 09:37:50', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('24.171.137.116', 'US', 1, '2013-02-21 07:33:51', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('24.255.213.40', 'US', 8, '2013-02-21 08:45:36', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('24.84.47.154', 'CA', 2, '2013-02-21 08:06:55', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('27.100.17.150', 'AU', 3, '2013-02-22 08:17:01', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('27.253.46.23', 'AU', 2, '2013-02-21 09:36:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('27.33.44.88', 'AU', 1, '2013-02-21 07:33:15', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('31.126.75.195', 'GB', 8, '2013-02-21 09:46:34', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('31.127.39.2', 'GB', 3, '2013-02-21 07:45:06', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('36.52.200.64', 'JP', 1, '2013-02-21 07:16:10', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('42.61.145.108', 'SG', 3, '2013-02-21 07:52:04', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('43.224.212.170', 'JP', 6, '2015-07-26 11:44:22', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('43.224.212.171', 'JP', 24, '2015-07-27 10:17:27', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('43.224.213.161', 'JP', 3, '2015-07-27 07:04:59', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('49.212.48.199', 'JP', 1, '2013-02-21 08:20:55', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('50.148.141.187', 'US', 3, '2013-02-21 08:03:43', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('50.31.253.185', 'US', 5, '2013-02-21 08:55:54', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('50.31.254.25', 'US', 3, '2013-02-21 07:18:29', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('58.0.121.24', 'JP', 7, '2013-02-21 09:27:05', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('58.146.150.86', 'SG', 18, '2013-02-21 09:50:16', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('58.7.112.97', 'AU', 12, '2013-02-21 07:18:18', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('58.70.46.47', 'JP', 3, '2013-02-21 08:00:58', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('58.71.169.32', 'MY', 24, '2013-02-21 09:22:12', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('59.146.125.78', 'JP', 6, '2013-02-21 09:53:24', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('59.189.11.106', 'SG', 8, '2013-02-21 09:49:52', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('59.84.205.188', 'JP', 15, '2013-02-21 08:56:19', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('60.240.169.73', 'AU', 7, '2013-02-21 08:53:22', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('60.50.54.147', 'MY', 18, '2013-02-21 09:28:20', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('60.53.164.147', 'MY', 1, '2013-02-21 07:48:31', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('61.154.152.5', 'CN', 1, '2015-07-09 10:32:13', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('61.255.140.83', 'KR', 2, '2013-02-16 04:18:44', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('61.255.140.85', 'KR', 1, '2013-02-16 04:21:59', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('61.92.248.130', 'AU', 14, '2013-04-14 13:04:52', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('63.221.138.114', 'US', 3, '2013-02-21 07:46:32', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('65.189.240.28', 'US', 3, '2013-02-21 07:43:54', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('66.212.31.26', 'US', 2, '2013-02-21 07:19:28', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('67.187.7.177', 'US', 8, '2013-02-21 08:56:11', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('67.198.134.242', 'US', 1, '2013-02-21 08:15:17', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('68.108.172.233', 'US', 2, '2013-02-21 08:15:43', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('68.194.52.91', 'US', 1, '2013-02-21 07:57:48', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('68.224.22.197', 'US', 3, '2013-02-21 09:13:40', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('68.96.218.119', 'US', 6, '2013-02-21 08:06:58', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('69.133.15.192', 'US', 4, '2013-02-21 08:32:08', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('70.75.184.100', 'CA', 9, '2013-02-21 08:10:01', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('71.126.158.116', 'US', 4, '2013-02-21 07:43:55', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('71.198.1.112', 'US', 7, '2013-02-21 09:51:06', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('71.83.162.23', 'US', 4, '2013-02-21 07:41:47', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('71.84.255.237', 'US', 4, '2013-02-21 07:24:25', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('74.115.0.203', 'A1', 1, '2013-02-21 08:37:17', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('74.115.0.204', 'A1', 1, '2013-02-21 07:34:49', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('75.80.142.96', 'US', 2, '2013-02-21 07:34:11', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('75.82.193.39', 'US', 1, '2013-02-21 07:58:45', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('75.83.31.25', 'US', 2, '2013-02-21 07:41:22', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('78.192.52.9', 'FR', 6, '2013-02-21 08:23:20', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('80.193.170.77', 'GB', 16, '2013-02-21 09:10:17', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('84.203.69.170', 'IE', 15, '2013-02-21 08:55:07', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('96.44.165.112', 'US', 3, '2013-02-21 07:53:47', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('98.126.122.252', 'US', 1, '2013-02-21 07:52:18', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('98.126.171.74', 'US', 1, '2013-02-21 07:58:45', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('98.126.26.2', 'US', 5, '2013-02-21 09:15:10', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('98.154.39.15', 'US', 15, '2013-02-21 08:47:13', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('98.159.107.195', 'US', 5, '2013-02-21 09:37:11', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('99.237.73.184', 'CA', 10, '2013-02-21 09:23:15', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('99.245.7.21', 'CA', 1, '2013-02-21 08:08:20', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('99.37.31.138', 'US', 3, '2013-02-21 07:54:56', 'N', 'g');
INSERT INTO `geo_reject` VALUES ('99.46.221.58', 'US', 5, '2013-02-21 09:36:09', 'N', 'g');

-- ----------------------------
-- Table structure for gift_ticket_entry
-- ----------------------------
DROP TABLE IF EXISTS `gift_ticket_entry`;
CREATE TABLE `gift_ticket_entry`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gift_no` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_code` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_check` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `other_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `other_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `other_code` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `other_check` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`id`),
  INDEX `idx_buyer_id` USING BTREE(`buyer_id`),
  INDEX `idx_other_id` USING BTREE(`other_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gm_manifest_notuse
-- ----------------------------
DROP TABLE IF EXISTS `gm_manifest_notuse`;
CREATE TABLE `gm_manifest_notuse`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_bbs
-- ----------------------------
DROP TABLE IF EXISTS `guild_bbs`;
CREATE TABLE `guild_bbs`  (
  `gno` int(11) NOT NULL AUTO_INCREMENT,
  `bd_id` tinyint(4) NOT NULL DEFAULT 0,
  `empyn` tinyint(4) NOT NULL DEFAULT 0,
  `mgno` int(11) NOT NULL DEFAULT 0,
  `open` tinyint(1) NOT NULL DEFAULT 1,
  `main` tinyint(4) NOT NULL DEFAULT 0,
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `mod_date` int(11) NOT NULL DEFAULT 0,
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `body_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_id` int(11) NOT NULL DEFAULT 0,
  `reg_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `subject` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`gno`),
  UNIQUE INDEX `uk_bdid_empyn_gno` USING BTREE(`bd_id`, `empyn`, `gno`),
  UNIQUE INDEX `uk_bdid_empyn_mgno` USING BTREE(`bd_id`, `empyn`, `mgno`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_body
-- ----------------------------
DROP TABLE IF EXISTS `guild_body`;
CREATE TABLE `guild_body`  (
  `gno` int(11) NOT NULL DEFAULT 0,
  `body` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`gno`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_event
-- ----------------------------
DROP TABLE IF EXISTS `guild_event`;
CREATE TABLE `guild_event`  (
  `gno` int(11) NOT NULL DEFAULT 0,
  `stt_date` date NOT NULL DEFAULT '2021-11-19',
  `end_date` date NOT NULL DEFAULT '2021-11-19',
  `ann_date` date NOT NULL DEFAULT '2021-11-19',
  `page_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`gno`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_files
-- ----------------------------
DROP TABLE IF EXISTS `guild_files`;
CREATE TABLE `guild_files`  (
  `gno` int(11) NOT NULL DEFAULT 0,
  `gf_no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `file_server` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `file_location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`gno`, `gf_no`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_halloffame
-- ----------------------------
DROP TABLE IF EXISTS `guild_halloffame`;
CREATE TABLE `guild_halloffame`  (
  `fame_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `guild_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `file_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `open_flag` tinyint(4) NOT NULL DEFAULT 0,
  `main_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`fame_id`, `server_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_halloffame_html
-- ----------------------------
DROP TABLE IF EXISTS `guild_halloffame_html`;
CREATE TABLE `guild_halloffame_html`  (
  `fame_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `html` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`fame_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_info
-- ----------------------------
DROP TABLE IF EXISTS `guild_info`;
CREATE TABLE `guild_info`  (
  `guild_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `guild_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `master_id` int(11) NOT NULL DEFAULT 0,
  `master_no` int(11) NOT NULL DEFAULT 0,
  `master_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `guild_url` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `guild_icon` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `create_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `lev` int(11) NOT NULL DEFAULT 0,
  `ability` tinyint(4) NOT NULL DEFAULT 0,
  `expire_flag` tinyint(4) NOT NULL DEFAULT 0,
  `expire_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `member_secede_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `member_count` int(11) NOT NULL DEFAULT 0,
  `recommend_flag` tinyint(4) NOT NULL DEFAULT 0,
  `recommend_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `guild_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_point_acc` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_point_prev` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_war_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `final_entry` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `final_win` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `guild_icon_auth` tinyint(4) NOT NULL DEFAULT 0,
  `guild_exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`guild_id`),
  INDEX `idx_server_id` USING BTREE(`server_id`),
  INDEX `idx_guild_name` USING BTREE(`guild_name`),
  INDEX `idx_master_no` USING BTREE(`master_no`),
  INDEX `idx_master_name` USING BTREE(`master_name`),
  INDEX `idx_guild_rank` USING BTREE(`guild_rank`),
  INDEX `idx_guild_point_prev` USING BTREE(`guild_point_prev`),
  INDEX `idx_guild_point_acc` USING BTREE(`guild_point_acc`),
  INDEX `idx_member_count` USING BTREE(`member_count`),
  INDEX `idx_expire_flag` USING BTREE(`expire_flag`),
  INDEX `idx_guild_point` USING BTREE(`guild_point`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_introduce
-- ----------------------------
DROP TABLE IF EXISTS `guild_introduce`;
CREATE TABLE `guild_introduce`  (
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `introduce` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`guild_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member`  (
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nick_name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `grade` tinyint(4) NOT NULL DEFAULT 0,
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `grow_type` tinyint(4) NOT NULL DEFAULT 0,
  `lev` tinyint(4) NOT NULL DEFAULT 0,
  `age` tinyint(4) NOT NULL DEFAULT 0,
  `born_year` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apply_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `member_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `member_flag` tinyint(4) NOT NULL DEFAULT 0,
  `bbs_cnt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `last_visit_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `secede_type` tinyint(4) NOT NULL DEFAULT 0,
  `secede_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `member_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member_point_prev` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`guild_id`, `charac_no`),
  INDEX `idx_guild_id` USING BTREE(`guild_id`),
  INDEX `idx_charac_no` USING BTREE(`charac_no`),
  INDEX `idx_last_visit_time` USING BTREE(`last_visit_time`),
  INDEX `idx_apply_time` USING BTREE(`apply_time`),
  INDEX `idx_secede_type` USING BTREE(`secede_type`),
  INDEX `idx_secede_time` USING BTREE(`secede_time`),
  INDEX `idx_member_flag` USING BTREE(`member_flag`),
  INDEX `idx_m_id` USING BTREE(`m_id`),
  INDEX `idx_member_time` USING BTREE(`member_time`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_member_introduce
-- ----------------------------
DROP TABLE IF EXISTS `guild_member_introduce`;
CREATE TABLE `guild_member_introduce`  (
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `introduce` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`guild_id`, `charac_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_rank
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank`  (
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `guild_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `guild_Rank` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `guild_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_acc_point` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_visit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_acc_visit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_member` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `guild_acc_member` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `guild_avg_lev` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`server_id`, `guild_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_recommend
-- ----------------------------
DROP TABLE IF EXISTS `guild_recommend`;
CREATE TABLE `guild_recommend`  (
  `no` int(11) NOT NULL DEFAULT 0,
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `recommend_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`no`),
  INDEX `idx_guild_id` USING BTREE(`guild_id`),
  INDEX `idx_charac_no` USING BTREE(`charac_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_stat
-- ----------------------------
DROP TABLE IF EXISTS `guild_stat`;
CREATE TABLE `guild_stat`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `lev` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `create_no` int(11) NOT NULL DEFAULT 0,
  `acc_create_no` int(11) NOT NULL DEFAULT 0,
  `member_no` int(11) NOT NULL DEFAULT 0,
  `acc_member_no` int(11) NOT NULL DEFAULT 0,
  `avg_lev` float NOT NULL DEFAULT 0,
  `avg_master_lev` float NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `lev`, `server_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_stat_month
-- ----------------------------
DROP TABLE IF EXISTS `guild_stat_month`;
CREATE TABLE `guild_stat_month`  (
  `occ_date` date NOT NULL DEFAULT '2021-11-19',
  `lev` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `avg_guild_point` int(11) NOT NULL DEFAULT 0,
  `avg_guild_point_acc` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_date`, `lev`, `server_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_visit
-- ----------------------------
DROP TABLE IF EXISTS `guild_visit`;
CREATE TABLE `guild_visit`  (
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `total_visit` int(11) NOT NULL DEFAULT 0,
  `today_visit` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`guild_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for limit_create_character
-- ----------------------------
DROP TABLE IF EXISTS `limit_create_character`;
CREATE TABLE `limit_create_character`  (
  `m_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_access_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for limit_create_character_ip
-- ----------------------------
DROP TABLE IF EXISTS `limit_create_character_ip`;
CREATE TABLE `limit_create_character_ip`  (
  `ip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ip_str` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `last_access_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_access_mid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`ip`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for limited_shop_manager
-- ----------------------------
DROP TABLE IF EXISTS `limited_shop_manager`;
CREATE TABLE `limited_shop_manager`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `occ_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ipg_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cera_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gold_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `avatar_period_type` tinyint(4) NOT NULL DEFAULT -1,
  `total_cnt` int(11) NOT NULL DEFAULT 0,
  `sell_cnt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `restrict_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `end_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `real_end_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `npc_idx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cond_charac_job` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cond_lev_begin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cond_lev_end` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cond_acc_create_time_begin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cond_acc_create_time_end` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cond_cha_create_time_begin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cond_cha_create_time_end` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status_flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `range_section` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reason_etc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reason_stop` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pos_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY USING BTREE (`no`, `server_id`, `ipg_no`),
  INDEX `idx_occ_time` USING BTREE(`occ_time`),
  INDEX `idx_server_id` USING BTREE(`server_id`),
  INDEX `idx_restrict_no` USING BTREE(`restrict_no`),
  INDEX `idx_status_flag` USING BTREE(`status_flag`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for log_query_stat
-- ----------------------------
DROP TABLE IF EXISTS `log_query_stat`;
CREATE TABLE `log_query_stat`  (
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `q_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `gc_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `response_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`occ_time`, `q_id`, `gc_no`),
  INDEX `idx_q_id` USING BTREE(`q_id`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for m_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `m_withdraw`;
CREATE TABLE `m_withdraw`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_name` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `first_ssn` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `second_ssn` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passwd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT 0,
  `q_answer` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `w_type` smallint(6) NOT NULL DEFAULT 0,
  `w_cause` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `w_date` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_reg_date` USING BTREE(`reg_date`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for max_count
-- ----------------------------
DROP TABLE IF EXISTS `max_count`;
CREATE TABLE `max_count`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mc_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mc_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  INDEX `idx_mc_date` USING BTREE(`mc_date`),
  INDEX `idx_server_info` USING BTREE(`server_info`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for max_count_channel
-- ----------------------------
DROP TABLE IF EXISTS `max_count_channel`;
CREATE TABLE `max_count_channel`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gc_channeltype` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mc_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mc_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  INDEX `idx_mc_date` USING BTREE(`mc_date`),
  INDEX `idx_server_info` USING BTREE(`server_info`, `gc_channeltype`),
  INDEX `idx_gc_channeltype` USING BTREE(`gc_channeltype`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for max_count_pvp
-- ----------------------------
DROP TABLE IF EXISTS `max_count_pvp`;
CREATE TABLE `max_count_pvp`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mc_max` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mc_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  INDEX `idx_mc_date` USING BTREE(`mc_date`),
  INDEX `idx_server_info` USING BTREE(`server_info`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for max_count_v2
-- ----------------------------
DROP TABLE IF EXISTS `max_count_v2`;
CREATE TABLE `max_count_v2`  (
  `server_info` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `num_occupations_charscreen` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `num_occupations_seriaroom` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `num_login_per_min` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `num_logout_per_min` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mc_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  INDEX `mc_date` USING BTREE(`mc_date`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_abnomal
-- ----------------------------
DROP TABLE IF EXISTS `member_abnomal`;
CREATE TABLE `member_abnomal`  (
  `user_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `overlab_count` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`user_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_broadcast
-- ----------------------------
DROP TABLE IF EXISTS `member_broadcast`;
CREATE TABLE `member_broadcast`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `charac_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `start_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`event_id`, `m_id`, `server_id`, `charac_no`, `start_time`),
  UNIQUE INDEX `charac_name` USING BTREE(`charac_name`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_captcha_info
-- ----------------------------
DROP TABLE IF EXISTS `member_captcha_info`;
CREATE TABLE `member_captcha_info`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cert_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fail_count` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_handicap
-- ----------------------------
DROP TABLE IF EXISTS `member_handicap`;
CREATE TABLE `member_handicap`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `cap_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `server_id` tinyint(4) NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `handicap_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`event_id`, `cap_type`, `server_id`, `m_id`, `start_time`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_info
-- ----------------------------
DROP TABLE IF EXISTS `member_info`;
CREATE TABLE `member_info`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `first_ssn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `second_ssn` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT 0,
  `q_answer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `nickname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email_yn` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot` int(10) UNSIGNED NOT NULL DEFAULT 8,
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT 0,
  `hanmon_flag` tinyint(4) NOT NULL DEFAULT 0,
  `m_type` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_reg_date` USING BTREE(`reg_date`),
  INDEX `idx_ssn` USING BTREE(`first_ssn`, `second_ssn`),
  INDEX `idx_nick` USING BTREE(`nickname`),
  INDEX `idx_userid` USING BTREE(`user_id`),
  INDEX `idx_user_name` USING BTREE(`user_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_info_detail
-- ----------------------------
DROP TABLE IF EXISTS `member_info_detail`;
CREATE TABLE `member_info_detail`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `zipcode` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address_detail` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `occ_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_info_euckr
-- ----------------------------
DROP TABLE IF EXISTS `member_info_euckr`;
CREATE TABLE `member_info_euckr`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET euckr COLLATE euckr_korean_ci NULL DEFAULT NULL,
  `user_name` varchar(10) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `first_ssn` varchar(6) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `second_ssn` varchar(7) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `passwd` varchar(32) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(15) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `email` varchar(50) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT 0,
  `q_answer` varchar(30) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `nickname` varchar(16) CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT '',
  `email_yn` enum('y','n') CHARACTER SET euckr COLLATE euckr_korean_ci NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot` int(10) UNSIGNED NOT NULL DEFAULT 8,
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_reg_date` USING BTREE(`reg_date`),
  INDEX `idx_ssn` USING BTREE(`first_ssn`, `second_ssn`),
  INDEX `idx_nick` USING BTREE(`nickname`),
  INDEX `idx_userid` USING BTREE(`user_id`),
  INDEX `idx_user_name` USING BTREE(`user_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = euckr COLLATE = euckr_korean_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_info_mileage
-- ----------------------------
DROP TABLE IF EXISTS `member_info_mileage`;
CREATE TABLE `member_info_mileage`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `first_ssn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `second_ssn` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT 0,
  `q_answer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `nickname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email_yn` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot` int(10) UNSIGNED NOT NULL DEFAULT 8,
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT 0,
  `hanmon_flag` tinyint(4) NOT NULL DEFAULT 0,
  `mileage` int(11) NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_reg_date` USING BTREE(`reg_date`),
  INDEX `idx_ssn` USING BTREE(`first_ssn`, `second_ssn`),
  INDEX `idx_nick` USING BTREE(`nickname`),
  INDEX `idx_userid` USING BTREE(`user_id`),
  INDEX `idx_user_name` USING BTREE(`user_name`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_info_old
-- ----------------------------
DROP TABLE IF EXISTS `member_info_old`;
CREATE TABLE `member_info_old`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `first_ssn` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_ssn` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passwd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT 0,
  `q_answer` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `nickname` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email_yn` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_reg_date` USING BTREE(`reg_date`),
  INDEX `idx_ssn` USING BTREE(`first_ssn`, `second_ssn`),
  INDEX `idx_nick` USING BTREE(`nickname`),
  INDEX `idx_userid` USING BTREE(`user_id`),
  INDEX `idx_user_name` USING BTREE(`user_name`),
  INDEX `first_ssn` USING BTREE(`first_ssn`),
  INDEX `second_ssn` USING BTREE(`second_ssn`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_info_utf8
-- ----------------------------
DROP TABLE IF EXISTS `member_info_utf8`;
CREATE TABLE `member_info_utf8`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `first_ssn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `second_ssn` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `q_no` tinyint(4) NOT NULL DEFAULT 0,
  `q_answer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `updt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `nickname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email_yn` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'y',
  `ssn_check` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot` int(10) UNSIGNED NOT NULL DEFAULT 8,
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `hangame_flag` tinyint(4) NOT NULL DEFAULT 0,
  `hanmon_flag` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_reg_date` USING BTREE(`reg_date`),
  INDEX `idx_ssn` USING BTREE(`first_ssn`, `second_ssn`),
  INDEX `idx_nick` USING BTREE(`nickname`),
  INDEX `idx_userid` USING BTREE(`user_id`),
  INDEX `idx_user_name` USING BTREE(`user_name`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_join_info
-- ----------------------------
DROP TABLE IF EXISTS `member_join_info`;
CREATE TABLE `member_join_info`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `contry_code` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `login_time` int(11) NOT NULL DEFAULT 0,
  `error_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `game_use_history` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_ip` USING BTREE(`ip`),
  INDEX `idx_reg_date` USING BTREE(`reg_date`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_lioness
-- ----------------------------
DROP TABLE IF EXISTS `member_lioness`;
CREATE TABLE `member_lioness`  (
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_miles
-- ----------------------------
DROP TABLE IF EXISTS `member_miles`;
CREATE TABLE `member_miles`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `miles` int(11) NOT NULL DEFAULT 0,
  `daily_miles` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_mouse_sms
-- ----------------------------
DROP TABLE IF EXISTS `member_mouse_sms`;
CREATE TABLE `member_mouse_sms`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_passwd_mod
-- ----------------------------
DROP TABLE IF EXISTS `member_passwd_mod`;
CREATE TABLE `member_passwd_mod`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `first_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `last_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `cnt` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_premium_history
-- ----------------------------
DROP TABLE IF EXISTS `member_premium_history`;
CREATE TABLE `member_premium_history`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `pre_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `service_start` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `service_end` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`event_id`, `pre_type`, `m_id`, `service_start`),
  INDEX `idx_m_id` USING BTREE(`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_premium_notuse
-- ----------------------------
DROP TABLE IF EXISTS `member_premium_notuse`;
CREATE TABLE `member_premium_notuse`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `pre_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `service_start` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `service_end` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `server_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`event_id`, `pre_type`, `server_id`, `m_id`, `service_start`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_punish_hack
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_hack`;
CREATE TABLE `member_punish_hack`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `period` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `now_flag` tinyint(4) NOT NULL DEFAULT 0,
  `auto_flag` tinyint(4) NOT NULL DEFAULT 0,
  `reason` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hack_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_punish_hack_history
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_hack_history`;
CREATE TABLE `member_punish_hack_history`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `period` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `now_flag` tinyint(4) NOT NULL DEFAULT 0,
  `auto_flag` tinyint(4) NOT NULL DEFAULT 0,
  `reason` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  INDEX `idx_m_id` USING BTREE(`m_id`),
  INDEX `idx_occ_time` USING BTREE(`occ_time`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_punish_info
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info`;
CREATE TABLE `member_punish_info`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `punish_type` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `punish_value` int(11) NOT NULL DEFAULT 0,
  `apply_flag` tinyint(4) NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `admin_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`m_id`, `punish_type`),
  INDEX `idx1` USING BTREE(`occ_time`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_punish_info_history
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info_history`;
CREATE TABLE `member_punish_info_history`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `punish_type` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `punish_value` int(11) NOT NULL DEFAULT 0,
  `apply_flag` tinyint(4) NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `admin_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_kicked` tinyint(4) NULL DEFAULT NULL,
  `first_ssn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_ssn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`no`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_punish_info_history_2012
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info_history_2012`;
CREATE TABLE `member_punish_info_history_2012`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `punish_type` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `punish_value` int(11) NOT NULL DEFAULT 0,
  `apply_flag` tinyint(4) NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `admin_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_kicked` tinyint(4) NULL DEFAULT NULL,
  `first_ssn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_ssn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`no`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_punish_info_history_2013
-- ----------------------------
DROP TABLE IF EXISTS `member_punish_info_history_2013`;
CREATE TABLE `member_punish_info_history_2013`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL DEFAULT 0,
  `punish_type` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `punish_value` int(11) NOT NULL DEFAULT 0,
  `apply_flag` tinyint(4) NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `admin_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_kicked` tinyint(4) NULL DEFAULT NULL,
  `first_ssn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `second_ssn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`no`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for member_safe_ensure
-- ----------------------------
DROP TABLE IF EXISTS `member_safe_ensure`;
CREATE TABLE `member_safe_ensure`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `service_flag` tinyint(4) NOT NULL DEFAULT 0,
  `type1_flag` tinyint(4) NOT NULL DEFAULT 0,
  `type2_flag` tinyint(4) NOT NULL DEFAULT 0,
  `expire_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `settle_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  INDEX `idx_m_id` USING BTREE(`m_id`),
  INDEX `idx_mobile_no` USING BTREE(`mobile_no`),
  INDEX `idx_occ_time` USING BTREE(`occ_time`),
  INDEX `idx_expire_time` USING BTREE(`expire_time`),
  INDEX `idx_settle_id` USING BTREE(`settle_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_safe_ensure_history
-- ----------------------------
DROP TABLE IF EXISTS `member_safe_ensure_history`;
CREATE TABLE `member_safe_ensure_history`  (
  `mod_flag` tinyint(4) NOT NULL DEFAULT 0,
  `mod_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `mobile_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `service_flag` tinyint(4) NOT NULL DEFAULT 0,
  `type1_flag` tinyint(4) NOT NULL DEFAULT 0,
  `type2_flag` tinyint(4) NOT NULL DEFAULT 0,
  `expire_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `settle_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  INDEX `idx_m_id` USING BTREE(`m_id`),
  INDEX `idx_mobile_no` USING BTREE(`mobile_no`),
  INDEX `idx_occ_time` USING BTREE(`occ_time`),
  INDEX `idx_expire_time` USING BTREE(`expire_time`),
  INDEX `idx_mod_time` USING BTREE(`mod_time`),
  INDEX `idx_settle_id` USING BTREE(`settle_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_security_grade
-- ----------------------------
DROP TABLE IF EXISTS `member_security_grade`;
CREATE TABLE `member_security_grade`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `last_visit_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `pass_fail_cnt` int(11) NOT NULL DEFAULT 0,
  `last_vaccine_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `last_window_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `goblin_pass_mod` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `goblin_fail_cnt` int(11) NOT NULL DEFAULT 0,
  `security_card_reg` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `security_card_fail_cnt` int(11) NOT NULL DEFAULT 0,
  `m_opt_reg` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `pc_opt_reg` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `black_ip_try_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `linear_pass_fail_cnt` int(11) NOT NULL DEFAULT 0,
  `last_pass_fail_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_check_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `pass_modify_check` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `member_pc_reg` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `gatekeeper_otp_reg` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `goblin_validity_time` int(11) NOT NULL DEFAULT 0,
  `security_card_validity_time` int(11) NOT NULL DEFAULT 0,
  `validity_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cargopad_status` tinyint(4) NOT NULL DEFAULT 0,
  `cargopad_mod` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `cargopad_validity_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`),
  INDEX `idx_pass_check` USING BTREE(`last_pass_fail_time`, `linear_pass_fail_cnt`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for member_white_account
-- ----------------------------
DROP TABLE IF EXISTS `member_white_account`;
CREATE TABLE `member_white_account`  (
  `m_id` int(10) UNSIGNED NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for news_bbs
-- ----------------------------
DROP TABLE IF EXISTS `news_bbs`;
CREATE TABLE `news_bbs`  (
  `bbs_code` tinyint(4) NOT NULL DEFAULT 0,
  `emph_yn` tinyint(1) NOT NULL DEFAULT 0,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reg_date` int(11) NOT NULL DEFAULT 0,
  `html_yn` tinyint(1) NULL DEFAULT 0,
  `subject` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hits` smallint(6) NOT NULL DEFAULT 0,
  `prev_no` int(11) NOT NULL DEFAULT 0,
  `next_no` int(11) NOT NULL DEFAULT 0,
  `updt_date` int(11) NULL DEFAULT NULL,
  `use_yn` tinyint(1) NOT NULL DEFAULT 1,
  `file_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`bbs_code`, `emph_yn`, `no`),
  UNIQUE INDEX `uk_no` USING BTREE(`no`),
  INDEX `idx_prev` USING BTREE(`prev_no`),
  INDEX `idx_next` USING BTREE(`next_no`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `bbs_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `no` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `m_nickname` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `m_user_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `m_sex` enum('m','f') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'm',
  `title` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_day` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `view` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `recom` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `adorn` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `adorn_color1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `adorn_color2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `depth` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sequence` double UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type` enum('br','text','all') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'br',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ring` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sms` enum('y','n') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'n',
  INDEX `idx1` USING BTREE(`bbs_name`),
  INDEX `idx2` USING BTREE(`no`),
  INDEX `idx3` USING BTREE(`sequence`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for passwd_mod_entry
-- ----------------------------
DROP TABLE IF EXISTS `passwd_mod_entry`;
CREATE TABLE `passwd_mod_entry`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `occ_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pre_passwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`m_id`, `occ_time`),
  INDEX `idx_occ_time` USING BTREE(`occ_time`),
  INDEX `idx_ip` USING BTREE(`ip`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pswd_qstion
-- ----------------------------
DROP TABLE IF EXISTS `pswd_qstion`;
CREATE TABLE `pswd_qstion`  (
  `q_no` tinyint(4) NOT NULL DEFAULT 0,
  `q_text` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`q_no`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pswd_qstion_direct
-- ----------------------------
DROP TABLE IF EXISTS `pswd_qstion_direct`;
CREATE TABLE `pswd_qstion_direct`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `q_text` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pu_user_list
-- ----------------------------
DROP TABLE IF EXISTS `pu_user_list`;
CREATE TABLE `pu_user_list`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for slang_list
-- ----------------------------
DROP TABLE IF EXISTS `slang_list`;
CREATE TABLE `slang_list`  (
  `slang` varchar(153) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`slang`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slang_list
-- ----------------------------
INSERT INTO `slang_list` VALUES ('25公分不含頭');
INSERT INTO `slang_list` VALUES ('8591');
INSERT INTO `slang_list` VALUES ('ASSHOLE');
INSERT INTO `slang_list` VALUES ('Ass.Hole');
INSERT INTO `slang_list` VALUES ('Ass.hole');
INSERT INTO `slang_list` VALUES ('AssHole');
INSERT INTO `slang_list` VALUES ('Asshole');
INSERT INTO `slang_list` VALUES ('Bitch');
INSERT INTO `slang_list` VALUES ('FU.CK U');
INSERT INTO `slang_list` VALUES ('FUCK');
INSERT INTO `slang_list` VALUES ('Fuck');
INSERT INTO `slang_list` VALUES ('K他命');
INSERT INTO `slang_list` VALUES ('Runup');
INSERT INTO `slang_list` VALUES ('aSS.hOLE');
INSERT INTO `slang_list` VALUES ('ass.Hole');
INSERT INTO `slang_list` VALUES ('ass.hole');
INSERT INTO `slang_list` VALUES ('asshole');
INSERT INTO `slang_list` VALUES ('bitch');
INSERT INTO `slang_list` VALUES ('bot');
INSERT INTO `slang_list` VALUES ('boxun');
INSERT INTO `slang_list` VALUES ('cdjp');
INSERT INTO `slang_list` VALUES ('dafa');
INSERT INTO `slang_list` VALUES ('damn');
INSERT INTO `slang_list` VALUES ('dfdz');
INSERT INTO `slang_list` VALUES ('falu');
INSERT INTO `slang_list` VALUES ('falun');
INSERT INTO `slang_list` VALUES ('fuck');
INSERT INTO `slang_list` VALUES ('naive');
INSERT INTO `slang_list` VALUES ('nmis');
INSERT INTO `slang_list` VALUES ('shit');
INSERT INTO `slang_list` VALUES ('svdc');
INSERT INTO `slang_list` VALUES ('taip');
INSERT INTO `slang_list` VALUES ('ㄊㄇㄉ');
INSERT INTO `slang_list` VALUES ('ㄐㄅ');
INSERT INTO `slang_list` VALUES ('ㄐ八');
INSERT INTO `slang_list` VALUES ('ㄐ巴');
INSERT INTO `slang_list` VALUES ('ㄐ掰');
INSERT INTO `slang_list` VALUES ('ㄑㄋㄉ');
INSERT INTO `slang_list` VALUES ('三級片');
INSERT INTO `slang_list` VALUES ('专');
INSERT INTO `slang_list` VALUES ('业');
INSERT INTO `slang_list` VALUES ('丛');
INSERT INTO `slang_list` VALUES ('东');
INSERT INTO `slang_list` VALUES ('丝');
INSERT INTO `slang_list` VALUES ('丢');
INSERT INTO `slang_list` VALUES ('两');
INSERT INTO `slang_list` VALUES ('严');
INSERT INTO `slang_list` VALUES ('丧');
INSERT INTO `slang_list` VALUES ('丨');
INSERT INTO `slang_list` VALUES ('个');
INSERT INTO `slang_list` VALUES ('丬');
INSERT INTO `slang_list` VALUES ('中出');
INSERT INTO `slang_list` VALUES ('临');
INSERT INTO `slang_list` VALUES ('丶');
INSERT INTO `slang_list` VALUES ('为');
INSERT INTO `slang_list` VALUES ('丽');
INSERT INTO `slang_list` VALUES ('举');
INSERT INTO `slang_list` VALUES ('丿');
INSERT INTO `slang_list` VALUES ('么');
INSERT INTO `slang_list` VALUES ('义');
INSERT INTO `slang_list` VALUES ('乌');
INSERT INTO `slang_list` VALUES ('乐');
INSERT INTO `slang_list` VALUES ('习');
INSERT INTO `slang_list` VALUES ('乡');
INSERT INTO `slang_list` VALUES ('书');
INSERT INTO `slang_list` VALUES ('买');
INSERT INTO `slang_list` VALUES ('乱');
INSERT INTO `slang_list` VALUES ('乳頭');
INSERT INTO `slang_list` VALUES ('争');
INSERT INTO `slang_list` VALUES ('亏');
INSERT INTO `slang_list` VALUES ('亘');
INSERT INTO `slang_list` VALUES ('亚');
INSERT INTO `slang_list` VALUES ('亠');
INSERT INTO `slang_list` VALUES ('产');
INSERT INTO `slang_list` VALUES ('亩');
INSERT INTO `slang_list` VALUES ('亵');
INSERT INTO `slang_list` VALUES ('亻');
INSERT INTO `slang_list` VALUES ('亿');
INSERT INTO `slang_list` VALUES ('仅');
INSERT INTO `slang_list` VALUES ('从');
INSERT INTO `slang_list` VALUES ('仑');
INSERT INTO `slang_list` VALUES ('仓');
INSERT INTO `slang_list` VALUES ('他娘的');
INSERT INTO `slang_list` VALUES ('他媽');
INSERT INTO `slang_list` VALUES ('他媽的');
INSERT INTO `slang_list` VALUES ('代客練功');
INSERT INTO `slang_list` VALUES ('仪');
INSERT INTO `slang_list` VALUES ('仫');
INSERT INTO `slang_list` VALUES ('们');
INSERT INTO `slang_list` VALUES ('众');
INSERT INTO `slang_list` VALUES ('会');
INSERT INTO `slang_list` VALUES ('伛');
INSERT INTO `slang_list` VALUES ('伞');
INSERT INTO `slang_list` VALUES ('伟');
INSERT INTO `slang_list` VALUES ('传');
INSERT INTO `slang_list` VALUES ('伤');
INSERT INTO `slang_list` VALUES ('伥');
INSERT INTO `slang_list` VALUES ('伦');
INSERT INTO `slang_list` VALUES ('伧');
INSERT INTO `slang_list` VALUES ('伪');
INSERT INTO `slang_list` VALUES ('伫');
INSERT INTO `slang_list` VALUES ('伲');
INSERT INTO `slang_list` VALUES ('作愛');
INSERT INTO `slang_list` VALUES ('你娘');
INSERT INTO `slang_list` VALUES ('你娘78');
INSERT INTO `slang_list` VALUES ('你娘卡好');
INSERT INTO `slang_list` VALUES ('你娘的');
INSERT INTO `slang_list` VALUES ('你媽的');
INSERT INTO `slang_list` VALUES ('你老母');
INSERT INTO `slang_list` VALUES ('佥');
INSERT INTO `slang_list` VALUES ('侠');
INSERT INTO `slang_list` VALUES ('侣');
INSERT INTO `slang_list` VALUES ('侥');
INSERT INTO `slang_list` VALUES ('侦');
INSERT INTO `slang_list` VALUES ('侧');
INSERT INTO `slang_list` VALUES ('侩');
INSERT INTO `slang_list` VALUES ('侪');
INSERT INTO `slang_list` VALUES ('侬');
INSERT INTO `slang_list` VALUES ('俣');
INSERT INTO `slang_list` VALUES ('俦');
INSERT INTO `slang_list` VALUES ('俨');
INSERT INTO `slang_list` VALUES ('俩');
INSERT INTO `slang_list` VALUES ('俪');
INSERT INTO `slang_list` VALUES ('俭');
INSERT INTO `slang_list` VALUES ('倮');
INSERT INTO `slang_list` VALUES ('债');
INSERT INTO `slang_list` VALUES ('做愛');
INSERT INTO `slang_list` VALUES ('偬');
INSERT INTO `slang_list` VALUES ('偻');
INSERT INTO `slang_list` VALUES ('偾');
INSERT INTO `slang_list` VALUES ('偿');
INSERT INTO `slang_list` VALUES ('傈');
INSERT INTO `slang_list` VALUES ('傥');
INSERT INTO `slang_list` VALUES ('傧');
INSERT INTO `slang_list` VALUES ('储');
INSERT INTO `slang_list` VALUES ('傩');
INSERT INTO `slang_list` VALUES ('兑');
INSERT INTO `slang_list` VALUES ('兖');
INSERT INTO `slang_list` VALUES ('兰');
INSERT INTO `slang_list` VALUES ('关');
INSERT INTO `slang_list` VALUES ('兴');
INSERT INTO `slang_list` VALUES ('兹');
INSERT INTO `slang_list` VALUES ('养');
INSERT INTO `slang_list` VALUES ('兽');
INSERT INTO `slang_list` VALUES ('冁');
INSERT INTO `slang_list` VALUES ('冂');
INSERT INTO `slang_list` VALUES ('内');
INSERT INTO `slang_list` VALUES ('冈');
INSERT INTO `slang_list` VALUES ('册');
INSERT INTO `slang_list` VALUES ('冖');
INSERT INTO `slang_list` VALUES ('写');
INSERT INTO `slang_list` VALUES ('军');
INSERT INTO `slang_list` VALUES ('农');
INSERT INTO `slang_list` VALUES ('冫');
INSERT INTO `slang_list` VALUES ('冯');
INSERT INTO `slang_list` VALUES ('冲');
INSERT INTO `slang_list` VALUES ('决');
INSERT INTO `slang_list` VALUES ('况');
INSERT INTO `slang_list` VALUES ('冻');
INSERT INTO `slang_list` VALUES ('净');
INSERT INTO `slang_list` VALUES ('凇');
INSERT INTO `slang_list` VALUES ('凉');
INSERT INTO `slang_list` VALUES ('减');
INSERT INTO `slang_list` VALUES ('凑');
INSERT INTO `slang_list` VALUES ('凛');
INSERT INTO `slang_list` VALUES ('凤');
INSERT INTO `slang_list` VALUES ('凫');
INSERT INTO `slang_list` VALUES ('凯');
INSERT INTO `slang_list` VALUES ('击');
INSERT INTO `slang_list` VALUES ('凼');
INSERT INTO `slang_list` VALUES ('凿');
INSERT INTO `slang_list` VALUES ('刂');
INSERT INTO `slang_list` VALUES ('刍');
INSERT INTO `slang_list` VALUES ('刘');
INSERT INTO `slang_list` VALUES ('则');
INSERT INTO `slang_list` VALUES ('刚');
INSERT INTO `slang_list` VALUES ('创');
INSERT INTO `slang_list` VALUES ('删');
INSERT INTO `slang_list` VALUES ('别');
INSERT INTO `slang_list` VALUES ('刭');
INSERT INTO `slang_list` VALUES ('刹');
INSERT INTO `slang_list` VALUES ('刽');
INSERT INTO `slang_list` VALUES ('刿');
INSERT INTO `slang_list` VALUES ('剀');
INSERT INTO `slang_list` VALUES ('剂');
INSERT INTO `slang_list` VALUES ('剐');
INSERT INTO `slang_list` VALUES ('剑');
INSERT INTO `slang_list` VALUES ('剥');
INSERT INTO `slang_list` VALUES ('剧');
INSERT INTO `slang_list` VALUES ('劐');
INSERT INTO `slang_list` VALUES ('办');
INSERT INTO `slang_list` VALUES ('务');
INSERT INTO `slang_list` VALUES ('劢');
INSERT INTO `slang_list` VALUES ('动');
INSERT INTO `slang_list` VALUES ('励');
INSERT INTO `slang_list` VALUES ('劲');
INSERT INTO `slang_list` VALUES ('劳');
INSERT INTO `slang_list` VALUES ('势');
INSERT INTO `slang_list` VALUES ('勃起');
INSERT INTO `slang_list` VALUES ('勋');
INSERT INTO `slang_list` VALUES ('勐');
INSERT INTO `slang_list` VALUES ('勹');
INSERT INTO `slang_list` VALUES ('匀');
INSERT INTO `slang_list` VALUES ('包皮');
INSERT INTO `slang_list` VALUES ('北七');
INSERT INTO `slang_list` VALUES ('北攬');
INSERT INTO `slang_list` VALUES ('匦');
INSERT INTO `slang_list` VALUES ('匮');
INSERT INTO `slang_list` VALUES ('医');
INSERT INTO `slang_list` VALUES ('华');
INSERT INTO `slang_list` VALUES ('协');
INSERT INTO `slang_list` VALUES ('单');
INSERT INTO `slang_list` VALUES ('卖');
INSERT INTO `slang_list` VALUES ('卟');
INSERT INTO `slang_list` VALUES ('卢');
INSERT INTO `slang_list` VALUES ('卤');
INSERT INTO `slang_list` VALUES ('卧');
INSERT INTO `slang_list` VALUES ('卩');
INSERT INTO `slang_list` VALUES ('卫');
INSERT INTO `slang_list` VALUES ('卵子');
INSERT INTO `slang_list` VALUES ('卺');
INSERT INTO `slang_list` VALUES ('厅');
INSERT INTO `slang_list` VALUES ('历');
INSERT INTO `slang_list` VALUES ('厉');
INSERT INTO `slang_list` VALUES ('压');
INSERT INTO `slang_list` VALUES ('厌');
INSERT INTO `slang_list` VALUES ('厍');
INSERT INTO `slang_list` VALUES ('厕');
INSERT INTO `slang_list` VALUES ('厢');
INSERT INTO `slang_list` VALUES ('厣');
INSERT INTO `slang_list` VALUES ('厦');
INSERT INTO `slang_list` VALUES ('厨');
INSERT INTO `slang_list` VALUES ('厩');
INSERT INTO `slang_list` VALUES ('厮');
INSERT INTO `slang_list` VALUES ('厶');
INSERT INTO `slang_list` VALUES ('去你媽的');
INSERT INTO `slang_list` VALUES ('去你的');
INSERT INTO `slang_list` VALUES ('县');
INSERT INTO `slang_list` VALUES ('参');
INSERT INTO `slang_list` VALUES ('双');
INSERT INTO `slang_list` VALUES ('发');
INSERT INTO `slang_list` VALUES ('变');
INSERT INTO `slang_list` VALUES ('叙');
INSERT INTO `slang_list` VALUES ('叠');
INSERT INTO `slang_list` VALUES ('口交');
INSERT INTO `slang_list` VALUES ('口淫');
INSERT INTO `slang_list` VALUES ('叶');
INSERT INTO `slang_list` VALUES ('号');
INSERT INTO `slang_list` VALUES ('叹');
INSERT INTO `slang_list` VALUES ('叽');
INSERT INTO `slang_list` VALUES ('吃屎');
INSERT INTO `slang_list` VALUES ('吊你');
INSERT INTO `slang_list` VALUES ('吊你好撚');
INSERT INTO `slang_list` VALUES ('吊你老味');
INSERT INTO `slang_list` VALUES ('吊你老母');
INSERT INTO `slang_list` VALUES ('吊佢佬未');
INSERT INTO `slang_list` VALUES ('吊妳好撚');
INSERT INTO `slang_list` VALUES ('吊妳老味');
INSERT INTO `slang_list` VALUES ('吊妳老母');
INSERT INTO `slang_list` VALUES ('吓');
INSERT INTO `slang_list` VALUES ('吕');
INSERT INTO `slang_list` VALUES ('吖');
INSERT INTO `slang_list` VALUES ('吗');
INSERT INTO `slang_list` VALUES ('吡');
INSERT INTO `slang_list` VALUES ('吣');
INSERT INTO `slang_list` VALUES ('含撚');
INSERT INTO `slang_list` VALUES ('吲');
INSERT INTO `slang_list` VALUES ('吴');
INSERT INTO `slang_list` VALUES ('吸毒');
INSERT INTO `slang_list` VALUES ('吹蕭');
INSERT INTO `slang_list` VALUES ('呋');
INSERT INTO `slang_list` VALUES ('呐');
INSERT INTO `slang_list` VALUES ('呒');
INSERT INTO `slang_list` VALUES ('呓');
INSERT INTO `slang_list` VALUES ('呕');
INSERT INTO `slang_list` VALUES ('呖');
INSERT INTO `slang_list` VALUES ('呗');
INSERT INTO `slang_list` VALUES ('员');
INSERT INTO `slang_list` VALUES ('呙');
INSERT INTO `slang_list` VALUES ('呜');
INSERT INTO `slang_list` VALUES ('咏');
INSERT INTO `slang_list` VALUES ('咔');
INSERT INTO `slang_list` VALUES ('咙');
INSERT INTO `slang_list` VALUES ('咛');
INSERT INTO `slang_list` VALUES ('咝');
INSERT INTO `slang_list` VALUES ('咣');
INSERT INTO `slang_list` VALUES ('咤');
INSERT INTO `slang_list` VALUES ('咴');
INSERT INTO `slang_list` VALUES ('哌');
INSERT INTO `slang_list` VALUES ('响');
INSERT INTO `slang_list` VALUES ('哐');
INSERT INTO `slang_list` VALUES ('哑');
INSERT INTO `slang_list` VALUES ('哒');
INSERT INTO `slang_list` VALUES ('哓');
INSERT INTO `slang_list` VALUES ('哔');
INSERT INTO `slang_list` VALUES ('哕');
INSERT INTO `slang_list` VALUES ('哗');
INSERT INTO `slang_list` VALUES ('哙');
INSERT INTO `slang_list` VALUES ('哚');
INSERT INTO `slang_list` VALUES ('哜');
INSERT INTO `slang_list` VALUES ('哝');
INSERT INTO `slang_list` VALUES ('哟');
INSERT INTO `slang_list` VALUES ('哭爸');
INSERT INTO `slang_list` VALUES ('哭腰');
INSERT INTO `slang_list` VALUES ('唔燃同佢');
INSERT INTO `slang_list` VALUES ('唛');
INSERT INTO `slang_list` VALUES ('唠');
INSERT INTO `slang_list` VALUES ('唢');
INSERT INTO `slang_list` VALUES ('唣');
INSERT INTO `slang_list` VALUES ('唤');
INSERT INTO `slang_list` VALUES ('唿');
INSERT INTO `slang_list` VALUES ('啉');
INSERT INTO `slang_list` VALUES ('啧');
INSERT INTO `slang_list` VALUES ('啬');
INSERT INTO `slang_list` VALUES ('啭');
INSERT INTO `slang_list` VALUES ('啮');
INSERT INTO `slang_list` VALUES ('啸');
INSERT INTO `slang_list` VALUES ('喷');
INSERT INTO `slang_list` VALUES ('喹');
INSERT INTO `slang_list` VALUES ('喽');
INSERT INTO `slang_list` VALUES ('喾');
INSERT INTO `slang_list` VALUES ('嗪');
INSERT INTO `slang_list` VALUES ('嗫');
INSERT INTO `slang_list` VALUES ('嗬');
INSERT INTO `slang_list` VALUES ('嗳');
INSERT INTO `slang_list` VALUES ('嗵');
INSERT INTO `slang_list` VALUES ('嘘');
INSERT INTO `slang_list` VALUES ('嘞');
INSERT INTO `slang_list` VALUES ('嘣');
INSERT INTO `slang_list` VALUES ('嘤');
INSERT INTO `slang_list` VALUES ('嘭');
INSERT INTO `slang_list` VALUES ('嘱');
INSERT INTO `slang_list` VALUES ('噍');
INSERT INTO `slang_list` VALUES ('噔');
INSERT INTO `slang_list` VALUES ('噜');
INSERT INTO `slang_list` VALUES ('噻');
INSERT INTO `slang_list` VALUES ('噼');
INSERT INTO `slang_list` VALUES ('嚣');
INSERT INTO `slang_list` VALUES ('嚯');
INSERT INTO `slang_list` VALUES ('四腳獸');
INSERT INTO `slang_list` VALUES ('团');
INSERT INTO `slang_list` VALUES ('园');
INSERT INTO `slang_list` VALUES ('囱');
INSERT INTO `slang_list` VALUES ('围');
INSERT INTO `slang_list` VALUES ('囵');
INSERT INTO `slang_list` VALUES ('国');
INSERT INTO `slang_list` VALUES ('图');
INSERT INTO `slang_list` VALUES ('圆');
INSERT INTO `slang_list` VALUES ('在線GM');
INSERT INTO `slang_list` VALUES ('圹');
INSERT INTO `slang_list` VALUES ('场');
INSERT INTO `slang_list` VALUES ('坂');
INSERT INTO `slang_list` VALUES ('块');
INSERT INTO `slang_list` VALUES ('坚');
INSERT INTO `slang_list` VALUES ('坛');
INSERT INTO `slang_list` VALUES ('坜');
INSERT INTO `slang_list` VALUES ('坝');
INSERT INTO `slang_list` VALUES ('坞');
INSERT INTO `slang_list` VALUES ('坟');
INSERT INTO `slang_list` VALUES ('坠');
INSERT INTO `slang_list` VALUES ('垄');
INSERT INTO `slang_list` VALUES ('垅');
INSERT INTO `slang_list` VALUES ('垆');
INSERT INTO `slang_list` VALUES ('垒');
INSERT INTO `slang_list` VALUES ('垡');
INSERT INTO `slang_list` VALUES ('垦');
INSERT INTO `slang_list` VALUES ('垧');
INSERT INTO `slang_list` VALUES ('垩');
INSERT INTO `slang_list` VALUES ('垫');
INSERT INTO `slang_list` VALUES ('垭');
INSERT INTO `slang_list` VALUES ('垲');
INSERT INTO `slang_list` VALUES ('垴');
INSERT INTO `slang_list` VALUES ('埘');
INSERT INTO `slang_list` VALUES ('埙');
INSERT INTO `slang_list` VALUES ('埚');
INSERT INTO `slang_list` VALUES ('埝');
INSERT INTO `slang_list` VALUES ('埯');
INSERT INTO `slang_list` VALUES ('基掰');
INSERT INTO `slang_list` VALUES ('堕');
INSERT INTO `slang_list` VALUES ('塄');
INSERT INTO `slang_list` VALUES ('塞妮糧勒');
INSERT INTO `slang_list` VALUES ('塬');
INSERT INTO `slang_list` VALUES ('墒');
INSERT INTO `slang_list` VALUES ('墚');
INSERT INTO `slang_list` VALUES ('壮');
INSERT INTO `slang_list` VALUES ('声');
INSERT INTO `slang_list` VALUES ('壳');
INSERT INTO `slang_list` VALUES ('壶');
INSERT INTO `slang_list` VALUES ('夂');
INSERT INTO `slang_list` VALUES ('处');
INSERT INTO `slang_list` VALUES ('备');
INSERT INTO `slang_list` VALUES ('外掛');
INSERT INTO `slang_list` VALUES ('够');
INSERT INTO `slang_list` VALUES ('夢遺大師');
INSERT INTO `slang_list` VALUES ('大同');
INSERT INTO `slang_list` VALUES ('大奶');
INSERT INTO `slang_list` VALUES ('大長莖');
INSERT INTO `slang_list` VALUES ('大隻佬');
INSERT INTO `slang_list` VALUES ('大隻佬二');
INSERT INTO `slang_list` VALUES ('头');
INSERT INTO `slang_list` VALUES ('夹');
INSERT INTO `slang_list` VALUES ('夺');
INSERT INTO `slang_list` VALUES ('奁');
INSERT INTO `slang_list` VALUES ('奂');
INSERT INTO `slang_list` VALUES ('奋');
INSERT INTO `slang_list` VALUES ('奖');
INSERT INTO `slang_list` VALUES ('奥');
INSERT INTO `slang_list` VALUES ('奶子');
INSERT INTO `slang_list` VALUES ('奶炮');
INSERT INTO `slang_list` VALUES ('奶砲');
INSERT INTO `slang_list` VALUES ('奶頭');
INSERT INTO `slang_list` VALUES ('她娘的');
INSERT INTO `slang_list` VALUES ('她媽的');
INSERT INTO `slang_list` VALUES ('好撚廢');
INSERT INTO `slang_list` VALUES ('妆');
INSERT INTO `slang_list` VALUES ('妇');
INSERT INTO `slang_list` VALUES ('妈');
INSERT INTO `slang_list` VALUES ('妓女');
INSERT INTO `slang_list` VALUES ('妩');
INSERT INTO `slang_list` VALUES ('妪');
INSERT INTO `slang_list` VALUES ('妫');
INSERT INTO `slang_list` VALUES ('妳娘卡好');
INSERT INTO `slang_list` VALUES ('妳娘的');
INSERT INTO `slang_list` VALUES ('姗');
INSERT INTO `slang_list` VALUES ('姦殺');
INSERT INTO `slang_list` VALUES ('姦淫');
INSERT INTO `slang_list` VALUES ('姬芭');
INSERT INTO `slang_list` VALUES ('姹');
INSERT INTO `slang_list` VALUES ('娄');
INSERT INTO `slang_list` VALUES ('娅');
INSERT INTO `slang_list` VALUES ('娆');
INSERT INTO `slang_list` VALUES ('娇');
INSERT INTO `slang_list` VALUES ('娈');
INSERT INTO `slang_list` VALUES ('娱');
INSERT INTO `slang_list` VALUES ('娲');
INSERT INTO `slang_list` VALUES ('娴');
INSERT INTO `slang_list` VALUES ('婊子');
INSERT INTO `slang_list` VALUES ('婊子養的兒子');
INSERT INTO `slang_list` VALUES ('婴');
INSERT INTO `slang_list` VALUES ('婵');
INSERT INTO `slang_list` VALUES ('婶');
INSERT INTO `slang_list` VALUES ('媪');
INSERT INTO `slang_list` VALUES ('媽的');
INSERT INTO `slang_list` VALUES ('媽逼');
INSERT INTO `slang_list` VALUES ('嫒');
INSERT INTO `slang_list` VALUES ('嫔');
INSERT INTO `slang_list` VALUES ('嫖娼');
INSERT INTO `slang_list` VALUES ('嫩枝擺');
INSERT INTO `slang_list` VALUES ('嫩穴');
INSERT INTO `slang_list` VALUES ('嫱');
INSERT INTO `slang_list` VALUES ('嬷');
INSERT INTO `slang_list` VALUES ('孙');
INSERT INTO `slang_list` VALUES ('学');
INSERT INTO `slang_list` VALUES ('孪');
INSERT INTO `slang_list` VALUES ('宀');
INSERT INTO `slang_list` VALUES ('宝');
INSERT INTO `slang_list` VALUES ('实');
INSERT INTO `slang_list` VALUES ('宠');
INSERT INTO `slang_list` VALUES ('审');
INSERT INTO `slang_list` VALUES ('宪');
INSERT INTO `slang_list` VALUES ('宫');
INSERT INTO `slang_list` VALUES ('宽');
INSERT INTO `slang_list` VALUES ('宾');
INSERT INTO `slang_list` VALUES ('对');
INSERT INTO `slang_list` VALUES ('寻');
INSERT INTO `slang_list` VALUES ('导');
INSERT INTO `slang_list` VALUES ('寿');
INSERT INTO `slang_list` VALUES ('射精');
INSERT INTO `slang_list` VALUES ('将');
INSERT INTO `slang_list` VALUES ('專業獸交員');
INSERT INTO `slang_list` VALUES ('小妞來打砲');
INSERT INTO `slang_list` VALUES ('小李他媽的飛刀');
INSERT INTO `slang_list` VALUES ('小穴');
INSERT INTO `slang_list` VALUES ('尔');
INSERT INTO `slang_list` VALUES ('尘');
INSERT INTO `slang_list` VALUES ('尜');
INSERT INTO `slang_list` VALUES ('尝');
INSERT INTO `slang_list` VALUES ('尧');
INSERT INTO `slang_list` VALUES ('尴');
INSERT INTO `slang_list` VALUES ('尻手槍');
INSERT INTO `slang_list` VALUES ('尽');
INSERT INTO `slang_list` VALUES ('屁眼');
INSERT INTO `slang_list` VALUES ('层');
INSERT INTO `slang_list` VALUES ('屉');
INSERT INTO `slang_list` VALUES ('届');
INSERT INTO `slang_list` VALUES ('屌你');
INSERT INTO `slang_list` VALUES ('屌你老母含家');
INSERT INTO `slang_list` VALUES ('属');
INSERT INTO `slang_list` VALUES ('屡');
INSERT INTO `slang_list` VALUES ('屦');
INSERT INTO `slang_list` VALUES ('屿');
INSERT INTO `slang_list` VALUES ('岁');
INSERT INTO `slang_list` VALUES ('岖');
INSERT INTO `slang_list` VALUES ('岗');
INSERT INTO `slang_list` VALUES ('岘');
INSERT INTO `slang_list` VALUES ('岙');
INSERT INTO `slang_list` VALUES ('岚');
INSERT INTO `slang_list` VALUES ('岛');
INSERT INTO `slang_list` VALUES ('岜');
INSERT INTO `slang_list` VALUES ('岽');
INSERT INTO `slang_list` VALUES ('岿');
INSERT INTO `slang_list` VALUES ('峁');
INSERT INTO `slang_list` VALUES ('峄');
INSERT INTO `slang_list` VALUES ('峡');
INSERT INTO `slang_list` VALUES ('峤');
INSERT INTO `slang_list` VALUES ('峥');
INSERT INTO `slang_list` VALUES ('峦');
INSERT INTO `slang_list` VALUES ('崂');
INSERT INTO `slang_list` VALUES ('崃');
INSERT INTO `slang_list` VALUES ('崭');
INSERT INTO `slang_list` VALUES ('崾');
INSERT INTO `slang_list` VALUES ('嵘');
INSERT INTO `slang_list` VALUES ('嵛');
INSERT INTO `slang_list` VALUES ('嵝');
INSERT INTO `slang_list` VALUES ('嵴');
INSERT INTO `slang_list` VALUES ('巅');
INSERT INTO `slang_list` VALUES ('巛');
INSERT INTO `slang_list` VALUES ('巩');
INSERT INTO `slang_list` VALUES ('巯');
INSERT INTO `slang_list` VALUES ('币');
INSERT INTO `slang_list` VALUES ('帅');
INSERT INTO `slang_list` VALUES ('师');
INSERT INTO `slang_list` VALUES ('帏');
INSERT INTO `slang_list` VALUES ('帐');
INSERT INTO `slang_list` VALUES ('帜');
INSERT INTO `slang_list` VALUES ('带');
INSERT INTO `slang_list` VALUES ('帧');
INSERT INTO `slang_list` VALUES ('帮');
INSERT INTO `slang_list` VALUES ('帱');
INSERT INTO `slang_list` VALUES ('帳號管理員');
INSERT INTO `slang_list` VALUES ('帶客練功');
INSERT INTO `slang_list` VALUES ('帶老闆練功');
INSERT INTO `slang_list` VALUES ('帻');
INSERT INTO `slang_list` VALUES ('帼');
INSERT INTO `slang_list` VALUES ('幂');
INSERT INTO `slang_list` VALUES ('幞');
INSERT INTO `slang_list` VALUES ('幣卡所');
INSERT INTO `slang_list` VALUES ('幣商');
INSERT INTO `slang_list` VALUES ('幹他');
INSERT INTO `slang_list` VALUES ('幹你');
INSERT INTO `slang_list` VALUES ('幹你全家');
INSERT INTO `slang_list` VALUES ('幹你奶奶');
INSERT INTO `slang_list` VALUES ('幹你妹');
INSERT INTO `slang_list` VALUES ('幹你娘');
INSERT INTO `slang_list` VALUES ('幹你媽');
INSERT INTO `slang_list` VALUES ('幹你梁');
INSERT INTO `slang_list` VALUES ('幹你母');
INSERT INTO `slang_list` VALUES ('幹你爸');
INSERT INTO `slang_list` VALUES ('幹你爹');
INSERT INTO `slang_list` VALUES ('幹你爺爺');
INSERT INTO `slang_list` VALUES ('幹你祖宗');
INSERT INTO `slang_list` VALUES ('幹你老木');
INSERT INTO `slang_list` VALUES ('幹你良');
INSERT INTO `slang_list` VALUES ('幹她');
INSERT INTO `slang_list` VALUES ('幹妳');
INSERT INTO `slang_list` VALUES ('幹妳全家');
INSERT INTO `slang_list` VALUES ('幹妳奶奶');
INSERT INTO `slang_list` VALUES ('幹妳妹');
INSERT INTO `slang_list` VALUES ('幹妳娘');
INSERT INTO `slang_list` VALUES ('幹妳媽');
INSERT INTO `slang_list` VALUES ('幹妳母');
INSERT INTO `slang_list` VALUES ('幹妳爸');
INSERT INTO `slang_list` VALUES ('幹妳爹');
INSERT INTO `slang_list` VALUES ('幹妳爺爺');
INSERT INTO `slang_list` VALUES ('幹妳祖宗');
INSERT INTO `slang_list` VALUES ('幹妳老木');
INSERT INTO `slang_list` VALUES ('幹您');
INSERT INTO `slang_list` VALUES ('幹您老幕');
INSERT INTO `slang_list` VALUES ('幹拎');
INSERT INTO `slang_list` VALUES ('幹拎娘');
INSERT INTO `slang_list` VALUES ('幹擬');
INSERT INTO `slang_list` VALUES ('幹擬娘');
INSERT INTO `slang_list` VALUES ('幹暴');
INSERT INTO `slang_list` VALUES ('幹暴你');
INSERT INTO `slang_list` VALUES ('幹暴你全家');
INSERT INTO `slang_list` VALUES ('幹暴你奶奶');
INSERT INTO `slang_list` VALUES ('幹暴你妹');
INSERT INTO `slang_list` VALUES ('幹暴你娘');
INSERT INTO `slang_list` VALUES ('幹暴你媽');
INSERT INTO `slang_list` VALUES ('幹暴你母');
INSERT INTO `slang_list` VALUES ('幹暴你爸');
INSERT INTO `slang_list` VALUES ('幹暴你爺爺');
INSERT INTO `slang_list` VALUES ('幹暴你祖宗');
INSERT INTO `slang_list` VALUES ('幹暴妳');
INSERT INTO `slang_list` VALUES ('幹暴妳全家');
INSERT INTO `slang_list` VALUES ('幹暴妳奶奶');
INSERT INTO `slang_list` VALUES ('幹暴妳妹');
INSERT INTO `slang_list` VALUES ('幹暴妳娘');
INSERT INTO `slang_list` VALUES ('幹暴妳媽');
INSERT INTO `slang_list` VALUES ('幹暴妳母');
INSERT INTO `slang_list` VALUES ('幹暴妳爸');
INSERT INTO `slang_list` VALUES ('幹暴妳爺爺');
INSERT INTO `slang_list` VALUES ('幹暴妳祖宗');
INSERT INTO `slang_list` VALUES ('幹暴幹你爹');
INSERT INTO `slang_list` VALUES ('幹暴幹妳爹');
INSERT INTO `slang_list` VALUES ('幹林');
INSERT INTO `slang_list` VALUES ('幹林娘');
INSERT INTO `slang_list` VALUES ('幹機');
INSERT INTO `slang_list` VALUES ('幹機巴');
INSERT INTO `slang_list` VALUES ('幹死');
INSERT INTO `slang_list` VALUES ('幹死你');
INSERT INTO `slang_list` VALUES ('幹死你全家');
INSERT INTO `slang_list` VALUES ('幹死你奶奶');
INSERT INTO `slang_list` VALUES ('幹死你妹');
INSERT INTO `slang_list` VALUES ('幹死你娘');
INSERT INTO `slang_list` VALUES ('幹死你媽');
INSERT INTO `slang_list` VALUES ('幹死你母');
INSERT INTO `slang_list` VALUES ('幹死你爸');
INSERT INTO `slang_list` VALUES ('幹死你爹');
INSERT INTO `slang_list` VALUES ('幹死你爺爺');
INSERT INTO `slang_list` VALUES ('幹死你祖宗');
INSERT INTO `slang_list` VALUES ('幹死妳');
INSERT INTO `slang_list` VALUES ('幹死妳全家');
INSERT INTO `slang_list` VALUES ('幹死妳奶奶');
INSERT INTO `slang_list` VALUES ('幹死妳妹');
INSERT INTO `slang_list` VALUES ('幹死妳娘');
INSERT INTO `slang_list` VALUES ('幹死妳媽');
INSERT INTO `slang_list` VALUES ('幹死妳母');
INSERT INTO `slang_list` VALUES ('幹死妳爸');
INSERT INTO `slang_list` VALUES ('幹死妳爹');
INSERT INTO `slang_list` VALUES ('幹死妳爺爺');
INSERT INTO `slang_list` VALUES ('幹死妳祖宗');
INSERT INTO `slang_list` VALUES ('幹爆');
INSERT INTO `slang_list` VALUES ('幺');
INSERT INTO `slang_list` VALUES ('广');
INSERT INTO `slang_list` VALUES ('庐');
INSERT INTO `slang_list` VALUES ('庑');
INSERT INTO `slang_list` VALUES ('库');
INSERT INTO `slang_list` VALUES ('应');
INSERT INTO `slang_list` VALUES ('庙');
INSERT INTO `slang_list` VALUES ('庞');
INSERT INTO `slang_list` VALUES ('废');
INSERT INTO `slang_list` VALUES ('廪');
INSERT INTO `slang_list` VALUES ('廴');
INSERT INTO `slang_list` VALUES ('开');
INSERT INTO `slang_list` VALUES ('弑');
INSERT INTO `slang_list` VALUES ('张');
INSERT INTO `slang_list` VALUES ('弥');
INSERT INTO `slang_list` VALUES ('弪');
INSERT INTO `slang_list` VALUES ('弯');
INSERT INTO `slang_list` VALUES ('強奸');
INSERT INTO `slang_list` VALUES ('強姦');
INSERT INTO `slang_list` VALUES ('強暴');
INSERT INTO `slang_list` VALUES ('弹');
INSERT INTO `slang_list` VALUES ('彐');
INSERT INTO `slang_list` VALUES ('归');
INSERT INTO `slang_list` VALUES ('当');
INSERT INTO `slang_list` VALUES ('录');
INSERT INTO `slang_list` VALUES ('彡');
INSERT INTO `slang_list` VALUES ('彦');
INSERT INTO `slang_list` VALUES ('彻');
INSERT INTO `slang_list` VALUES ('径');
INSERT INTO `slang_list` VALUES ('徕');
INSERT INTO `slang_list` VALUES ('忄');
INSERT INTO `slang_list` VALUES ('忆');
INSERT INTO `slang_list` VALUES ('忧');
INSERT INTO `slang_list` VALUES ('忾');
INSERT INTO `slang_list` VALUES ('态');
INSERT INTO `slang_list` VALUES ('怂');
INSERT INTO `slang_list` VALUES ('怃');
INSERT INTO `slang_list` VALUES ('怄');
INSERT INTO `slang_list` VALUES ('怅');
INSERT INTO `slang_list` VALUES ('怆');
INSERT INTO `slang_list` VALUES ('性交');
INSERT INTO `slang_list` VALUES ('性奴隸');
INSERT INTO `slang_list` VALUES ('性愛');
INSERT INTO `slang_list` VALUES ('性虐待');
INSERT INTO `slang_list` VALUES ('性高潮');
INSERT INTO `slang_list` VALUES ('总');
INSERT INTO `slang_list` VALUES ('怼');
INSERT INTO `slang_list` VALUES ('怿');
INSERT INTO `slang_list` VALUES ('恋');
INSERT INTO `slang_list` VALUES ('恒');
INSERT INTO `slang_list` VALUES ('恳');
INSERT INTO `slang_list` VALUES ('恶');
INSERT INTO `slang_list` VALUES ('恸');
INSERT INTO `slang_list` VALUES ('恹');
INSERT INTO `slang_list` VALUES ('恺');
INSERT INTO `slang_list` VALUES ('恻');
INSERT INTO `slang_list` VALUES ('恼');
INSERT INTO `slang_list` VALUES ('恽');
INSERT INTO `slang_list` VALUES ('悦');
INSERT INTO `slang_list` VALUES ('您娘卡好');
INSERT INTO `slang_list` VALUES ('悫');
INSERT INTO `slang_list` VALUES ('悬');
INSERT INTO `slang_list` VALUES ('悭');
INSERT INTO `slang_list` VALUES ('悯');
INSERT INTO `slang_list` VALUES ('惧');
INSERT INTO `slang_list` VALUES ('惨');
INSERT INTO `slang_list` VALUES ('惩');
INSERT INTO `slang_list` VALUES ('惫');
INSERT INTO `slang_list` VALUES ('惬');
INSERT INTO `slang_list` VALUES ('惭');
INSERT INTO `slang_list` VALUES ('惮');
INSERT INTO `slang_list` VALUES ('惯');
INSERT INTO `slang_list` VALUES ('惹我');
INSERT INTO `slang_list` VALUES ('愛液');
INSERT INTO `slang_list` VALUES ('愠');
INSERT INTO `slang_list` VALUES ('愤');
INSERT INTO `slang_list` VALUES ('愦');
INSERT INTO `slang_list` VALUES ('慑');
INSERT INTO `slang_list` VALUES ('慰安婦');
INSERT INTO `slang_list` VALUES ('憷');
INSERT INTO `slang_list` VALUES ('懑');
INSERT INTO `slang_list` VALUES ('懒');
INSERT INTO `slang_list` VALUES ('懔');
INSERT INTO `slang_list` VALUES ('懶叫');
INSERT INTO `slang_list` VALUES ('懶啪');
INSERT INTO `slang_list` VALUES ('懶教');
INSERT INTO `slang_list` VALUES ('懶葩');
INSERT INTO `slang_list` VALUES ('懶趴');
INSERT INTO `slang_list` VALUES ('戆');
INSERT INTO `slang_list` VALUES ('戋');
INSERT INTO `slang_list` VALUES ('戏');
INSERT INTO `slang_list` VALUES ('我操你老母');
INSERT INTO `slang_list` VALUES ('我是暴露狂');
INSERT INTO `slang_list` VALUES ('戒急用忍');
INSERT INTO `slang_list` VALUES ('戗');
INSERT INTO `slang_list` VALUES ('战');
INSERT INTO `slang_list` VALUES ('戬');
INSERT INTO `slang_list` VALUES ('户');
INSERT INTO `slang_list` VALUES ('手淫');
INSERT INTO `slang_list` VALUES ('扌');
INSERT INTO `slang_list` VALUES ('扒穴');
INSERT INTO `slang_list` VALUES ('打手槍');
INSERT INTO `slang_list` VALUES ('打炮');
INSERT INTO `slang_list` VALUES ('执');
INSERT INTO `slang_list` VALUES ('扩');
INSERT INTO `slang_list` VALUES ('扪');
INSERT INTO `slang_list` VALUES ('扫');
INSERT INTO `slang_list` VALUES ('扬');
INSERT INTO `slang_list` VALUES ('抚');
INSERT INTO `slang_list` VALUES ('抛');
INSERT INTO `slang_list` VALUES ('抟');
INSERT INTO `slang_list` VALUES ('抠');
INSERT INTO `slang_list` VALUES ('抡');
INSERT INTO `slang_list` VALUES ('护');
INSERT INTO `slang_list` VALUES ('报');
INSERT INTO `slang_list` VALUES ('担');
INSERT INTO `slang_list` VALUES ('拟');
INSERT INTO `slang_list` VALUES ('拢');
INSERT INTO `slang_list` VALUES ('拣');
INSERT INTO `slang_list` VALUES ('拥');
INSERT INTO `slang_list` VALUES ('拦');
INSERT INTO `slang_list` VALUES ('拧');
INSERT INTO `slang_list` VALUES ('拨');
INSERT INTO `slang_list` VALUES ('择');
INSERT INTO `slang_list` VALUES ('挖雞巴濕搭搭');
INSERT INTO `slang_list` VALUES ('挚');
INSERT INTO `slang_list` VALUES ('挛');
INSERT INTO `slang_list` VALUES ('挝');
INSERT INTO `slang_list` VALUES ('挞');
INSERT INTO `slang_list` VALUES ('挟');
INSERT INTO `slang_list` VALUES ('挠');
INSERT INTO `slang_list` VALUES ('挡');
INSERT INTO `slang_list` VALUES ('挢');
INSERT INTO `slang_list` VALUES ('挣');
INSERT INTO `slang_list` VALUES ('挤');
INSERT INTO `slang_list` VALUES ('挥');
INSERT INTO `slang_list` VALUES ('捞');
INSERT INTO `slang_list` VALUES ('损');
INSERT INTO `slang_list` VALUES ('捡');
INSERT INTO `slang_list` VALUES ('换');
INSERT INTO `slang_list` VALUES ('捣');
INSERT INTO `slang_list` VALUES ('掛爽爽');
INSERT INTO `slang_list` VALUES ('掳');
INSERT INTO `slang_list` VALUES ('掴');
INSERT INTO `slang_list` VALUES ('掷');
INSERT INTO `slang_list` VALUES ('掸');
INSERT INTO `slang_list` VALUES ('掺');
INSERT INTO `slang_list` VALUES ('掼');
INSERT INTO `slang_list` VALUES ('插爆');
INSERT INTO `slang_list` VALUES ('換小朋友');
INSERT INTO `slang_list` VALUES ('揞');
INSERT INTO `slang_list` VALUES ('援交');
INSERT INTO `slang_list` VALUES ('援助交際');
INSERT INTO `slang_list` VALUES ('揸');
INSERT INTO `slang_list` VALUES ('揽');
INSERT INTO `slang_list` VALUES ('揿');
INSERT INTO `slang_list` VALUES ('搀');
INSERT INTO `slang_list` VALUES ('搁');
INSERT INTO `slang_list` VALUES ('搂');
INSERT INTO `slang_list` VALUES ('搅');
INSERT INTO `slang_list` VALUES ('搖頭丸');
INSERT INTO `slang_list` VALUES ('搞我好嗎');
INSERT INTO `slang_list` VALUES ('携');
INSERT INTO `slang_list` VALUES ('摄');
INSERT INTO `slang_list` VALUES ('摅');
INSERT INTO `slang_list` VALUES ('摆');
INSERT INTO `slang_list` VALUES ('摇');
INSERT INTO `slang_list` VALUES ('摈');
INSERT INTO `slang_list` VALUES ('摊');
INSERT INTO `slang_list` VALUES ('撄');
INSERT INTO `slang_list` VALUES ('撑');
INSERT INTO `slang_list` VALUES ('撵');
INSERT INTO `slang_list` VALUES ('撷');
INSERT INTO `slang_list` VALUES ('撸');
INSERT INTO `slang_list` VALUES ('撺');
INSERT INTO `slang_list` VALUES ('擀');
INSERT INTO `slang_list` VALUES ('操你全家');
INSERT INTO `slang_list` VALUES ('操你奶奶');
INSERT INTO `slang_list` VALUES ('操你妹');
INSERT INTO `slang_list` VALUES ('操你娘');
INSERT INTO `slang_list` VALUES ('操你媽');
INSERT INTO `slang_list` VALUES ('操你母');
INSERT INTO `slang_list` VALUES ('操你爸');
INSERT INTO `slang_list` VALUES ('操你爹');
INSERT INTO `slang_list` VALUES ('操你爺爺');
INSERT INTO `slang_list` VALUES ('操你祖宗');
INSERT INTO `slang_list` VALUES ('操妳全家');
INSERT INTO `slang_list` VALUES ('操妳奶奶');
INSERT INTO `slang_list` VALUES ('操妳妹');
INSERT INTO `slang_list` VALUES ('操妳娘');
INSERT INTO `slang_list` VALUES ('操妳媽');
INSERT INTO `slang_list` VALUES ('操妳媽b');
INSERT INTO `slang_list` VALUES ('操妳母');
INSERT INTO `slang_list` VALUES ('操妳爸');
INSERT INTO `slang_list` VALUES ('操妳爹');
INSERT INTO `slang_list` VALUES ('操妳爺爺');
INSERT INTO `slang_list` VALUES ('操妳祖宗');
INSERT INTO `slang_list` VALUES ('操死');
INSERT INTO `slang_list` VALUES ('擞');
INSERT INTO `slang_list` VALUES ('擠蘭較自殺');
INSERT INTO `slang_list` VALUES ('攒');
INSERT INTO `slang_list` VALUES ('攬較');
INSERT INTO `slang_list` VALUES ('攴');
INSERT INTO `slang_list` VALUES ('攵');
INSERT INTO `slang_list` VALUES ('收卡');
INSERT INTO `slang_list` VALUES ('收水餃');
INSERT INTO `slang_list` VALUES ('收皮吃粥');
INSERT INTO `slang_list` VALUES ('敌');
INSERT INTO `slang_list` VALUES ('敛');
INSERT INTO `slang_list` VALUES ('敫');
INSERT INTO `slang_list` VALUES ('数');
INSERT INTO `slang_list` VALUES ('斋');
INSERT INTO `slang_list` VALUES ('斓');
INSERT INTO `slang_list` VALUES ('斩');
INSERT INTO `slang_list` VALUES ('断');
INSERT INTO `slang_list` VALUES ('无');
INSERT INTO `slang_list` VALUES ('日你媽');
INSERT INTO `slang_list` VALUES ('旧');
INSERT INTO `slang_list` VALUES ('早洩');
INSERT INTO `slang_list` VALUES ('时');
INSERT INTO `slang_list` VALUES ('旷');
INSERT INTO `slang_list` VALUES ('昙');
INSERT INTO `slang_list` VALUES ('昼');
INSERT INTO `slang_list` VALUES ('显');
INSERT INTO `slang_list` VALUES ('晋');
INSERT INTO `slang_list` VALUES ('晓');
INSERT INTO `slang_list` VALUES ('晔');
INSERT INTO `slang_list` VALUES ('晕');
INSERT INTO `slang_list` VALUES ('晖');
INSERT INTO `slang_list` VALUES ('晗');
INSERT INTO `slang_list` VALUES ('智障');
INSERT INTO `slang_list` VALUES ('暂');
INSERT INTO `slang_list` VALUES ('暧');
INSERT INTO `slang_list` VALUES ('月卡販賣商');
INSERT INTO `slang_list` VALUES ('术');
INSERT INTO `slang_list` VALUES ('杀');
INSERT INTO `slang_list` VALUES ('杂');
INSERT INTO `slang_list` VALUES ('条');
INSERT INTO `slang_list` VALUES ('来');
INSERT INTO `slang_list` VALUES ('杨');
INSERT INTO `slang_list` VALUES ('杩');
INSERT INTO `slang_list` VALUES ('東條英機');
INSERT INTO `slang_list` VALUES ('枞');
INSERT INTO `slang_list` VALUES ('枢');
INSERT INTO `slang_list` VALUES ('枣');
INSERT INTO `slang_list` VALUES ('枥');
INSERT INTO `slang_list` VALUES ('枧');
INSERT INTO `slang_list` VALUES ('枨');
INSERT INTO `slang_list` VALUES ('枫');
INSERT INTO `slang_list` VALUES ('枭');
INSERT INTO `slang_list` VALUES ('柠');
INSERT INTO `slang_list` VALUES ('柽');
INSERT INTO `slang_list` VALUES ('栀');
INSERT INTO `slang_list` VALUES ('栅');
INSERT INTO `slang_list` VALUES ('标');
INSERT INTO `slang_list` VALUES ('栈');
INSERT INTO `slang_list` VALUES ('栉');
INSERT INTO `slang_list` VALUES ('栊');
INSERT INTO `slang_list` VALUES ('栋');
INSERT INTO `slang_list` VALUES ('栌');
INSERT INTO `slang_list` VALUES ('栎');
INSERT INTO `slang_list` VALUES ('栏');
INSERT INTO `slang_list` VALUES ('树');
INSERT INTO `slang_list` VALUES ('样');
INSERT INTO `slang_list` VALUES ('栾');
INSERT INTO `slang_list` VALUES ('桊');
INSERT INTO `slang_list` VALUES ('桕');
INSERT INTO `slang_list` VALUES ('桠');
INSERT INTO `slang_list` VALUES ('桡');
INSERT INTO `slang_list` VALUES ('桢');
INSERT INTO `slang_list` VALUES ('档');
INSERT INTO `slang_list` VALUES ('桤');
INSERT INTO `slang_list` VALUES ('桦');
INSERT INTO `slang_list` VALUES ('桧');
INSERT INTO `slang_list` VALUES ('桨');
INSERT INTO `slang_list` VALUES ('桩');
INSERT INTO `slang_list` VALUES ('梅毒');
INSERT INTO `slang_list` VALUES ('梦');
INSERT INTO `slang_list` VALUES ('检');
INSERT INTO `slang_list` VALUES ('棂');
INSERT INTO `slang_list` VALUES ('椁');
INSERT INTO `slang_list` VALUES ('椟');
INSERT INTO `slang_list` VALUES ('椠');
INSERT INTO `slang_list` VALUES ('椤');
INSERT INTO `slang_list` VALUES ('椭');
INSERT INTO `slang_list` VALUES ('楼');
INSERT INTO `slang_list` VALUES ('榀');
INSERT INTO `slang_list` VALUES ('榄');
INSERT INTO `slang_list` VALUES ('榇');
INSERT INTO `slang_list` VALUES ('榈');
INSERT INTO `slang_list` VALUES ('榉');
INSERT INTO `slang_list` VALUES ('榘');
INSERT INTO `slang_list` VALUES ('槓暴妳後庭');
INSERT INTO `slang_list` VALUES ('槛');
INSERT INTO `slang_list` VALUES ('槟');
INSERT INTO `slang_list` VALUES ('槠');
INSERT INTO `slang_list` VALUES ('横');
INSERT INTO `slang_list` VALUES ('樯');
INSERT INTO `slang_list` VALUES ('樱');
INSERT INTO `slang_list` VALUES ('機八');
INSERT INTO `slang_list` VALUES ('機巴');
INSERT INTO `slang_list` VALUES ('機掰');
INSERT INTO `slang_list` VALUES ('機歪');
INSERT INTO `slang_list` VALUES ('橥');
INSERT INTO `slang_list` VALUES ('橱');
INSERT INTO `slang_list` VALUES ('橹');
INSERT INTO `slang_list` VALUES ('橼');
INSERT INTO `slang_list` VALUES ('檩');
INSERT INTO `slang_list` VALUES ('檫');
INSERT INTO `slang_list` VALUES ('欠人幹');
INSERT INTO `slang_list` VALUES ('欢');
INSERT INTO `slang_list` VALUES ('欤');
INSERT INTO `slang_list` VALUES ('欧');
INSERT INTO `slang_list` VALUES ('死人');
INSERT INTO `slang_list` VALUES ('死全家');
INSERT INTO `slang_list` VALUES ('死妓女');
INSERT INTO `slang_list` VALUES ('死婊');
INSERT INTO `slang_list` VALUES ('死雞巴');
INSERT INTO `slang_list` VALUES ('歼');
INSERT INTO `slang_list` VALUES ('殁');
INSERT INTO `slang_list` VALUES ('殇');
INSERT INTO `slang_list` VALUES ('残');
INSERT INTO `slang_list` VALUES ('殒');
INSERT INTO `slang_list` VALUES ('殓');
INSERT INTO `slang_list` VALUES ('殚');
INSERT INTO `slang_list` VALUES ('殡');
INSERT INTO `slang_list` VALUES ('殴');
INSERT INTO `slang_list` VALUES ('毁');
INSERT INTO `slang_list` VALUES ('毂');
INSERT INTO `slang_list` VALUES ('毒品');
INSERT INTO `slang_list` VALUES ('毕');
INSERT INTO `slang_list` VALUES ('毙');
INSERT INTO `slang_list` VALUES ('毡');
INSERT INTO `slang_list` VALUES ('毪');
INSERT INTO `slang_list` VALUES ('毵');
INSERT INTO `slang_list` VALUES ('氇');
INSERT INTO `slang_list` VALUES ('氩');
INSERT INTO `slang_list` VALUES ('氲');
INSERT INTO `slang_list` VALUES ('氵');
INSERT INTO `slang_list` VALUES ('氽');
INSERT INTO `slang_list` VALUES ('汇');
INSERT INTO `slang_list` VALUES ('汉');
INSERT INTO `slang_list` VALUES ('汤');
INSERT INTO `slang_list` VALUES ('汹');
INSERT INTO `slang_list` VALUES ('沟');
INSERT INTO `slang_list` VALUES ('没');
INSERT INTO `slang_list` VALUES ('沣');
INSERT INTO `slang_list` VALUES ('沤');
INSERT INTO `slang_list` VALUES ('沥');
INSERT INTO `slang_list` VALUES ('沦');
INSERT INTO `slang_list` VALUES ('沧');
INSERT INTO `slang_list` VALUES ('沩');
INSERT INTO `slang_list` VALUES ('沪');
INSERT INTO `slang_list` VALUES ('沲');
INSERT INTO `slang_list` VALUES ('泪');
INSERT INTO `slang_list` VALUES ('泶');
INSERT INTO `slang_list` VALUES ('泷');
INSERT INTO `slang_list` VALUES ('泸');
INSERT INTO `slang_list` VALUES ('泺');
INSERT INTO `slang_list` VALUES ('泻');
INSERT INTO `slang_list` VALUES ('泽');
INSERT INTO `slang_list` VALUES ('泾');
INSERT INTO `slang_list` VALUES ('流淫水');
INSERT INTO `slang_list` VALUES ('浃');
INSERT INTO `slang_list` VALUES ('浆');
INSERT INTO `slang_list` VALUES ('浇');
INSERT INTO `slang_list` VALUES ('浈');
INSERT INTO `slang_list` VALUES ('浊');
INSERT INTO `slang_list` VALUES ('测');
INSERT INTO `slang_list` VALUES ('浍');
INSERT INTO `slang_list` VALUES ('济');
INSERT INTO `slang_list` VALUES ('浏');
INSERT INTO `slang_list` VALUES ('浑');
INSERT INTO `slang_list` VALUES ('浒');
INSERT INTO `slang_list` VALUES ('浓');
INSERT INTO `slang_list` VALUES ('浔');
INSERT INTO `slang_list` VALUES ('浜');
INSERT INTO `slang_list` VALUES ('海洛因');
INSERT INTO `slang_list` VALUES ('涛');
INSERT INTO `slang_list` VALUES ('涝');
INSERT INTO `slang_list` VALUES ('涞');
INSERT INTO `slang_list` VALUES ('涟');
INSERT INTO `slang_list` VALUES ('涠');
INSERT INTO `slang_list` VALUES ('涡');
INSERT INTO `slang_list` VALUES ('涣');
INSERT INTO `slang_list` VALUES ('涤');
INSERT INTO `slang_list` VALUES ('涧');
INSERT INTO `slang_list` VALUES ('涨');
INSERT INTO `slang_list` VALUES ('涩');
INSERT INTO `slang_list` VALUES ('涵沛');
INSERT INTO `slang_list` VALUES ('淋病');
INSERT INTO `slang_list` VALUES ('淫婦');
INSERT INTO `slang_list` VALUES ('淫水');
INSERT INTO `slang_list` VALUES ('淫穴');
INSERT INTO `slang_list` VALUES ('渊');
INSERT INTO `slang_list` VALUES ('渌');
INSERT INTO `slang_list` VALUES ('渍');
INSERT INTO `slang_list` VALUES ('渎');
INSERT INTO `slang_list` VALUES ('渐');
INSERT INTO `slang_list` VALUES ('渑');
INSERT INTO `slang_list` VALUES ('渔');
INSERT INTO `slang_list` VALUES ('渖');
INSERT INTO `slang_list` VALUES ('渗');
INSERT INTO `slang_list` VALUES ('温');
INSERT INTO `slang_list` VALUES ('湾');
INSERT INTO `slang_list` VALUES ('湿');
INSERT INTO `slang_list` VALUES ('溃');
INSERT INTO `slang_list` VALUES ('溅');
INSERT INTO `slang_list` VALUES ('溆');
INSERT INTO `slang_list` VALUES ('溻');
INSERT INTO `slang_list` VALUES ('滗');
INSERT INTO `slang_list` VALUES ('滚');
INSERT INTO `slang_list` VALUES ('滞');
INSERT INTO `slang_list` VALUES ('滟');
INSERT INTO `slang_list` VALUES ('滠');
INSERT INTO `slang_list` VALUES ('满');
INSERT INTO `slang_list` VALUES ('滢');
INSERT INTO `slang_list` VALUES ('滤');
INSERT INTO `slang_list` VALUES ('滥');
INSERT INTO `slang_list` VALUES ('滦');
INSERT INTO `slang_list` VALUES ('滨');
INSERT INTO `slang_list` VALUES ('滩');
INSERT INTO `slang_list` VALUES ('漤');
INSERT INTO `slang_list` VALUES ('潆');
INSERT INTO `slang_list` VALUES ('潇');
INSERT INTO `slang_list` VALUES ('潋');
INSERT INTO `slang_list` VALUES ('潍');
INSERT INTO `slang_list` VALUES ('潴');
INSERT INTO `slang_list` VALUES ('澜');
INSERT INTO `slang_list` VALUES ('激掰');
INSERT INTO `slang_list` VALUES ('濑');
INSERT INTO `slang_list` VALUES ('濒');
INSERT INTO `slang_list` VALUES ('灏');
INSERT INTO `slang_list` VALUES ('灬');
INSERT INTO `slang_list` VALUES ('灭');
INSERT INTO `slang_list` VALUES ('灯');
INSERT INTO `slang_list` VALUES ('灵');
INSERT INTO `slang_list` VALUES ('灾');
INSERT INTO `slang_list` VALUES ('灿');
INSERT INTO `slang_list` VALUES ('炀');
INSERT INTO `slang_list` VALUES ('炉');
INSERT INTO `slang_list` VALUES ('炜');
INSERT INTO `slang_list` VALUES ('炝');
INSERT INTO `slang_list` VALUES ('点');
INSERT INTO `slang_list` VALUES ('炻');
INSERT INTO `slang_list` VALUES ('炼');
INSERT INTO `slang_list` VALUES ('炽');
INSERT INTO `slang_list` VALUES ('烀');
INSERT INTO `slang_list` VALUES ('烁');
INSERT INTO `slang_list` VALUES ('烂');
INSERT INTO `slang_list` VALUES ('烃');
INSERT INTO `slang_list` VALUES ('烛');
INSERT INTO `slang_list` VALUES ('烟');
INSERT INTO `slang_list` VALUES ('烦');
INSERT INTO `slang_list` VALUES ('烧');
INSERT INTO `slang_list` VALUES ('烨');
INSERT INTO `slang_list` VALUES ('烩');
INSERT INTO `slang_list` VALUES ('烫');
INSERT INTO `slang_list` VALUES ('烬');
INSERT INTO `slang_list` VALUES ('焕');
INSERT INTO `slang_list` VALUES ('焖');
INSERT INTO `slang_list` VALUES ('焘');
INSERT INTO `slang_list` VALUES ('無敵舔精肛');
INSERT INTO `slang_list` VALUES ('煅');
INSERT INTO `slang_list` VALUES ('煊');
INSERT INTO `slang_list` VALUES ('煳');
INSERT INTO `slang_list` VALUES ('煺');
INSERT INTO `slang_list` VALUES ('熘');
INSERT INTO `slang_list` VALUES ('營養大雞排');
INSERT INTO `slang_list` VALUES ('營養老雞排');
INSERT INTO `slang_list` VALUES ('爛交');
INSERT INTO `slang_list` VALUES ('爛妓女');
INSERT INTO `slang_list` VALUES ('爛婊');
INSERT INTO `slang_list` VALUES ('爛貨');
INSERT INTO `slang_list` VALUES ('爛雞');
INSERT INTO `slang_list` VALUES ('爛雞巴');
INSERT INTO `slang_list` VALUES ('爛鳥');
INSERT INTO `slang_list` VALUES ('爱');
INSERT INTO `slang_list` VALUES ('爷');
INSERT INTO `slang_list` VALUES ('牍');
INSERT INTO `slang_list` VALUES ('牦');
INSERT INTO `slang_list` VALUES ('牺');
INSERT INTO `slang_list` VALUES ('犊');
INSERT INTO `slang_list` VALUES ('犏');
INSERT INTO `slang_list` VALUES ('犟');
INSERT INTO `slang_list` VALUES ('犭');
INSERT INTO `slang_list` VALUES ('状');
INSERT INTO `slang_list` VALUES ('犷');
INSERT INTO `slang_list` VALUES ('犸');
INSERT INTO `slang_list` VALUES ('犹');
INSERT INTO `slang_list` VALUES ('狈');
INSERT INTO `slang_list` VALUES ('狍');
INSERT INTO `slang_list` VALUES ('狗娘');
INSERT INTO `slang_list` VALUES ('狗母養');
INSERT INTO `slang_list` VALUES ('狗男女');
INSERT INTO `slang_list` VALUES ('狗雜碎');
INSERT INTO `slang_list` VALUES ('狗雜種');
INSERT INTO `slang_list` VALUES ('狗養的');
INSERT INTO `slang_list` VALUES ('狞');
INSERT INTO `slang_list` VALUES ('独');
INSERT INTO `slang_list` VALUES ('狭');
INSERT INTO `slang_list` VALUES ('狮');
INSERT INTO `slang_list` VALUES ('狯');
INSERT INTO `slang_list` VALUES ('狰');
INSERT INTO `slang_list` VALUES ('狱');
INSERT INTO `slang_list` VALUES ('狲');
INSERT INTO `slang_list` VALUES ('猃');
INSERT INTO `slang_list` VALUES ('猎');
INSERT INTO `slang_list` VALUES ('猕');
INSERT INTO `slang_list` VALUES ('猡');
INSERT INTO `slang_list` VALUES ('猪');
INSERT INTO `slang_list` VALUES ('猫');
INSERT INTO `slang_list` VALUES ('猬');
INSERT INTO `slang_list` VALUES ('献');
INSERT INTO `slang_list` VALUES ('猸');
INSERT INTO `slang_list` VALUES ('猹');
INSERT INTO `slang_list` VALUES ('獭');
INSERT INTO `slang_list` VALUES ('獸交');
INSERT INTO `slang_list` VALUES ('王八蛋');
INSERT INTO `slang_list` VALUES ('玑');
INSERT INTO `slang_list` VALUES ('玛');
INSERT INTO `slang_list` VALUES ('玮');
INSERT INTO `slang_list` VALUES ('环');
INSERT INTO `slang_list` VALUES ('现');
INSERT INTO `slang_list` VALUES ('玺');
INSERT INTO `slang_list` VALUES ('珉');
INSERT INTO `slang_list` VALUES ('珏');
INSERT INTO `slang_list` VALUES ('珐');
INSERT INTO `slang_list` VALUES ('珑');
INSERT INTO `slang_list` VALUES ('珲');
INSERT INTO `slang_list` VALUES ('琏');
INSERT INTO `slang_list` VALUES ('琐');
INSERT INTO `slang_list` VALUES ('瑶');
INSERT INTO `slang_list` VALUES ('瑷');
INSERT INTO `slang_list` VALUES ('璎');
INSERT INTO `slang_list` VALUES ('瓒');
INSERT INTO `slang_list` VALUES ('瓯');
INSERT INTO `slang_list` VALUES ('甘您老母');
INSERT INTO `slang_list` VALUES ('甘李良狗田幾歪');
INSERT INTO `slang_list` VALUES ('甘林娘');
INSERT INTO `slang_list` VALUES ('甘林媽');
INSERT INTO `slang_list` VALUES ('甘林涼');
INSERT INTO `slang_list` VALUES ('甘霖');
INSERT INTO `slang_list` VALUES ('甘霖老母');
INSERT INTO `slang_list` VALUES ('甙');
INSERT INTO `slang_list` VALUES ('生殖');
INSERT INTO `slang_list` VALUES ('甩甩奶');
INSERT INTO `slang_list` VALUES ('电');
INSERT INTO `slang_list` VALUES ('画');
INSERT INTO `slang_list` VALUES ('畅');
INSERT INTO `slang_list` VALUES ('異常');
INSERT INTO `slang_list` VALUES ('畲');
INSERT INTO `slang_list` VALUES ('畴');
INSERT INTO `slang_list` VALUES ('疃');
INSERT INTO `slang_list` VALUES ('疒');
INSERT INTO `slang_list` VALUES ('疖');
INSERT INTO `slang_list` VALUES ('疗');
INSERT INTO `slang_list` VALUES ('疟');
INSERT INTO `slang_list` VALUES ('疠');
INSERT INTO `slang_list` VALUES ('疡');
INSERT INTO `slang_list` VALUES ('疬');
INSERT INTO `slang_list` VALUES ('疮');
INSERT INTO `slang_list` VALUES ('疯');
INSERT INTO `slang_list` VALUES ('疱');
INSERT INTO `slang_list` VALUES ('疴');
INSERT INTO `slang_list` VALUES ('痃');
INSERT INTO `slang_list` VALUES ('痈');
INSERT INTO `slang_list` VALUES ('痉');
INSERT INTO `slang_list` VALUES ('痖');
INSERT INTO `slang_list` VALUES ('痨');
INSERT INTO `slang_list` VALUES ('痪');
INSERT INTO `slang_list` VALUES ('痫');
INSERT INTO `slang_list` VALUES ('瘅');
INSERT INTO `slang_list` VALUES ('瘗');
INSERT INTO `slang_list` VALUES ('瘘');
INSERT INTO `slang_list` VALUES ('瘪');
INSERT INTO `slang_list` VALUES ('瘫');
INSERT INTO `slang_list` VALUES ('瘾');
INSERT INTO `slang_list` VALUES ('瘿');
INSERT INTO `slang_list` VALUES ('癀');
INSERT INTO `slang_list` VALUES ('癍');
INSERT INTO `slang_list` VALUES ('癔');
INSERT INTO `slang_list` VALUES ('癞');
INSERT INTO `slang_list` VALUES ('癣');
INSERT INTO `slang_list` VALUES ('癫');
INSERT INTO `slang_list` VALUES ('癯');
INSERT INTO `slang_list` VALUES ('白濫');
INSERT INTO `slang_list` VALUES ('白爛');
INSERT INTO `slang_list` VALUES ('白癡');
INSERT INTO `slang_list` VALUES ('皑');
INSERT INTO `slang_list` VALUES ('皱');
INSERT INTO `slang_list` VALUES ('皲');
INSERT INTO `slang_list` VALUES ('盏');
INSERT INTO `slang_list` VALUES ('盐');
INSERT INTO `slang_list` VALUES ('监');
INSERT INTO `slang_list` VALUES ('盖');
INSERT INTO `slang_list` VALUES ('盗');
INSERT INTO `slang_list` VALUES ('盘');
INSERT INTO `slang_list` VALUES ('相幹');
INSERT INTO `slang_list` VALUES ('眍');
INSERT INTO `slang_list` VALUES ('眦');
INSERT INTO `slang_list` VALUES ('着');
INSERT INTO `slang_list` VALUES ('睁');
INSERT INTO `slang_list` VALUES ('睃');
INSERT INTO `slang_list` VALUES ('睐');
INSERT INTO `slang_list` VALUES ('睑');
INSERT INTO `slang_list` VALUES ('睪丸');
INSERT INTO `slang_list` VALUES ('睾丸');
INSERT INTO `slang_list` VALUES ('瞒');
INSERT INTO `slang_list` VALUES ('瞩');
INSERT INTO `slang_list` VALUES ('矫');
INSERT INTO `slang_list` VALUES ('矶');
INSERT INTO `slang_list` VALUES ('矾');
INSERT INTO `slang_list` VALUES ('矿');
INSERT INTO `slang_list` VALUES ('砀');
INSERT INTO `slang_list` VALUES ('码');
INSERT INTO `slang_list` VALUES ('砖');
INSERT INTO `slang_list` VALUES ('砗');
INSERT INTO `slang_list` VALUES ('砘');
INSERT INTO `slang_list` VALUES ('砚');
INSERT INTO `slang_list` VALUES ('砜');
INSERT INTO `slang_list` VALUES ('破遊戲誰要玩');
INSERT INTO `slang_list` VALUES ('砹');
INSERT INTO `slang_list` VALUES ('砺');
INSERT INTO `slang_list` VALUES ('砻');
INSERT INTO `slang_list` VALUES ('砼');
INSERT INTO `slang_list` VALUES ('砾');
INSERT INTO `slang_list` VALUES ('础');
INSERT INTO `slang_list` VALUES ('硇');
INSERT INTO `slang_list` VALUES ('硕');
INSERT INTO `slang_list` VALUES ('硖');
INSERT INTO `slang_list` VALUES ('硗');
INSERT INTO `slang_list` VALUES ('硷');
INSERT INTO `slang_list` VALUES ('碍');
INSERT INTO `slang_list` VALUES ('碛');
INSERT INTO `slang_list` VALUES ('碜');
INSERT INTO `slang_list` VALUES ('碱');
INSERT INTO `slang_list` VALUES ('碹');
INSERT INTO `slang_list` VALUES ('磙');
INSERT INTO `slang_list` VALUES ('礴');
INSERT INTO `slang_list` VALUES ('礻');
INSERT INTO `slang_list` VALUES ('礼');
INSERT INTO `slang_list` VALUES ('祢');
INSERT INTO `slang_list` VALUES ('祯');
INSERT INTO `slang_list` VALUES ('祷');
INSERT INTO `slang_list` VALUES ('祸');
INSERT INTO `slang_list` VALUES ('禀');
INSERT INTO `slang_list` VALUES ('禄');
INSERT INTO `slang_list` VALUES ('禅');
INSERT INTO `slang_list` VALUES ('私服');
INSERT INTO `slang_list` VALUES ('秃');
INSERT INTO `slang_list` VALUES ('秆');
INSERT INTO `slang_list` VALUES ('积');
INSERT INTO `slang_list` VALUES ('称');
INSERT INTO `slang_list` VALUES ('秽');
INSERT INTO `slang_list` VALUES ('稆');
INSERT INTO `slang_list` VALUES ('税');
INSERT INTO `slang_list` VALUES ('稣');
INSERT INTO `slang_list` VALUES ('稳');
INSERT INTO `slang_list` VALUES ('積掰');
INSERT INTO `slang_list` VALUES ('穑');
INSERT INTO `slang_list` VALUES ('窑');
INSERT INTO `slang_list` VALUES ('窜');
INSERT INTO `slang_list` VALUES ('窝');
INSERT INTO `slang_list` VALUES ('窥');
INSERT INTO `slang_list` VALUES ('窦');
INSERT INTO `slang_list` VALUES ('窭');
INSERT INTO `slang_list` VALUES ('竖');
INSERT INTO `slang_list` VALUES ('竞');
INSERT INTO `slang_list` VALUES ('笃');
INSERT INTO `slang_list` VALUES ('笋');
INSERT INTO `slang_list` VALUES ('笔');
INSERT INTO `slang_list` VALUES ('笕');
INSERT INTO `slang_list` VALUES ('笺');
INSERT INTO `slang_list` VALUES ('笼');
INSERT INTO `slang_list` VALUES ('笾');
INSERT INTO `slang_list` VALUES ('筚');
INSERT INTO `slang_list` VALUES ('筛');
INSERT INTO `slang_list` VALUES ('筝');
INSERT INTO `slang_list` VALUES ('筢');
INSERT INTO `slang_list` VALUES ('筱姬芭');
INSERT INTO `slang_list` VALUES ('筹');
INSERT INTO `slang_list` VALUES ('筻');
INSERT INTO `slang_list` VALUES ('简');
INSERT INTO `slang_list` VALUES ('箢');
INSERT INTO `slang_list` VALUES ('箦');
INSERT INTO `slang_list` VALUES ('箧');
INSERT INTO `slang_list` VALUES ('箨');
INSERT INTO `slang_list` VALUES ('箩');
INSERT INTO `slang_list` VALUES ('箪');
INSERT INTO `slang_list` VALUES ('箫');
INSERT INTO `slang_list` VALUES ('篑');
INSERT INTO `slang_list` VALUES ('篓');
INSERT INTO `slang_list` VALUES ('篮');
INSERT INTO `slang_list` VALUES ('篼');
INSERT INTO `slang_list` VALUES ('簖');
INSERT INTO `slang_list` VALUES ('籁');
INSERT INTO `slang_list` VALUES ('米青蟲');
INSERT INTO `slang_list` VALUES ('籴');
INSERT INTO `slang_list` VALUES ('类');
INSERT INTO `slang_list` VALUES ('籼');
INSERT INTO `slang_list` VALUES ('粜');
INSERT INTO `slang_list` VALUES ('粝');
INSERT INTO `slang_list` VALUES ('粤');
INSERT INTO `slang_list` VALUES ('粪');
INSERT INTO `slang_list` VALUES ('粮');
INSERT INTO `slang_list` VALUES ('精子');
INSERT INTO `slang_list` VALUES ('精水');
INSERT INTO `slang_list` VALUES ('精液');
INSERT INTO `slang_list` VALUES ('精蟲');
INSERT INTO `slang_list` VALUES ('糁');
INSERT INTO `slang_list` VALUES ('糇');
INSERT INTO `slang_list` VALUES ('糍');
INSERT INTO `slang_list` VALUES ('糙你媽');
INSERT INTO `slang_list` VALUES ('糙妳媽');
INSERT INTO `slang_list` VALUES ('糙雞掰');
INSERT INTO `slang_list` VALUES ('紧');
INSERT INTO `slang_list` VALUES ('給狗榦');
INSERT INTO `slang_list` VALUES ('絷');
INSERT INTO `slang_list` VALUES ('績掰');
INSERT INTO `slang_list` VALUES ('纟');
INSERT INTO `slang_list` VALUES ('纠');
INSERT INTO `slang_list` VALUES ('纡');
INSERT INTO `slang_list` VALUES ('红');
INSERT INTO `slang_list` VALUES ('纣');
INSERT INTO `slang_list` VALUES ('纤');
INSERT INTO `slang_list` VALUES ('纥');
INSERT INTO `slang_list` VALUES ('约');
INSERT INTO `slang_list` VALUES ('级');
INSERT INTO `slang_list` VALUES ('纨');
INSERT INTO `slang_list` VALUES ('纩');
INSERT INTO `slang_list` VALUES ('纪');
INSERT INTO `slang_list` VALUES ('纬');
INSERT INTO `slang_list` VALUES ('纭');
INSERT INTO `slang_list` VALUES ('纯');
INSERT INTO `slang_list` VALUES ('纰');
INSERT INTO `slang_list` VALUES ('纱');
INSERT INTO `slang_list` VALUES ('纲');
INSERT INTO `slang_list` VALUES ('纳');
INSERT INTO `slang_list` VALUES ('纵');
INSERT INTO `slang_list` VALUES ('纶');
INSERT INTO `slang_list` VALUES ('纷');
INSERT INTO `slang_list` VALUES ('纸');
INSERT INTO `slang_list` VALUES ('纹');
INSERT INTO `slang_list` VALUES ('纺');
INSERT INTO `slang_list` VALUES ('纽');
INSERT INTO `slang_list` VALUES ('纾');
INSERT INTO `slang_list` VALUES ('线');
INSERT INTO `slang_list` VALUES ('绀');
INSERT INTO `slang_list` VALUES ('绁');
INSERT INTO `slang_list` VALUES ('绂');
INSERT INTO `slang_list` VALUES ('练');
INSERT INTO `slang_list` VALUES ('组');
INSERT INTO `slang_list` VALUES ('绅');
INSERT INTO `slang_list` VALUES ('细');
INSERT INTO `slang_list` VALUES ('织');
INSERT INTO `slang_list` VALUES ('终');
INSERT INTO `slang_list` VALUES ('绉');
INSERT INTO `slang_list` VALUES ('绊');
INSERT INTO `slang_list` VALUES ('绋');
INSERT INTO `slang_list` VALUES ('绌');
INSERT INTO `slang_list` VALUES ('绍');
INSERT INTO `slang_list` VALUES ('绎');
INSERT INTO `slang_list` VALUES ('经');
INSERT INTO `slang_list` VALUES ('绐');
INSERT INTO `slang_list` VALUES ('绑');
INSERT INTO `slang_list` VALUES ('结');
INSERT INTO `slang_list` VALUES ('绔');
INSERT INTO `slang_list` VALUES ('绗');
INSERT INTO `slang_list` VALUES ('绘');
INSERT INTO `slang_list` VALUES ('给');
INSERT INTO `slang_list` VALUES ('绚');
INSERT INTO `slang_list` VALUES ('绛');
INSERT INTO `slang_list` VALUES ('络');
INSERT INTO `slang_list` VALUES ('绝');
INSERT INTO `slang_list` VALUES ('绞');
INSERT INTO `slang_list` VALUES ('统');
INSERT INTO `slang_list` VALUES ('绠');
INSERT INTO `slang_list` VALUES ('绡');
INSERT INTO `slang_list` VALUES ('绢');
INSERT INTO `slang_list` VALUES ('绣');
INSERT INTO `slang_list` VALUES ('绥');
INSERT INTO `slang_list` VALUES ('绦');
INSERT INTO `slang_list` VALUES ('继');
INSERT INTO `slang_list` VALUES ('绨');
INSERT INTO `slang_list` VALUES ('绩');
INSERT INTO `slang_list` VALUES ('绪');
INSERT INTO `slang_list` VALUES ('绫');
INSERT INTO `slang_list` VALUES ('续');
INSERT INTO `slang_list` VALUES ('绮');
INSERT INTO `slang_list` VALUES ('绯');
INSERT INTO `slang_list` VALUES ('绰');
INSERT INTO `slang_list` VALUES ('绱');
INSERT INTO `slang_list` VALUES ('绲');
INSERT INTO `slang_list` VALUES ('绳');
INSERT INTO `slang_list` VALUES ('维');
INSERT INTO `slang_list` VALUES ('绵');
INSERT INTO `slang_list` VALUES ('绶');
INSERT INTO `slang_list` VALUES ('绷');
INSERT INTO `slang_list` VALUES ('绸');
INSERT INTO `slang_list` VALUES ('绺');
INSERT INTO `slang_list` VALUES ('绻');
INSERT INTO `slang_list` VALUES ('综');
INSERT INTO `slang_list` VALUES ('绽');
INSERT INTO `slang_list` VALUES ('绾');
INSERT INTO `slang_list` VALUES ('绿');
INSERT INTO `slang_list` VALUES ('缀');
INSERT INTO `slang_list` VALUES ('缁');
INSERT INTO `slang_list` VALUES ('缂');
INSERT INTO `slang_list` VALUES ('缃');
INSERT INTO `slang_list` VALUES ('缄');
INSERT INTO `slang_list` VALUES ('缅');
INSERT INTO `slang_list` VALUES ('缆');
INSERT INTO `slang_list` VALUES ('缇');
INSERT INTO `slang_list` VALUES ('缈');
INSERT INTO `slang_list` VALUES ('缉');
INSERT INTO `slang_list` VALUES ('缋');
INSERT INTO `slang_list` VALUES ('缌');
INSERT INTO `slang_list` VALUES ('缍');
INSERT INTO `slang_list` VALUES ('缎');
INSERT INTO `slang_list` VALUES ('缏');
INSERT INTO `slang_list` VALUES ('缑');
INSERT INTO `slang_list` VALUES ('缒');
INSERT INTO `slang_list` VALUES ('缓');
INSERT INTO `slang_list` VALUES ('缔');
INSERT INTO `slang_list` VALUES ('缕');
INSERT INTO `slang_list` VALUES ('编');
INSERT INTO `slang_list` VALUES ('缗');
INSERT INTO `slang_list` VALUES ('缘');
INSERT INTO `slang_list` VALUES ('缙');
INSERT INTO `slang_list` VALUES ('缚');
INSERT INTO `slang_list` VALUES ('缛');
INSERT INTO `slang_list` VALUES ('缜');
INSERT INTO `slang_list` VALUES ('缝');
INSERT INTO `slang_list` VALUES ('缟');
INSERT INTO `slang_list` VALUES ('缠');
INSERT INTO `slang_list` VALUES ('缡');
INSERT INTO `slang_list` VALUES ('缢');
INSERT INTO `slang_list` VALUES ('缣');
INSERT INTO `slang_list` VALUES ('缤');
INSERT INTO `slang_list` VALUES ('缥');
INSERT INTO `slang_list` VALUES ('缦');
INSERT INTO `slang_list` VALUES ('缧');
INSERT INTO `slang_list` VALUES ('缨');
INSERT INTO `slang_list` VALUES ('缩');
INSERT INTO `slang_list` VALUES ('缪');
INSERT INTO `slang_list` VALUES ('缫');
INSERT INTO `slang_list` VALUES ('缬');
INSERT INTO `slang_list` VALUES ('缭');
INSERT INTO `slang_list` VALUES ('缮');
INSERT INTO `slang_list` VALUES ('缯');
INSERT INTO `slang_list` VALUES ('缰');
INSERT INTO `slang_list` VALUES ('缱');
INSERT INTO `slang_list` VALUES ('缲');
INSERT INTO `slang_list` VALUES ('缳');
INSERT INTO `slang_list` VALUES ('缴');
INSERT INTO `slang_list` VALUES ('缵');
INSERT INTO `slang_list` VALUES ('罂');
INSERT INTO `slang_list` VALUES ('罌粟');
INSERT INTO `slang_list` VALUES ('罗');
INSERT INTO `slang_list` VALUES ('罚');
INSERT INTO `slang_list` VALUES ('罢');
INSERT INTO `slang_list` VALUES ('罱');
INSERT INTO `slang_list` VALUES ('罴');
INSERT INTO `slang_list` VALUES ('羁');
INSERT INTO `slang_list` VALUES ('羟');
INSERT INTO `slang_list` VALUES ('老二六寸長');
INSERT INTO `slang_list` VALUES ('老娼');
INSERT INTO `slang_list` VALUES ('老婊');
INSERT INTO `slang_list` VALUES ('老母');
INSERT INTO `slang_list` VALUES ('耖你老幕');
INSERT INTO `slang_list` VALUES ('耠');
INSERT INTO `slang_list` VALUES ('耢');
INSERT INTO `slang_list` VALUES ('耥');
INSERT INTO `slang_list` VALUES ('耧');
INSERT INTO `slang_list` VALUES ('耱');
INSERT INTO `slang_list` VALUES ('耸');
INSERT INTO `slang_list` VALUES ('耻');
INSERT INTO `slang_list` VALUES ('聂');
INSERT INTO `slang_list` VALUES ('聋');
INSERT INTO `slang_list` VALUES ('职');
INSERT INTO `slang_list` VALUES ('聍');
INSERT INTO `slang_list` VALUES ('联');
INSERT INTO `slang_list` VALUES ('聩');
INSERT INTO `slang_list` VALUES ('聪');
INSERT INTO `slang_list` VALUES ('肀');
INSERT INTO `slang_list` VALUES ('肃');
INSERT INTO `slang_list` VALUES ('肉棍');
INSERT INTO `slang_list` VALUES ('肉棒');
INSERT INTO `slang_list` VALUES ('肉洞');
INSERT INTO `slang_list` VALUES ('肖查某');
INSERT INTO `slang_list` VALUES ('肛門');
INSERT INTO `slang_list` VALUES ('肛門中間好香');
INSERT INTO `slang_list` VALUES ('肟');
INSERT INTO `slang_list` VALUES ('肠');
INSERT INTO `slang_list` VALUES ('肤');
INSERT INTO `slang_list` VALUES ('肷');
INSERT INTO `slang_list` VALUES ('肼');
INSERT INTO `slang_list` VALUES ('肽');
INSERT INTO `slang_list` VALUES ('肾');
INSERT INTO `slang_list` VALUES ('肿');
INSERT INTO `slang_list` VALUES ('胀');
INSERT INTO `slang_list` VALUES ('胁');
INSERT INTO `slang_list` VALUES ('胆');
INSERT INTO `slang_list` VALUES ('胧');
INSERT INTO `slang_list` VALUES ('胨');
INSERT INTO `slang_list` VALUES ('胩');
INSERT INTO `slang_list` VALUES ('胪');
INSERT INTO `slang_list` VALUES ('胫');
INSERT INTO `slang_list` VALUES ('胬');
INSERT INTO `slang_list` VALUES ('胶');
INSERT INTO `slang_list` VALUES ('脉');
INSERT INTO `slang_list` VALUES ('脍');
INSERT INTO `slang_list` VALUES ('脎');
INSERT INTO `slang_list` VALUES ('脏');
INSERT INTO `slang_list` VALUES ('脑');
INSERT INTO `slang_list` VALUES ('脒');
INSERT INTO `slang_list` VALUES ('脓');
INSERT INTO `slang_list` VALUES ('脔');
INSERT INTO `slang_list` VALUES ('脚');
INSERT INTO `slang_list` VALUES ('脱');
INSERT INTO `slang_list` VALUES ('脲');
INSERT INTO `slang_list` VALUES ('脶');
INSERT INTO `slang_list` VALUES ('脸');
INSERT INTO `slang_list` VALUES ('腈');
INSERT INTO `slang_list` VALUES ('腙');
INSERT INTO `slang_list` VALUES ('腚');
INSERT INTO `slang_list` VALUES ('腭');
INSERT INTO `slang_list` VALUES ('腻');
INSERT INTO `slang_list` VALUES ('腼');
INSERT INTO `slang_list` VALUES ('腽');
INSERT INTO `slang_list` VALUES ('腾');
INSERT INTO `slang_list` VALUES ('膑');
INSERT INTO `slang_list` VALUES ('膪');
INSERT INTO `slang_list` VALUES ('臁');
INSERT INTO `slang_list` VALUES ('自慰');
INSERT INTO `slang_list` VALUES ('臭妓女');
INSERT INTO `slang_list` VALUES ('臭婊');
INSERT INTO `slang_list` VALUES ('臭婊子');
INSERT INTO `slang_list` VALUES ('臭機八');
INSERT INTO `slang_list` VALUES ('臭表子');
INSERT INTO `slang_list` VALUES ('臭雞雞');
INSERT INTO `slang_list` VALUES ('舆');
INSERT INTO `slang_list` VALUES ('舌忝女乃豆頁');
INSERT INTO `slang_list` VALUES ('舔乃頭');
INSERT INTO `slang_list` VALUES ('舣');
INSERT INTO `slang_list` VALUES ('舭');
INSERT INTO `slang_list` VALUES ('舰');
INSERT INTO `slang_list` VALUES ('舱');
INSERT INTO `slang_list` VALUES ('舻');
INSERT INTO `slang_list` VALUES ('舾');
INSERT INTO `slang_list` VALUES ('艰');
INSERT INTO `slang_list` VALUES ('艳');
INSERT INTO `slang_list` VALUES ('艹');
INSERT INTO `slang_list` VALUES ('艺');
INSERT INTO `slang_list` VALUES ('节');
INSERT INTO `slang_list` VALUES ('芈');
INSERT INTO `slang_list` VALUES ('芗');
INSERT INTO `slang_list` VALUES ('芜');
INSERT INTO `slang_list` VALUES ('芝人');
INSERT INTO `slang_list` VALUES ('芝馬');
INSERT INTO `slang_list` VALUES ('芦');
INSERT INTO `slang_list` VALUES ('芪');
INSERT INTO `slang_list` VALUES ('苁');
INSERT INTO `slang_list` VALUES ('苄');
INSERT INTO `slang_list` VALUES ('苇');
INSERT INTO `slang_list` VALUES ('苈');
INSERT INTO `slang_list` VALUES ('苊');
INSERT INTO `slang_list` VALUES ('苋');
INSERT INTO `slang_list` VALUES ('苌');
INSERT INTO `slang_list` VALUES ('苍');
INSERT INTO `slang_list` VALUES ('苎');
INSERT INTO `slang_list` VALUES ('苏');
INSERT INTO `slang_list` VALUES ('苘');
INSERT INTO `slang_list` VALUES ('苷');
INSERT INTO `slang_list` VALUES ('茎');
INSERT INTO `slang_list` VALUES ('茏');
INSERT INTO `slang_list` VALUES ('茑');
INSERT INTO `slang_list` VALUES ('茔');
INSERT INTO `slang_list` VALUES ('茕');
INSERT INTO `slang_list` VALUES ('茚');
INSERT INTO `slang_list` VALUES ('荆');
INSERT INTO `slang_list` VALUES ('草基掰 ');
INSERT INTO `slang_list` VALUES ('草枝擺');
INSERT INTO `slang_list` VALUES ('草枝擺啊趕羚羊');
INSERT INTO `slang_list` VALUES ('荚');
INSERT INTO `slang_list` VALUES ('荛');
INSERT INTO `slang_list` VALUES ('荜');
INSERT INTO `slang_list` VALUES ('荞');
INSERT INTO `slang_list` VALUES ('荟');
INSERT INTO `slang_list` VALUES ('荠');
INSERT INTO `slang_list` VALUES ('荡');
INSERT INTO `slang_list` VALUES ('荤');
INSERT INTO `slang_list` VALUES ('荥');
INSERT INTO `slang_list` VALUES ('荦');
INSERT INTO `slang_list` VALUES ('荧');
INSERT INTO `slang_list` VALUES ('荨');
INSERT INTO `slang_list` VALUES ('荩');
INSERT INTO `slang_list` VALUES ('荪');
INSERT INTO `slang_list` VALUES ('荫');
INSERT INTO `slang_list` VALUES ('荬');
INSERT INTO `slang_list` VALUES ('荭');
INSERT INTO `slang_list` VALUES ('荮');
INSERT INTO `slang_list` VALUES ('药');
INSERT INTO `slang_list` VALUES ('莅');
INSERT INTO `slang_list` VALUES ('莖肛');
INSERT INTO `slang_list` VALUES ('莜');
INSERT INTO `slang_list` VALUES ('莱');
INSERT INTO `slang_list` VALUES ('莲');
INSERT INTO `slang_list` VALUES ('莳');
INSERT INTO `slang_list` VALUES ('莴');
INSERT INTO `slang_list` VALUES ('莶');
INSERT INTO `slang_list` VALUES ('获');
INSERT INTO `slang_list` VALUES ('莸');
INSERT INTO `slang_list` VALUES ('莹');
INSERT INTO `slang_list` VALUES ('莺');
INSERT INTO `slang_list` VALUES ('莼');
INSERT INTO `slang_list` VALUES ('萘');
INSERT INTO `slang_list` VALUES ('萜');
INSERT INTO `slang_list` VALUES ('萝');
INSERT INTO `slang_list` VALUES ('萤');
INSERT INTO `slang_list` VALUES ('营');
INSERT INTO `slang_list` VALUES ('萦');
INSERT INTO `slang_list` VALUES ('萧');
INSERT INTO `slang_list` VALUES ('葜');
INSERT INTO `slang_list` VALUES ('葱');
INSERT INTO `slang_list` VALUES ('蒇');
INSERT INTO `slang_list` VALUES ('蒈');
INSERT INTO `slang_list` VALUES ('蒉');
INSERT INTO `slang_list` VALUES ('蒋');
INSERT INTO `slang_list` VALUES ('蒌');
INSERT INTO `slang_list` VALUES ('蒽');
INSERT INTO `slang_list` VALUES ('蓝');
INSERT INTO `slang_list` VALUES ('蓟');
INSERT INTO `slang_list` VALUES ('蓠');
INSERT INTO `slang_list` VALUES ('蓣');
INSERT INTO `slang_list` VALUES ('蓥');
INSERT INTO `slang_list` VALUES ('蓦');
INSERT INTO `slang_list` VALUES ('蔸');
INSERT INTO `slang_list` VALUES ('蔹');
INSERT INTO `slang_list` VALUES ('蔺');
INSERT INTO `slang_list` VALUES ('蔼');
INSERT INTO `slang_list` VALUES ('蕲');
INSERT INTO `slang_list` VALUES ('蕴');
INSERT INTO `slang_list` VALUES ('薮');
INSERT INTO `slang_list` VALUES ('藁');
INSERT INTO `slang_list` VALUES ('藍叫');
INSERT INTO `slang_list` VALUES ('藍教頭');
INSERT INTO `slang_list` VALUES ('藍鳥');
INSERT INTO `slang_list` VALUES ('藓');
INSERT INTO `slang_list` VALUES ('蘖');
INSERT INTO `slang_list` VALUES ('虏');
INSERT INTO `slang_list` VALUES ('虑');
INSERT INTO `slang_list` VALUES ('處女膜');
INSERT INTO `slang_list` VALUES ('處女膜狙擊手');
INSERT INTO `slang_list` VALUES ('虚');
INSERT INTO `slang_list` VALUES ('虬');
INSERT INTO `slang_list` VALUES ('虽');
INSERT INTO `slang_list` VALUES ('虾');
INSERT INTO `slang_list` VALUES ('虿');
INSERT INTO `slang_list` VALUES ('蚀');
INSERT INTO `slang_list` VALUES ('蚁');
INSERT INTO `slang_list` VALUES ('蚂');
INSERT INTO `slang_list` VALUES ('蚬');
INSERT INTO `slang_list` VALUES ('蛊');
INSERT INTO `slang_list` VALUES ('蛎');
INSERT INTO `slang_list` VALUES ('蛏');
INSERT INTO `slang_list` VALUES ('蛮');
INSERT INTO `slang_list` VALUES ('蛰');
INSERT INTO `slang_list` VALUES ('蛱');
INSERT INTO `slang_list` VALUES ('蛲');
INSERT INTO `slang_list` VALUES ('蛳');
INSERT INTO `slang_list` VALUES ('蛴');
INSERT INTO `slang_list` VALUES ('蜕');
INSERT INTO `slang_list` VALUES ('蜗');
INSERT INTO `slang_list` VALUES ('蝇');
INSERT INTO `slang_list` VALUES ('蝈');
INSERT INTO `slang_list` VALUES ('蝉');
INSERT INTO `slang_list` VALUES ('蝰');
INSERT INTO `slang_list` VALUES ('蝼');
INSERT INTO `slang_list` VALUES ('蝽');
INSERT INTO `slang_list` VALUES ('蝾');
INSERT INTO `slang_list` VALUES ('螋');
INSERT INTO `slang_list` VALUES ('螨');
INSERT INTO `slang_list` VALUES ('蟮');
INSERT INTO `slang_list` VALUES ('衅');
INSERT INTO `slang_list` VALUES ('衔');
INSERT INTO `slang_list` VALUES ('衤');
INSERT INTO `slang_list` VALUES ('补');
INSERT INTO `slang_list` VALUES ('衬');
INSERT INTO `slang_list` VALUES ('衮');
INSERT INTO `slang_list` VALUES ('袄');
INSERT INTO `slang_list` VALUES ('袅');
INSERT INTO `slang_list` VALUES ('袜');
INSERT INTO `slang_list` VALUES ('被我襙 ');
INSERT INTO `slang_list` VALUES ('被捅');
INSERT INTO `slang_list` VALUES ('被狗幹');
INSERT INTO `slang_list` VALUES ('袭');
INSERT INTO `slang_list` VALUES ('装');
INSERT INTO `slang_list` VALUES ('裆');
INSERT INTO `slang_list` VALUES ('裢');
INSERT INTO `slang_list` VALUES ('裣');
INSERT INTO `slang_list` VALUES ('裤');
INSERT INTO `slang_list` VALUES ('裥');
INSERT INTO `slang_list` VALUES ('褛');
INSERT INTO `slang_list` VALUES ('褴');
INSERT INTO `slang_list` VALUES ('见');
INSERT INTO `slang_list` VALUES ('观');
INSERT INTO `slang_list` VALUES ('规');
INSERT INTO `slang_list` VALUES ('觅');
INSERT INTO `slang_list` VALUES ('视');
INSERT INTO `slang_list` VALUES ('觇');
INSERT INTO `slang_list` VALUES ('览');
INSERT INTO `slang_list` VALUES ('觉');
INSERT INTO `slang_list` VALUES ('觊');
INSERT INTO `slang_list` VALUES ('觋');
INSERT INTO `slang_list` VALUES ('觌');
INSERT INTO `slang_list` VALUES ('觎');
INSERT INTO `slang_list` VALUES ('觏');
INSERT INTO `slang_list` VALUES ('觐');
INSERT INTO `slang_list` VALUES ('觑');
INSERT INTO `slang_list` VALUES ('觞');
INSERT INTO `slang_list` VALUES ('觯');
INSERT INTO `slang_list` VALUES ('誉');
INSERT INTO `slang_list` VALUES ('誊');
INSERT INTO `slang_list` VALUES ('讠');
INSERT INTO `slang_list` VALUES ('计');
INSERT INTO `slang_list` VALUES ('订');
INSERT INTO `slang_list` VALUES ('讣');
INSERT INTO `slang_list` VALUES ('讥');
INSERT INTO `slang_list` VALUES ('讦');
INSERT INTO `slang_list` VALUES ('讧');
INSERT INTO `slang_list` VALUES ('讨');
INSERT INTO `slang_list` VALUES ('讪');
INSERT INTO `slang_list` VALUES ('训');
INSERT INTO `slang_list` VALUES ('议');
INSERT INTO `slang_list` VALUES ('讯');
INSERT INTO `slang_list` VALUES ('记');
INSERT INTO `slang_list` VALUES ('讲');
INSERT INTO `slang_list` VALUES ('讳');
INSERT INTO `slang_list` VALUES ('讴');
INSERT INTO `slang_list` VALUES ('讵');
INSERT INTO `slang_list` VALUES ('讶');
INSERT INTO `slang_list` VALUES ('讷');
INSERT INTO `slang_list` VALUES ('许');
INSERT INTO `slang_list` VALUES ('讹');
INSERT INTO `slang_list` VALUES ('论');
INSERT INTO `slang_list` VALUES ('讼');
INSERT INTO `slang_list` VALUES ('讽');
INSERT INTO `slang_list` VALUES ('设');
INSERT INTO `slang_list` VALUES ('访');
INSERT INTO `slang_list` VALUES ('诀');
INSERT INTO `slang_list` VALUES ('证');
INSERT INTO `slang_list` VALUES ('诂');
INSERT INTO `slang_list` VALUES ('诃');
INSERT INTO `slang_list` VALUES ('诅');
INSERT INTO `slang_list` VALUES ('识');
INSERT INTO `slang_list` VALUES ('诈');
INSERT INTO `slang_list` VALUES ('诉');
INSERT INTO `slang_list` VALUES ('诊');
INSERT INTO `slang_list` VALUES ('诋');
INSERT INTO `slang_list` VALUES ('诌');
INSERT INTO `slang_list` VALUES ('词');
INSERT INTO `slang_list` VALUES ('诎');
INSERT INTO `slang_list` VALUES ('诏');
INSERT INTO `slang_list` VALUES ('译');
INSERT INTO `slang_list` VALUES ('诒');
INSERT INTO `slang_list` VALUES ('诓');
INSERT INTO `slang_list` VALUES ('诔');
INSERT INTO `slang_list` VALUES ('试');
INSERT INTO `slang_list` VALUES ('诖');
INSERT INTO `slang_list` VALUES ('诗');
INSERT INTO `slang_list` VALUES ('诘');
INSERT INTO `slang_list` VALUES ('诙');
INSERT INTO `slang_list` VALUES ('诚');
INSERT INTO `slang_list` VALUES ('诛');
INSERT INTO `slang_list` VALUES ('诜');
INSERT INTO `slang_list` VALUES ('话');
INSERT INTO `slang_list` VALUES ('诞');
INSERT INTO `slang_list` VALUES ('诟');
INSERT INTO `slang_list` VALUES ('诠');
INSERT INTO `slang_list` VALUES ('诡');
INSERT INTO `slang_list` VALUES ('询');
INSERT INTO `slang_list` VALUES ('诣');
INSERT INTO `slang_list` VALUES ('诤');
INSERT INTO `slang_list` VALUES ('该');
INSERT INTO `slang_list` VALUES ('详');
INSERT INTO `slang_list` VALUES ('诧');
INSERT INTO `slang_list` VALUES ('诨');
INSERT INTO `slang_list` VALUES ('诩');
INSERT INTO `slang_list` VALUES ('诫');
INSERT INTO `slang_list` VALUES ('诬');
INSERT INTO `slang_list` VALUES ('语');
INSERT INTO `slang_list` VALUES ('诮');
INSERT INTO `slang_list` VALUES ('误');
INSERT INTO `slang_list` VALUES ('诰');
INSERT INTO `slang_list` VALUES ('诱');
INSERT INTO `slang_list` VALUES ('诲');
INSERT INTO `slang_list` VALUES ('诳');
INSERT INTO `slang_list` VALUES ('说');
INSERT INTO `slang_list` VALUES ('诵');
INSERT INTO `slang_list` VALUES ('诶');
INSERT INTO `slang_list` VALUES ('诸');
INSERT INTO `slang_list` VALUES ('诹');
INSERT INTO `slang_list` VALUES ('诺');
INSERT INTO `slang_list` VALUES ('读');
INSERT INTO `slang_list` VALUES ('诼');
INSERT INTO `slang_list` VALUES ('诽');
INSERT INTO `slang_list` VALUES ('课');
INSERT INTO `slang_list` VALUES ('诿');
INSERT INTO `slang_list` VALUES ('谀');
INSERT INTO `slang_list` VALUES ('谁');
INSERT INTO `slang_list` VALUES ('谂');
INSERT INTO `slang_list` VALUES ('调');
INSERT INTO `slang_list` VALUES ('谄');
INSERT INTO `slang_list` VALUES ('谅');
INSERT INTO `slang_list` VALUES ('谆');
INSERT INTO `slang_list` VALUES ('谇');
INSERT INTO `slang_list` VALUES ('谈');
INSERT INTO `slang_list` VALUES ('谊');
INSERT INTO `slang_list` VALUES ('谋');
INSERT INTO `slang_list` VALUES ('谌');
INSERT INTO `slang_list` VALUES ('谍');
INSERT INTO `slang_list` VALUES ('谎');
INSERT INTO `slang_list` VALUES ('谏');
INSERT INTO `slang_list` VALUES ('谐');
INSERT INTO `slang_list` VALUES ('谑');
INSERT INTO `slang_list` VALUES ('谒');
INSERT INTO `slang_list` VALUES ('谓');
INSERT INTO `slang_list` VALUES ('谔');
INSERT INTO `slang_list` VALUES ('谕');
INSERT INTO `slang_list` VALUES ('谖');
INSERT INTO `slang_list` VALUES ('谗');
INSERT INTO `slang_list` VALUES ('谘');
INSERT INTO `slang_list` VALUES ('谙');
INSERT INTO `slang_list` VALUES ('谚');
INSERT INTO `slang_list` VALUES ('谛');
INSERT INTO `slang_list` VALUES ('谜');
INSERT INTO `slang_list` VALUES ('谝');
INSERT INTO `slang_list` VALUES ('谟');
INSERT INTO `slang_list` VALUES ('谠');
INSERT INTO `slang_list` VALUES ('谡');
INSERT INTO `slang_list` VALUES ('谢');
INSERT INTO `slang_list` VALUES ('谣');
INSERT INTO `slang_list` VALUES ('谤');
INSERT INTO `slang_list` VALUES ('谥');
INSERT INTO `slang_list` VALUES ('谧');
INSERT INTO `slang_list` VALUES ('谨');
INSERT INTO `slang_list` VALUES ('谩');
INSERT INTO `slang_list` VALUES ('谪');
INSERT INTO `slang_list` VALUES ('谫');
INSERT INTO `slang_list` VALUES ('谬');
INSERT INTO `slang_list` VALUES ('谭');
INSERT INTO `slang_list` VALUES ('谮');
INSERT INTO `slang_list` VALUES ('谯');
INSERT INTO `slang_list` VALUES ('谰');
INSERT INTO `slang_list` VALUES ('谲');
INSERT INTO `slang_list` VALUES ('谳');
INSERT INTO `slang_list` VALUES ('谵');
INSERT INTO `slang_list` VALUES ('谶');
INSERT INTO `slang_list` VALUES ('賣150點');
INSERT INTO `slang_list` VALUES ('賣300點');
INSERT INTO `slang_list` VALUES ('賣350點');
INSERT INTO `slang_list` VALUES ('賣400點');
INSERT INTO `slang_list` VALUES ('賣CANDY');
INSERT INTO `slang_list` VALUES ('賣CASH');
INSERT INTO `slang_list` VALUES ('賣POINT');
INSERT INTO `slang_list` VALUES ('賣元寶');
INSERT INTO `slang_list` VALUES ('賣卡');
INSERT INTO `slang_list` VALUES ('賣帳號');
INSERT INTO `slang_list` VALUES ('賣幣');
INSERT INTO `slang_list` VALUES ('賣淫');
INSERT INTO `slang_list` VALUES ('賣點');
INSERT INTO `slang_list` VALUES ('賣點卡');
INSERT INTO `slang_list` VALUES ('賤人');
INSERT INTO `slang_list` VALUES ('賤女人');
INSERT INTO `slang_list` VALUES ('賤婊');
INSERT INTO `slang_list` VALUES ('賤屄');
INSERT INTO `slang_list` VALUES ('賤種');
INSERT INTO `slang_list` VALUES ('賤胚');
INSERT INTO `slang_list` VALUES ('賤貨');
INSERT INTO `slang_list` VALUES ('賽你娘');
INSERT INTO `slang_list` VALUES ('賽妳娘');
INSERT INTO `slang_list` VALUES ('賽羚羊');
INSERT INTO `slang_list` VALUES ('贛林老師');
INSERT INTO `slang_list` VALUES ('贛林老木');
INSERT INTO `slang_list` VALUES ('贛林老母');
INSERT INTO `slang_list` VALUES ('贝');
INSERT INTO `slang_list` VALUES ('贞');
INSERT INTO `slang_list` VALUES ('负');
INSERT INTO `slang_list` VALUES ('贡');
INSERT INTO `slang_list` VALUES ('财');
INSERT INTO `slang_list` VALUES ('责');
INSERT INTO `slang_list` VALUES ('贤');
INSERT INTO `slang_list` VALUES ('败');
INSERT INTO `slang_list` VALUES ('账');
INSERT INTO `slang_list` VALUES ('货');
INSERT INTO `slang_list` VALUES ('质');
INSERT INTO `slang_list` VALUES ('贩');
INSERT INTO `slang_list` VALUES ('贪');
INSERT INTO `slang_list` VALUES ('贬');
INSERT INTO `slang_list` VALUES ('购');
INSERT INTO `slang_list` VALUES ('贮');
INSERT INTO `slang_list` VALUES ('贯');
INSERT INTO `slang_list` VALUES ('贰');
INSERT INTO `slang_list` VALUES ('贱');
INSERT INTO `slang_list` VALUES ('贲');
INSERT INTO `slang_list` VALUES ('贳');
INSERT INTO `slang_list` VALUES ('贴');
INSERT INTO `slang_list` VALUES ('贵');
INSERT INTO `slang_list` VALUES ('贶');
INSERT INTO `slang_list` VALUES ('贷');
INSERT INTO `slang_list` VALUES ('贸');
INSERT INTO `slang_list` VALUES ('费');
INSERT INTO `slang_list` VALUES ('贺');
INSERT INTO `slang_list` VALUES ('贻');
INSERT INTO `slang_list` VALUES ('贼');
INSERT INTO `slang_list` VALUES ('贽');
INSERT INTO `slang_list` VALUES ('贾');
INSERT INTO `slang_list` VALUES ('贿');
INSERT INTO `slang_list` VALUES ('赀');
INSERT INTO `slang_list` VALUES ('赁');
INSERT INTO `slang_list` VALUES ('赂');
INSERT INTO `slang_list` VALUES ('赃');
INSERT INTO `slang_list` VALUES ('资');
INSERT INTO `slang_list` VALUES ('赅');
INSERT INTO `slang_list` VALUES ('赆');
INSERT INTO `slang_list` VALUES ('赇');
INSERT INTO `slang_list` VALUES ('赈');
INSERT INTO `slang_list` VALUES ('赉');
INSERT INTO `slang_list` VALUES ('赊');
INSERT INTO `slang_list` VALUES ('赋');
INSERT INTO `slang_list` VALUES ('赌');
INSERT INTO `slang_list` VALUES ('赍');
INSERT INTO `slang_list` VALUES ('赎');
INSERT INTO `slang_list` VALUES ('赏');
INSERT INTO `slang_list` VALUES ('赐');
INSERT INTO `slang_list` VALUES ('赓');
INSERT INTO `slang_list` VALUES ('赔');
INSERT INTO `slang_list` VALUES ('赕');
INSERT INTO `slang_list` VALUES ('赖');
INSERT INTO `slang_list` VALUES ('赘');
INSERT INTO `slang_list` VALUES ('赙');
INSERT INTO `slang_list` VALUES ('赚');
INSERT INTO `slang_list` VALUES ('赜');
INSERT INTO `slang_list` VALUES ('赝');
INSERT INTO `slang_list` VALUES ('赞');
INSERT INTO `slang_list` VALUES ('赠');
INSERT INTO `slang_list` VALUES ('赡');
INSERT INTO `slang_list` VALUES ('赢');
INSERT INTO `slang_list` VALUES ('赣');
INSERT INTO `slang_list` VALUES ('赵');
INSERT INTO `slang_list` VALUES ('趕羚羊');
INSERT INTO `slang_list` VALUES ('趕羚羊草隻擺');
INSERT INTO `slang_list` VALUES ('趱');
INSERT INTO `slang_list` VALUES ('趸');
INSERT INTO `slang_list` VALUES ('跃');
INSERT INTO `slang_list` VALUES ('跄');
INSERT INTO `slang_list` VALUES ('跞');
INSERT INTO `slang_list` VALUES ('跡掰');
INSERT INTO `slang_list` VALUES ('践');
INSERT INTO `slang_list` VALUES ('跷');
INSERT INTO `slang_list` VALUES ('跸');
INSERT INTO `slang_list` VALUES ('跹');
INSERT INTO `slang_list` VALUES ('跻');
INSERT INTO `slang_list` VALUES ('踌');
INSERT INTO `slang_list` VALUES ('踪');
INSERT INTO `slang_list` VALUES ('踬');
INSERT INTO `slang_list` VALUES ('踯');
INSERT INTO `slang_list` VALUES ('踺');
INSERT INTO `slang_list` VALUES ('蹑');
INSERT INTO `slang_list` VALUES ('蹒');
INSERT INTO `slang_list` VALUES ('蹰');
INSERT INTO `slang_list` VALUES ('蹿');
INSERT INTO `slang_list` VALUES ('躏');
INSERT INTO `slang_list` VALUES ('躜');
INSERT INTO `slang_list` VALUES ('身寸米青');
INSERT INTO `slang_list` VALUES ('軎');
INSERT INTO `slang_list` VALUES ('车');
INSERT INTO `slang_list` VALUES ('轧');
INSERT INTO `slang_list` VALUES ('轨');
INSERT INTO `slang_list` VALUES ('轩');
INSERT INTO `slang_list` VALUES ('轫');
INSERT INTO `slang_list` VALUES ('转');
INSERT INTO `slang_list` VALUES ('轭');
INSERT INTO `slang_list` VALUES ('轮');
INSERT INTO `slang_list` VALUES ('轰');
INSERT INTO `slang_list` VALUES ('轱');
INSERT INTO `slang_list` VALUES ('轲');
INSERT INTO `slang_list` VALUES ('轳');
INSERT INTO `slang_list` VALUES ('轴');
INSERT INTO `slang_list` VALUES ('轵');
INSERT INTO `slang_list` VALUES ('轶');
INSERT INTO `slang_list` VALUES ('轷');
INSERT INTO `slang_list` VALUES ('轸');
INSERT INTO `slang_list` VALUES ('轹');
INSERT INTO `slang_list` VALUES ('轺');
INSERT INTO `slang_list` VALUES ('轼');
INSERT INTO `slang_list` VALUES ('载');
INSERT INTO `slang_list` VALUES ('轾');
INSERT INTO `slang_list` VALUES ('轿');
INSERT INTO `slang_list` VALUES ('辁');
INSERT INTO `slang_list` VALUES ('辂');
INSERT INTO `slang_list` VALUES ('较');
INSERT INTO `slang_list` VALUES ('辄');
INSERT INTO `slang_list` VALUES ('辅');
INSERT INTO `slang_list` VALUES ('辆');
INSERT INTO `slang_list` VALUES ('辇');
INSERT INTO `slang_list` VALUES ('辈');
INSERT INTO `slang_list` VALUES ('辉');
INSERT INTO `slang_list` VALUES ('辊');
INSERT INTO `slang_list` VALUES ('辋');
INSERT INTO `slang_list` VALUES ('辍');
INSERT INTO `slang_list` VALUES ('辎');
INSERT INTO `slang_list` VALUES ('辏');
INSERT INTO `slang_list` VALUES ('辐');
INSERT INTO `slang_list` VALUES ('辑');
INSERT INTO `slang_list` VALUES ('输');
INSERT INTO `slang_list` VALUES ('辔');
INSERT INTO `slang_list` VALUES ('辕');
INSERT INTO `slang_list` VALUES ('辖');
INSERT INTO `slang_list` VALUES ('辗');
INSERT INTO `slang_list` VALUES ('辘');
INSERT INTO `slang_list` VALUES ('辙');
INSERT INTO `slang_list` VALUES ('辚');
INSERT INTO `slang_list` VALUES ('辞');
INSERT INTO `slang_list` VALUES ('辩');
INSERT INTO `slang_list` VALUES ('辫');
INSERT INTO `slang_list` VALUES ('辶');
INSERT INTO `slang_list` VALUES ('边');
INSERT INTO `slang_list` VALUES ('辽');
INSERT INTO `slang_list` VALUES ('达');
INSERT INTO `slang_list` VALUES ('过');
INSERT INTO `slang_list` VALUES ('迈');
INSERT INTO `slang_list` VALUES ('运');
INSERT INTO `slang_list` VALUES ('还');
INSERT INTO `slang_list` VALUES ('这');
INSERT INTO `slang_list` VALUES ('进');
INSERT INTO `slang_list` VALUES ('远');
INSERT INTO `slang_list` VALUES ('违');
INSERT INTO `slang_list` VALUES ('连');
INSERT INTO `slang_list` VALUES ('迟');
INSERT INTO `slang_list` VALUES ('迩');
INSERT INTO `slang_list` VALUES ('迳');
INSERT INTO `slang_list` VALUES ('迹');
INSERT INTO `slang_list` VALUES ('选');
INSERT INTO `slang_list` VALUES ('逊');
INSERT INTO `slang_list` VALUES ('递');
INSERT INTO `slang_list` VALUES ('逦');
INSERT INTO `slang_list` VALUES ('逻');
INSERT INTO `slang_list` VALUES ('遗');
INSERT INTO `slang_list` VALUES ('遥');
INSERT INTO `slang_list` VALUES ('邓');
INSERT INTO `slang_list` VALUES ('邝');
INSERT INTO `slang_list` VALUES ('邬');
INSERT INTO `slang_list` VALUES ('邮');
INSERT INTO `slang_list` VALUES ('邹');
INSERT INTO `slang_list` VALUES ('邺');
INSERT INTO `slang_list` VALUES ('邻');
INSERT INTO `slang_list` VALUES ('郄');
INSERT INTO `slang_list` VALUES ('郏');
INSERT INTO `slang_list` VALUES ('郐');
INSERT INTO `slang_list` VALUES ('郑');
INSERT INTO `slang_list` VALUES ('郓');
INSERT INTO `slang_list` VALUES ('郦');
INSERT INTO `slang_list` VALUES ('郧');
INSERT INTO `slang_list` VALUES ('郸');
INSERT INTO `slang_list` VALUES ('酝');
INSERT INTO `slang_list` VALUES ('酞');
INSERT INTO `slang_list` VALUES ('酰');
INSERT INTO `slang_list` VALUES ('酱');
INSERT INTO `slang_list` VALUES ('酶');
INSERT INTO `slang_list` VALUES ('酽');
INSERT INTO `slang_list` VALUES ('酾');
INSERT INTO `slang_list` VALUES ('酿');
INSERT INTO `slang_list` VALUES ('醌');
INSERT INTO `slang_list` VALUES ('释');
INSERT INTO `slang_list` VALUES ('金北七');
INSERT INTO `slang_list` VALUES ('鉴');
INSERT INTO `slang_list` VALUES ('銬妖');
INSERT INTO `slang_list` VALUES ('銮');
INSERT INTO `slang_list` VALUES ('錾');
INSERT INTO `slang_list` VALUES ('鐾');
INSERT INTO `slang_list` VALUES ('钅');
INSERT INTO `slang_list` VALUES ('钆');
INSERT INTO `slang_list` VALUES ('钇');
INSERT INTO `slang_list` VALUES ('针');
INSERT INTO `slang_list` VALUES ('钉');
INSERT INTO `slang_list` VALUES ('钊');
INSERT INTO `slang_list` VALUES ('钋');
INSERT INTO `slang_list` VALUES ('钌');
INSERT INTO `slang_list` VALUES ('钍');
INSERT INTO `slang_list` VALUES ('钏');
INSERT INTO `slang_list` VALUES ('钐');
INSERT INTO `slang_list` VALUES ('钒');
INSERT INTO `slang_list` VALUES ('钓');
INSERT INTO `slang_list` VALUES ('钔');
INSERT INTO `slang_list` VALUES ('钕');
INSERT INTO `slang_list` VALUES ('钗');
INSERT INTO `slang_list` VALUES ('钙');
INSERT INTO `slang_list` VALUES ('钚');
INSERT INTO `slang_list` VALUES ('钛');
INSERT INTO `slang_list` VALUES ('钜');
INSERT INTO `slang_list` VALUES ('钝');
INSERT INTO `slang_list` VALUES ('钞');
INSERT INTO `slang_list` VALUES ('钟');
INSERT INTO `slang_list` VALUES ('钠');
INSERT INTO `slang_list` VALUES ('钡');
INSERT INTO `slang_list` VALUES ('钢');
INSERT INTO `slang_list` VALUES ('钣');
INSERT INTO `slang_list` VALUES ('钤');
INSERT INTO `slang_list` VALUES ('钥');
INSERT INTO `slang_list` VALUES ('钧');
INSERT INTO `slang_list` VALUES ('钨');
INSERT INTO `slang_list` VALUES ('钩');
INSERT INTO `slang_list` VALUES ('钪');
INSERT INTO `slang_list` VALUES ('钫');
INSERT INTO `slang_list` VALUES ('钬');
INSERT INTO `slang_list` VALUES ('钭');
INSERT INTO `slang_list` VALUES ('钮');
INSERT INTO `slang_list` VALUES ('钯');
INSERT INTO `slang_list` VALUES ('钰');
INSERT INTO `slang_list` VALUES ('钲');
INSERT INTO `slang_list` VALUES ('钴');
INSERT INTO `slang_list` VALUES ('钵');
INSERT INTO `slang_list` VALUES ('钶');
INSERT INTO `slang_list` VALUES ('钷');
INSERT INTO `slang_list` VALUES ('钸');
INSERT INTO `slang_list` VALUES ('钹');
INSERT INTO `slang_list` VALUES ('钺');
INSERT INTO `slang_list` VALUES ('钻');
INSERT INTO `slang_list` VALUES ('钼');
INSERT INTO `slang_list` VALUES ('钽');
INSERT INTO `slang_list` VALUES ('钾');
INSERT INTO `slang_list` VALUES ('钿');
INSERT INTO `slang_list` VALUES ('铀');
INSERT INTO `slang_list` VALUES ('铁');
INSERT INTO `slang_list` VALUES ('铂');
INSERT INTO `slang_list` VALUES ('铃');
INSERT INTO `slang_list` VALUES ('铄');
INSERT INTO `slang_list` VALUES ('铆');
INSERT INTO `slang_list` VALUES ('铈');
INSERT INTO `slang_list` VALUES ('铉');
INSERT INTO `slang_list` VALUES ('铊');
INSERT INTO `slang_list` VALUES ('铋');
INSERT INTO `slang_list` VALUES ('铌');
INSERT INTO `slang_list` VALUES ('铍');
INSERT INTO `slang_list` VALUES ('铎');
INSERT INTO `slang_list` VALUES ('铐');
INSERT INTO `slang_list` VALUES ('铑');
INSERT INTO `slang_list` VALUES ('铒');
INSERT INTO `slang_list` VALUES ('铕');
INSERT INTO `slang_list` VALUES ('铖');
INSERT INTO `slang_list` VALUES ('铗');
INSERT INTO `slang_list` VALUES ('铘');
INSERT INTO `slang_list` VALUES ('铙');
INSERT INTO `slang_list` VALUES ('铛');
INSERT INTO `slang_list` VALUES ('铜');
INSERT INTO `slang_list` VALUES ('铝');
INSERT INTO `slang_list` VALUES ('铞');
INSERT INTO `slang_list` VALUES ('铟');
INSERT INTO `slang_list` VALUES ('铠');
INSERT INTO `slang_list` VALUES ('铡');
INSERT INTO `slang_list` VALUES ('铢');
INSERT INTO `slang_list` VALUES ('铣');
INSERT INTO `slang_list` VALUES ('铤');
INSERT INTO `slang_list` VALUES ('铥');
INSERT INTO `slang_list` VALUES ('铧');
INSERT INTO `slang_list` VALUES ('铨');
INSERT INTO `slang_list` VALUES ('铩');
INSERT INTO `slang_list` VALUES ('铪');
INSERT INTO `slang_list` VALUES ('铫');
INSERT INTO `slang_list` VALUES ('铬');
INSERT INTO `slang_list` VALUES ('铭');
INSERT INTO `slang_list` VALUES ('铮');
INSERT INTO `slang_list` VALUES ('铯');
INSERT INTO `slang_list` VALUES ('铰');
INSERT INTO `slang_list` VALUES ('铱');
INSERT INTO `slang_list` VALUES ('铲');
INSERT INTO `slang_list` VALUES ('铳');
INSERT INTO `slang_list` VALUES ('铴');
INSERT INTO `slang_list` VALUES ('铵');
INSERT INTO `slang_list` VALUES ('银');
INSERT INTO `slang_list` VALUES ('铷');
INSERT INTO `slang_list` VALUES ('铸');
INSERT INTO `slang_list` VALUES ('铹');
INSERT INTO `slang_list` VALUES ('铼');
INSERT INTO `slang_list` VALUES ('铽');
INSERT INTO `slang_list` VALUES ('链');
INSERT INTO `slang_list` VALUES ('铿');
INSERT INTO `slang_list` VALUES ('销');
INSERT INTO `slang_list` VALUES ('锁');
INSERT INTO `slang_list` VALUES ('锂');
INSERT INTO `slang_list` VALUES ('锃');
INSERT INTO `slang_list` VALUES ('锄');
INSERT INTO `slang_list` VALUES ('锅');
INSERT INTO `slang_list` VALUES ('锆');
INSERT INTO `slang_list` VALUES ('锇');
INSERT INTO `slang_list` VALUES ('锈');
INSERT INTO `slang_list` VALUES ('锉');
INSERT INTO `slang_list` VALUES ('锊');
INSERT INTO `slang_list` VALUES ('锋');
INSERT INTO `slang_list` VALUES ('锌');
INSERT INTO `slang_list` VALUES ('锍');
INSERT INTO `slang_list` VALUES ('锎');
INSERT INTO `slang_list` VALUES ('锏');
INSERT INTO `slang_list` VALUES ('锑');
INSERT INTO `slang_list` VALUES ('锒');
INSERT INTO `slang_list` VALUES ('锓');
INSERT INTO `slang_list` VALUES ('锔');
INSERT INTO `slang_list` VALUES ('锕');
INSERT INTO `slang_list` VALUES ('锖');
INSERT INTO `slang_list` VALUES ('锗');
INSERT INTO `slang_list` VALUES ('锘');
INSERT INTO `slang_list` VALUES ('错');
INSERT INTO `slang_list` VALUES ('锚');
INSERT INTO `slang_list` VALUES ('锛');
INSERT INTO `slang_list` VALUES ('锝');
INSERT INTO `slang_list` VALUES ('锞');
INSERT INTO `slang_list` VALUES ('锟');
INSERT INTO `slang_list` VALUES ('锡');
INSERT INTO `slang_list` VALUES ('锢');
INSERT INTO `slang_list` VALUES ('锣');
INSERT INTO `slang_list` VALUES ('锤');
INSERT INTO `slang_list` VALUES ('锥');
INSERT INTO `slang_list` VALUES ('锦');
INSERT INTO `slang_list` VALUES ('锨');
INSERT INTO `slang_list` VALUES ('锩');
INSERT INTO `slang_list` VALUES ('锪');
INSERT INTO `slang_list` VALUES ('锫');
INSERT INTO `slang_list` VALUES ('锬');
INSERT INTO `slang_list` VALUES ('锭');
INSERT INTO `slang_list` VALUES ('键');
INSERT INTO `slang_list` VALUES ('锯');
INSERT INTO `slang_list` VALUES ('锰');
INSERT INTO `slang_list` VALUES ('锱');
INSERT INTO `slang_list` VALUES ('锲');
INSERT INTO `slang_list` VALUES ('锴');
INSERT INTO `slang_list` VALUES ('锵');
INSERT INTO `slang_list` VALUES ('锶');
INSERT INTO `slang_list` VALUES ('锷');
INSERT INTO `slang_list` VALUES ('锸');
INSERT INTO `slang_list` VALUES ('锺');
INSERT INTO `slang_list` VALUES ('锻');
INSERT INTO `slang_list` VALUES ('锼');
INSERT INTO `slang_list` VALUES ('锾');
INSERT INTO `slang_list` VALUES ('锿');
INSERT INTO `slang_list` VALUES ('镀');
INSERT INTO `slang_list` VALUES ('镁');
INSERT INTO `slang_list` VALUES ('镂');
INSERT INTO `slang_list` VALUES ('镄');
INSERT INTO `slang_list` VALUES ('镅');
INSERT INTO `slang_list` VALUES ('镆');
INSERT INTO `slang_list` VALUES ('镇');
INSERT INTO `slang_list` VALUES ('镉');
INSERT INTO `slang_list` VALUES ('镊');
INSERT INTO `slang_list` VALUES ('镌');
INSERT INTO `slang_list` VALUES ('镍');
INSERT INTO `slang_list` VALUES ('镎');
INSERT INTO `slang_list` VALUES ('镏');
INSERT INTO `slang_list` VALUES ('镐');
INSERT INTO `slang_list` VALUES ('镑');
INSERT INTO `slang_list` VALUES ('镒');
INSERT INTO `slang_list` VALUES ('镓');
INSERT INTO `slang_list` VALUES ('镔');
INSERT INTO `slang_list` VALUES ('镖');
INSERT INTO `slang_list` VALUES ('镗');
INSERT INTO `slang_list` VALUES ('镘');
INSERT INTO `slang_list` VALUES ('镙');
INSERT INTO `slang_list` VALUES ('镛');
INSERT INTO `slang_list` VALUES ('镜');
INSERT INTO `slang_list` VALUES ('镝');
INSERT INTO `slang_list` VALUES ('镞');
INSERT INTO `slang_list` VALUES ('镟');
INSERT INTO `slang_list` VALUES ('镡');
INSERT INTO `slang_list` VALUES ('镢');
INSERT INTO `slang_list` VALUES ('镣');
INSERT INTO `slang_list` VALUES ('镤');
INSERT INTO `slang_list` VALUES ('镥');
INSERT INTO `slang_list` VALUES ('镦');
INSERT INTO `slang_list` VALUES ('镧');
INSERT INTO `slang_list` VALUES ('镨');
INSERT INTO `slang_list` VALUES ('镩');
INSERT INTO `slang_list` VALUES ('镪');
INSERT INTO `slang_list` VALUES ('镫');
INSERT INTO `slang_list` VALUES ('镬');
INSERT INTO `slang_list` VALUES ('镭');
INSERT INTO `slang_list` VALUES ('镯');
INSERT INTO `slang_list` VALUES ('镰');
INSERT INTO `slang_list` VALUES ('镱');
INSERT INTO `slang_list` VALUES ('镲');
INSERT INTO `slang_list` VALUES ('镳');
INSERT INTO `slang_list` VALUES ('镶');
INSERT INTO `slang_list` VALUES ('长');
INSERT INTO `slang_list` VALUES ('门');
INSERT INTO `slang_list` VALUES ('闩');
INSERT INTO `slang_list` VALUES ('闪');
INSERT INTO `slang_list` VALUES ('闫');
INSERT INTO `slang_list` VALUES ('闭');
INSERT INTO `slang_list` VALUES ('问');
INSERT INTO `slang_list` VALUES ('闯');
INSERT INTO `slang_list` VALUES ('闱');
INSERT INTO `slang_list` VALUES ('闲');
INSERT INTO `slang_list` VALUES ('闳');
INSERT INTO `slang_list` VALUES ('间');
INSERT INTO `slang_list` VALUES ('闵');
INSERT INTO `slang_list` VALUES ('闶');
INSERT INTO `slang_list` VALUES ('闷');
INSERT INTO `slang_list` VALUES ('闸');
INSERT INTO `slang_list` VALUES ('闹');
INSERT INTO `slang_list` VALUES ('闺');
INSERT INTO `slang_list` VALUES ('闻');
INSERT INTO `slang_list` VALUES ('闼');
INSERT INTO `slang_list` VALUES ('闽');
INSERT INTO `slang_list` VALUES ('闾');
INSERT INTO `slang_list` VALUES ('阀');
INSERT INTO `slang_list` VALUES ('阁');
INSERT INTO `slang_list` VALUES ('阂');
INSERT INTO `slang_list` VALUES ('阃');
INSERT INTO `slang_list` VALUES ('阄');
INSERT INTO `slang_list` VALUES ('阅');
INSERT INTO `slang_list` VALUES ('阆');
INSERT INTO `slang_list` VALUES ('阈');
INSERT INTO `slang_list` VALUES ('阉');
INSERT INTO `slang_list` VALUES ('阊');
INSERT INTO `slang_list` VALUES ('阋');
INSERT INTO `slang_list` VALUES ('阌');
INSERT INTO `slang_list` VALUES ('阍');
INSERT INTO `slang_list` VALUES ('阎');
INSERT INTO `slang_list` VALUES ('阏');
INSERT INTO `slang_list` VALUES ('阐');
INSERT INTO `slang_list` VALUES ('阑');
INSERT INTO `slang_list` VALUES ('阒');
INSERT INTO `slang_list` VALUES ('阔');
INSERT INTO `slang_list` VALUES ('阕');
INSERT INTO `slang_list` VALUES ('阖');
INSERT INTO `slang_list` VALUES ('阗');
INSERT INTO `slang_list` VALUES ('阙');
INSERT INTO `slang_list` VALUES ('阚');
INSERT INTO `slang_list` VALUES ('阝');
INSERT INTO `slang_list` VALUES ('队');
INSERT INTO `slang_list` VALUES ('阳');
INSERT INTO `slang_list` VALUES ('阴');
INSERT INTO `slang_list` VALUES ('阵');
INSERT INTO `slang_list` VALUES ('阶');
INSERT INTO `slang_list` VALUES ('阻橪住曬');
INSERT INTO `slang_list` VALUES ('际');
INSERT INTO `slang_list` VALUES ('陆');
INSERT INTO `slang_list` VALUES ('陇');
INSERT INTO `slang_list` VALUES ('陈');
INSERT INTO `slang_list` VALUES ('陉');
INSERT INTO `slang_list` VALUES ('陕');
INSERT INTO `slang_list` VALUES ('陧');
INSERT INTO `slang_list` VALUES ('陨');
INSERT INTO `slang_list` VALUES ('险');
INSERT INTO `slang_list` VALUES ('陰唇');
INSERT INTO `slang_list` VALUES ('陰囊');
INSERT INTO `slang_list` VALUES ('陰核');
INSERT INTO `slang_list` VALUES ('陰毛');
INSERT INTO `slang_list` VALUES ('陰莖');
INSERT INTO `slang_list` VALUES ('陰莖粉嫩嫩');
INSERT INTO `slang_list` VALUES ('陰蒂');
INSERT INTO `slang_list` VALUES ('陰道');
INSERT INTO `slang_list` VALUES ('陰門');
INSERT INTO `slang_list` VALUES ('陽具');
INSERT INTO `slang_list` VALUES ('陽物');
INSERT INTO `slang_list` VALUES ('陽莖');
INSERT INTO `slang_list` VALUES ('陽萎');
INSERT INTO `slang_list` VALUES ('随');
INSERT INTO `slang_list` VALUES ('隐');
INSERT INTO `slang_list` VALUES ('隶');
INSERT INTO `slang_list` VALUES ('隽');
INSERT INTO `slang_list` VALUES ('难');
INSERT INTO `slang_list` VALUES ('雏');
INSERT INTO `slang_list` VALUES ('雜交');
INSERT INTO `slang_list` VALUES ('雜碎');
INSERT INTO `slang_list` VALUES ('雜種');
INSERT INTO `slang_list` VALUES ('雞八');
INSERT INTO `slang_list` VALUES ('雞吧');
INSERT INTO `slang_list` VALUES ('雞奸');
INSERT INTO `slang_list` VALUES ('雞姦');
INSERT INTO `slang_list` VALUES ('雞巴');
INSERT INTO `slang_list` VALUES ('雞扒');
INSERT INTO `slang_list` VALUES ('雞拔毛');
INSERT INTO `slang_list` VALUES ('雞排');
INSERT INTO `slang_list` VALUES ('雞掰');
INSERT INTO `slang_list` VALUES ('雞歪');
INSERT INTO `slang_list` VALUES ('雞歪歪');
INSERT INTO `slang_list` VALUES ('雞爬');
INSERT INTO `slang_list` VALUES ('雞頭');
INSERT INTO `slang_list` VALUES ('雠');
INSERT INTO `slang_list` VALUES ('雲起');
INSERT INTO `slang_list` VALUES ('雳');
INSERT INTO `slang_list` VALUES ('雾');
INSERT INTO `slang_list` VALUES ('霁');
INSERT INTO `slang_list` VALUES ('霭');
INSERT INTO `slang_list` VALUES ('靓');
INSERT INTO `slang_list` VALUES ('静');
INSERT INTO `slang_list` VALUES ('靠ㄠ');
INSERT INTO `slang_list` VALUES ('靠么');
INSERT INTO `slang_list` VALUES ('靠妖');
INSERT INTO `slang_list` VALUES ('靠背');
INSERT INTO `slang_list` VALUES ('靠腰');
INSERT INTO `slang_list` VALUES ('靠邀');
INSERT INTO `slang_list` VALUES ('靥');
INSERT INTO `slang_list` VALUES ('鞑');
INSERT INTO `slang_list` VALUES ('鞒');
INSERT INTO `slang_list` VALUES ('鞯');
INSERT INTO `slang_list` VALUES ('鞲');
INSERT INTO `slang_list` VALUES ('鞴');
INSERT INTO `slang_list` VALUES ('韦');
INSERT INTO `slang_list` VALUES ('韩');
INSERT INTO `slang_list` VALUES ('韪');
INSERT INTO `slang_list` VALUES ('韫');
INSERT INTO `slang_list` VALUES ('韬');
INSERT INTO `slang_list` VALUES ('韵');
INSERT INTO `slang_list` VALUES ('页');
INSERT INTO `slang_list` VALUES ('顶');
INSERT INTO `slang_list` VALUES ('顸');
INSERT INTO `slang_list` VALUES ('项');
INSERT INTO `slang_list` VALUES ('顺');
INSERT INTO `slang_list` VALUES ('须');
INSERT INTO `slang_list` VALUES ('顼');
INSERT INTO `slang_list` VALUES ('顽');
INSERT INTO `slang_list` VALUES ('顾');
INSERT INTO `slang_list` VALUES ('顿');
INSERT INTO `slang_list` VALUES ('颀');
INSERT INTO `slang_list` VALUES ('颁');
INSERT INTO `slang_list` VALUES ('颂');
INSERT INTO `slang_list` VALUES ('颃');
INSERT INTO `slang_list` VALUES ('预');
INSERT INTO `slang_list` VALUES ('颅');
INSERT INTO `slang_list` VALUES ('领');
INSERT INTO `slang_list` VALUES ('颈');
INSERT INTO `slang_list` VALUES ('颉');
INSERT INTO `slang_list` VALUES ('颊');
INSERT INTO `slang_list` VALUES ('颌');
INSERT INTO `slang_list` VALUES ('颍');
INSERT INTO `slang_list` VALUES ('颏');
INSERT INTO `slang_list` VALUES ('颐');
INSERT INTO `slang_list` VALUES ('颓');
INSERT INTO `slang_list` VALUES ('颔');
INSERT INTO `slang_list` VALUES ('颖');
INSERT INTO `slang_list` VALUES ('颗');
INSERT INTO `slang_list` VALUES ('题');
INSERT INTO `slang_list` VALUES ('颚');
INSERT INTO `slang_list` VALUES ('颛');
INSERT INTO `slang_list` VALUES ('颜');
INSERT INTO `slang_list` VALUES ('额');
INSERT INTO `slang_list` VALUES ('颞');
INSERT INTO `slang_list` VALUES ('颟');
INSERT INTO `slang_list` VALUES ('颠');
INSERT INTO `slang_list` VALUES ('颡');
INSERT INTO `slang_list` VALUES ('颢');
INSERT INTO `slang_list` VALUES ('颤');
INSERT INTO `slang_list` VALUES ('颥');
INSERT INTO `slang_list` VALUES ('颦');
INSERT INTO `slang_list` VALUES ('风');
INSERT INTO `slang_list` VALUES ('飑');
INSERT INTO `slang_list` VALUES ('飒');
INSERT INTO `slang_list` VALUES ('飓');
INSERT INTO `slang_list` VALUES ('飕');
INSERT INTO `slang_list` VALUES ('飙');
INSERT INTO `slang_list` VALUES ('飚');
INSERT INTO `slang_list` VALUES ('飞');
INSERT INTO `slang_list` VALUES ('食撚');
INSERT INTO `slang_list` VALUES ('食撚妹');
INSERT INTO `slang_list` VALUES ('食撚屎啦');
INSERT INTO `slang_list` VALUES ('飨');
INSERT INTO `slang_list` VALUES ('餍');
INSERT INTO `slang_list` VALUES ('饣');
INSERT INTO `slang_list` VALUES ('饥');
INSERT INTO `slang_list` VALUES ('饧');
INSERT INTO `slang_list` VALUES ('饨');
INSERT INTO `slang_list` VALUES ('饩');
INSERT INTO `slang_list` VALUES ('饪');
INSERT INTO `slang_list` VALUES ('饫');
INSERT INTO `slang_list` VALUES ('饬');
INSERT INTO `slang_list` VALUES ('饭');
INSERT INTO `slang_list` VALUES ('饮');
INSERT INTO `slang_list` VALUES ('饯');
INSERT INTO `slang_list` VALUES ('饰');
INSERT INTO `slang_list` VALUES ('饱');
INSERT INTO `slang_list` VALUES ('饲');
INSERT INTO `slang_list` VALUES ('饴');
INSERT INTO `slang_list` VALUES ('饵');
INSERT INTO `slang_list` VALUES ('饷');
INSERT INTO `slang_list` VALUES ('饺');
INSERT INTO `slang_list` VALUES ('饼');
INSERT INTO `slang_list` VALUES ('饽');
INSERT INTO `slang_list` VALUES ('饿');
INSERT INTO `slang_list` VALUES ('馀');
INSERT INTO `slang_list` VALUES ('馁');
INSERT INTO `slang_list` VALUES ('馄');
INSERT INTO `slang_list` VALUES ('馅');
INSERT INTO `slang_list` VALUES ('馆');
INSERT INTO `slang_list` VALUES ('馇');
INSERT INTO `slang_list` VALUES ('馈');
INSERT INTO `slang_list` VALUES ('馊');
INSERT INTO `slang_list` VALUES ('馋');
INSERT INTO `slang_list` VALUES ('馍');
INSERT INTO `slang_list` VALUES ('馏');
INSERT INTO `slang_list` VALUES ('馐');
INSERT INTO `slang_list` VALUES ('馑');
INSERT INTO `slang_list` VALUES ('馒');
INSERT INTO `slang_list` VALUES ('馓');
INSERT INTO `slang_list` VALUES ('馔');
INSERT INTO `slang_list` VALUES ('馕');
INSERT INTO `slang_list` VALUES ('騷貨');
INSERT INTO `slang_list` VALUES ('马');
INSERT INTO `slang_list` VALUES ('驭');
INSERT INTO `slang_list` VALUES ('驮');
INSERT INTO `slang_list` VALUES ('驯');
INSERT INTO `slang_list` VALUES ('驰');
INSERT INTO `slang_list` VALUES ('驳');
INSERT INTO `slang_list` VALUES ('驴');
INSERT INTO `slang_list` VALUES ('驵');
INSERT INTO `slang_list` VALUES ('驶');
INSERT INTO `slang_list` VALUES ('驷');
INSERT INTO `slang_list` VALUES ('驸');
INSERT INTO `slang_list` VALUES ('驹');
INSERT INTO `slang_list` VALUES ('驺');
INSERT INTO `slang_list` VALUES ('驻');
INSERT INTO `slang_list` VALUES ('驼');
INSERT INTO `slang_list` VALUES ('驽');
INSERT INTO `slang_list` VALUES ('驾');
INSERT INTO `slang_list` VALUES ('驿');
INSERT INTO `slang_list` VALUES ('骀');
INSERT INTO `slang_list` VALUES ('骁');
INSERT INTO `slang_list` VALUES ('骂');
INSERT INTO `slang_list` VALUES ('骄');
INSERT INTO `slang_list` VALUES ('骅');
INSERT INTO `slang_list` VALUES ('骆');
INSERT INTO `slang_list` VALUES ('骇');
INSERT INTO `slang_list` VALUES ('骈');
INSERT INTO `slang_list` VALUES ('骊');
INSERT INTO `slang_list` VALUES ('骋');
INSERT INTO `slang_list` VALUES ('验');
INSERT INTO `slang_list` VALUES ('骏');
INSERT INTO `slang_list` VALUES ('骐');
INSERT INTO `slang_list` VALUES ('骒');
INSERT INTO `slang_list` VALUES ('骓');
INSERT INTO `slang_list` VALUES ('骖');
INSERT INTO `slang_list` VALUES ('骘');
INSERT INTO `slang_list` VALUES ('骚');
INSERT INTO `slang_list` VALUES ('骛');
INSERT INTO `slang_list` VALUES ('骜');
INSERT INTO `slang_list` VALUES ('骝');
INSERT INTO `slang_list` VALUES ('骞');
INSERT INTO `slang_list` VALUES ('骟');
INSERT INTO `slang_list` VALUES ('骠');
INSERT INTO `slang_list` VALUES ('骡');
INSERT INTO `slang_list` VALUES ('骢');
INSERT INTO `slang_list` VALUES ('骣');
INSERT INTO `slang_list` VALUES ('骤');
INSERT INTO `slang_list` VALUES ('骥');
INSERT INTO `slang_list` VALUES ('骧');
INSERT INTO `slang_list` VALUES ('骶');
INSERT INTO `slang_list` VALUES ('骺');
INSERT INTO `slang_list` VALUES ('髅');
INSERT INTO `slang_list` VALUES ('髋');
INSERT INTO `slang_list` VALUES ('髌');
INSERT INTO `slang_list` VALUES ('鬏');
INSERT INTO `slang_list` VALUES ('鬓');
INSERT INTO `slang_list` VALUES ('魇');
INSERT INTO `slang_list` VALUES ('魉');
INSERT INTO `slang_list` VALUES ('鱼');
INSERT INTO `slang_list` VALUES ('鱿');
INSERT INTO `slang_list` VALUES ('鲁');
INSERT INTO `slang_list` VALUES ('鲂');
INSERT INTO `slang_list` VALUES ('鲅');
INSERT INTO `slang_list` VALUES ('鲆');
INSERT INTO `slang_list` VALUES ('鲇');
INSERT INTO `slang_list` VALUES ('鲈');
INSERT INTO `slang_list` VALUES ('鲋');
INSERT INTO `slang_list` VALUES ('鲍');
INSERT INTO `slang_list` VALUES ('鲎');
INSERT INTO `slang_list` VALUES ('鲐');
INSERT INTO `slang_list` VALUES ('鲑');
INSERT INTO `slang_list` VALUES ('鲒');
INSERT INTO `slang_list` VALUES ('鲔');
INSERT INTO `slang_list` VALUES ('鲕');
INSERT INTO `slang_list` VALUES ('鲚');
INSERT INTO `slang_list` VALUES ('鲛');
INSERT INTO `slang_list` VALUES ('鲜');
INSERT INTO `slang_list` VALUES ('鲞');
INSERT INTO `slang_list` VALUES ('鲟');
INSERT INTO `slang_list` VALUES ('鲠');
INSERT INTO `slang_list` VALUES ('鲡');
INSERT INTO `slang_list` VALUES ('鲢');
INSERT INTO `slang_list` VALUES ('鲣');
INSERT INTO `slang_list` VALUES ('鲤');
INSERT INTO `slang_list` VALUES ('鲥');
INSERT INTO `slang_list` VALUES ('鲦');
INSERT INTO `slang_list` VALUES ('鲧');
INSERT INTO `slang_list` VALUES ('鲨');
INSERT INTO `slang_list` VALUES ('鲩');
INSERT INTO `slang_list` VALUES ('鲫');
INSERT INTO `slang_list` VALUES ('鲭');
INSERT INTO `slang_list` VALUES ('鲮');
INSERT INTO `slang_list` VALUES ('鲰');
INSERT INTO `slang_list` VALUES ('鲱');
INSERT INTO `slang_list` VALUES ('鲲');
INSERT INTO `slang_list` VALUES ('鲳');
INSERT INTO `slang_list` VALUES ('鲴');
INSERT INTO `slang_list` VALUES ('鲵');
INSERT INTO `slang_list` VALUES ('鲶');
INSERT INTO `slang_list` VALUES ('鲷');
INSERT INTO `slang_list` VALUES ('鲸');
INSERT INTO `slang_list` VALUES ('鲺');
INSERT INTO `slang_list` VALUES ('鲻');
INSERT INTO `slang_list` VALUES ('鲼');
INSERT INTO `slang_list` VALUES ('鲽');
INSERT INTO `slang_list` VALUES ('鳄');
INSERT INTO `slang_list` VALUES ('鳅');
INSERT INTO `slang_list` VALUES ('鳆');
INSERT INTO `slang_list` VALUES ('鳇');
INSERT INTO `slang_list` VALUES ('鳊');
INSERT INTO `slang_list` VALUES ('鳋');
INSERT INTO `slang_list` VALUES ('鳌');
INSERT INTO `slang_list` VALUES ('鳍');
INSERT INTO `slang_list` VALUES ('鳎');
INSERT INTO `slang_list` VALUES ('鳏');
INSERT INTO `slang_list` VALUES ('鳐');
INSERT INTO `slang_list` VALUES ('鳓');
INSERT INTO `slang_list` VALUES ('鳔');
INSERT INTO `slang_list` VALUES ('鳕');
INSERT INTO `slang_list` VALUES ('鳖');
INSERT INTO `slang_list` VALUES ('鳗');
INSERT INTO `slang_list` VALUES ('鳘');
INSERT INTO `slang_list` VALUES ('鳙');
INSERT INTO `slang_list` VALUES ('鳜');
INSERT INTO `slang_list` VALUES ('鳝');
INSERT INTO `slang_list` VALUES ('鳞');
INSERT INTO `slang_list` VALUES ('鳟');
INSERT INTO `slang_list` VALUES ('鳢');
INSERT INTO `slang_list` VALUES ('鴉片');
INSERT INTO `slang_list` VALUES ('鸟');
INSERT INTO `slang_list` VALUES ('鸠');
INSERT INTO `slang_list` VALUES ('鸡');
INSERT INTO `slang_list` VALUES ('鸢');
INSERT INTO `slang_list` VALUES ('鸣');
INSERT INTO `slang_list` VALUES ('鸥');
INSERT INTO `slang_list` VALUES ('鸦');
INSERT INTO `slang_list` VALUES ('鸨');
INSERT INTO `slang_list` VALUES ('鸩');
INSERT INTO `slang_list` VALUES ('鸪');
INSERT INTO `slang_list` VALUES ('鸫');
INSERT INTO `slang_list` VALUES ('鸬');
INSERT INTO `slang_list` VALUES ('鸭');
INSERT INTO `slang_list` VALUES ('鸯');
INSERT INTO `slang_list` VALUES ('鸱');
INSERT INTO `slang_list` VALUES ('鸲');
INSERT INTO `slang_list` VALUES ('鸳');
INSERT INTO `slang_list` VALUES ('鸵');
INSERT INTO `slang_list` VALUES ('鸶');
INSERT INTO `slang_list` VALUES ('鸷');
INSERT INTO `slang_list` VALUES ('鸸');
INSERT INTO `slang_list` VALUES ('鸹');
INSERT INTO `slang_list` VALUES ('鸺');
INSERT INTO `slang_list` VALUES ('鸽');
INSERT INTO `slang_list` VALUES ('鸾');
INSERT INTO `slang_list` VALUES ('鸿');
INSERT INTO `slang_list` VALUES ('鹁');
INSERT INTO `slang_list` VALUES ('鹂');
INSERT INTO `slang_list` VALUES ('鹃');
INSERT INTO `slang_list` VALUES ('鹄');
INSERT INTO `slang_list` VALUES ('鹅');
INSERT INTO `slang_list` VALUES ('鹆');
INSERT INTO `slang_list` VALUES ('鹇');
INSERT INTO `slang_list` VALUES ('鹈');
INSERT INTO `slang_list` VALUES ('鹉');
INSERT INTO `slang_list` VALUES ('鹋');
INSERT INTO `slang_list` VALUES ('鹌');
INSERT INTO `slang_list` VALUES ('鹎');
INSERT INTO `slang_list` VALUES ('鹏');
INSERT INTO `slang_list` VALUES ('鹑');
INSERT INTO `slang_list` VALUES ('鹕');
INSERT INTO `slang_list` VALUES ('鹗');
INSERT INTO `slang_list` VALUES ('鹘');
INSERT INTO `slang_list` VALUES ('鹚');
INSERT INTO `slang_list` VALUES ('鹛');
INSERT INTO `slang_list` VALUES ('鹜');
INSERT INTO `slang_list` VALUES ('鹞');
INSERT INTO `slang_list` VALUES ('鹣');
INSERT INTO `slang_list` VALUES ('鹤');
INSERT INTO `slang_list` VALUES ('鹦');
INSERT INTO `slang_list` VALUES ('鹧');
INSERT INTO `slang_list` VALUES ('鹨');
INSERT INTO `slang_list` VALUES ('鹩');
INSERT INTO `slang_list` VALUES ('鹪');
INSERT INTO `slang_list` VALUES ('鹫');
INSERT INTO `slang_list` VALUES ('鹬');
INSERT INTO `slang_list` VALUES ('鹭');
INSERT INTO `slang_list` VALUES ('鹰');
INSERT INTO `slang_list` VALUES ('鹱');
INSERT INTO `slang_list` VALUES ('鹳');
INSERT INTO `slang_list` VALUES ('鹹家鏟');
INSERT INTO `slang_list` VALUES ('鹾');
INSERT INTO `slang_list` VALUES ('麦');
INSERT INTO `slang_list` VALUES ('麸');
INSERT INTO `slang_list` VALUES ('麽');
INSERT INTO `slang_list` VALUES ('黄');
INSERT INTO `slang_list` VALUES ('黉');
INSERT INTO `slang_list` VALUES ('黢');
INSERT INTO `slang_list` VALUES ('黨派');
INSERT INTO `slang_list` VALUES ('黩');
INSERT INTO `slang_list` VALUES ('黪');
INSERT INTO `slang_list` VALUES ('黾');
INSERT INTO `slang_list` VALUES ('鼋');
INSERT INTO `slang_list` VALUES ('鼍');
INSERT INTO `slang_list` VALUES ('鼗');
INSERT INTO `slang_list` VALUES ('鼹');
INSERT INTO `slang_list` VALUES ('齄');
INSERT INTO `slang_list` VALUES ('齑');
INSERT INTO `slang_list` VALUES ('齿');
INSERT INTO `slang_list` VALUES ('龀');
INSERT INTO `slang_list` VALUES ('龃');
INSERT INTO `slang_list` VALUES ('龄');
INSERT INTO `slang_list` VALUES ('龅');
INSERT INTO `slang_list` VALUES ('龆');
INSERT INTO `slang_list` VALUES ('龇');
INSERT INTO `slang_list` VALUES ('龈');
INSERT INTO `slang_list` VALUES ('龉');
INSERT INTO `slang_list` VALUES ('龊');
INSERT INTO `slang_list` VALUES ('龌');
INSERT INTO `slang_list` VALUES ('龙');
INSERT INTO `slang_list` VALUES ('龚');
INSERT INTO `slang_list` VALUES ('龛');
INSERT INTO `slang_list` VALUES ('龜蘭勃火');
INSERT INTO `slang_list` VALUES ('龜頭');
INSERT INTO `slang_list` VALUES ('龟');
INSERT INTO `slang_list` VALUES ('ＦＵＣＫ');
INSERT INTO `slang_list` VALUES ('ｆｕｃｋ');

-- ----------------------------
-- Table structure for slang_list_name
-- ----------------------------
DROP TABLE IF EXISTS `slang_list_name`;
CREATE TABLE `slang_list_name`  (
  `slang` varchar(153) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`slang`)
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slang_list_name
-- ----------------------------
INSERT INTO `slang_list_name` VALUES (' ');
INSERT INTO `slang_list_name` VALUES ('!');
INSERT INTO `slang_list_name` VALUES ('\"');
INSERT INTO `slang_list_name` VALUES ('#');
INSERT INTO `slang_list_name` VALUES ('$');
INSERT INTO `slang_list_name` VALUES ('&');
INSERT INTO `slang_list_name` VALUES ('\'');
INSERT INTO `slang_list_name` VALUES ('(');
INSERT INTO `slang_list_name` VALUES (')');
INSERT INTO `slang_list_name` VALUES ('*');
INSERT INTO `slang_list_name` VALUES (',');
INSERT INTO `slang_list_name` VALUES ('-');
INSERT INTO `slang_list_name` VALUES ('.');
INSERT INTO `slang_list_name` VALUES ('/');
INSERT INTO `slang_list_name` VALUES ('18x');
INSERT INTO `slang_list_name` VALUES ('2c8');
INSERT INTO `slang_list_name` VALUES (':');
INSERT INTO `slang_list_name` VALUES (';');
INSERT INTO `slang_list_name` VALUES ('<');
INSERT INTO `slang_list_name` VALUES ('=');
INSERT INTO `slang_list_name` VALUES ('>');
INSERT INTO `slang_list_name` VALUES ('?');
INSERT INTO `slang_list_name` VALUES ('@');
INSERT INTO `slang_list_name` VALUES ('CS');
INSERT INTO `slang_list_name` VALUES ('DNFCS');
INSERT INTO `slang_list_name` VALUES ('DNFOC');
INSERT INTO `slang_list_name` VALUES ('DNFQA');
INSERT INTO `slang_list_name` VALUES ('DNF客服');
INSERT INTO `slang_list_name` VALUES ('DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('G-A-R-E-N-A');
INSERT INTO `slang_list_name` VALUES ('G.A.R.E.N.A');
INSERT INTO `slang_list_name` VALUES ('GARENA');
INSERT INTO `slang_list_name` VALUES ('GARENa');
INSERT INTO `slang_list_name` VALUES ('GAREna');
INSERT INTO `slang_list_name` VALUES ('GARena');
INSERT INTO `slang_list_name` VALUES ('GArena');
INSERT INTO `slang_list_name` VALUES ('GGC');
INSERT INTO `slang_list_name` VALUES ('GGCGM');
INSERT INTO `slang_list_name` VALUES ('GGC_DNF客服');
INSERT INTO `slang_list_name` VALUES ('GGC_DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('GGC_DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('GGCgm');
INSERT INTO `slang_list_name` VALUES ('GGC公告');
INSERT INTO `slang_list_name` VALUES ('GGC在線GM');
INSERT INTO `slang_list_name` VALUES ('GGC官方');
INSERT INTO `slang_list_name` VALUES ('GGC官方人員');
INSERT INTO `slang_list_name` VALUES ('GGC官方專員');
INSERT INTO `slang_list_name` VALUES ('GGC客服');
INSERT INTO `slang_list_name` VALUES ('GGC客服中心');
INSERT INTO `slang_list_name` VALUES ('GGC客服人員');
INSERT INTO `slang_list_name` VALUES ('GGC客服專員');
INSERT INTO `slang_list_name` VALUES ('GGC客服測試人員');
INSERT INTO `slang_list_name` VALUES ('GGC專員');
INSERT INTO `slang_list_name` VALUES ('GGC專賣');
INSERT INTO `slang_list_name` VALUES ('GGC幣商');
INSERT INTO `slang_list_name` VALUES ('GGC廣播');
INSERT INTO `slang_list_name` VALUES ('GGC技術測試人員');
INSERT INTO `slang_list_name` VALUES ('GGC派遣員');
INSERT INTO `slang_list_name` VALUES ('GGC測試人員');
INSERT INTO `slang_list_name` VALUES ('GGC測試專員');
INSERT INTO `slang_list_name` VALUES ('GGC版主');
INSERT INTO `slang_list_name` VALUES ('GGC特派員');
INSERT INTO `slang_list_name` VALUES ('GGC管理員');
INSERT INTO `slang_list_name` VALUES ('GGC系統');
INSERT INTO `slang_list_name` VALUES ('GGC線上GM');
INSERT INTO `slang_list_name` VALUES ('GGC線上客服');
INSERT INTO `slang_list_name` VALUES ('GGC線上客服人員');
INSERT INTO `slang_list_name` VALUES ('GGC線上客服專員');
INSERT INTO `slang_list_name` VALUES ('GGC線上特派員');
INSERT INTO `slang_list_name` VALUES ('GM');
INSERT INTO `slang_list_name` VALUES ('GaRENA');
INSERT INTO `slang_list_name` VALUES ('GaRENa');
INSERT INTO `slang_list_name` VALUES ('GaREna');
INSERT INTO `slang_list_name` VALUES ('GaReNa');
INSERT INTO `slang_list_name` VALUES ('GaRena');
INSERT INTO `slang_list_name` VALUES ('GarENA');
INSERT INTO `slang_list_name` VALUES ('GarENa');
INSERT INTO `slang_list_name` VALUES ('GarEna');
INSERT INTO `slang_list_name` VALUES ('GareNA');
INSERT INTO `slang_list_name` VALUES ('GareNa');
INSERT INTO `slang_list_name` VALUES ('Garena');
INSERT INTO `slang_list_name` VALUES ('Garena GM');
INSERT INTO `slang_list_name` VALUES ('Garena-GM');
INSERT INTO `slang_list_name` VALUES ('GarenaGM');
INSERT INTO `slang_list_name` VALUES ('GarenaTW');
INSERT INTO `slang_list_name` VALUES ('GarenaTWGM');
INSERT INTO `slang_list_name` VALUES ('GarenaTW_DNF客服');
INSERT INTO `slang_list_name` VALUES ('GarenaTW_DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW_DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('GarenaTWgm');
INSERT INTO `slang_list_name` VALUES ('GarenaTW公告');
INSERT INTO `slang_list_name` VALUES ('GarenaTW在線GM');
INSERT INTO `slang_list_name` VALUES ('GarenaTW官方');
INSERT INTO `slang_list_name` VALUES ('GarenaTW官方人員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW官方專員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW客服');
INSERT INTO `slang_list_name` VALUES ('GarenaTW客服中心');
INSERT INTO `slang_list_name` VALUES ('GarenaTW客服人員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW客服專員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW客服測試人員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW專員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW專賣');
INSERT INTO `slang_list_name` VALUES ('GarenaTW幣商');
INSERT INTO `slang_list_name` VALUES ('GarenaTW廣播');
INSERT INTO `slang_list_name` VALUES ('GarenaTW技術測試人員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW派遣員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW測試人員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW測試專員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW版主');
INSERT INTO `slang_list_name` VALUES ('GarenaTW特派員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW管理員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW系統');
INSERT INTO `slang_list_name` VALUES ('GarenaTW線上GM');
INSERT INTO `slang_list_name` VALUES ('GarenaTW線上客服');
INSERT INTO `slang_list_name` VALUES ('GarenaTW線上客服人員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW線上客服專員');
INSERT INTO `slang_list_name` VALUES ('GarenaTW線上特派員');
INSERT INTO `slang_list_name` VALUES ('Garena_DNF客服');
INSERT INTO `slang_list_name` VALUES ('Garena_DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('Garena_DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('Garena_GM');
INSERT INTO `slang_list_name` VALUES ('Garenagm');
INSERT INTO `slang_list_name` VALUES ('Garena公告');
INSERT INTO `slang_list_name` VALUES ('Garena在線GM');
INSERT INTO `slang_list_name` VALUES ('Garena官方');
INSERT INTO `slang_list_name` VALUES ('Garena官方人員');
INSERT INTO `slang_list_name` VALUES ('Garena官方專員');
INSERT INTO `slang_list_name` VALUES ('Garena客服');
INSERT INTO `slang_list_name` VALUES ('Garena客服中心');
INSERT INTO `slang_list_name` VALUES ('Garena客服人員');
INSERT INTO `slang_list_name` VALUES ('Garena客服專員');
INSERT INTO `slang_list_name` VALUES ('Garena客服測試人員');
INSERT INTO `slang_list_name` VALUES ('Garena專員');
INSERT INTO `slang_list_name` VALUES ('Garena專賣');
INSERT INTO `slang_list_name` VALUES ('Garena小天使');
INSERT INTO `slang_list_name` VALUES ('Garena小幫手');
INSERT INTO `slang_list_name` VALUES ('Garena幣商');
INSERT INTO `slang_list_name` VALUES ('Garena廣播');
INSERT INTO `slang_list_name` VALUES ('Garena技術測試人員');
INSERT INTO `slang_list_name` VALUES ('Garena派遣員');
INSERT INTO `slang_list_name` VALUES ('Garena測試人員');
INSERT INTO `slang_list_name` VALUES ('Garena測試專員');
INSERT INTO `slang_list_name` VALUES ('Garena版主');
INSERT INTO `slang_list_name` VALUES ('Garena特派員');
INSERT INTO `slang_list_name` VALUES ('Garena管理員');
INSERT INTO `slang_list_name` VALUES ('Garena系統');
INSERT INTO `slang_list_name` VALUES ('Garena線上GM');
INSERT INTO `slang_list_name` VALUES ('Garena線上客服');
INSERT INTO `slang_list_name` VALUES ('Garena線上客服人員');
INSERT INTO `slang_list_name` VALUES ('Garena線上客服專員');
INSERT INTO `slang_list_name` VALUES ('Garena線上特派員');
INSERT INTO `slang_list_name` VALUES ('POKER');
INSERT INTO `slang_list_name` VALUES ('Poker');
INSERT INTO `slang_list_name` VALUES ('QA');
INSERT INTO `slang_list_name` VALUES ('RMB');
INSERT INTO `slang_list_name` VALUES ('[');
INSERT INTO `slang_list_name` VALUES ('\\');
INSERT INTO `slang_list_name` VALUES ('\\%');
INSERT INTO `slang_list_name` VALUES (']');
INSERT INTO `slang_list_name` VALUES ('^');
INSERT INTO `slang_list_name` VALUES ('_');
INSERT INTO `slang_list_name` VALUES ('`');
INSERT INTO `slang_list_name` VALUES ('abuse');
INSERT INTO `slang_list_name` VALUES ('adm1n');
INSERT INTO `slang_list_name` VALUES ('adm1nnurien');
INSERT INTO `slang_list_name` VALUES ('admin');
INSERT INTO `slang_list_name` VALUES ('administrator');
INSERT INTO `slang_list_name` VALUES ('administratornurien');
INSERT INTO `slang_list_name` VALUES ('adminnurien');
INSERT INTO `slang_list_name` VALUES ('avastar');
INSERT INTO `slang_list_name` VALUES ('bitch');
INSERT INTO `slang_list_name` VALUES ('boji');
INSERT INTO `slang_list_name` VALUES ('bot');
INSERT INTO `slang_list_name` VALUES ('bozi');
INSERT INTO `slang_list_name` VALUES ('bozy');
INSERT INTO `slang_list_name` VALUES ('bunsek');
INSERT INTO `slang_list_name` VALUES ('c8');
INSERT INTO `slang_list_name` VALUES ('c818');
INSERT INTO `slang_list_name` VALUES ('c8c8');
INSERT INTO `slang_list_name` VALUES ('ccibal');
INSERT INTO `slang_list_name` VALUES ('ccipal');
INSERT INTO `slang_list_name` VALUES ('ccival');
INSERT INTO `slang_list_name` VALUES ('cibal');
INSERT INTO `slang_list_name` VALUES ('cipal');
INSERT INTO `slang_list_name` VALUES ('cival');
INSERT INTO `slang_list_name` VALUES ('clitoris');
INSERT INTO `slang_list_name` VALUES ('comesek');
INSERT INTO `slang_list_name` VALUES ('comsek');
INSERT INTO `slang_list_name` VALUES ('cscenter');
INSERT INTO `slang_list_name` VALUES ('csteam');
INSERT INTO `slang_list_name` VALUES ('dildo');
INSERT INTO `slang_list_name` VALUES ('doumi');
INSERT INTO `slang_list_name` VALUES ('fuck');
INSERT INTO `slang_list_name` VALUES ('fuckyou');
INSERT INTO `slang_list_name` VALUES ('fuuck');
INSERT INTO `slang_list_name` VALUES ('g.m');
INSERT INTO `slang_list_name` VALUES ('g.mnurien');
INSERT INTO `slang_list_name` VALUES ('gARENA');
INSERT INTO `slang_list_name` VALUES ('gARENa');
INSERT INTO `slang_list_name` VALUES ('gAREna');
INSERT INTO `slang_list_name` VALUES ('gARena');
INSERT INTO `slang_list_name` VALUES ('gArEnA');
INSERT INTO `slang_list_name` VALUES ('gArena');
INSERT INTO `slang_list_name` VALUES ('gaRENA');
INSERT INTO `slang_list_name` VALUES ('gaRENa');
INSERT INTO `slang_list_name` VALUES ('gaREna');
INSERT INTO `slang_list_name` VALUES ('gaRena');
INSERT INTO `slang_list_name` VALUES ('gamemaster');
INSERT INTO `slang_list_name` VALUES ('gamemasternurien');
INSERT INTO `slang_list_name` VALUES ('garENA');
INSERT INTO `slang_list_name` VALUES ('garENa');
INSERT INTO `slang_list_name` VALUES ('garEna');
INSERT INTO `slang_list_name` VALUES ('gareNA');
INSERT INTO `slang_list_name` VALUES ('gareNa');
INSERT INTO `slang_list_name` VALUES ('garen');
INSERT INTO `slang_list_name` VALUES ('garena');
INSERT INTO `slang_list_name` VALUES ('garenaGM');
INSERT INTO `slang_list_name` VALUES ('garena_DNF客服');
INSERT INTO `slang_list_name` VALUES ('garena_DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('garena_DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('garenagm');
INSERT INTO `slang_list_name` VALUES ('garena公告');
INSERT INTO `slang_list_name` VALUES ('garena在線GM');
INSERT INTO `slang_list_name` VALUES ('garena官方');
INSERT INTO `slang_list_name` VALUES ('garena官方人員');
INSERT INTO `slang_list_name` VALUES ('garena官方專員');
INSERT INTO `slang_list_name` VALUES ('garena客服');
INSERT INTO `slang_list_name` VALUES ('garena客服中心');
INSERT INTO `slang_list_name` VALUES ('garena客服人員');
INSERT INTO `slang_list_name` VALUES ('garena客服專員');
INSERT INTO `slang_list_name` VALUES ('garena客服測試人員');
INSERT INTO `slang_list_name` VALUES ('garena專員');
INSERT INTO `slang_list_name` VALUES ('garena專賣');
INSERT INTO `slang_list_name` VALUES ('garena幣商');
INSERT INTO `slang_list_name` VALUES ('garena廣播');
INSERT INTO `slang_list_name` VALUES ('garena技術測試人員');
INSERT INTO `slang_list_name` VALUES ('garena派遣員');
INSERT INTO `slang_list_name` VALUES ('garena測試人員');
INSERT INTO `slang_list_name` VALUES ('garena測試專員');
INSERT INTO `slang_list_name` VALUES ('garena版主');
INSERT INTO `slang_list_name` VALUES ('garena特派員');
INSERT INTO `slang_list_name` VALUES ('garena管理員');
INSERT INTO `slang_list_name` VALUES ('garena系統');
INSERT INTO `slang_list_name` VALUES ('garena線上GM');
INSERT INTO `slang_list_name` VALUES ('garena線上客服');
INSERT INTO `slang_list_name` VALUES ('garena線上客服人員');
INSERT INTO `slang_list_name` VALUES ('garena線上客服專員');
INSERT INTO `slang_list_name` VALUES ('garena線上特派員');
INSERT INTO `slang_list_name` VALUES ('ggc');
INSERT INTO `slang_list_name` VALUES ('ggcGM');
INSERT INTO `slang_list_name` VALUES ('ggc_DNF客服');
INSERT INTO `slang_list_name` VALUES ('ggc_DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('ggc_DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('ggcgm');
INSERT INTO `slang_list_name` VALUES ('ggc公告');
INSERT INTO `slang_list_name` VALUES ('ggc在線GM');
INSERT INTO `slang_list_name` VALUES ('ggc官方');
INSERT INTO `slang_list_name` VALUES ('ggc官方人員');
INSERT INTO `slang_list_name` VALUES ('ggc官方專員');
INSERT INTO `slang_list_name` VALUES ('ggc客服');
INSERT INTO `slang_list_name` VALUES ('ggc客服中心');
INSERT INTO `slang_list_name` VALUES ('ggc客服人員');
INSERT INTO `slang_list_name` VALUES ('ggc客服專員');
INSERT INTO `slang_list_name` VALUES ('ggc客服測試人員');
INSERT INTO `slang_list_name` VALUES ('ggc專員');
INSERT INTO `slang_list_name` VALUES ('ggc專賣');
INSERT INTO `slang_list_name` VALUES ('ggc幣商');
INSERT INTO `slang_list_name` VALUES ('ggc廣播');
INSERT INTO `slang_list_name` VALUES ('ggc技術測試人員');
INSERT INTO `slang_list_name` VALUES ('ggc派遣員');
INSERT INTO `slang_list_name` VALUES ('ggc測試人員');
INSERT INTO `slang_list_name` VALUES ('ggc測試專員');
INSERT INTO `slang_list_name` VALUES ('ggc版主');
INSERT INTO `slang_list_name` VALUES ('ggc特派員');
INSERT INTO `slang_list_name` VALUES ('ggc管理員');
INSERT INTO `slang_list_name` VALUES ('ggc系統');
INSERT INTO `slang_list_name` VALUES ('ggc線上GM');
INSERT INTO `slang_list_name` VALUES ('ggc線上客服');
INSERT INTO `slang_list_name` VALUES ('ggc線上客服人員');
INSERT INTO `slang_list_name` VALUES ('ggc線上客服專員');
INSERT INTO `slang_list_name` VALUES ('ggc線上特派員');
INSERT INTO `slang_list_name` VALUES ('gm');
INSERT INTO `slang_list_name` VALUES ('gmnurien');
INSERT INTO `slang_list_name` VALUES ('jaji');
INSERT INTO `slang_list_name` VALUES ('jajy');
INSERT INTO `slang_list_name` VALUES ('jawe');
INSERT INTO `slang_list_name` VALUES ('jawi');
INSERT INTO `slang_list_name` VALUES ('master');
INSERT INTO `slang_list_name` VALUES ('masternurien');
INSERT INTO `slang_list_name` VALUES ('monitoring');
INSERT INTO `slang_list_name` VALUES ('monitoringnurien');
INSERT INTO `slang_list_name` VALUES ('mstar');
INSERT INTO `slang_list_name` VALUES ('myble');
INSERT INTO `slang_list_name` VALUES ('nurien');
INSERT INTO `slang_list_name` VALUES ('nurienadm1n');
INSERT INTO `slang_list_name` VALUES ('nurienadmin');
INSERT INTO `slang_list_name` VALUES ('nurienadministrator');
INSERT INTO `slang_list_name` VALUES ('nurieng.m');
INSERT INTO `slang_list_name` VALUES ('nuriengamemaster');
INSERT INTO `slang_list_name` VALUES ('nuriengm');
INSERT INTO `slang_list_name` VALUES ('nurienmaster');
INSERT INTO `slang_list_name` VALUES ('nurienmonitoring');
INSERT INTO `slang_list_name` VALUES ('nurienprivacy');
INSERT INTO `slang_list_name` VALUES ('nurienwebmaster');
INSERT INTO `slang_list_name` VALUES ('oral');
INSERT INTO `slang_list_name` VALUES ('penis');
INSERT INTO `slang_list_name` VALUES ('phonsek');
INSERT INTO `slang_list_name` VALUES ('poker');
INSERT INTO `slang_list_name` VALUES ('ponsek');
INSERT INTO `slang_list_name` VALUES ('postmaster');
INSERT INTO `slang_list_name` VALUES ('privacy');
INSERT INTO `slang_list_name` VALUES ('privacynurien');
INSERT INTO `slang_list_name` VALUES ('pussy');
INSERT INTO `slang_list_name` VALUES ('quizstar');
INSERT INTO `slang_list_name` VALUES ('runway');
INSERT INTO `slang_list_name` VALUES ('s2x');
INSERT INTO `slang_list_name` VALUES ('service');
INSERT INTO `slang_list_name` VALUES ('sex');
INSERT INTO `slang_list_name` VALUES ('sibal');
INSERT INTO `slang_list_name` VALUES ('sipal');
INSERT INTO `slang_list_name` VALUES ('sival');
INSERT INTO `slang_list_name` VALUES ('ssibal');
INSERT INTO `slang_list_name` VALUES ('ssibbal');
INSERT INTO `slang_list_name` VALUES ('ssipal');
INSERT INTO `slang_list_name` VALUES ('ssival');
INSERT INTO `slang_list_name` VALUES ('swapping');
INSERT INTO `slang_list_name` VALUES ('vulva');
INSERT INTO `slang_list_name` VALUES ('webmaster');
INSERT INTO `slang_list_name` VALUES ('webmasternurien');
INSERT INTO `slang_list_name` VALUES ('woori');
INSERT INTO `slang_list_name` VALUES ('wooriadmin');
INSERT INTO `slang_list_name` VALUES ('wooribank');
INSERT INTO `slang_list_name` VALUES ('wooribankadmin');
INSERT INTO `slang_list_name` VALUES ('woorispace');
INSERT INTO `slang_list_name` VALUES ('zagy');
INSERT INTO `slang_list_name` VALUES ('zazi');
INSERT INTO `slang_list_name` VALUES ('zazy');
INSERT INTO `slang_list_name` VALUES ('zot');
INSERT INTO `slang_list_name` VALUES ('{');
INSERT INTO `slang_list_name` VALUES ('|');
INSERT INTO `slang_list_name` VALUES ('}');
INSERT INTO `slang_list_name` VALUES ('~');
INSERT INTO `slang_list_name` VALUES ('ㄊㄇㄉ');
INSERT INTO `slang_list_name` VALUES ('ㄐㄅ');
INSERT INTO `slang_list_name` VALUES ('ㄐ八');
INSERT INTO `slang_list_name` VALUES ('ㄐ巴');
INSERT INTO `slang_list_name` VALUES ('ㄐ掰');
INSERT INTO `slang_list_name` VALUES ('ㄑㄋㄉ');
INSERT INTO `slang_list_name` VALUES ('专');
INSERT INTO `slang_list_name` VALUES ('业');
INSERT INTO `slang_list_name` VALUES ('丛');
INSERT INTO `slang_list_name` VALUES ('东');
INSERT INTO `slang_list_name` VALUES ('丝');
INSERT INTO `slang_list_name` VALUES ('丢');
INSERT INTO `slang_list_name` VALUES ('两');
INSERT INTO `slang_list_name` VALUES ('严');
INSERT INTO `slang_list_name` VALUES ('丧');
INSERT INTO `slang_list_name` VALUES ('丨');
INSERT INTO `slang_list_name` VALUES ('个');
INSERT INTO `slang_list_name` VALUES ('丬');
INSERT INTO `slang_list_name` VALUES ('中共');
INSERT INTO `slang_list_name` VALUES ('中出');
INSERT INTO `slang_list_name` VALUES ('中國人民解放軍');
INSERT INTO `slang_list_name` VALUES ('中國共產黨');
INSERT INTO `slang_list_name` VALUES ('中國國民黨');
INSERT INTO `slang_list_name` VALUES ('临');
INSERT INTO `slang_list_name` VALUES ('丶');
INSERT INTO `slang_list_name` VALUES ('为');
INSERT INTO `slang_list_name` VALUES ('丽');
INSERT INTO `slang_list_name` VALUES ('举');
INSERT INTO `slang_list_name` VALUES ('丿');
INSERT INTO `slang_list_name` VALUES ('么');
INSERT INTO `slang_list_name` VALUES ('义');
INSERT INTO `slang_list_name` VALUES ('乌');
INSERT INTO `slang_list_name` VALUES ('乐');
INSERT INTO `slang_list_name` VALUES ('习');
INSERT INTO `slang_list_name` VALUES ('乡');
INSERT INTO `slang_list_name` VALUES ('书');
INSERT INTO `slang_list_name` VALUES ('买');
INSERT INTO `slang_list_name` VALUES ('乱');
INSERT INTO `slang_list_name` VALUES ('乳頭');
INSERT INTO `slang_list_name` VALUES ('争');
INSERT INTO `slang_list_name` VALUES ('亏');
INSERT INTO `slang_list_name` VALUES ('亘');
INSERT INTO `slang_list_name` VALUES ('亚');
INSERT INTO `slang_list_name` VALUES ('亠');
INSERT INTO `slang_list_name` VALUES ('交易網');
INSERT INTO `slang_list_name` VALUES ('产');
INSERT INTO `slang_list_name` VALUES ('亩');
INSERT INTO `slang_list_name` VALUES ('亵');
INSERT INTO `slang_list_name` VALUES ('亻');
INSERT INTO `slang_list_name` VALUES ('亿');
INSERT INTO `slang_list_name` VALUES ('仅');
INSERT INTO `slang_list_name` VALUES ('仆');
INSERT INTO `slang_list_name` VALUES ('仆街');
INSERT INTO `slang_list_name` VALUES ('从');
INSERT INTO `slang_list_name` VALUES ('仑');
INSERT INTO `slang_list_name` VALUES ('仓');
INSERT INTO `slang_list_name` VALUES ('他娘的');
INSERT INTO `slang_list_name` VALUES ('他媽的');
INSERT INTO `slang_list_name` VALUES ('代客練功');
INSERT INTO `slang_list_name` VALUES ('仪');
INSERT INTO `slang_list_name` VALUES ('仫');
INSERT INTO `slang_list_name` VALUES ('们');
INSERT INTO `slang_list_name` VALUES ('众');
INSERT INTO `slang_list_name` VALUES ('会');
INSERT INTO `slang_list_name` VALUES ('伛');
INSERT INTO `slang_list_name` VALUES ('伞');
INSERT INTO `slang_list_name` VALUES ('伟');
INSERT INTO `slang_list_name` VALUES ('传');
INSERT INTO `slang_list_name` VALUES ('伤');
INSERT INTO `slang_list_name` VALUES ('伥');
INSERT INTO `slang_list_name` VALUES ('伦');
INSERT INTO `slang_list_name` VALUES ('伧');
INSERT INTO `slang_list_name` VALUES ('伪');
INSERT INTO `slang_list_name` VALUES ('伫');
INSERT INTO `slang_list_name` VALUES ('伲');
INSERT INTO `slang_list_name` VALUES ('作愛');
INSERT INTO `slang_list_name` VALUES ('你娘');
INSERT INTO `slang_list_name` VALUES ('你娘78');
INSERT INTO `slang_list_name` VALUES ('你娘卡好');
INSERT INTO `slang_list_name` VALUES ('你娘的');
INSERT INTO `slang_list_name` VALUES ('你媽的');
INSERT INTO `slang_list_name` VALUES ('你老母');
INSERT INTO `slang_list_name` VALUES ('佥');
INSERT INTO `slang_list_name` VALUES ('侠');
INSERT INTO `slang_list_name` VALUES ('侣');
INSERT INTO `slang_list_name` VALUES ('侥');
INSERT INTO `slang_list_name` VALUES ('侦');
INSERT INTO `slang_list_name` VALUES ('侧');
INSERT INTO `slang_list_name` VALUES ('侩');
INSERT INTO `slang_list_name` VALUES ('侪');
INSERT INTO `slang_list_name` VALUES ('侬');
INSERT INTO `slang_list_name` VALUES ('俗啦');
INSERT INTO `slang_list_name` VALUES ('俣');
INSERT INTO `slang_list_name` VALUES ('俦');
INSERT INTO `slang_list_name` VALUES ('俨');
INSERT INTO `slang_list_name` VALUES ('俩');
INSERT INTO `slang_list_name` VALUES ('俪');
INSERT INTO `slang_list_name` VALUES ('俭');
INSERT INTO `slang_list_name` VALUES ('倒扁');
INSERT INTO `slang_list_name` VALUES ('倒馬');
INSERT INTO `slang_list_name` VALUES ('倮');
INSERT INTO `slang_list_name` VALUES ('债');
INSERT INTO `slang_list_name` VALUES ('偬');
INSERT INTO `slang_list_name` VALUES ('偻');
INSERT INTO `slang_list_name` VALUES ('偾');
INSERT INTO `slang_list_name` VALUES ('偿');
INSERT INTO `slang_list_name` VALUES ('傈');
INSERT INTO `slang_list_name` VALUES ('傥');
INSERT INTO `slang_list_name` VALUES ('傧');
INSERT INTO `slang_list_name` VALUES ('储');
INSERT INTO `slang_list_name` VALUES ('傩');
INSERT INTO `slang_list_name` VALUES ('兑');
INSERT INTO `slang_list_name` VALUES ('兖');
INSERT INTO `slang_list_name` VALUES ('公告');
INSERT INTO `slang_list_name` VALUES ('兰');
INSERT INTO `slang_list_name` VALUES ('共匪');
INSERT INTO `slang_list_name` VALUES ('共軍');
INSERT INTO `slang_list_name` VALUES ('共黨');
INSERT INTO `slang_list_name` VALUES ('关');
INSERT INTO `slang_list_name` VALUES ('兴');
INSERT INTO `slang_list_name` VALUES ('兹');
INSERT INTO `slang_list_name` VALUES ('养');
INSERT INTO `slang_list_name` VALUES ('兽');
INSERT INTO `slang_list_name` VALUES ('冁');
INSERT INTO `slang_list_name` VALUES ('冂');
INSERT INTO `slang_list_name` VALUES ('内');
INSERT INTO `slang_list_name` VALUES ('冈');
INSERT INTO `slang_list_name` VALUES ('册');
INSERT INTO `slang_list_name` VALUES ('冖');
INSERT INTO `slang_list_name` VALUES ('写');
INSERT INTO `slang_list_name` VALUES ('军');
INSERT INTO `slang_list_name` VALUES ('农');
INSERT INTO `slang_list_name` VALUES ('冫');
INSERT INTO `slang_list_name` VALUES ('冯');
INSERT INTO `slang_list_name` VALUES ('冰毒');
INSERT INTO `slang_list_name` VALUES ('冲');
INSERT INTO `slang_list_name` VALUES ('决');
INSERT INTO `slang_list_name` VALUES ('况');
INSERT INTO `slang_list_name` VALUES ('冻');
INSERT INTO `slang_list_name` VALUES ('净');
INSERT INTO `slang_list_name` VALUES ('凇');
INSERT INTO `slang_list_name` VALUES ('凉');
INSERT INTO `slang_list_name` VALUES ('减');
INSERT INTO `slang_list_name` VALUES ('凑');
INSERT INTO `slang_list_name` VALUES ('凛');
INSERT INTO `slang_list_name` VALUES ('凤');
INSERT INTO `slang_list_name` VALUES ('凫');
INSERT INTO `slang_list_name` VALUES ('凯');
INSERT INTO `slang_list_name` VALUES ('击');
INSERT INTO `slang_list_name` VALUES ('凼');
INSERT INTO `slang_list_name` VALUES ('凿');
INSERT INTO `slang_list_name` VALUES ('刁');
INSERT INTO `slang_list_name` VALUES ('刂');
INSERT INTO `slang_list_name` VALUES ('刍');
INSERT INTO `slang_list_name` VALUES ('刘');
INSERT INTO `slang_list_name` VALUES ('则');
INSERT INTO `slang_list_name` VALUES ('刚');
INSERT INTO `slang_list_name` VALUES ('创');
INSERT INTO `slang_list_name` VALUES ('删');
INSERT INTO `slang_list_name` VALUES ('别');
INSERT INTO `slang_list_name` VALUES ('刭');
INSERT INTO `slang_list_name` VALUES ('刹');
INSERT INTO `slang_list_name` VALUES ('刽');
INSERT INTO `slang_list_name` VALUES ('刿');
INSERT INTO `slang_list_name` VALUES ('剀');
INSERT INTO `slang_list_name` VALUES ('剂');
INSERT INTO `slang_list_name` VALUES ('剐');
INSERT INTO `slang_list_name` VALUES ('剑');
INSERT INTO `slang_list_name` VALUES ('剥');
INSERT INTO `slang_list_name` VALUES ('剧');
INSERT INTO `slang_list_name` VALUES ('劐');
INSERT INTO `slang_list_name` VALUES ('办');
INSERT INTO `slang_list_name` VALUES ('务');
INSERT INTO `slang_list_name` VALUES ('劢');
INSERT INTO `slang_list_name` VALUES ('动');
INSERT INTO `slang_list_name` VALUES ('励');
INSERT INTO `slang_list_name` VALUES ('劲');
INSERT INTO `slang_list_name` VALUES ('劳');
INSERT INTO `slang_list_name` VALUES ('势');
INSERT INTO `slang_list_name` VALUES ('勁炮團');
INSERT INTO `slang_list_name` VALUES ('勃起');
INSERT INTO `slang_list_name` VALUES ('勋');
INSERT INTO `slang_list_name` VALUES ('勐');
INSERT INTO `slang_list_name` VALUES ('勹');
INSERT INTO `slang_list_name` VALUES ('匀');
INSERT INTO `slang_list_name` VALUES ('包皮');
INSERT INTO `slang_list_name` VALUES ('北七');
INSERT INTO `slang_list_name` VALUES ('匦');
INSERT INTO `slang_list_name` VALUES ('匮');
INSERT INTO `slang_list_name` VALUES ('医');
INSERT INTO `slang_list_name` VALUES ('华');
INSERT INTO `slang_list_name` VALUES ('协');
INSERT INTO `slang_list_name` VALUES ('单');
INSERT INTO `slang_list_name` VALUES ('卖');
INSERT INTO `slang_list_name` VALUES ('卟');
INSERT INTO `slang_list_name` VALUES ('卢');
INSERT INTO `slang_list_name` VALUES ('卤');
INSERT INTO `slang_list_name` VALUES ('卧');
INSERT INTO `slang_list_name` VALUES ('卩');
INSERT INTO `slang_list_name` VALUES ('卫');
INSERT INTO `slang_list_name` VALUES ('卵子');
INSERT INTO `slang_list_name` VALUES ('卺');
INSERT INTO `slang_list_name` VALUES ('厅');
INSERT INTO `slang_list_name` VALUES ('历');
INSERT INTO `slang_list_name` VALUES ('厉');
INSERT INTO `slang_list_name` VALUES ('压');
INSERT INTO `slang_list_name` VALUES ('厌');
INSERT INTO `slang_list_name` VALUES ('厍');
INSERT INTO `slang_list_name` VALUES ('厕');
INSERT INTO `slang_list_name` VALUES ('厢');
INSERT INTO `slang_list_name` VALUES ('厣');
INSERT INTO `slang_list_name` VALUES ('厦');
INSERT INTO `slang_list_name` VALUES ('厨');
INSERT INTO `slang_list_name` VALUES ('厩');
INSERT INTO `slang_list_name` VALUES ('厮');
INSERT INTO `slang_list_name` VALUES ('厶');
INSERT INTO `slang_list_name` VALUES ('去你媽的');
INSERT INTO `slang_list_name` VALUES ('去你媽的蛋蛋');
INSERT INTO `slang_list_name` VALUES ('去你的');
INSERT INTO `slang_list_name` VALUES ('县');
INSERT INTO `slang_list_name` VALUES ('参');
INSERT INTO `slang_list_name` VALUES ('双');
INSERT INTO `slang_list_name` VALUES ('反共');
INSERT INTO `slang_list_name` VALUES ('反動');
INSERT INTO `slang_list_name` VALUES ('反黨');
INSERT INTO `slang_list_name` VALUES ('发');
INSERT INTO `slang_list_name` VALUES ('变');
INSERT INTO `slang_list_name` VALUES ('叙');
INSERT INTO `slang_list_name` VALUES ('叠');
INSERT INTO `slang_list_name` VALUES ('口交');
INSERT INTO `slang_list_name` VALUES ('口淫');
INSERT INTO `slang_list_name` VALUES ('台灣民主聯盟');
INSERT INTO `slang_list_name` VALUES ('台灣獨立');
INSERT INTO `slang_list_name` VALUES ('台灣競舞');
INSERT INTO `slang_list_name` VALUES ('台灣競舞DNF客服');
INSERT INTO `slang_list_name` VALUES ('台灣競舞DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞GM');
INSERT INTO `slang_list_name` VALUES ('台灣競舞gm');
INSERT INTO `slang_list_name` VALUES ('台灣競舞公告');
INSERT INTO `slang_list_name` VALUES ('台灣競舞在線GM');
INSERT INTO `slang_list_name` VALUES ('台灣競舞娛樂有限公司');
INSERT INTO `slang_list_name` VALUES ('台灣競舞官方');
INSERT INTO `slang_list_name` VALUES ('台灣競舞官方人員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞官方專員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞客服');
INSERT INTO `slang_list_name` VALUES ('台灣競舞客服中心');
INSERT INTO `slang_list_name` VALUES ('台灣競舞客服人員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞客服專員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞客服測試人員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞專員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞專賣');
INSERT INTO `slang_list_name` VALUES ('台灣競舞幣商');
INSERT INTO `slang_list_name` VALUES ('台灣競舞廣播');
INSERT INTO `slang_list_name` VALUES ('台灣競舞技術測試人員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞派遣員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞測試人員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞測試專員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞版主');
INSERT INTO `slang_list_name` VALUES ('台灣競舞特派員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞管理員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞系統');
INSERT INTO `slang_list_name` VALUES ('台灣競舞線上GM');
INSERT INTO `slang_list_name` VALUES ('台灣競舞線上客服');
INSERT INTO `slang_list_name` VALUES ('台灣競舞線上客服人員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞線上客服專員');
INSERT INTO `slang_list_name` VALUES ('台灣競舞線上特派員');
INSERT INTO `slang_list_name` VALUES ('台獨');
INSERT INTO `slang_list_name` VALUES ('台聯');
INSERT INTO `slang_list_name` VALUES ('叶');
INSERT INTO `slang_list_name` VALUES ('号');
INSERT INTO `slang_list_name` VALUES ('叹');
INSERT INTO `slang_list_name` VALUES ('叽');
INSERT INTO `slang_list_name` VALUES ('吃屎');
INSERT INTO `slang_list_name` VALUES ('吊你');
INSERT INTO `slang_list_name` VALUES ('吊你好撚');
INSERT INTO `slang_list_name` VALUES ('吊你老味');
INSERT INTO `slang_list_name` VALUES ('吊你老母');
INSERT INTO `slang_list_name` VALUES ('吊佢佬未');
INSERT INTO `slang_list_name` VALUES ('吊妳好撚');
INSERT INTO `slang_list_name` VALUES ('吊妳老味');
INSERT INTO `slang_list_name` VALUES ('吊妳老母');
INSERT INTO `slang_list_name` VALUES ('吓');
INSERT INTO `slang_list_name` VALUES ('吕');
INSERT INTO `slang_list_name` VALUES ('吖');
INSERT INTO `slang_list_name` VALUES ('吗');
INSERT INTO `slang_list_name` VALUES ('吡');
INSERT INTO `slang_list_name` VALUES ('吣');
INSERT INTO `slang_list_name` VALUES ('含撚');
INSERT INTO `slang_list_name` VALUES ('吲');
INSERT INTO `slang_list_name` VALUES ('吴');
INSERT INTO `slang_list_name` VALUES ('吸毒');
INSERT INTO `slang_list_name` VALUES ('吹蕭');
INSERT INTO `slang_list_name` VALUES ('呋');
INSERT INTO `slang_list_name` VALUES ('呐');
INSERT INTO `slang_list_name` VALUES ('呒');
INSERT INTO `slang_list_name` VALUES ('呓');
INSERT INTO `slang_list_name` VALUES ('呕');
INSERT INTO `slang_list_name` VALUES ('呖');
INSERT INTO `slang_list_name` VALUES ('呗');
INSERT INTO `slang_list_name` VALUES ('员');
INSERT INTO `slang_list_name` VALUES ('呙');
INSERT INTO `slang_list_name` VALUES ('呜');
INSERT INTO `slang_list_name` VALUES ('咏');
INSERT INTO `slang_list_name` VALUES ('咔');
INSERT INTO `slang_list_name` VALUES ('咙');
INSERT INTO `slang_list_name` VALUES ('咛');
INSERT INTO `slang_list_name` VALUES ('咝');
INSERT INTO `slang_list_name` VALUES ('咣');
INSERT INTO `slang_list_name` VALUES ('咤');
INSERT INTO `slang_list_name` VALUES ('咴');
INSERT INTO `slang_list_name` VALUES ('哌');
INSERT INTO `slang_list_name` VALUES ('响');
INSERT INTO `slang_list_name` VALUES ('哐');
INSERT INTO `slang_list_name` VALUES ('哑');
INSERT INTO `slang_list_name` VALUES ('哒');
INSERT INTO `slang_list_name` VALUES ('哓');
INSERT INTO `slang_list_name` VALUES ('哔');
INSERT INTO `slang_list_name` VALUES ('哕');
INSERT INTO `slang_list_name` VALUES ('哗');
INSERT INTO `slang_list_name` VALUES ('哙');
INSERT INTO `slang_list_name` VALUES ('哚');
INSERT INTO `slang_list_name` VALUES ('哜');
INSERT INTO `slang_list_name` VALUES ('哝');
INSERT INTO `slang_list_name` VALUES ('哟');
INSERT INTO `slang_list_name` VALUES ('哭爸');
INSERT INTO `slang_list_name` VALUES ('哭腰');
INSERT INTO `slang_list_name` VALUES ('唔燃同佢');
INSERT INTO `slang_list_name` VALUES ('唛');
INSERT INTO `slang_list_name` VALUES ('唠');
INSERT INTO `slang_list_name` VALUES ('唢');
INSERT INTO `slang_list_name` VALUES ('唣');
INSERT INTO `slang_list_name` VALUES ('唤');
INSERT INTO `slang_list_name` VALUES ('唿');
INSERT INTO `slang_list_name` VALUES ('啉');
INSERT INTO `slang_list_name` VALUES ('啧');
INSERT INTO `slang_list_name` VALUES ('啬');
INSERT INTO `slang_list_name` VALUES ('啭');
INSERT INTO `slang_list_name` VALUES ('啮');
INSERT INTO `slang_list_name` VALUES ('啸');
INSERT INTO `slang_list_name` VALUES ('喷');
INSERT INTO `slang_list_name` VALUES ('喹');
INSERT INTO `slang_list_name` VALUES ('喽');
INSERT INTO `slang_list_name` VALUES ('喾');
INSERT INTO `slang_list_name` VALUES ('嗪');
INSERT INTO `slang_list_name` VALUES ('嗫');
INSERT INTO `slang_list_name` VALUES ('嗬');
INSERT INTO `slang_list_name` VALUES ('嗳');
INSERT INTO `slang_list_name` VALUES ('嗵');
INSERT INTO `slang_list_name` VALUES ('嘘');
INSERT INTO `slang_list_name` VALUES ('嘞');
INSERT INTO `slang_list_name` VALUES ('嘣');
INSERT INTO `slang_list_name` VALUES ('嘤');
INSERT INTO `slang_list_name` VALUES ('嘭');
INSERT INTO `slang_list_name` VALUES ('嘱');
INSERT INTO `slang_list_name` VALUES ('噁爛');
INSERT INTO `slang_list_name` VALUES ('噍');
INSERT INTO `slang_list_name` VALUES ('噔');
INSERT INTO `slang_list_name` VALUES ('噜');
INSERT INTO `slang_list_name` VALUES ('噻');
INSERT INTO `slang_list_name` VALUES ('噼');
INSERT INTO `slang_list_name` VALUES ('嚣');
INSERT INTO `slang_list_name` VALUES ('嚯');
INSERT INTO `slang_list_name` VALUES ('团');
INSERT INTO `slang_list_name` VALUES ('园');
INSERT INTO `slang_list_name` VALUES ('囱');
INSERT INTO `slang_list_name` VALUES ('围');
INSERT INTO `slang_list_name` VALUES ('囵');
INSERT INTO `slang_list_name` VALUES ('国');
INSERT INTO `slang_list_name` VALUES ('图');
INSERT INTO `slang_list_name` VALUES ('圆');
INSERT INTO `slang_list_name` VALUES ('國共合作');
INSERT INTO `slang_list_name` VALUES ('國民政府');
INSERT INTO `slang_list_name` VALUES ('國民黨');
INSERT INTO `slang_list_name` VALUES ('在線GM');
INSERT INTO `slang_list_name` VALUES ('圹');
INSERT INTO `slang_list_name` VALUES ('场');
INSERT INTO `slang_list_name` VALUES ('坂');
INSERT INTO `slang_list_name` VALUES ('块');
INSERT INTO `slang_list_name` VALUES ('坚');
INSERT INTO `slang_list_name` VALUES ('坛');
INSERT INTO `slang_list_name` VALUES ('坜');
INSERT INTO `slang_list_name` VALUES ('坝');
INSERT INTO `slang_list_name` VALUES ('坞');
INSERT INTO `slang_list_name` VALUES ('坟');
INSERT INTO `slang_list_name` VALUES ('坠');
INSERT INTO `slang_list_name` VALUES ('垄');
INSERT INTO `slang_list_name` VALUES ('垅');
INSERT INTO `slang_list_name` VALUES ('垆');
INSERT INTO `slang_list_name` VALUES ('垒');
INSERT INTO `slang_list_name` VALUES ('垡');
INSERT INTO `slang_list_name` VALUES ('垦');
INSERT INTO `slang_list_name` VALUES ('垧');
INSERT INTO `slang_list_name` VALUES ('垩');
INSERT INTO `slang_list_name` VALUES ('垫');
INSERT INTO `slang_list_name` VALUES ('垭');
INSERT INTO `slang_list_name` VALUES ('垲');
INSERT INTO `slang_list_name` VALUES ('垴');
INSERT INTO `slang_list_name` VALUES ('埘');
INSERT INTO `slang_list_name` VALUES ('埙');
INSERT INTO `slang_list_name` VALUES ('埚');
INSERT INTO `slang_list_name` VALUES ('埝');
INSERT INTO `slang_list_name` VALUES ('埯');
INSERT INTO `slang_list_name` VALUES ('基掰');
INSERT INTO `slang_list_name` VALUES ('堕');
INSERT INTO `slang_list_name` VALUES ('塄');
INSERT INTO `slang_list_name` VALUES ('塞妮糧勒');
INSERT INTO `slang_list_name` VALUES ('塬');
INSERT INTO `slang_list_name` VALUES ('墒');
INSERT INTO `slang_list_name` VALUES ('墚');
INSERT INTO `slang_list_name` VALUES ('壮');
INSERT INTO `slang_list_name` VALUES ('声');
INSERT INTO `slang_list_name` VALUES ('壳');
INSERT INTO `slang_list_name` VALUES ('壶');
INSERT INTO `slang_list_name` VALUES ('夂');
INSERT INTO `slang_list_name` VALUES ('处');
INSERT INTO `slang_list_name` VALUES ('备');
INSERT INTO `slang_list_name` VALUES ('外掛');
INSERT INTO `slang_list_name` VALUES ('够');
INSERT INTO `slang_list_name` VALUES ('头');
INSERT INTO `slang_list_name` VALUES ('夹');
INSERT INTO `slang_list_name` VALUES ('夺');
INSERT INTO `slang_list_name` VALUES ('奁');
INSERT INTO `slang_list_name` VALUES ('奂');
INSERT INTO `slang_list_name` VALUES ('奋');
INSERT INTO `slang_list_name` VALUES ('奖');
INSERT INTO `slang_list_name` VALUES ('奥');
INSERT INTO `slang_list_name` VALUES ('奶子');
INSERT INTO `slang_list_name` VALUES ('奶炮');
INSERT INTO `slang_list_name` VALUES ('奶砲');
INSERT INTO `slang_list_name` VALUES ('奶頭');
INSERT INTO `slang_list_name` VALUES ('她娘的');
INSERT INTO `slang_list_name` VALUES ('她媽的');
INSERT INTO `slang_list_name` VALUES ('好撚廢');
INSERT INTO `slang_list_name` VALUES ('妆');
INSERT INTO `slang_list_name` VALUES ('妇');
INSERT INTO `slang_list_name` VALUES ('妈');
INSERT INTO `slang_list_name` VALUES ('妓');
INSERT INTO `slang_list_name` VALUES ('妓女');
INSERT INTO `slang_list_name` VALUES ('妩');
INSERT INTO `slang_list_name` VALUES ('妪');
INSERT INTO `slang_list_name` VALUES ('妫');
INSERT INTO `slang_list_name` VALUES ('妳娘卡好');
INSERT INTO `slang_list_name` VALUES ('妳娘的');
INSERT INTO `slang_list_name` VALUES ('妳媽的');
INSERT INTO `slang_list_name` VALUES ('姗');
INSERT INTO `slang_list_name` VALUES ('姦');
INSERT INTO `slang_list_name` VALUES ('姦殺');
INSERT INTO `slang_list_name` VALUES ('姦淫');
INSERT INTO `slang_list_name` VALUES ('姹');
INSERT INTO `slang_list_name` VALUES ('娄');
INSERT INTO `slang_list_name` VALUES ('娅');
INSERT INTO `slang_list_name` VALUES ('娆');
INSERT INTO `slang_list_name` VALUES ('娇');
INSERT INTO `slang_list_name` VALUES ('娈');
INSERT INTO `slang_list_name` VALUES ('娱');
INSERT INTO `slang_list_name` VALUES ('娲');
INSERT INTO `slang_list_name` VALUES ('娴');
INSERT INTO `slang_list_name` VALUES ('娼');
INSERT INTO `slang_list_name` VALUES ('婊');
INSERT INTO `slang_list_name` VALUES ('婊子');
INSERT INTO `slang_list_name` VALUES ('婊子養的兒子');
INSERT INTO `slang_list_name` VALUES ('婴');
INSERT INTO `slang_list_name` VALUES ('婵');
INSERT INTO `slang_list_name` VALUES ('婶');
INSERT INTO `slang_list_name` VALUES ('媪');
INSERT INTO `slang_list_name` VALUES ('媽的');
INSERT INTO `slang_list_name` VALUES ('媽逼');
INSERT INTO `slang_list_name` VALUES ('嫒');
INSERT INTO `slang_list_name` VALUES ('嫔');
INSERT INTO `slang_list_name` VALUES ('嫖娼');
INSERT INTO `slang_list_name` VALUES ('嫩B');
INSERT INTO `slang_list_name` VALUES ('嫩b');
INSERT INTO `slang_list_name` VALUES ('嫱');
INSERT INTO `slang_list_name` VALUES ('嬷');
INSERT INTO `slang_list_name` VALUES ('子宮');
INSERT INTO `slang_list_name` VALUES ('孙');
INSERT INTO `slang_list_name` VALUES ('学');
INSERT INTO `slang_list_name` VALUES ('孪');
INSERT INTO `slang_list_name` VALUES ('宀');
INSERT INTO `slang_list_name` VALUES ('宋楚瑜');
INSERT INTO `slang_list_name` VALUES ('官方');
INSERT INTO `slang_list_name` VALUES ('官方人員');
INSERT INTO `slang_list_name` VALUES ('官方專員');
INSERT INTO `slang_list_name` VALUES ('宝');
INSERT INTO `slang_list_name` VALUES ('实');
INSERT INTO `slang_list_name` VALUES ('宠');
INSERT INTO `slang_list_name` VALUES ('审');
INSERT INTO `slang_list_name` VALUES ('客服');
INSERT INTO `slang_list_name` VALUES ('客服中心');
INSERT INTO `slang_list_name` VALUES ('客服人員');
INSERT INTO `slang_list_name` VALUES ('客服專員');
INSERT INTO `slang_list_name` VALUES ('客服測試人員');
INSERT INTO `slang_list_name` VALUES ('宪');
INSERT INTO `slang_list_name` VALUES ('宫');
INSERT INTO `slang_list_name` VALUES ('宽');
INSERT INTO `slang_list_name` VALUES ('宾');
INSERT INTO `slang_list_name` VALUES ('对');
INSERT INTO `slang_list_name` VALUES ('寻');
INSERT INTO `slang_list_name` VALUES ('导');
INSERT INTO `slang_list_name` VALUES ('寿');
INSERT INTO `slang_list_name` VALUES ('射精');
INSERT INTO `slang_list_name` VALUES ('将');
INSERT INTO `slang_list_name` VALUES ('專員');
INSERT INTO `slang_list_name` VALUES ('專賣');
INSERT INTO `slang_list_name` VALUES ('尔');
INSERT INTO `slang_list_name` VALUES ('尘');
INSERT INTO `slang_list_name` VALUES ('尜');
INSERT INTO `slang_list_name` VALUES ('尝');
INSERT INTO `slang_list_name` VALUES ('尧');
INSERT INTO `slang_list_name` VALUES ('尴');
INSERT INTO `slang_list_name` VALUES ('尻');
INSERT INTO `slang_list_name` VALUES ('尻手槍');
INSERT INTO `slang_list_name` VALUES ('尽');
INSERT INTO `slang_list_name` VALUES ('屁眼');
INSERT INTO `slang_list_name` VALUES ('层');
INSERT INTO `slang_list_name` VALUES ('屄');
INSERT INTO `slang_list_name` VALUES ('屉');
INSERT INTO `slang_list_name` VALUES ('届');
INSERT INTO `slang_list_name` VALUES ('屌');
INSERT INTO `slang_list_name` VALUES ('屌你');
INSERT INTO `slang_list_name` VALUES ('屌你老母含家');
INSERT INTO `slang_list_name` VALUES ('屌妳老母含家');
INSERT INTO `slang_list_name` VALUES ('属');
INSERT INTO `slang_list_name` VALUES ('屡');
INSERT INTO `slang_list_name` VALUES ('屦');
INSERT INTO `slang_list_name` VALUES ('屿');
INSERT INTO `slang_list_name` VALUES ('岁');
INSERT INTO `slang_list_name` VALUES ('岖');
INSERT INTO `slang_list_name` VALUES ('岗');
INSERT INTO `slang_list_name` VALUES ('岘');
INSERT INTO `slang_list_name` VALUES ('岙');
INSERT INTO `slang_list_name` VALUES ('岚');
INSERT INTO `slang_list_name` VALUES ('岛');
INSERT INTO `slang_list_name` VALUES ('岜');
INSERT INTO `slang_list_name` VALUES ('岽');
INSERT INTO `slang_list_name` VALUES ('岿');
INSERT INTO `slang_list_name` VALUES ('峁');
INSERT INTO `slang_list_name` VALUES ('峄');
INSERT INTO `slang_list_name` VALUES ('峡');
INSERT INTO `slang_list_name` VALUES ('峤');
INSERT INTO `slang_list_name` VALUES ('峥');
INSERT INTO `slang_list_name` VALUES ('峦');
INSERT INTO `slang_list_name` VALUES ('崂');
INSERT INTO `slang_list_name` VALUES ('崃');
INSERT INTO `slang_list_name` VALUES ('崭');
INSERT INTO `slang_list_name` VALUES ('崾');
INSERT INTO `slang_list_name` VALUES ('嵘');
INSERT INTO `slang_list_name` VALUES ('嵛');
INSERT INTO `slang_list_name` VALUES ('嵝');
INSERT INTO `slang_list_name` VALUES ('嵴');
INSERT INTO `slang_list_name` VALUES ('巅');
INSERT INTO `slang_list_name` VALUES ('巛');
INSERT INTO `slang_list_name` VALUES ('巩');
INSERT INTO `slang_list_name` VALUES ('巯');
INSERT INTO `slang_list_name` VALUES ('币');
INSERT INTO `slang_list_name` VALUES ('帅');
INSERT INTO `slang_list_name` VALUES ('师');
INSERT INTO `slang_list_name` VALUES ('帏');
INSERT INTO `slang_list_name` VALUES ('帐');
INSERT INTO `slang_list_name` VALUES ('帜');
INSERT INTO `slang_list_name` VALUES ('带');
INSERT INTO `slang_list_name` VALUES ('帧');
INSERT INTO `slang_list_name` VALUES ('帮');
INSERT INTO `slang_list_name` VALUES ('帱');
INSERT INTO `slang_list_name` VALUES ('帳號');
INSERT INTO `slang_list_name` VALUES ('帶客練功');
INSERT INTO `slang_list_name` VALUES ('帶老闆練功');
INSERT INTO `slang_list_name` VALUES ('帻');
INSERT INTO `slang_list_name` VALUES ('帼');
INSERT INTO `slang_list_name` VALUES ('幂');
INSERT INTO `slang_list_name` VALUES ('幞');
INSERT INTO `slang_list_name` VALUES ('幣卡所');
INSERT INTO `slang_list_name` VALUES ('幣商');
INSERT INTO `slang_list_name` VALUES ('幹');
INSERT INTO `slang_list_name` VALUES ('幹他');
INSERT INTO `slang_list_name` VALUES ('幹你');
INSERT INTO `slang_list_name` VALUES ('幹你全家');
INSERT INTO `slang_list_name` VALUES ('幹你奶奶');
INSERT INTO `slang_list_name` VALUES ('幹你妹');
INSERT INTO `slang_list_name` VALUES ('幹你娘');
INSERT INTO `slang_list_name` VALUES ('幹你媽');
INSERT INTO `slang_list_name` VALUES ('幹你梁');
INSERT INTO `slang_list_name` VALUES ('幹你母');
INSERT INTO `slang_list_name` VALUES ('幹你爸');
INSERT INTO `slang_list_name` VALUES ('幹你爹');
INSERT INTO `slang_list_name` VALUES ('幹你爺爺');
INSERT INTO `slang_list_name` VALUES ('幹你祖宗');
INSERT INTO `slang_list_name` VALUES ('幹你老木');
INSERT INTO `slang_list_name` VALUES ('幹你良');
INSERT INTO `slang_list_name` VALUES ('幹她');
INSERT INTO `slang_list_name` VALUES ('幹妳');
INSERT INTO `slang_list_name` VALUES ('幹妳全家');
INSERT INTO `slang_list_name` VALUES ('幹妳奶奶');
INSERT INTO `slang_list_name` VALUES ('幹妳妹');
INSERT INTO `slang_list_name` VALUES ('幹妳娘');
INSERT INTO `slang_list_name` VALUES ('幹妳媽');
INSERT INTO `slang_list_name` VALUES ('幹妳母');
INSERT INTO `slang_list_name` VALUES ('幹妳爸');
INSERT INTO `slang_list_name` VALUES ('幹妳爹');
INSERT INTO `slang_list_name` VALUES ('幹妳爺爺');
INSERT INTO `slang_list_name` VALUES ('幹妳祖宗');
INSERT INTO `slang_list_name` VALUES ('幹妳老木');
INSERT INTO `slang_list_name` VALUES ('幹您');
INSERT INTO `slang_list_name` VALUES ('幹您老幕');
INSERT INTO `slang_list_name` VALUES ('幹拎');
INSERT INTO `slang_list_name` VALUES ('幹拎娘');
INSERT INTO `slang_list_name` VALUES ('幹擬娘');
INSERT INTO `slang_list_name` VALUES ('幹暴');
INSERT INTO `slang_list_name` VALUES ('幹暴你');
INSERT INTO `slang_list_name` VALUES ('幹暴你全家');
INSERT INTO `slang_list_name` VALUES ('幹暴你奶奶');
INSERT INTO `slang_list_name` VALUES ('幹暴你妹');
INSERT INTO `slang_list_name` VALUES ('幹暴你娘');
INSERT INTO `slang_list_name` VALUES ('幹暴你媽');
INSERT INTO `slang_list_name` VALUES ('幹暴你母');
INSERT INTO `slang_list_name` VALUES ('幹暴你爸');
INSERT INTO `slang_list_name` VALUES ('幹暴你爺爺');
INSERT INTO `slang_list_name` VALUES ('幹暴你祖宗');
INSERT INTO `slang_list_name` VALUES ('幹暴妳');
INSERT INTO `slang_list_name` VALUES ('幹暴妳全家');
INSERT INTO `slang_list_name` VALUES ('幹暴妳奶奶');
INSERT INTO `slang_list_name` VALUES ('幹暴妳妹');
INSERT INTO `slang_list_name` VALUES ('幹暴妳娘');
INSERT INTO `slang_list_name` VALUES ('幹暴妳媽');
INSERT INTO `slang_list_name` VALUES ('幹暴妳母');
INSERT INTO `slang_list_name` VALUES ('幹暴妳爸');
INSERT INTO `slang_list_name` VALUES ('幹暴妳爺爺');
INSERT INTO `slang_list_name` VALUES ('幹暴妳祖宗');
INSERT INTO `slang_list_name` VALUES ('幹暴幹你爹');
INSERT INTO `slang_list_name` VALUES ('幹暴幹妳爹');
INSERT INTO `slang_list_name` VALUES ('幹林');
INSERT INTO `slang_list_name` VALUES ('幹林娘');
INSERT INTO `slang_list_name` VALUES ('幹機巴');
INSERT INTO `slang_list_name` VALUES ('幹死');
INSERT INTO `slang_list_name` VALUES ('幹死你');
INSERT INTO `slang_list_name` VALUES ('幹死你全家');
INSERT INTO `slang_list_name` VALUES ('幹死你奶奶');
INSERT INTO `slang_list_name` VALUES ('幹死你妹');
INSERT INTO `slang_list_name` VALUES ('幹死你娘');
INSERT INTO `slang_list_name` VALUES ('幹死你媽');
INSERT INTO `slang_list_name` VALUES ('幹死你母');
INSERT INTO `slang_list_name` VALUES ('幹死你爸');
INSERT INTO `slang_list_name` VALUES ('幹死你爹');
INSERT INTO `slang_list_name` VALUES ('幹死你爺爺');
INSERT INTO `slang_list_name` VALUES ('幹死你祖宗');
INSERT INTO `slang_list_name` VALUES ('幹死妳');
INSERT INTO `slang_list_name` VALUES ('幹死妳全家');
INSERT INTO `slang_list_name` VALUES ('幹死妳奶奶');
INSERT INTO `slang_list_name` VALUES ('幹死妳妹');
INSERT INTO `slang_list_name` VALUES ('幹死妳娘');
INSERT INTO `slang_list_name` VALUES ('幹死妳媽');
INSERT INTO `slang_list_name` VALUES ('幹死妳母');
INSERT INTO `slang_list_name` VALUES ('幹死妳爸');
INSERT INTO `slang_list_name` VALUES ('幹死妳爹');
INSERT INTO `slang_list_name` VALUES ('幹死妳爺爺');
INSERT INTO `slang_list_name` VALUES ('幹死妳祖宗');
INSERT INTO `slang_list_name` VALUES ('幹爆');
INSERT INTO `slang_list_name` VALUES ('幹爆你');
INSERT INTO `slang_list_name` VALUES ('幹爆你全家');
INSERT INTO `slang_list_name` VALUES ('幹爆你娘');
INSERT INTO `slang_list_name` VALUES ('幹爆你媽');
INSERT INTO `slang_list_name` VALUES ('幹爆你爸');
INSERT INTO `slang_list_name` VALUES ('幹爆你爺爺');
INSERT INTO `slang_list_name` VALUES ('幹爆你祖宗');
INSERT INTO `slang_list_name` VALUES ('幹爆妳');
INSERT INTO `slang_list_name` VALUES ('幹爆妳全家');
INSERT INTO `slang_list_name` VALUES ('幹爆妳奶奶');
INSERT INTO `slang_list_name` VALUES ('幹爆妳妹');
INSERT INTO `slang_list_name` VALUES ('幹爆妳娘');
INSERT INTO `slang_list_name` VALUES ('幹爆妳媽');
INSERT INTO `slang_list_name` VALUES ('幹爆妳母');
INSERT INTO `slang_list_name` VALUES ('幹爆妳爸');
INSERT INTO `slang_list_name` VALUES ('幹爆妳爺爺');
INSERT INTO `slang_list_name` VALUES ('幹爆妳祖宗');
INSERT INTO `slang_list_name` VALUES ('幹爆幹你爹');
INSERT INTO `slang_list_name` VALUES ('幺');
INSERT INTO `slang_list_name` VALUES ('广');
INSERT INTO `slang_list_name` VALUES ('庐');
INSERT INTO `slang_list_name` VALUES ('庑');
INSERT INTO `slang_list_name` VALUES ('库');
INSERT INTO `slang_list_name` VALUES ('应');
INSERT INTO `slang_list_name` VALUES ('庙');
INSERT INTO `slang_list_name` VALUES ('庞');
INSERT INTO `slang_list_name` VALUES ('废');
INSERT INTO `slang_list_name` VALUES ('廣播');
INSERT INTO `slang_list_name` VALUES ('廪');
INSERT INTO `slang_list_name` VALUES ('廴');
INSERT INTO `slang_list_name` VALUES ('开');
INSERT INTO `slang_list_name` VALUES ('弑');
INSERT INTO `slang_list_name` VALUES ('张');
INSERT INTO `slang_list_name` VALUES ('弥');
INSERT INTO `slang_list_name` VALUES ('弪');
INSERT INTO `slang_list_name` VALUES ('弯');
INSERT INTO `slang_list_name` VALUES ('強奸');
INSERT INTO `slang_list_name` VALUES ('強姦');
INSERT INTO `slang_list_name` VALUES ('強暴');
INSERT INTO `slang_list_name` VALUES ('弹');
INSERT INTO `slang_list_name` VALUES ('彐');
INSERT INTO `slang_list_name` VALUES ('归');
INSERT INTO `slang_list_name` VALUES ('当');
INSERT INTO `slang_list_name` VALUES ('录');
INSERT INTO `slang_list_name` VALUES ('彡');
INSERT INTO `slang_list_name` VALUES ('彦');
INSERT INTO `slang_list_name` VALUES ('彻');
INSERT INTO `slang_list_name` VALUES ('径');
INSERT INTO `slang_list_name` VALUES ('徕');
INSERT INTO `slang_list_name` VALUES ('忄');
INSERT INTO `slang_list_name` VALUES ('忆');
INSERT INTO `slang_list_name` VALUES ('忧');
INSERT INTO `slang_list_name` VALUES ('忾');
INSERT INTO `slang_list_name` VALUES ('态');
INSERT INTO `slang_list_name` VALUES ('怂');
INSERT INTO `slang_list_name` VALUES ('怃');
INSERT INTO `slang_list_name` VALUES ('怄');
INSERT INTO `slang_list_name` VALUES ('怅');
INSERT INTO `slang_list_name` VALUES ('怆');
INSERT INTO `slang_list_name` VALUES ('性交');
INSERT INTO `slang_list_name` VALUES ('性虐待');
INSERT INTO `slang_list_name` VALUES ('性高潮');
INSERT INTO `slang_list_name` VALUES ('总');
INSERT INTO `slang_list_name` VALUES ('怼');
INSERT INTO `slang_list_name` VALUES ('怿');
INSERT INTO `slang_list_name` VALUES ('恋');
INSERT INTO `slang_list_name` VALUES ('恒');
INSERT INTO `slang_list_name` VALUES ('恳');
INSERT INTO `slang_list_name` VALUES ('恶');
INSERT INTO `slang_list_name` VALUES ('恸');
INSERT INTO `slang_list_name` VALUES ('恹');
INSERT INTO `slang_list_name` VALUES ('恺');
INSERT INTO `slang_list_name` VALUES ('恻');
INSERT INTO `slang_list_name` VALUES ('恼');
INSERT INTO `slang_list_name` VALUES ('恽');
INSERT INTO `slang_list_name` VALUES ('悦');
INSERT INTO `slang_list_name` VALUES ('您娘卡好');
INSERT INTO `slang_list_name` VALUES ('悫');
INSERT INTO `slang_list_name` VALUES ('悬');
INSERT INTO `slang_list_name` VALUES ('悭');
INSERT INTO `slang_list_name` VALUES ('悯');
INSERT INTO `slang_list_name` VALUES ('惧');
INSERT INTO `slang_list_name` VALUES ('惨');
INSERT INTO `slang_list_name` VALUES ('惩');
INSERT INTO `slang_list_name` VALUES ('惫');
INSERT INTO `slang_list_name` VALUES ('惬');
INSERT INTO `slang_list_name` VALUES ('惭');
INSERT INTO `slang_list_name` VALUES ('惮');
INSERT INTO `slang_list_name` VALUES ('惯');
INSERT INTO `slang_list_name` VALUES ('愛液');
INSERT INTO `slang_list_name` VALUES ('愠');
INSERT INTO `slang_list_name` VALUES ('愤');
INSERT INTO `slang_list_name` VALUES ('愦');
INSERT INTO `slang_list_name` VALUES ('慑');
INSERT INTO `slang_list_name` VALUES ('憷');
INSERT INTO `slang_list_name` VALUES ('懑');
INSERT INTO `slang_list_name` VALUES ('懒');
INSERT INTO `slang_list_name` VALUES ('懔');
INSERT INTO `slang_list_name` VALUES ('懶叫');
INSERT INTO `slang_list_name` VALUES ('懶啪');
INSERT INTO `slang_list_name` VALUES ('懶教');
INSERT INTO `slang_list_name` VALUES ('懶葩');
INSERT INTO `slang_list_name` VALUES ('懶趴');
INSERT INTO `slang_list_name` VALUES ('戆');
INSERT INTO `slang_list_name` VALUES ('戋');
INSERT INTO `slang_list_name` VALUES ('戏');
INSERT INTO `slang_list_name` VALUES ('我不爽');
INSERT INTO `slang_list_name` VALUES ('我操你老母');
INSERT INTO `slang_list_name` VALUES ('戗');
INSERT INTO `slang_list_name` VALUES ('战');
INSERT INTO `slang_list_name` VALUES ('戬');
INSERT INTO `slang_list_name` VALUES ('户');
INSERT INTO `slang_list_name` VALUES ('手淫');
INSERT INTO `slang_list_name` VALUES ('扌');
INSERT INTO `slang_list_name` VALUES ('打手槍');
INSERT INTO `slang_list_name` VALUES ('执');
INSERT INTO `slang_list_name` VALUES ('扩');
INSERT INTO `slang_list_name` VALUES ('扪');
INSERT INTO `slang_list_name` VALUES ('扫');
INSERT INTO `slang_list_name` VALUES ('扬');
INSERT INTO `slang_list_name` VALUES ('技術測試人員');
INSERT INTO `slang_list_name` VALUES ('抚');
INSERT INTO `slang_list_name` VALUES ('抛');
INSERT INTO `slang_list_name` VALUES ('抟');
INSERT INTO `slang_list_name` VALUES ('抠');
INSERT INTO `slang_list_name` VALUES ('抡');
INSERT INTO `slang_list_name` VALUES ('护');
INSERT INTO `slang_list_name` VALUES ('报');
INSERT INTO `slang_list_name` VALUES ('担');
INSERT INTO `slang_list_name` VALUES ('拟');
INSERT INTO `slang_list_name` VALUES ('拢');
INSERT INTO `slang_list_name` VALUES ('拣');
INSERT INTO `slang_list_name` VALUES ('拥');
INSERT INTO `slang_list_name` VALUES ('拦');
INSERT INTO `slang_list_name` VALUES ('拧');
INSERT INTO `slang_list_name` VALUES ('拨');
INSERT INTO `slang_list_name` VALUES ('择');
INSERT INTO `slang_list_name` VALUES ('挖雞巴濕搭搭');
INSERT INTO `slang_list_name` VALUES ('挚');
INSERT INTO `slang_list_name` VALUES ('挛');
INSERT INTO `slang_list_name` VALUES ('挝');
INSERT INTO `slang_list_name` VALUES ('挞');
INSERT INTO `slang_list_name` VALUES ('挟');
INSERT INTO `slang_list_name` VALUES ('挠');
INSERT INTO `slang_list_name` VALUES ('挡');
INSERT INTO `slang_list_name` VALUES ('挢');
INSERT INTO `slang_list_name` VALUES ('挣');
INSERT INTO `slang_list_name` VALUES ('挤');
INSERT INTO `slang_list_name` VALUES ('挥');
INSERT INTO `slang_list_name` VALUES ('挺綠');
INSERT INTO `slang_list_name` VALUES ('挺藍');
INSERT INTO `slang_list_name` VALUES ('捞');
INSERT INTO `slang_list_name` VALUES ('损');
INSERT INTO `slang_list_name` VALUES ('捡');
INSERT INTO `slang_list_name` VALUES ('换');
INSERT INTO `slang_list_name` VALUES ('捣');
INSERT INTO `slang_list_name` VALUES ('掛爽爽');
INSERT INTO `slang_list_name` VALUES ('掳');
INSERT INTO `slang_list_name` VALUES ('掴');
INSERT INTO `slang_list_name` VALUES ('掷');
INSERT INTO `slang_list_name` VALUES ('掸');
INSERT INTO `slang_list_name` VALUES ('掺');
INSERT INTO `slang_list_name` VALUES ('掼');
INSERT INTO `slang_list_name` VALUES ('插爆');
INSERT INTO `slang_list_name` VALUES ('換小朋友');
INSERT INTO `slang_list_name` VALUES ('換帳號');
INSERT INTO `slang_list_name` VALUES ('揞');
INSERT INTO `slang_list_name` VALUES ('援交');
INSERT INTO `slang_list_name` VALUES ('援助交際');
INSERT INTO `slang_list_name` VALUES ('揸');
INSERT INTO `slang_list_name` VALUES ('揽');
INSERT INTO `slang_list_name` VALUES ('揿');
INSERT INTO `slang_list_name` VALUES ('搀');
INSERT INTO `slang_list_name` VALUES ('搁');
INSERT INTO `slang_list_name` VALUES ('搂');
INSERT INTO `slang_list_name` VALUES ('搅');
INSERT INTO `slang_list_name` VALUES ('携');
INSERT INTO `slang_list_name` VALUES ('摄');
INSERT INTO `slang_list_name` VALUES ('摅');
INSERT INTO `slang_list_name` VALUES ('摆');
INSERT INTO `slang_list_name` VALUES ('摇');
INSERT INTO `slang_list_name` VALUES ('摈');
INSERT INTO `slang_list_name` VALUES ('摊');
INSERT INTO `slang_list_name` VALUES ('撄');
INSERT INTO `slang_list_name` VALUES ('撑');
INSERT INTO `slang_list_name` VALUES ('撚');
INSERT INTO `slang_list_name` VALUES ('撵');
INSERT INTO `slang_list_name` VALUES ('撷');
INSERT INTO `slang_list_name` VALUES ('撸');
INSERT INTO `slang_list_name` VALUES ('撺');
INSERT INTO `slang_list_name` VALUES ('擀');
INSERT INTO `slang_list_name` VALUES ('操');
INSERT INTO `slang_list_name` VALUES ('操你全家');
INSERT INTO `slang_list_name` VALUES ('操你奶奶');
INSERT INTO `slang_list_name` VALUES ('操你妹');
INSERT INTO `slang_list_name` VALUES ('操你娘');
INSERT INTO `slang_list_name` VALUES ('操你媽');
INSERT INTO `slang_list_name` VALUES ('操你母');
INSERT INTO `slang_list_name` VALUES ('操你爸');
INSERT INTO `slang_list_name` VALUES ('操你爹');
INSERT INTO `slang_list_name` VALUES ('操你爺爺');
INSERT INTO `slang_list_name` VALUES ('操你祖宗');
INSERT INTO `slang_list_name` VALUES ('操妳全家');
INSERT INTO `slang_list_name` VALUES ('操妳奶奶');
INSERT INTO `slang_list_name` VALUES ('操妳妹');
INSERT INTO `slang_list_name` VALUES ('操妳娘');
INSERT INTO `slang_list_name` VALUES ('操妳媽');
INSERT INTO `slang_list_name` VALUES ('操妳媽b');
INSERT INTO `slang_list_name` VALUES ('操妳母');
INSERT INTO `slang_list_name` VALUES ('操妳爸');
INSERT INTO `slang_list_name` VALUES ('操妳爹');
INSERT INTO `slang_list_name` VALUES ('操妳爺爺');
INSERT INTO `slang_list_name` VALUES ('操妳祖宗');
INSERT INTO `slang_list_name` VALUES ('操死你');
INSERT INTO `slang_list_name` VALUES ('操死你全家');
INSERT INTO `slang_list_name` VALUES ('操死你奶奶');
INSERT INTO `slang_list_name` VALUES ('操死你妹');
INSERT INTO `slang_list_name` VALUES ('操死你娘');
INSERT INTO `slang_list_name` VALUES ('操死你媽');
INSERT INTO `slang_list_name` VALUES ('操死你母');
INSERT INTO `slang_list_name` VALUES ('操死你爸');
INSERT INTO `slang_list_name` VALUES ('操死你爹');
INSERT INTO `slang_list_name` VALUES ('操死你爺爺');
INSERT INTO `slang_list_name` VALUES ('操死你祖宗');
INSERT INTO `slang_list_name` VALUES ('操死妳');
INSERT INTO `slang_list_name` VALUES ('操死妳全家');
INSERT INTO `slang_list_name` VALUES ('操死妳奶奶');
INSERT INTO `slang_list_name` VALUES ('操死妳妹');
INSERT INTO `slang_list_name` VALUES ('操死妳娘');
INSERT INTO `slang_list_name` VALUES ('操死妳媽');
INSERT INTO `slang_list_name` VALUES ('操死妳母');
INSERT INTO `slang_list_name` VALUES ('操死妳爸');
INSERT INTO `slang_list_name` VALUES ('操死妳爹');
INSERT INTO `slang_list_name` VALUES ('操死妳爺爺');
INSERT INTO `slang_list_name` VALUES ('操死妳祖宗');
INSERT INTO `slang_list_name` VALUES ('擞');
INSERT INTO `slang_list_name` VALUES ('攒');
INSERT INTO `slang_list_name` VALUES ('攴');
INSERT INTO `slang_list_name` VALUES ('攵');
INSERT INTO `slang_list_name` VALUES ('收卡');
INSERT INTO `slang_list_name` VALUES ('收水餃');
INSERT INTO `slang_list_name` VALUES ('敌');
INSERT INTO `slang_list_name` VALUES ('敛');
INSERT INTO `slang_list_name` VALUES ('敫');
INSERT INTO `slang_list_name` VALUES ('数');
INSERT INTO `slang_list_name` VALUES ('斋');
INSERT INTO `slang_list_name` VALUES ('斓');
INSERT INTO `slang_list_name` VALUES ('斩');
INSERT INTO `slang_list_name` VALUES ('断');
INSERT INTO `slang_list_name` VALUES ('施明德');
INSERT INTO `slang_list_name` VALUES ('无');
INSERT INTO `slang_list_name` VALUES ('日你媽');
INSERT INTO `slang_list_name` VALUES ('旧');
INSERT INTO `slang_list_name` VALUES ('早洩');
INSERT INTO `slang_list_name` VALUES ('时');
INSERT INTO `slang_list_name` VALUES ('旷');
INSERT INTO `slang_list_name` VALUES ('昙');
INSERT INTO `slang_list_name` VALUES ('昼');
INSERT INTO `slang_list_name` VALUES ('显');
INSERT INTO `slang_list_name` VALUES ('晋');
INSERT INTO `slang_list_name` VALUES ('晓');
INSERT INTO `slang_list_name` VALUES ('晔');
INSERT INTO `slang_list_name` VALUES ('晕');
INSERT INTO `slang_list_name` VALUES ('晖');
INSERT INTO `slang_list_name` VALUES ('晗');
INSERT INTO `slang_list_name` VALUES ('智障');
INSERT INTO `slang_list_name` VALUES ('暂');
INSERT INTO `slang_list_name` VALUES ('暧');
INSERT INTO `slang_list_name` VALUES ('术');
INSERT INTO `slang_list_name` VALUES ('杀');
INSERT INTO `slang_list_name` VALUES ('杂');
INSERT INTO `slang_list_name` VALUES ('李登輝');
INSERT INTO `slang_list_name` VALUES ('条');
INSERT INTO `slang_list_name` VALUES ('来');
INSERT INTO `slang_list_name` VALUES ('杨');
INSERT INTO `slang_list_name` VALUES ('杩');
INSERT INTO `slang_list_name` VALUES ('枞');
INSERT INTO `slang_list_name` VALUES ('枢');
INSERT INTO `slang_list_name` VALUES ('枣');
INSERT INTO `slang_list_name` VALUES ('枥');
INSERT INTO `slang_list_name` VALUES ('枧');
INSERT INTO `slang_list_name` VALUES ('枨');
INSERT INTO `slang_list_name` VALUES ('枫');
INSERT INTO `slang_list_name` VALUES ('枭');
INSERT INTO `slang_list_name` VALUES ('柠');
INSERT INTO `slang_list_name` VALUES ('查緝');
INSERT INTO `slang_list_name` VALUES ('柽');
INSERT INTO `slang_list_name` VALUES ('栀');
INSERT INTO `slang_list_name` VALUES ('栅');
INSERT INTO `slang_list_name` VALUES ('标');
INSERT INTO `slang_list_name` VALUES ('栈');
INSERT INTO `slang_list_name` VALUES ('栉');
INSERT INTO `slang_list_name` VALUES ('栊');
INSERT INTO `slang_list_name` VALUES ('栋');
INSERT INTO `slang_list_name` VALUES ('栌');
INSERT INTO `slang_list_name` VALUES ('栎');
INSERT INTO `slang_list_name` VALUES ('栏');
INSERT INTO `slang_list_name` VALUES ('树');
INSERT INTO `slang_list_name` VALUES ('样');
INSERT INTO `slang_list_name` VALUES ('栾');
INSERT INTO `slang_list_name` VALUES ('桊');
INSERT INTO `slang_list_name` VALUES ('桕');
INSERT INTO `slang_list_name` VALUES ('桠');
INSERT INTO `slang_list_name` VALUES ('桡');
INSERT INTO `slang_list_name` VALUES ('桢');
INSERT INTO `slang_list_name` VALUES ('档');
INSERT INTO `slang_list_name` VALUES ('桤');
INSERT INTO `slang_list_name` VALUES ('桦');
INSERT INTO `slang_list_name` VALUES ('桧');
INSERT INTO `slang_list_name` VALUES ('桨');
INSERT INTO `slang_list_name` VALUES ('桩');
INSERT INTO `slang_list_name` VALUES ('梅毒');
INSERT INTO `slang_list_name` VALUES ('梦');
INSERT INTO `slang_list_name` VALUES ('检');
INSERT INTO `slang_list_name` VALUES ('棂');
INSERT INTO `slang_list_name` VALUES ('椁');
INSERT INTO `slang_list_name` VALUES ('椟');
INSERT INTO `slang_list_name` VALUES ('椠');
INSERT INTO `slang_list_name` VALUES ('椤');
INSERT INTO `slang_list_name` VALUES ('椭');
INSERT INTO `slang_list_name` VALUES ('楼');
INSERT INTO `slang_list_name` VALUES ('榀');
INSERT INTO `slang_list_name` VALUES ('榄');
INSERT INTO `slang_list_name` VALUES ('榇');
INSERT INTO `slang_list_name` VALUES ('榈');
INSERT INTO `slang_list_name` VALUES ('榉');
INSERT INTO `slang_list_name` VALUES ('榘');
INSERT INTO `slang_list_name` VALUES ('榦');
INSERT INTO `slang_list_name` VALUES ('槛');
INSERT INTO `slang_list_name` VALUES ('槟');
INSERT INTO `slang_list_name` VALUES ('槠');
INSERT INTO `slang_list_name` VALUES ('横');
INSERT INTO `slang_list_name` VALUES ('樯');
INSERT INTO `slang_list_name` VALUES ('樱');
INSERT INTO `slang_list_name` VALUES ('機八');
INSERT INTO `slang_list_name` VALUES ('機掰');
INSERT INTO `slang_list_name` VALUES ('橥');
INSERT INTO `slang_list_name` VALUES ('橱');
INSERT INTO `slang_list_name` VALUES ('橹');
INSERT INTO `slang_list_name` VALUES ('橼');
INSERT INTO `slang_list_name` VALUES ('檩');
INSERT INTO `slang_list_name` VALUES ('檫');
INSERT INTO `slang_list_name` VALUES ('欠人幹');
INSERT INTO `slang_list_name` VALUES ('欢');
INSERT INTO `slang_list_name` VALUES ('欤');
INSERT INTO `slang_list_name` VALUES ('欧');
INSERT INTO `slang_list_name` VALUES ('歐塞康');
INSERT INTO `slang_list_name` VALUES ('武力統一');
INSERT INTO `slang_list_name` VALUES ('死妓女');
INSERT INTO `slang_list_name` VALUES ('死婊');
INSERT INTO `slang_list_name` VALUES ('死雞巴');
INSERT INTO `slang_list_name` VALUES ('歼');
INSERT INTO `slang_list_name` VALUES ('殁');
INSERT INTO `slang_list_name` VALUES ('殇');
INSERT INTO `slang_list_name` VALUES ('残');
INSERT INTO `slang_list_name` VALUES ('殒');
INSERT INTO `slang_list_name` VALUES ('殓');
INSERT INTO `slang_list_name` VALUES ('殚');
INSERT INTO `slang_list_name` VALUES ('殡');
INSERT INTO `slang_list_name` VALUES ('殴');
INSERT INTO `slang_list_name` VALUES ('毁');
INSERT INTO `slang_list_name` VALUES ('毂');
INSERT INTO `slang_list_name` VALUES ('毒品');
INSERT INTO `slang_list_name` VALUES ('毕');
INSERT INTO `slang_list_name` VALUES ('毙');
INSERT INTO `slang_list_name` VALUES ('毡');
INSERT INTO `slang_list_name` VALUES ('毪');
INSERT INTO `slang_list_name` VALUES ('毵');
INSERT INTO `slang_list_name` VALUES ('氇');
INSERT INTO `slang_list_name` VALUES ('民主進步黨');
INSERT INTO `slang_list_name` VALUES ('民盟');
INSERT INTO `slang_list_name` VALUES ('民進黨');
INSERT INTO `slang_list_name` VALUES ('氩');
INSERT INTO `slang_list_name` VALUES ('氲');
INSERT INTO `slang_list_name` VALUES ('氵');
INSERT INTO `slang_list_name` VALUES ('氽');
INSERT INTO `slang_list_name` VALUES ('汇');
INSERT INTO `slang_list_name` VALUES ('汉');
INSERT INTO `slang_list_name` VALUES ('汤');
INSERT INTO `slang_list_name` VALUES ('汹');
INSERT INTO `slang_list_name` VALUES ('沟');
INSERT INTO `slang_list_name` VALUES ('没');
INSERT INTO `slang_list_name` VALUES ('沣');
INSERT INTO `slang_list_name` VALUES ('沤');
INSERT INTO `slang_list_name` VALUES ('沥');
INSERT INTO `slang_list_name` VALUES ('沦');
INSERT INTO `slang_list_name` VALUES ('沧');
INSERT INTO `slang_list_name` VALUES ('沩');
INSERT INTO `slang_list_name` VALUES ('沪');
INSERT INTO `slang_list_name` VALUES ('沲');
INSERT INTO `slang_list_name` VALUES ('法輪功');
INSERT INTO `slang_list_name` VALUES ('泪');
INSERT INTO `slang_list_name` VALUES ('泶');
INSERT INTO `slang_list_name` VALUES ('泷');
INSERT INTO `slang_list_name` VALUES ('泸');
INSERT INTO `slang_list_name` VALUES ('泺');
INSERT INTO `slang_list_name` VALUES ('泻');
INSERT INTO `slang_list_name` VALUES ('泽');
INSERT INTO `slang_list_name` VALUES ('泾');
INSERT INTO `slang_list_name` VALUES ('派遣員');
INSERT INTO `slang_list_name` VALUES ('流淫水');
INSERT INTO `slang_list_name` VALUES ('浃');
INSERT INTO `slang_list_name` VALUES ('浆');
INSERT INTO `slang_list_name` VALUES ('浇');
INSERT INTO `slang_list_name` VALUES ('浈');
INSERT INTO `slang_list_name` VALUES ('浊');
INSERT INTO `slang_list_name` VALUES ('测');
INSERT INTO `slang_list_name` VALUES ('浍');
INSERT INTO `slang_list_name` VALUES ('济');
INSERT INTO `slang_list_name` VALUES ('浏');
INSERT INTO `slang_list_name` VALUES ('浑');
INSERT INTO `slang_list_name` VALUES ('浒');
INSERT INTO `slang_list_name` VALUES ('浓');
INSERT INTO `slang_list_name` VALUES ('浔');
INSERT INTO `slang_list_name` VALUES ('浜');
INSERT INTO `slang_list_name` VALUES ('海洛因');
INSERT INTO `slang_list_name` VALUES ('涛');
INSERT INTO `slang_list_name` VALUES ('涝');
INSERT INTO `slang_list_name` VALUES ('涞');
INSERT INTO `slang_list_name` VALUES ('涟');
INSERT INTO `slang_list_name` VALUES ('涠');
INSERT INTO `slang_list_name` VALUES ('涡');
INSERT INTO `slang_list_name` VALUES ('涣');
INSERT INTO `slang_list_name` VALUES ('涤');
INSERT INTO `slang_list_name` VALUES ('涧');
INSERT INTO `slang_list_name` VALUES ('涨');
INSERT INTO `slang_list_name` VALUES ('涩');
INSERT INTO `slang_list_name` VALUES ('淋病');
INSERT INTO `slang_list_name` VALUES ('淦');
INSERT INTO `slang_list_name` VALUES ('淫');
INSERT INTO `slang_list_name` VALUES ('淫婦');
INSERT INTO `slang_list_name` VALUES ('淫水');
INSERT INTO `slang_list_name` VALUES ('淫蕩');
INSERT INTO `slang_list_name` VALUES ('渊');
INSERT INTO `slang_list_name` VALUES ('渌');
INSERT INTO `slang_list_name` VALUES ('渍');
INSERT INTO `slang_list_name` VALUES ('渎');
INSERT INTO `slang_list_name` VALUES ('渐');
INSERT INTO `slang_list_name` VALUES ('渑');
INSERT INTO `slang_list_name` VALUES ('渔');
INSERT INTO `slang_list_name` VALUES ('渖');
INSERT INTO `slang_list_name` VALUES ('渗');
INSERT INTO `slang_list_name` VALUES ('温');
INSERT INTO `slang_list_name` VALUES ('測試');
INSERT INTO `slang_list_name` VALUES ('測試人員');
INSERT INTO `slang_list_name` VALUES ('測試專員');
INSERT INTO `slang_list_name` VALUES ('湾');
INSERT INTO `slang_list_name` VALUES ('湿');
INSERT INTO `slang_list_name` VALUES ('溃');
INSERT INTO `slang_list_name` VALUES ('溅');
INSERT INTO `slang_list_name` VALUES ('溆');
INSERT INTO `slang_list_name` VALUES ('溻');
INSERT INTO `slang_list_name` VALUES ('滗');
INSERT INTO `slang_list_name` VALUES ('滚');
INSERT INTO `slang_list_name` VALUES ('滞');
INSERT INTO `slang_list_name` VALUES ('滟');
INSERT INTO `slang_list_name` VALUES ('滠');
INSERT INTO `slang_list_name` VALUES ('满');
INSERT INTO `slang_list_name` VALUES ('滢');
INSERT INTO `slang_list_name` VALUES ('滤');
INSERT INTO `slang_list_name` VALUES ('滥');
INSERT INTO `slang_list_name` VALUES ('滦');
INSERT INTO `slang_list_name` VALUES ('滨');
INSERT INTO `slang_list_name` VALUES ('滩');
INSERT INTO `slang_list_name` VALUES ('漤');
INSERT INTO `slang_list_name` VALUES ('潆');
INSERT INTO `slang_list_name` VALUES ('潇');
INSERT INTO `slang_list_name` VALUES ('潋');
INSERT INTO `slang_list_name` VALUES ('潍');
INSERT INTO `slang_list_name` VALUES ('潴');
INSERT INTO `slang_list_name` VALUES ('澜');
INSERT INTO `slang_list_name` VALUES ('激掰');
INSERT INTO `slang_list_name` VALUES ('濑');
INSERT INTO `slang_list_name` VALUES ('濒');
INSERT INTO `slang_list_name` VALUES ('灏');
INSERT INTO `slang_list_name` VALUES ('灬');
INSERT INTO `slang_list_name` VALUES ('灭');
INSERT INTO `slang_list_name` VALUES ('灯');
INSERT INTO `slang_list_name` VALUES ('灵');
INSERT INTO `slang_list_name` VALUES ('灾');
INSERT INTO `slang_list_name` VALUES ('灿');
INSERT INTO `slang_list_name` VALUES ('炀');
INSERT INTO `slang_list_name` VALUES ('炉');
INSERT INTO `slang_list_name` VALUES ('炜');
INSERT INTO `slang_list_name` VALUES ('炝');
INSERT INTO `slang_list_name` VALUES ('点');
INSERT INTO `slang_list_name` VALUES ('炻');
INSERT INTO `slang_list_name` VALUES ('炼');
INSERT INTO `slang_list_name` VALUES ('炽');
INSERT INTO `slang_list_name` VALUES ('烀');
INSERT INTO `slang_list_name` VALUES ('烁');
INSERT INTO `slang_list_name` VALUES ('烂');
INSERT INTO `slang_list_name` VALUES ('烃');
INSERT INTO `slang_list_name` VALUES ('烛');
INSERT INTO `slang_list_name` VALUES ('烟');
INSERT INTO `slang_list_name` VALUES ('烦');
INSERT INTO `slang_list_name` VALUES ('烧');
INSERT INTO `slang_list_name` VALUES ('烨');
INSERT INTO `slang_list_name` VALUES ('烩');
INSERT INTO `slang_list_name` VALUES ('烫');
INSERT INTO `slang_list_name` VALUES ('烬');
INSERT INTO `slang_list_name` VALUES ('焕');
INSERT INTO `slang_list_name` VALUES ('焖');
INSERT INTO `slang_list_name` VALUES ('焘');
INSERT INTO `slang_list_name` VALUES ('煅');
INSERT INTO `slang_list_name` VALUES ('煊');
INSERT INTO `slang_list_name` VALUES ('煳');
INSERT INTO `slang_list_name` VALUES ('煺');
INSERT INTO `slang_list_name` VALUES ('熘');
INSERT INTO `slang_list_name` VALUES ('燕生　');
INSERT INTO `slang_list_name` VALUES ('爛交');
INSERT INTO `slang_list_name` VALUES ('爛妓女');
INSERT INTO `slang_list_name` VALUES ('爛婊');
INSERT INTO `slang_list_name` VALUES ('爛貨');
INSERT INTO `slang_list_name` VALUES ('爛雞');
INSERT INTO `slang_list_name` VALUES ('爛雞巴');
INSERT INTO `slang_list_name` VALUES ('爱');
INSERT INTO `slang_list_name` VALUES ('爷');
INSERT INTO `slang_list_name` VALUES ('版主');
INSERT INTO `slang_list_name` VALUES ('牍');
INSERT INTO `slang_list_name` VALUES ('牦');
INSERT INTO `slang_list_name` VALUES ('特派員');
INSERT INTO `slang_list_name` VALUES ('牺');
INSERT INTO `slang_list_name` VALUES ('犊');
INSERT INTO `slang_list_name` VALUES ('犏');
INSERT INTO `slang_list_name` VALUES ('犟');
INSERT INTO `slang_list_name` VALUES ('犭');
INSERT INTO `slang_list_name` VALUES ('状');
INSERT INTO `slang_list_name` VALUES ('犷');
INSERT INTO `slang_list_name` VALUES ('犸');
INSERT INTO `slang_list_name` VALUES ('犹');
INSERT INTO `slang_list_name` VALUES ('狈');
INSERT INTO `slang_list_name` VALUES ('狍');
INSERT INTO `slang_list_name` VALUES ('狗娘');
INSERT INTO `slang_list_name` VALUES ('狗母養');
INSERT INTO `slang_list_name` VALUES ('狗雜碎');
INSERT INTO `slang_list_name` VALUES ('狗雜種');
INSERT INTO `slang_list_name` VALUES ('狗養的');
INSERT INTO `slang_list_name` VALUES ('狞');
INSERT INTO `slang_list_name` VALUES ('独');
INSERT INTO `slang_list_name` VALUES ('狭');
INSERT INTO `slang_list_name` VALUES ('狮');
INSERT INTO `slang_list_name` VALUES ('狯');
INSERT INTO `slang_list_name` VALUES ('狰');
INSERT INTO `slang_list_name` VALUES ('狱');
INSERT INTO `slang_list_name` VALUES ('狲');
INSERT INTO `slang_list_name` VALUES ('猃');
INSERT INTO `slang_list_name` VALUES ('猎');
INSERT INTO `slang_list_name` VALUES ('猕');
INSERT INTO `slang_list_name` VALUES ('猡');
INSERT INTO `slang_list_name` VALUES ('猪');
INSERT INTO `slang_list_name` VALUES ('猫');
INSERT INTO `slang_list_name` VALUES ('猬');
INSERT INTO `slang_list_name` VALUES ('献');
INSERT INTO `slang_list_name` VALUES ('猸');
INSERT INTO `slang_list_name` VALUES ('猹');
INSERT INTO `slang_list_name` VALUES ('獎品');
INSERT INTO `slang_list_name` VALUES ('獭');
INSERT INTO `slang_list_name` VALUES ('獸交');
INSERT INTO `slang_list_name` VALUES ('王八蛋');
INSERT INTO `slang_list_name` VALUES ('玑');
INSERT INTO `slang_list_name` VALUES ('玛');
INSERT INTO `slang_list_name` VALUES ('玮');
INSERT INTO `slang_list_name` VALUES ('环');
INSERT INTO `slang_list_name` VALUES ('现');
INSERT INTO `slang_list_name` VALUES ('玺');
INSERT INTO `slang_list_name` VALUES ('珉');
INSERT INTO `slang_list_name` VALUES ('珏');
INSERT INTO `slang_list_name` VALUES ('珐');
INSERT INTO `slang_list_name` VALUES ('珑');
INSERT INTO `slang_list_name` VALUES ('珲');
INSERT INTO `slang_list_name` VALUES ('琏');
INSERT INTO `slang_list_name` VALUES ('琐');
INSERT INTO `slang_list_name` VALUES ('瑶');
INSERT INTO `slang_list_name` VALUES ('瑷');
INSERT INTO `slang_list_name` VALUES ('璎');
INSERT INTO `slang_list_name` VALUES ('瓒');
INSERT INTO `slang_list_name` VALUES ('瓯');
INSERT INTO `slang_list_name` VALUES ('甘您老母');
INSERT INTO `slang_list_name` VALUES ('甘林娘');
INSERT INTO `slang_list_name` VALUES ('甘林媽');
INSERT INTO `slang_list_name` VALUES ('甘林涼');
INSERT INTO `slang_list_name` VALUES ('甘霖老母');
INSERT INTO `slang_list_name` VALUES ('甙');
INSERT INTO `slang_list_name` VALUES ('电');
INSERT INTO `slang_list_name` VALUES ('画');
INSERT INTO `slang_list_name` VALUES ('畅');
INSERT INTO `slang_list_name` VALUES ('異常');
INSERT INTO `slang_list_name` VALUES ('畲');
INSERT INTO `slang_list_name` VALUES ('畴');
INSERT INTO `slang_list_name` VALUES ('疃');
INSERT INTO `slang_list_name` VALUES ('疒');
INSERT INTO `slang_list_name` VALUES ('疖');
INSERT INTO `slang_list_name` VALUES ('疗');
INSERT INTO `slang_list_name` VALUES ('疟');
INSERT INTO `slang_list_name` VALUES ('疠');
INSERT INTO `slang_list_name` VALUES ('疡');
INSERT INTO `slang_list_name` VALUES ('疬');
INSERT INTO `slang_list_name` VALUES ('疮');
INSERT INTO `slang_list_name` VALUES ('疯');
INSERT INTO `slang_list_name` VALUES ('疱');
INSERT INTO `slang_list_name` VALUES ('疴');
INSERT INTO `slang_list_name` VALUES ('痃');
INSERT INTO `slang_list_name` VALUES ('痈');
INSERT INTO `slang_list_name` VALUES ('痉');
INSERT INTO `slang_list_name` VALUES ('痖');
INSERT INTO `slang_list_name` VALUES ('痨');
INSERT INTO `slang_list_name` VALUES ('痪');
INSERT INTO `slang_list_name` VALUES ('痫');
INSERT INTO `slang_list_name` VALUES ('瘅');
INSERT INTO `slang_list_name` VALUES ('瘗');
INSERT INTO `slang_list_name` VALUES ('瘘');
INSERT INTO `slang_list_name` VALUES ('瘪');
INSERT INTO `slang_list_name` VALUES ('瘫');
INSERT INTO `slang_list_name` VALUES ('瘾');
INSERT INTO `slang_list_name` VALUES ('瘿');
INSERT INTO `slang_list_name` VALUES ('癀');
INSERT INTO `slang_list_name` VALUES ('癍');
INSERT INTO `slang_list_name` VALUES ('癔');
INSERT INTO `slang_list_name` VALUES ('癞');
INSERT INTO `slang_list_name` VALUES ('癣');
INSERT INTO `slang_list_name` VALUES ('癫');
INSERT INTO `slang_list_name` VALUES ('癯');
INSERT INTO `slang_list_name` VALUES ('白濫');
INSERT INTO `slang_list_name` VALUES ('白爛');
INSERT INTO `slang_list_name` VALUES ('白癡');
INSERT INTO `slang_list_name` VALUES ('皑');
INSERT INTO `slang_list_name` VALUES ('皱');
INSERT INTO `slang_list_name` VALUES ('皲');
INSERT INTO `slang_list_name` VALUES ('盏');
INSERT INTO `slang_list_name` VALUES ('盐');
INSERT INTO `slang_list_name` VALUES ('监');
INSERT INTO `slang_list_name` VALUES ('盖');
INSERT INTO `slang_list_name` VALUES ('盗');
INSERT INTO `slang_list_name` VALUES ('盘');
INSERT INTO `slang_list_name` VALUES ('相幹');
INSERT INTO `slang_list_name` VALUES ('眍');
INSERT INTO `slang_list_name` VALUES ('眦');
INSERT INTO `slang_list_name` VALUES ('着');
INSERT INTO `slang_list_name` VALUES ('睁');
INSERT INTO `slang_list_name` VALUES ('睃');
INSERT INTO `slang_list_name` VALUES ('睐');
INSERT INTO `slang_list_name` VALUES ('睑');
INSERT INTO `slang_list_name` VALUES ('睪丸');
INSERT INTO `slang_list_name` VALUES ('睾丸');
INSERT INTO `slang_list_name` VALUES ('瞒');
INSERT INTO `slang_list_name` VALUES ('瞩');
INSERT INTO `slang_list_name` VALUES ('矫');
INSERT INTO `slang_list_name` VALUES ('矶');
INSERT INTO `slang_list_name` VALUES ('矾');
INSERT INTO `slang_list_name` VALUES ('矿');
INSERT INTO `slang_list_name` VALUES ('砀');
INSERT INTO `slang_list_name` VALUES ('码');
INSERT INTO `slang_list_name` VALUES ('砖');
INSERT INTO `slang_list_name` VALUES ('砗');
INSERT INTO `slang_list_name` VALUES ('砘');
INSERT INTO `slang_list_name` VALUES ('砚');
INSERT INTO `slang_list_name` VALUES ('砜');
INSERT INTO `slang_list_name` VALUES ('破遊戲誰要玩');
INSERT INTO `slang_list_name` VALUES ('砹');
INSERT INTO `slang_list_name` VALUES ('砺');
INSERT INTO `slang_list_name` VALUES ('砻');
INSERT INTO `slang_list_name` VALUES ('砼');
INSERT INTO `slang_list_name` VALUES ('砾');
INSERT INTO `slang_list_name` VALUES ('础');
INSERT INTO `slang_list_name` VALUES ('硇');
INSERT INTO `slang_list_name` VALUES ('硕');
INSERT INTO `slang_list_name` VALUES ('硖');
INSERT INTO `slang_list_name` VALUES ('硗');
INSERT INTO `slang_list_name` VALUES ('硷');
INSERT INTO `slang_list_name` VALUES ('碍');
INSERT INTO `slang_list_name` VALUES ('碛');
INSERT INTO `slang_list_name` VALUES ('碜');
INSERT INTO `slang_list_name` VALUES ('碱');
INSERT INTO `slang_list_name` VALUES ('碹');
INSERT INTO `slang_list_name` VALUES ('磙');
INSERT INTO `slang_list_name` VALUES ('礴');
INSERT INTO `slang_list_name` VALUES ('礻');
INSERT INTO `slang_list_name` VALUES ('礼');
INSERT INTO `slang_list_name` VALUES ('祢');
INSERT INTO `slang_list_name` VALUES ('祯');
INSERT INTO `slang_list_name` VALUES ('祷');
INSERT INTO `slang_list_name` VALUES ('祸');
INSERT INTO `slang_list_name` VALUES ('禀');
INSERT INTO `slang_list_name` VALUES ('禄');
INSERT INTO `slang_list_name` VALUES ('禅');
INSERT INTO `slang_list_name` VALUES ('秃');
INSERT INTO `slang_list_name` VALUES ('秆');
INSERT INTO `slang_list_name` VALUES ('积');
INSERT INTO `slang_list_name` VALUES ('称');
INSERT INTO `slang_list_name` VALUES ('秽');
INSERT INTO `slang_list_name` VALUES ('稆');
INSERT INTO `slang_list_name` VALUES ('税');
INSERT INTO `slang_list_name` VALUES ('稣');
INSERT INTO `slang_list_name` VALUES ('稳');
INSERT INTO `slang_list_name` VALUES ('稽察');
INSERT INTO `slang_list_name` VALUES ('稽核');
INSERT INTO `slang_list_name` VALUES ('積掰');
INSERT INTO `slang_list_name` VALUES ('穑');
INSERT INTO `slang_list_name` VALUES ('穴');
INSERT INTO `slang_list_name` VALUES ('空白ID');
INSERT INTO `slang_list_name` VALUES ('窑');
INSERT INTO `slang_list_name` VALUES ('窜');
INSERT INTO `slang_list_name` VALUES ('窝');
INSERT INTO `slang_list_name` VALUES ('窥');
INSERT INTO `slang_list_name` VALUES ('窦');
INSERT INTO `slang_list_name` VALUES ('窭');
INSERT INTO `slang_list_name` VALUES ('竖');
INSERT INTO `slang_list_name` VALUES ('竞');
INSERT INTO `slang_list_name` VALUES ('競舞台');
INSERT INTO `slang_list_name` VALUES ('競舞台DNF客服');
INSERT INTO `slang_list_name` VALUES ('競舞台DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('競舞台DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('競舞台GM');
INSERT INTO `slang_list_name` VALUES ('競舞台gm');
INSERT INTO `slang_list_name` VALUES ('競舞台公告');
INSERT INTO `slang_list_name` VALUES ('競舞台在線GM');
INSERT INTO `slang_list_name` VALUES ('競舞台官方');
INSERT INTO `slang_list_name` VALUES ('競舞台官方人員');
INSERT INTO `slang_list_name` VALUES ('競舞台官方專員');
INSERT INTO `slang_list_name` VALUES ('競舞台客服');
INSERT INTO `slang_list_name` VALUES ('競舞台客服中心');
INSERT INTO `slang_list_name` VALUES ('競舞台客服人員');
INSERT INTO `slang_list_name` VALUES ('競舞台客服專員');
INSERT INTO `slang_list_name` VALUES ('競舞台客服測試人員');
INSERT INTO `slang_list_name` VALUES ('競舞台專員');
INSERT INTO `slang_list_name` VALUES ('競舞台專賣');
INSERT INTO `slang_list_name` VALUES ('競舞台幣商');
INSERT INTO `slang_list_name` VALUES ('競舞台廣播');
INSERT INTO `slang_list_name` VALUES ('競舞台技術測試人員');
INSERT INTO `slang_list_name` VALUES ('競舞台派遣員');
INSERT INTO `slang_list_name` VALUES ('競舞台測試人員');
INSERT INTO `slang_list_name` VALUES ('競舞台測試專員');
INSERT INTO `slang_list_name` VALUES ('競舞台版主');
INSERT INTO `slang_list_name` VALUES ('競舞台特派員');
INSERT INTO `slang_list_name` VALUES ('競舞台管理員');
INSERT INTO `slang_list_name` VALUES ('競舞台系統');
INSERT INTO `slang_list_name` VALUES ('競舞台線上GM');
INSERT INTO `slang_list_name` VALUES ('競舞台線上客服');
INSERT INTO `slang_list_name` VALUES ('競舞台線上客服人員');
INSERT INTO `slang_list_name` VALUES ('競舞台線上客服專員');
INSERT INTO `slang_list_name` VALUES ('競舞台線上特派員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂DNF客服');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂DNF客服人員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂DNF客服專員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂GM');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂gm');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂公告');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂在線GM');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂官方');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂官方人員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂官方專員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂客服');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂客服中心');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂客服人員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂客服專員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂客服測試人員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂專員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂專賣');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂幣商');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂廣播');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂技術測試人員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂派遣員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂測試人員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂測試專員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂版主');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂特派員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂管理員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂系統');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂線上GM');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂線上客服');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂線上客服人員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂線上客服專員');
INSERT INTO `slang_list_name` VALUES ('競舞娛樂線上特派員');
INSERT INTO `slang_list_name` VALUES ('笃');
INSERT INTO `slang_list_name` VALUES ('笋');
INSERT INTO `slang_list_name` VALUES ('笔');
INSERT INTO `slang_list_name` VALUES ('笕');
INSERT INTO `slang_list_name` VALUES ('笺');
INSERT INTO `slang_list_name` VALUES ('笼');
INSERT INTO `slang_list_name` VALUES ('笾');
INSERT INTO `slang_list_name` VALUES ('筚');
INSERT INTO `slang_list_name` VALUES ('筛');
INSERT INTO `slang_list_name` VALUES ('筝');
INSERT INTO `slang_list_name` VALUES ('筢');
INSERT INTO `slang_list_name` VALUES ('筹');
INSERT INTO `slang_list_name` VALUES ('筻');
INSERT INTO `slang_list_name` VALUES ('简');
INSERT INTO `slang_list_name` VALUES ('管理員');
INSERT INTO `slang_list_name` VALUES ('箢');
INSERT INTO `slang_list_name` VALUES ('箦');
INSERT INTO `slang_list_name` VALUES ('箧');
INSERT INTO `slang_list_name` VALUES ('箨');
INSERT INTO `slang_list_name` VALUES ('箩');
INSERT INTO `slang_list_name` VALUES ('箪');
INSERT INTO `slang_list_name` VALUES ('箫');
INSERT INTO `slang_list_name` VALUES ('篑');
INSERT INTO `slang_list_name` VALUES ('篓');
INSERT INTO `slang_list_name` VALUES ('篮');
INSERT INTO `slang_list_name` VALUES ('篼');
INSERT INTO `slang_list_name` VALUES ('簖');
INSERT INTO `slang_list_name` VALUES ('籁');
INSERT INTO `slang_list_name` VALUES ('籴');
INSERT INTO `slang_list_name` VALUES ('类');
INSERT INTO `slang_list_name` VALUES ('籼');
INSERT INTO `slang_list_name` VALUES ('粜');
INSERT INTO `slang_list_name` VALUES ('粝');
INSERT INTO `slang_list_name` VALUES ('粤');
INSERT INTO `slang_list_name` VALUES ('粪');
INSERT INTO `slang_list_name` VALUES ('粮');
INSERT INTO `slang_list_name` VALUES ('精子');
INSERT INTO `slang_list_name` VALUES ('精水');
INSERT INTO `slang_list_name` VALUES ('精液');
INSERT INTO `slang_list_name` VALUES ('精蟲');
INSERT INTO `slang_list_name` VALUES ('糁');
INSERT INTO `slang_list_name` VALUES ('糇');
INSERT INTO `slang_list_name` VALUES ('糍');
INSERT INTO `slang_list_name` VALUES ('糙');
INSERT INTO `slang_list_name` VALUES ('糙你媽');
INSERT INTO `slang_list_name` VALUES ('糙妳媽');
INSERT INTO `slang_list_name` VALUES ('糙雞掰');
INSERT INTO `slang_list_name` VALUES ('系統');
INSERT INTO `slang_list_name` VALUES ('紅衫軍');
INSERT INTO `slang_list_name` VALUES ('紧');
INSERT INTO `slang_list_name` VALUES ('絷');
INSERT INTO `slang_list_name` VALUES ('線上GM');
INSERT INTO `slang_list_name` VALUES ('線上客服');
INSERT INTO `slang_list_name` VALUES ('線上客服人員');
INSERT INTO `slang_list_name` VALUES ('線上客服專員');
INSERT INTO `slang_list_name` VALUES ('線上特派員');
INSERT INTO `slang_list_name` VALUES ('緝查');
INSERT INTO `slang_list_name` VALUES ('總統');
INSERT INTO `slang_list_name` VALUES ('績掰');
INSERT INTO `slang_list_name` VALUES ('纟');
INSERT INTO `slang_list_name` VALUES ('纠');
INSERT INTO `slang_list_name` VALUES ('纡');
INSERT INTO `slang_list_name` VALUES ('红');
INSERT INTO `slang_list_name` VALUES ('纣');
INSERT INTO `slang_list_name` VALUES ('纤');
INSERT INTO `slang_list_name` VALUES ('纥');
INSERT INTO `slang_list_name` VALUES ('约');
INSERT INTO `slang_list_name` VALUES ('级');
INSERT INTO `slang_list_name` VALUES ('纨');
INSERT INTO `slang_list_name` VALUES ('纩');
INSERT INTO `slang_list_name` VALUES ('纪');
INSERT INTO `slang_list_name` VALUES ('纬');
INSERT INTO `slang_list_name` VALUES ('纭');
INSERT INTO `slang_list_name` VALUES ('纯');
INSERT INTO `slang_list_name` VALUES ('纰');
INSERT INTO `slang_list_name` VALUES ('纱');
INSERT INTO `slang_list_name` VALUES ('纲');
INSERT INTO `slang_list_name` VALUES ('纳');
INSERT INTO `slang_list_name` VALUES ('纵');
INSERT INTO `slang_list_name` VALUES ('纶');
INSERT INTO `slang_list_name` VALUES ('纷');
INSERT INTO `slang_list_name` VALUES ('纸');
INSERT INTO `slang_list_name` VALUES ('纹');
INSERT INTO `slang_list_name` VALUES ('纺');
INSERT INTO `slang_list_name` VALUES ('纽');
INSERT INTO `slang_list_name` VALUES ('纾');
INSERT INTO `slang_list_name` VALUES ('线');
INSERT INTO `slang_list_name` VALUES ('绀');
INSERT INTO `slang_list_name` VALUES ('绁');
INSERT INTO `slang_list_name` VALUES ('绂');
INSERT INTO `slang_list_name` VALUES ('练');
INSERT INTO `slang_list_name` VALUES ('组');
INSERT INTO `slang_list_name` VALUES ('绅');
INSERT INTO `slang_list_name` VALUES ('细');
INSERT INTO `slang_list_name` VALUES ('织');
INSERT INTO `slang_list_name` VALUES ('终');
INSERT INTO `slang_list_name` VALUES ('绉');
INSERT INTO `slang_list_name` VALUES ('绊');
INSERT INTO `slang_list_name` VALUES ('绋');
INSERT INTO `slang_list_name` VALUES ('绌');
INSERT INTO `slang_list_name` VALUES ('绍');
INSERT INTO `slang_list_name` VALUES ('绎');
INSERT INTO `slang_list_name` VALUES ('经');
INSERT INTO `slang_list_name` VALUES ('绐');
INSERT INTO `slang_list_name` VALUES ('绑');
INSERT INTO `slang_list_name` VALUES ('结');
INSERT INTO `slang_list_name` VALUES ('绔');
INSERT INTO `slang_list_name` VALUES ('绗');
INSERT INTO `slang_list_name` VALUES ('绘');
INSERT INTO `slang_list_name` VALUES ('给');
INSERT INTO `slang_list_name` VALUES ('绚');
INSERT INTO `slang_list_name` VALUES ('绛');
INSERT INTO `slang_list_name` VALUES ('络');
INSERT INTO `slang_list_name` VALUES ('绝');
INSERT INTO `slang_list_name` VALUES ('绞');
INSERT INTO `slang_list_name` VALUES ('统');
INSERT INTO `slang_list_name` VALUES ('绠');
INSERT INTO `slang_list_name` VALUES ('绡');
INSERT INTO `slang_list_name` VALUES ('绢');
INSERT INTO `slang_list_name` VALUES ('绣');
INSERT INTO `slang_list_name` VALUES ('绥');
INSERT INTO `slang_list_name` VALUES ('绦');
INSERT INTO `slang_list_name` VALUES ('继');
INSERT INTO `slang_list_name` VALUES ('绨');
INSERT INTO `slang_list_name` VALUES ('绩');
INSERT INTO `slang_list_name` VALUES ('绪');
INSERT INTO `slang_list_name` VALUES ('绫');
INSERT INTO `slang_list_name` VALUES ('续');
INSERT INTO `slang_list_name` VALUES ('绮');
INSERT INTO `slang_list_name` VALUES ('绯');
INSERT INTO `slang_list_name` VALUES ('绰');
INSERT INTO `slang_list_name` VALUES ('绱');
INSERT INTO `slang_list_name` VALUES ('绲');
INSERT INTO `slang_list_name` VALUES ('绳');
INSERT INTO `slang_list_name` VALUES ('维');
INSERT INTO `slang_list_name` VALUES ('绵');
INSERT INTO `slang_list_name` VALUES ('绶');
INSERT INTO `slang_list_name` VALUES ('绷');
INSERT INTO `slang_list_name` VALUES ('绸');
INSERT INTO `slang_list_name` VALUES ('绺');
INSERT INTO `slang_list_name` VALUES ('绻');
INSERT INTO `slang_list_name` VALUES ('综');
INSERT INTO `slang_list_name` VALUES ('绽');
INSERT INTO `slang_list_name` VALUES ('绾');
INSERT INTO `slang_list_name` VALUES ('绿');
INSERT INTO `slang_list_name` VALUES ('缀');
INSERT INTO `slang_list_name` VALUES ('缁');
INSERT INTO `slang_list_name` VALUES ('缂');
INSERT INTO `slang_list_name` VALUES ('缃');
INSERT INTO `slang_list_name` VALUES ('缄');
INSERT INTO `slang_list_name` VALUES ('缅');
INSERT INTO `slang_list_name` VALUES ('缆');
INSERT INTO `slang_list_name` VALUES ('缇');
INSERT INTO `slang_list_name` VALUES ('缈');
INSERT INTO `slang_list_name` VALUES ('缉');
INSERT INTO `slang_list_name` VALUES ('缋');
INSERT INTO `slang_list_name` VALUES ('缌');
INSERT INTO `slang_list_name` VALUES ('缍');
INSERT INTO `slang_list_name` VALUES ('缎');
INSERT INTO `slang_list_name` VALUES ('缏');
INSERT INTO `slang_list_name` VALUES ('缑');
INSERT INTO `slang_list_name` VALUES ('缒');
INSERT INTO `slang_list_name` VALUES ('缓');
INSERT INTO `slang_list_name` VALUES ('缔');
INSERT INTO `slang_list_name` VALUES ('缕');
INSERT INTO `slang_list_name` VALUES ('编');
INSERT INTO `slang_list_name` VALUES ('缗');
INSERT INTO `slang_list_name` VALUES ('缘');
INSERT INTO `slang_list_name` VALUES ('缙');
INSERT INTO `slang_list_name` VALUES ('缚');
INSERT INTO `slang_list_name` VALUES ('缛');
INSERT INTO `slang_list_name` VALUES ('缜');
INSERT INTO `slang_list_name` VALUES ('缝');
INSERT INTO `slang_list_name` VALUES ('缟');
INSERT INTO `slang_list_name` VALUES ('缠');
INSERT INTO `slang_list_name` VALUES ('缡');
INSERT INTO `slang_list_name` VALUES ('缢');
INSERT INTO `slang_list_name` VALUES ('缣');
INSERT INTO `slang_list_name` VALUES ('缤');
INSERT INTO `slang_list_name` VALUES ('缥');
INSERT INTO `slang_list_name` VALUES ('缦');
INSERT INTO `slang_list_name` VALUES ('缧');
INSERT INTO `slang_list_name` VALUES ('缨');
INSERT INTO `slang_list_name` VALUES ('缩');
INSERT INTO `slang_list_name` VALUES ('缪');
INSERT INTO `slang_list_name` VALUES ('缫');
INSERT INTO `slang_list_name` VALUES ('缬');
INSERT INTO `slang_list_name` VALUES ('缭');
INSERT INTO `slang_list_name` VALUES ('缮');
INSERT INTO `slang_list_name` VALUES ('缯');
INSERT INTO `slang_list_name` VALUES ('缰');
INSERT INTO `slang_list_name` VALUES ('缱');
INSERT INTO `slang_list_name` VALUES ('缲');
INSERT INTO `slang_list_name` VALUES ('缳');
INSERT INTO `slang_list_name` VALUES ('缴');
INSERT INTO `slang_list_name` VALUES ('缵');
INSERT INTO `slang_list_name` VALUES ('罂');
INSERT INTO `slang_list_name` VALUES ('罌粟');
INSERT INTO `slang_list_name` VALUES ('罗');
INSERT INTO `slang_list_name` VALUES ('罚');
INSERT INTO `slang_list_name` VALUES ('罢');
INSERT INTO `slang_list_name` VALUES ('罱');
INSERT INTO `slang_list_name` VALUES ('罴');
INSERT INTO `slang_list_name` VALUES ('羁');
INSERT INTO `slang_list_name` VALUES ('羟');
INSERT INTO `slang_list_name` VALUES ('老共');
INSERT INTO `slang_list_name` VALUES ('老娼');
INSERT INTO `slang_list_name` VALUES ('老婊');
INSERT INTO `slang_list_name` VALUES ('老母');
INSERT INTO `slang_list_name` VALUES ('耖你老幕');
INSERT INTO `slang_list_name` VALUES ('耠');
INSERT INTO `slang_list_name` VALUES ('耢');
INSERT INTO `slang_list_name` VALUES ('耥');
INSERT INTO `slang_list_name` VALUES ('耧');
INSERT INTO `slang_list_name` VALUES ('耱');
INSERT INTO `slang_list_name` VALUES ('耸');
INSERT INTO `slang_list_name` VALUES ('耻');
INSERT INTO `slang_list_name` VALUES ('聂');
INSERT INTO `slang_list_name` VALUES ('聋');
INSERT INTO `slang_list_name` VALUES ('职');
INSERT INTO `slang_list_name` VALUES ('聍');
INSERT INTO `slang_list_name` VALUES ('联');
INSERT INTO `slang_list_name` VALUES ('聩');
INSERT INTO `slang_list_name` VALUES ('聪');
INSERT INTO `slang_list_name` VALUES ('肀');
INSERT INTO `slang_list_name` VALUES ('肃');
INSERT INTO `slang_list_name` VALUES ('肉捧');
INSERT INTO `slang_list_name` VALUES ('肉棍');
INSERT INTO `slang_list_name` VALUES ('肉棒');
INSERT INTO `slang_list_name` VALUES ('肉洞');
INSERT INTO `slang_list_name` VALUES ('肖查某');
INSERT INTO `slang_list_name` VALUES ('肛門');
INSERT INTO `slang_list_name` VALUES ('肟');
INSERT INTO `slang_list_name` VALUES ('肠');
INSERT INTO `slang_list_name` VALUES ('肤');
INSERT INTO `slang_list_name` VALUES ('肷');
INSERT INTO `slang_list_name` VALUES ('肼');
INSERT INTO `slang_list_name` VALUES ('肽');
INSERT INTO `slang_list_name` VALUES ('肾');
INSERT INTO `slang_list_name` VALUES ('肿');
INSERT INTO `slang_list_name` VALUES ('胀');
INSERT INTO `slang_list_name` VALUES ('胁');
INSERT INTO `slang_list_name` VALUES ('胆');
INSERT INTO `slang_list_name` VALUES ('胧');
INSERT INTO `slang_list_name` VALUES ('胨');
INSERT INTO `slang_list_name` VALUES ('胩');
INSERT INTO `slang_list_name` VALUES ('胪');
INSERT INTO `slang_list_name` VALUES ('胫');
INSERT INTO `slang_list_name` VALUES ('胬');
INSERT INTO `slang_list_name` VALUES ('胶');
INSERT INTO `slang_list_name` VALUES ('脉');
INSERT INTO `slang_list_name` VALUES ('脍');
INSERT INTO `slang_list_name` VALUES ('脎');
INSERT INTO `slang_list_name` VALUES ('脏');
INSERT INTO `slang_list_name` VALUES ('脑');
INSERT INTO `slang_list_name` VALUES ('脒');
INSERT INTO `slang_list_name` VALUES ('脓');
INSERT INTO `slang_list_name` VALUES ('脔');
INSERT INTO `slang_list_name` VALUES ('脚');
INSERT INTO `slang_list_name` VALUES ('脱');
INSERT INTO `slang_list_name` VALUES ('脲');
INSERT INTO `slang_list_name` VALUES ('脶');
INSERT INTO `slang_list_name` VALUES ('脸');
INSERT INTO `slang_list_name` VALUES ('腈');
INSERT INTO `slang_list_name` VALUES ('腙');
INSERT INTO `slang_list_name` VALUES ('腚');
INSERT INTO `slang_list_name` VALUES ('腭');
INSERT INTO `slang_list_name` VALUES ('腻');
INSERT INTO `slang_list_name` VALUES ('腼');
INSERT INTO `slang_list_name` VALUES ('腽');
INSERT INTO `slang_list_name` VALUES ('腾');
INSERT INTO `slang_list_name` VALUES ('膑');
INSERT INTO `slang_list_name` VALUES ('膪');
INSERT INTO `slang_list_name` VALUES ('臁');
INSERT INTO `slang_list_name` VALUES ('自慰');
INSERT INTO `slang_list_name` VALUES ('臭妓女');
INSERT INTO `slang_list_name` VALUES ('臭婊');
INSERT INTO `slang_list_name` VALUES ('臭婊子');
INSERT INTO `slang_list_name` VALUES ('臭機八');
INSERT INTO `slang_list_name` VALUES ('臭表子');
INSERT INTO `slang_list_name` VALUES ('臭雞雞');
INSERT INTO `slang_list_name` VALUES ('舆');
INSERT INTO `slang_list_name` VALUES ('舣');
INSERT INTO `slang_list_name` VALUES ('舭');
INSERT INTO `slang_list_name` VALUES ('舰');
INSERT INTO `slang_list_name` VALUES ('舱');
INSERT INTO `slang_list_name` VALUES ('舻');
INSERT INTO `slang_list_name` VALUES ('舾');
INSERT INTO `slang_list_name` VALUES ('艰');
INSERT INTO `slang_list_name` VALUES ('艳');
INSERT INTO `slang_list_name` VALUES ('艹');
INSERT INTO `slang_list_name` VALUES ('艺');
INSERT INTO `slang_list_name` VALUES ('节');
INSERT INTO `slang_list_name` VALUES ('芈');
INSERT INTO `slang_list_name` VALUES ('芗');
INSERT INTO `slang_list_name` VALUES ('芜');
INSERT INTO `slang_list_name` VALUES ('芝人');
INSERT INTO `slang_list_name` VALUES ('芝馬');
INSERT INTO `slang_list_name` VALUES ('芦');
INSERT INTO `slang_list_name` VALUES ('芪');
INSERT INTO `slang_list_name` VALUES ('苁');
INSERT INTO `slang_list_name` VALUES ('苄');
INSERT INTO `slang_list_name` VALUES ('苇');
INSERT INTO `slang_list_name` VALUES ('苈');
INSERT INTO `slang_list_name` VALUES ('苊');
INSERT INTO `slang_list_name` VALUES ('苋');
INSERT INTO `slang_list_name` VALUES ('苌');
INSERT INTO `slang_list_name` VALUES ('苍');
INSERT INTO `slang_list_name` VALUES ('苎');
INSERT INTO `slang_list_name` VALUES ('苏');
INSERT INTO `slang_list_name` VALUES ('苘');
INSERT INTO `slang_list_name` VALUES ('苷');
INSERT INTO `slang_list_name` VALUES ('茎');
INSERT INTO `slang_list_name` VALUES ('茏');
INSERT INTO `slang_list_name` VALUES ('茑');
INSERT INTO `slang_list_name` VALUES ('茔');
INSERT INTO `slang_list_name` VALUES ('茕');
INSERT INTO `slang_list_name` VALUES ('茚');
INSERT INTO `slang_list_name` VALUES ('荆');
INSERT INTO `slang_list_name` VALUES ('荚');
INSERT INTO `slang_list_name` VALUES ('荛');
INSERT INTO `slang_list_name` VALUES ('荜');
INSERT INTO `slang_list_name` VALUES ('荞');
INSERT INTO `slang_list_name` VALUES ('荟');
INSERT INTO `slang_list_name` VALUES ('荠');
INSERT INTO `slang_list_name` VALUES ('荡');
INSERT INTO `slang_list_name` VALUES ('荤');
INSERT INTO `slang_list_name` VALUES ('荥');
INSERT INTO `slang_list_name` VALUES ('荦');
INSERT INTO `slang_list_name` VALUES ('荧');
INSERT INTO `slang_list_name` VALUES ('荨');
INSERT INTO `slang_list_name` VALUES ('荩');
INSERT INTO `slang_list_name` VALUES ('荪');
INSERT INTO `slang_list_name` VALUES ('荫');
INSERT INTO `slang_list_name` VALUES ('荬');
INSERT INTO `slang_list_name` VALUES ('荭');
INSERT INTO `slang_list_name` VALUES ('荮');
INSERT INTO `slang_list_name` VALUES ('药');
INSERT INTO `slang_list_name` VALUES ('莅');
INSERT INTO `slang_list_name` VALUES ('莖肛');
INSERT INTO `slang_list_name` VALUES ('莜');
INSERT INTO `slang_list_name` VALUES ('莱');
INSERT INTO `slang_list_name` VALUES ('莲');
INSERT INTO `slang_list_name` VALUES ('莳');
INSERT INTO `slang_list_name` VALUES ('莴');
INSERT INTO `slang_list_name` VALUES ('莶');
INSERT INTO `slang_list_name` VALUES ('获');
INSERT INTO `slang_list_name` VALUES ('莸');
INSERT INTO `slang_list_name` VALUES ('莹');
INSERT INTO `slang_list_name` VALUES ('莺');
INSERT INTO `slang_list_name` VALUES ('莼');
INSERT INTO `slang_list_name` VALUES ('萘');
INSERT INTO `slang_list_name` VALUES ('萜');
INSERT INTO `slang_list_name` VALUES ('萝');
INSERT INTO `slang_list_name` VALUES ('萤');
INSERT INTO `slang_list_name` VALUES ('营');
INSERT INTO `slang_list_name` VALUES ('萦');
INSERT INTO `slang_list_name` VALUES ('萧');
INSERT INTO `slang_list_name` VALUES ('葜');
INSERT INTO `slang_list_name` VALUES ('葱');
INSERT INTO `slang_list_name` VALUES ('蒇');
INSERT INTO `slang_list_name` VALUES ('蒈');
INSERT INTO `slang_list_name` VALUES ('蒉');
INSERT INTO `slang_list_name` VALUES ('蒋');
INSERT INTO `slang_list_name` VALUES ('蒌');
INSERT INTO `slang_list_name` VALUES ('蒽');
INSERT INTO `slang_list_name` VALUES ('蓝');
INSERT INTO `slang_list_name` VALUES ('蓟');
INSERT INTO `slang_list_name` VALUES ('蓠');
INSERT INTO `slang_list_name` VALUES ('蓣');
INSERT INTO `slang_list_name` VALUES ('蓥');
INSERT INTO `slang_list_name` VALUES ('蓦');
INSERT INTO `slang_list_name` VALUES ('蔣介石');
INSERT INTO `slang_list_name` VALUES ('蔸');
INSERT INTO `slang_list_name` VALUES ('蔹');
INSERT INTO `slang_list_name` VALUES ('蔺');
INSERT INTO `slang_list_name` VALUES ('蔼');
INSERT INTO `slang_list_name` VALUES ('蕲');
INSERT INTO `slang_list_name` VALUES ('蕴');
INSERT INTO `slang_list_name` VALUES ('薮');
INSERT INTO `slang_list_name` VALUES ('藁');
INSERT INTO `slang_list_name` VALUES ('藓');
INSERT INTO `slang_list_name` VALUES ('蘖');
INSERT INTO `slang_list_name` VALUES ('虏');
INSERT INTO `slang_list_name` VALUES ('虑');
INSERT INTO `slang_list_name` VALUES ('處女膜');
INSERT INTO `slang_list_name` VALUES ('虚');
INSERT INTO `slang_list_name` VALUES ('虬');
INSERT INTO `slang_list_name` VALUES ('虽');
INSERT INTO `slang_list_name` VALUES ('虾');
INSERT INTO `slang_list_name` VALUES ('虿');
INSERT INTO `slang_list_name` VALUES ('蚀');
INSERT INTO `slang_list_name` VALUES ('蚁');
INSERT INTO `slang_list_name` VALUES ('蚂');
INSERT INTO `slang_list_name` VALUES ('蚬');
INSERT INTO `slang_list_name` VALUES ('蛊');
INSERT INTO `slang_list_name` VALUES ('蛎');
INSERT INTO `slang_list_name` VALUES ('蛏');
INSERT INTO `slang_list_name` VALUES ('蛮');
INSERT INTO `slang_list_name` VALUES ('蛰');
INSERT INTO `slang_list_name` VALUES ('蛱');
INSERT INTO `slang_list_name` VALUES ('蛲');
INSERT INTO `slang_list_name` VALUES ('蛳');
INSERT INTO `slang_list_name` VALUES ('蛴');
INSERT INTO `slang_list_name` VALUES ('蜕');
INSERT INTO `slang_list_name` VALUES ('蜗');
INSERT INTO `slang_list_name` VALUES ('蝇');
INSERT INTO `slang_list_name` VALUES ('蝈');
INSERT INTO `slang_list_name` VALUES ('蝉');
INSERT INTO `slang_list_name` VALUES ('蝰');
INSERT INTO `slang_list_name` VALUES ('蝼');
INSERT INTO `slang_list_name` VALUES ('蝽');
INSERT INTO `slang_list_name` VALUES ('蝾');
INSERT INTO `slang_list_name` VALUES ('螋');
INSERT INTO `slang_list_name` VALUES ('螨');
INSERT INTO `slang_list_name` VALUES ('蟮');
INSERT INTO `slang_list_name` VALUES ('衅');
INSERT INTO `slang_list_name` VALUES ('衔');
INSERT INTO `slang_list_name` VALUES ('衤');
INSERT INTO `slang_list_name` VALUES ('补');
INSERT INTO `slang_list_name` VALUES ('衬');
INSERT INTO `slang_list_name` VALUES ('衮');
INSERT INTO `slang_list_name` VALUES ('袄');
INSERT INTO `slang_list_name` VALUES ('袅');
INSERT INTO `slang_list_name` VALUES ('袜');
INSERT INTO `slang_list_name` VALUES ('被狗幹');
INSERT INTO `slang_list_name` VALUES ('袭');
INSERT INTO `slang_list_name` VALUES ('装');
INSERT INTO `slang_list_name` VALUES ('裆');
INSERT INTO `slang_list_name` VALUES ('裢');
INSERT INTO `slang_list_name` VALUES ('裣');
INSERT INTO `slang_list_name` VALUES ('裤');
INSERT INTO `slang_list_name` VALUES ('裥');
INSERT INTO `slang_list_name` VALUES ('褛');
INSERT INTO `slang_list_name` VALUES ('褴');
INSERT INTO `slang_list_name` VALUES ('親民黨');
INSERT INTO `slang_list_name` VALUES ('见');
INSERT INTO `slang_list_name` VALUES ('观');
INSERT INTO `slang_list_name` VALUES ('规');
INSERT INTO `slang_list_name` VALUES ('觅');
INSERT INTO `slang_list_name` VALUES ('视');
INSERT INTO `slang_list_name` VALUES ('觇');
INSERT INTO `slang_list_name` VALUES ('览');
INSERT INTO `slang_list_name` VALUES ('觉');
INSERT INTO `slang_list_name` VALUES ('觊');
INSERT INTO `slang_list_name` VALUES ('觋');
INSERT INTO `slang_list_name` VALUES ('觌');
INSERT INTO `slang_list_name` VALUES ('觎');
INSERT INTO `slang_list_name` VALUES ('觏');
INSERT INTO `slang_list_name` VALUES ('觐');
INSERT INTO `slang_list_name` VALUES ('觑');
INSERT INTO `slang_list_name` VALUES ('觞');
INSERT INTO `slang_list_name` VALUES ('解放軍');
INSERT INTO `slang_list_name` VALUES ('觯');
INSERT INTO `slang_list_name` VALUES ('誉');
INSERT INTO `slang_list_name` VALUES ('誊');
INSERT INTO `slang_list_name` VALUES ('讠');
INSERT INTO `slang_list_name` VALUES ('计');
INSERT INTO `slang_list_name` VALUES ('订');
INSERT INTO `slang_list_name` VALUES ('讣');
INSERT INTO `slang_list_name` VALUES ('讥');
INSERT INTO `slang_list_name` VALUES ('讦');
INSERT INTO `slang_list_name` VALUES ('讧');
INSERT INTO `slang_list_name` VALUES ('讨');
INSERT INTO `slang_list_name` VALUES ('讪');
INSERT INTO `slang_list_name` VALUES ('训');
INSERT INTO `slang_list_name` VALUES ('议');
INSERT INTO `slang_list_name` VALUES ('讯');
INSERT INTO `slang_list_name` VALUES ('记');
INSERT INTO `slang_list_name` VALUES ('讲');
INSERT INTO `slang_list_name` VALUES ('讳');
INSERT INTO `slang_list_name` VALUES ('讴');
INSERT INTO `slang_list_name` VALUES ('讵');
INSERT INTO `slang_list_name` VALUES ('讶');
INSERT INTO `slang_list_name` VALUES ('讷');
INSERT INTO `slang_list_name` VALUES ('许');
INSERT INTO `slang_list_name` VALUES ('讹');
INSERT INTO `slang_list_name` VALUES ('论');
INSERT INTO `slang_list_name` VALUES ('讼');
INSERT INTO `slang_list_name` VALUES ('讽');
INSERT INTO `slang_list_name` VALUES ('设');
INSERT INTO `slang_list_name` VALUES ('访');
INSERT INTO `slang_list_name` VALUES ('诀');
INSERT INTO `slang_list_name` VALUES ('证');
INSERT INTO `slang_list_name` VALUES ('诂');
INSERT INTO `slang_list_name` VALUES ('诃');
INSERT INTO `slang_list_name` VALUES ('诅');
INSERT INTO `slang_list_name` VALUES ('识');
INSERT INTO `slang_list_name` VALUES ('诈');
INSERT INTO `slang_list_name` VALUES ('诉');
INSERT INTO `slang_list_name` VALUES ('诊');
INSERT INTO `slang_list_name` VALUES ('诋');
INSERT INTO `slang_list_name` VALUES ('诌');
INSERT INTO `slang_list_name` VALUES ('词');
INSERT INTO `slang_list_name` VALUES ('诎');
INSERT INTO `slang_list_name` VALUES ('诏');
INSERT INTO `slang_list_name` VALUES ('译');
INSERT INTO `slang_list_name` VALUES ('诒');
INSERT INTO `slang_list_name` VALUES ('诓');
INSERT INTO `slang_list_name` VALUES ('诔');
INSERT INTO `slang_list_name` VALUES ('试');
INSERT INTO `slang_list_name` VALUES ('诖');
INSERT INTO `slang_list_name` VALUES ('诗');
INSERT INTO `slang_list_name` VALUES ('诘');
INSERT INTO `slang_list_name` VALUES ('诙');
INSERT INTO `slang_list_name` VALUES ('诚');
INSERT INTO `slang_list_name` VALUES ('诛');
INSERT INTO `slang_list_name` VALUES ('诜');
INSERT INTO `slang_list_name` VALUES ('话');
INSERT INTO `slang_list_name` VALUES ('诞');
INSERT INTO `slang_list_name` VALUES ('诟');
INSERT INTO `slang_list_name` VALUES ('诠');
INSERT INTO `slang_list_name` VALUES ('诡');
INSERT INTO `slang_list_name` VALUES ('询');
INSERT INTO `slang_list_name` VALUES ('诣');
INSERT INTO `slang_list_name` VALUES ('诤');
INSERT INTO `slang_list_name` VALUES ('该');
INSERT INTO `slang_list_name` VALUES ('详');
INSERT INTO `slang_list_name` VALUES ('诧');
INSERT INTO `slang_list_name` VALUES ('诨');
INSERT INTO `slang_list_name` VALUES ('诩');
INSERT INTO `slang_list_name` VALUES ('诫');
INSERT INTO `slang_list_name` VALUES ('诬');
INSERT INTO `slang_list_name` VALUES ('语');
INSERT INTO `slang_list_name` VALUES ('诮');
INSERT INTO `slang_list_name` VALUES ('误');
INSERT INTO `slang_list_name` VALUES ('诰');
INSERT INTO `slang_list_name` VALUES ('诱');
INSERT INTO `slang_list_name` VALUES ('诲');
INSERT INTO `slang_list_name` VALUES ('诳');
INSERT INTO `slang_list_name` VALUES ('说');
INSERT INTO `slang_list_name` VALUES ('诵');
INSERT INTO `slang_list_name` VALUES ('诶');
INSERT INTO `slang_list_name` VALUES ('诸');
INSERT INTO `slang_list_name` VALUES ('诹');
INSERT INTO `slang_list_name` VALUES ('诺');
INSERT INTO `slang_list_name` VALUES ('读');
INSERT INTO `slang_list_name` VALUES ('诼');
INSERT INTO `slang_list_name` VALUES ('诽');
INSERT INTO `slang_list_name` VALUES ('课');
INSERT INTO `slang_list_name` VALUES ('诿');
INSERT INTO `slang_list_name` VALUES ('谀');
INSERT INTO `slang_list_name` VALUES ('谁');
INSERT INTO `slang_list_name` VALUES ('谂');
INSERT INTO `slang_list_name` VALUES ('调');
INSERT INTO `slang_list_name` VALUES ('谄');
INSERT INTO `slang_list_name` VALUES ('谅');
INSERT INTO `slang_list_name` VALUES ('谆');
INSERT INTO `slang_list_name` VALUES ('谇');
INSERT INTO `slang_list_name` VALUES ('谈');
INSERT INTO `slang_list_name` VALUES ('谊');
INSERT INTO `slang_list_name` VALUES ('谋');
INSERT INTO `slang_list_name` VALUES ('谌');
INSERT INTO `slang_list_name` VALUES ('谍');
INSERT INTO `slang_list_name` VALUES ('谎');
INSERT INTO `slang_list_name` VALUES ('谏');
INSERT INTO `slang_list_name` VALUES ('谐');
INSERT INTO `slang_list_name` VALUES ('谑');
INSERT INTO `slang_list_name` VALUES ('谒');
INSERT INTO `slang_list_name` VALUES ('谓');
INSERT INTO `slang_list_name` VALUES ('谔');
INSERT INTO `slang_list_name` VALUES ('谕');
INSERT INTO `slang_list_name` VALUES ('谖');
INSERT INTO `slang_list_name` VALUES ('谗');
INSERT INTO `slang_list_name` VALUES ('谘');
INSERT INTO `slang_list_name` VALUES ('谙');
INSERT INTO `slang_list_name` VALUES ('谚');
INSERT INTO `slang_list_name` VALUES ('谛');
INSERT INTO `slang_list_name` VALUES ('谜');
INSERT INTO `slang_list_name` VALUES ('谝');
INSERT INTO `slang_list_name` VALUES ('谟');
INSERT INTO `slang_list_name` VALUES ('谠');
INSERT INTO `slang_list_name` VALUES ('谡');
INSERT INTO `slang_list_name` VALUES ('谢');
INSERT INTO `slang_list_name` VALUES ('谣');
INSERT INTO `slang_list_name` VALUES ('谤');
INSERT INTO `slang_list_name` VALUES ('谥');
INSERT INTO `slang_list_name` VALUES ('谧');
INSERT INTO `slang_list_name` VALUES ('谨');
INSERT INTO `slang_list_name` VALUES ('谩');
INSERT INTO `slang_list_name` VALUES ('谪');
INSERT INTO `slang_list_name` VALUES ('谫');
INSERT INTO `slang_list_name` VALUES ('谬');
INSERT INTO `slang_list_name` VALUES ('谭');
INSERT INTO `slang_list_name` VALUES ('谮');
INSERT INTO `slang_list_name` VALUES ('谯');
INSERT INTO `slang_list_name` VALUES ('谰');
INSERT INTO `slang_list_name` VALUES ('谲');
INSERT INTO `slang_list_name` VALUES ('谳');
INSERT INTO `slang_list_name` VALUES ('谵');
INSERT INTO `slang_list_name` VALUES ('谶');
INSERT INTO `slang_list_name` VALUES ('賣150點');
INSERT INTO `slang_list_name` VALUES ('賣300點');
INSERT INTO `slang_list_name` VALUES ('賣350點');
INSERT INTO `slang_list_name` VALUES ('賣400點');
INSERT INTO `slang_list_name` VALUES ('賣元寶');
INSERT INTO `slang_list_name` VALUES ('賣帳號');
INSERT INTO `slang_list_name` VALUES ('賣幣');
INSERT INTO `slang_list_name` VALUES ('賣淫');
INSERT INTO `slang_list_name` VALUES ('賣點');
INSERT INTO `slang_list_name` VALUES ('賤');
INSERT INTO `slang_list_name` VALUES ('賤人');
INSERT INTO `slang_list_name` VALUES ('賤女人');
INSERT INTO `slang_list_name` VALUES ('賤婊');
INSERT INTO `slang_list_name` VALUES ('賤屄');
INSERT INTO `slang_list_name` VALUES ('賤種');
INSERT INTO `slang_list_name` VALUES ('賤胚');
INSERT INTO `slang_list_name` VALUES ('賤貨');
INSERT INTO `slang_list_name` VALUES ('賽你娘');
INSERT INTO `slang_list_name` VALUES ('賽妳娘');
INSERT INTO `slang_list_name` VALUES ('贛');
INSERT INTO `slang_list_name` VALUES ('贝');
INSERT INTO `slang_list_name` VALUES ('贞');
INSERT INTO `slang_list_name` VALUES ('负');
INSERT INTO `slang_list_name` VALUES ('贡');
INSERT INTO `slang_list_name` VALUES ('财');
INSERT INTO `slang_list_name` VALUES ('责');
INSERT INTO `slang_list_name` VALUES ('贤');
INSERT INTO `slang_list_name` VALUES ('败');
INSERT INTO `slang_list_name` VALUES ('账');
INSERT INTO `slang_list_name` VALUES ('货');
INSERT INTO `slang_list_name` VALUES ('质');
INSERT INTO `slang_list_name` VALUES ('贩');
INSERT INTO `slang_list_name` VALUES ('贪');
INSERT INTO `slang_list_name` VALUES ('贬');
INSERT INTO `slang_list_name` VALUES ('购');
INSERT INTO `slang_list_name` VALUES ('贮');
INSERT INTO `slang_list_name` VALUES ('贯');
INSERT INTO `slang_list_name` VALUES ('贰');
INSERT INTO `slang_list_name` VALUES ('贱');
INSERT INTO `slang_list_name` VALUES ('贲');
INSERT INTO `slang_list_name` VALUES ('贳');
INSERT INTO `slang_list_name` VALUES ('贴');
INSERT INTO `slang_list_name` VALUES ('贵');
INSERT INTO `slang_list_name` VALUES ('贶');
INSERT INTO `slang_list_name` VALUES ('贷');
INSERT INTO `slang_list_name` VALUES ('贸');
INSERT INTO `slang_list_name` VALUES ('费');
INSERT INTO `slang_list_name` VALUES ('贺');
INSERT INTO `slang_list_name` VALUES ('贻');
INSERT INTO `slang_list_name` VALUES ('贼');
INSERT INTO `slang_list_name` VALUES ('贽');
INSERT INTO `slang_list_name` VALUES ('贾');
INSERT INTO `slang_list_name` VALUES ('贿');
INSERT INTO `slang_list_name` VALUES ('赀');
INSERT INTO `slang_list_name` VALUES ('赁');
INSERT INTO `slang_list_name` VALUES ('赂');
INSERT INTO `slang_list_name` VALUES ('赃');
INSERT INTO `slang_list_name` VALUES ('资');
INSERT INTO `slang_list_name` VALUES ('赅');
INSERT INTO `slang_list_name` VALUES ('赆');
INSERT INTO `slang_list_name` VALUES ('赇');
INSERT INTO `slang_list_name` VALUES ('赈');
INSERT INTO `slang_list_name` VALUES ('赉');
INSERT INTO `slang_list_name` VALUES ('赊');
INSERT INTO `slang_list_name` VALUES ('赋');
INSERT INTO `slang_list_name` VALUES ('赌');
INSERT INTO `slang_list_name` VALUES ('赍');
INSERT INTO `slang_list_name` VALUES ('赎');
INSERT INTO `slang_list_name` VALUES ('赏');
INSERT INTO `slang_list_name` VALUES ('赐');
INSERT INTO `slang_list_name` VALUES ('赓');
INSERT INTO `slang_list_name` VALUES ('赔');
INSERT INTO `slang_list_name` VALUES ('赕');
INSERT INTO `slang_list_name` VALUES ('赖');
INSERT INTO `slang_list_name` VALUES ('赘');
INSERT INTO `slang_list_name` VALUES ('赙');
INSERT INTO `slang_list_name` VALUES ('赚');
INSERT INTO `slang_list_name` VALUES ('赜');
INSERT INTO `slang_list_name` VALUES ('赝');
INSERT INTO `slang_list_name` VALUES ('赞');
INSERT INTO `slang_list_name` VALUES ('赠');
INSERT INTO `slang_list_name` VALUES ('赡');
INSERT INTO `slang_list_name` VALUES ('赢');
INSERT INTO `slang_list_name` VALUES ('赣');
INSERT INTO `slang_list_name` VALUES ('赵');
INSERT INTO `slang_list_name` VALUES ('趱');
INSERT INTO `slang_list_name` VALUES ('趸');
INSERT INTO `slang_list_name` VALUES ('跃');
INSERT INTO `slang_list_name` VALUES ('跄');
INSERT INTO `slang_list_name` VALUES ('跞');
INSERT INTO `slang_list_name` VALUES ('跡掰');
INSERT INTO `slang_list_name` VALUES ('践');
INSERT INTO `slang_list_name` VALUES ('跷');
INSERT INTO `slang_list_name` VALUES ('跸');
INSERT INTO `slang_list_name` VALUES ('跹');
INSERT INTO `slang_list_name` VALUES ('跻');
INSERT INTO `slang_list_name` VALUES ('踌');
INSERT INTO `slang_list_name` VALUES ('踪');
INSERT INTO `slang_list_name` VALUES ('踬');
INSERT INTO `slang_list_name` VALUES ('踯');
INSERT INTO `slang_list_name` VALUES ('踺');
INSERT INTO `slang_list_name` VALUES ('蹑');
INSERT INTO `slang_list_name` VALUES ('蹒');
INSERT INTO `slang_list_name` VALUES ('蹰');
INSERT INTO `slang_list_name` VALUES ('蹿');
INSERT INTO `slang_list_name` VALUES ('躏');
INSERT INTO `slang_list_name` VALUES ('躜');
INSERT INTO `slang_list_name` VALUES ('軎');
INSERT INTO `slang_list_name` VALUES ('车');
INSERT INTO `slang_list_name` VALUES ('轧');
INSERT INTO `slang_list_name` VALUES ('轨');
INSERT INTO `slang_list_name` VALUES ('轩');
INSERT INTO `slang_list_name` VALUES ('轫');
INSERT INTO `slang_list_name` VALUES ('转');
INSERT INTO `slang_list_name` VALUES ('轭');
INSERT INTO `slang_list_name` VALUES ('轮');
INSERT INTO `slang_list_name` VALUES ('轰');
INSERT INTO `slang_list_name` VALUES ('轱');
INSERT INTO `slang_list_name` VALUES ('轲');
INSERT INTO `slang_list_name` VALUES ('轳');
INSERT INTO `slang_list_name` VALUES ('轴');
INSERT INTO `slang_list_name` VALUES ('轵');
INSERT INTO `slang_list_name` VALUES ('轶');
INSERT INTO `slang_list_name` VALUES ('轷');
INSERT INTO `slang_list_name` VALUES ('轸');
INSERT INTO `slang_list_name` VALUES ('轹');
INSERT INTO `slang_list_name` VALUES ('轺');
INSERT INTO `slang_list_name` VALUES ('轼');
INSERT INTO `slang_list_name` VALUES ('载');
INSERT INTO `slang_list_name` VALUES ('轾');
INSERT INTO `slang_list_name` VALUES ('轿');
INSERT INTO `slang_list_name` VALUES ('辁');
INSERT INTO `slang_list_name` VALUES ('辂');
INSERT INTO `slang_list_name` VALUES ('较');
INSERT INTO `slang_list_name` VALUES ('辄');
INSERT INTO `slang_list_name` VALUES ('辅');
INSERT INTO `slang_list_name` VALUES ('辆');
INSERT INTO `slang_list_name` VALUES ('辇');
INSERT INTO `slang_list_name` VALUES ('辈');
INSERT INTO `slang_list_name` VALUES ('辉');
INSERT INTO `slang_list_name` VALUES ('辊');
INSERT INTO `slang_list_name` VALUES ('辋');
INSERT INTO `slang_list_name` VALUES ('辍');
INSERT INTO `slang_list_name` VALUES ('辎');
INSERT INTO `slang_list_name` VALUES ('辏');
INSERT INTO `slang_list_name` VALUES ('辐');
INSERT INTO `slang_list_name` VALUES ('辑');
INSERT INTO `slang_list_name` VALUES ('输');
INSERT INTO `slang_list_name` VALUES ('辔');
INSERT INTO `slang_list_name` VALUES ('辕');
INSERT INTO `slang_list_name` VALUES ('辖');
INSERT INTO `slang_list_name` VALUES ('辗');
INSERT INTO `slang_list_name` VALUES ('辘');
INSERT INTO `slang_list_name` VALUES ('辙');
INSERT INTO `slang_list_name` VALUES ('辚');
INSERT INTO `slang_list_name` VALUES ('辞');
INSERT INTO `slang_list_name` VALUES ('辩');
INSERT INTO `slang_list_name` VALUES ('辫');
INSERT INTO `slang_list_name` VALUES ('辶');
INSERT INTO `slang_list_name` VALUES ('边');
INSERT INTO `slang_list_name` VALUES ('辽');
INSERT INTO `slang_list_name` VALUES ('达');
INSERT INTO `slang_list_name` VALUES ('过');
INSERT INTO `slang_list_name` VALUES ('迈');
INSERT INTO `slang_list_name` VALUES ('运');
INSERT INTO `slang_list_name` VALUES ('还');
INSERT INTO `slang_list_name` VALUES ('这');
INSERT INTO `slang_list_name` VALUES ('进');
INSERT INTO `slang_list_name` VALUES ('远');
INSERT INTO `slang_list_name` VALUES ('违');
INSERT INTO `slang_list_name` VALUES ('连');
INSERT INTO `slang_list_name` VALUES ('迟');
INSERT INTO `slang_list_name` VALUES ('迩');
INSERT INTO `slang_list_name` VALUES ('迳');
INSERT INTO `slang_list_name` VALUES ('迹');
INSERT INTO `slang_list_name` VALUES ('选');
INSERT INTO `slang_list_name` VALUES ('逊');
INSERT INTO `slang_list_name` VALUES ('递');
INSERT INTO `slang_list_name` VALUES ('逦');
INSERT INTO `slang_list_name` VALUES ('逻');
INSERT INTO `slang_list_name` VALUES ('遊戲金幣');
INSERT INTO `slang_list_name` VALUES ('遊戲銀行');
INSERT INTO `slang_list_name` VALUES ('遗');
INSERT INTO `slang_list_name` VALUES ('遥');
INSERT INTO `slang_list_name` VALUES ('邓');
INSERT INTO `slang_list_name` VALUES ('邝');
INSERT INTO `slang_list_name` VALUES ('邬');
INSERT INTO `slang_list_name` VALUES ('邮');
INSERT INTO `slang_list_name` VALUES ('邹');
INSERT INTO `slang_list_name` VALUES ('邺');
INSERT INTO `slang_list_name` VALUES ('邻');
INSERT INTO `slang_list_name` VALUES ('郄');
INSERT INTO `slang_list_name` VALUES ('郏');
INSERT INTO `slang_list_name` VALUES ('郐');
INSERT INTO `slang_list_name` VALUES ('郑');
INSERT INTO `slang_list_name` VALUES ('郓');
INSERT INTO `slang_list_name` VALUES ('郦');
INSERT INTO `slang_list_name` VALUES ('郧');
INSERT INTO `slang_list_name` VALUES ('郸');
INSERT INTO `slang_list_name` VALUES ('酝');
INSERT INTO `slang_list_name` VALUES ('酞');
INSERT INTO `slang_list_name` VALUES ('酰');
INSERT INTO `slang_list_name` VALUES ('酱');
INSERT INTO `slang_list_name` VALUES ('酶');
INSERT INTO `slang_list_name` VALUES ('酽');
INSERT INTO `slang_list_name` VALUES ('酾');
INSERT INTO `slang_list_name` VALUES ('酿');
INSERT INTO `slang_list_name` VALUES ('醌');
INSERT INTO `slang_list_name` VALUES ('释');
INSERT INTO `slang_list_name` VALUES ('釣魚台');
INSERT INTO `slang_list_name` VALUES ('鉴');
INSERT INTO `slang_list_name` VALUES ('銮');
INSERT INTO `slang_list_name` VALUES ('錾');
INSERT INTO `slang_list_name` VALUES ('鐾');
INSERT INTO `slang_list_name` VALUES ('钅');
INSERT INTO `slang_list_name` VALUES ('钆');
INSERT INTO `slang_list_name` VALUES ('钇');
INSERT INTO `slang_list_name` VALUES ('针');
INSERT INTO `slang_list_name` VALUES ('钉');
INSERT INTO `slang_list_name` VALUES ('钊');
INSERT INTO `slang_list_name` VALUES ('钋');
INSERT INTO `slang_list_name` VALUES ('钌');
INSERT INTO `slang_list_name` VALUES ('钍');
INSERT INTO `slang_list_name` VALUES ('钏');
INSERT INTO `slang_list_name` VALUES ('钐');
INSERT INTO `slang_list_name` VALUES ('钒');
INSERT INTO `slang_list_name` VALUES ('钓');
INSERT INTO `slang_list_name` VALUES ('钔');
INSERT INTO `slang_list_name` VALUES ('钕');
INSERT INTO `slang_list_name` VALUES ('钗');
INSERT INTO `slang_list_name` VALUES ('钙');
INSERT INTO `slang_list_name` VALUES ('钚');
INSERT INTO `slang_list_name` VALUES ('钛');
INSERT INTO `slang_list_name` VALUES ('钜');
INSERT INTO `slang_list_name` VALUES ('钝');
INSERT INTO `slang_list_name` VALUES ('钞');
INSERT INTO `slang_list_name` VALUES ('钟');
INSERT INTO `slang_list_name` VALUES ('钠');
INSERT INTO `slang_list_name` VALUES ('钡');
INSERT INTO `slang_list_name` VALUES ('钢');
INSERT INTO `slang_list_name` VALUES ('钣');
INSERT INTO `slang_list_name` VALUES ('钤');
INSERT INTO `slang_list_name` VALUES ('钥');
INSERT INTO `slang_list_name` VALUES ('钧');
INSERT INTO `slang_list_name` VALUES ('钨');
INSERT INTO `slang_list_name` VALUES ('钩');
INSERT INTO `slang_list_name` VALUES ('钪');
INSERT INTO `slang_list_name` VALUES ('钫');
INSERT INTO `slang_list_name` VALUES ('钬');
INSERT INTO `slang_list_name` VALUES ('钭');
INSERT INTO `slang_list_name` VALUES ('钮');
INSERT INTO `slang_list_name` VALUES ('钯');
INSERT INTO `slang_list_name` VALUES ('钰');
INSERT INTO `slang_list_name` VALUES ('钲');
INSERT INTO `slang_list_name` VALUES ('钴');
INSERT INTO `slang_list_name` VALUES ('钵');
INSERT INTO `slang_list_name` VALUES ('钶');
INSERT INTO `slang_list_name` VALUES ('钷');
INSERT INTO `slang_list_name` VALUES ('钸');
INSERT INTO `slang_list_name` VALUES ('钹');
INSERT INTO `slang_list_name` VALUES ('钺');
INSERT INTO `slang_list_name` VALUES ('钻');
INSERT INTO `slang_list_name` VALUES ('钼');
INSERT INTO `slang_list_name` VALUES ('钽');
INSERT INTO `slang_list_name` VALUES ('钾');
INSERT INTO `slang_list_name` VALUES ('钿');
INSERT INTO `slang_list_name` VALUES ('铀');
INSERT INTO `slang_list_name` VALUES ('铁');
INSERT INTO `slang_list_name` VALUES ('铂');
INSERT INTO `slang_list_name` VALUES ('铃');
INSERT INTO `slang_list_name` VALUES ('铄');
INSERT INTO `slang_list_name` VALUES ('铆');
INSERT INTO `slang_list_name` VALUES ('铈');
INSERT INTO `slang_list_name` VALUES ('铉');
INSERT INTO `slang_list_name` VALUES ('铊');
INSERT INTO `slang_list_name` VALUES ('铋');
INSERT INTO `slang_list_name` VALUES ('铌');
INSERT INTO `slang_list_name` VALUES ('铍');
INSERT INTO `slang_list_name` VALUES ('铎');
INSERT INTO `slang_list_name` VALUES ('铐');
INSERT INTO `slang_list_name` VALUES ('铑');
INSERT INTO `slang_list_name` VALUES ('铒');
INSERT INTO `slang_list_name` VALUES ('铕');
INSERT INTO `slang_list_name` VALUES ('铖');
INSERT INTO `slang_list_name` VALUES ('铗');
INSERT INTO `slang_list_name` VALUES ('铘');
INSERT INTO `slang_list_name` VALUES ('铙');
INSERT INTO `slang_list_name` VALUES ('铛');
INSERT INTO `slang_list_name` VALUES ('铜');
INSERT INTO `slang_list_name` VALUES ('铝');
INSERT INTO `slang_list_name` VALUES ('铞');
INSERT INTO `slang_list_name` VALUES ('铟');
INSERT INTO `slang_list_name` VALUES ('铠');
INSERT INTO `slang_list_name` VALUES ('铡');
INSERT INTO `slang_list_name` VALUES ('铢');
INSERT INTO `slang_list_name` VALUES ('铣');
INSERT INTO `slang_list_name` VALUES ('铤');
INSERT INTO `slang_list_name` VALUES ('铥');
INSERT INTO `slang_list_name` VALUES ('铧');
INSERT INTO `slang_list_name` VALUES ('铨');
INSERT INTO `slang_list_name` VALUES ('铩');
INSERT INTO `slang_list_name` VALUES ('铪');
INSERT INTO `slang_list_name` VALUES ('铫');
INSERT INTO `slang_list_name` VALUES ('铬');
INSERT INTO `slang_list_name` VALUES ('铭');
INSERT INTO `slang_list_name` VALUES ('铮');
INSERT INTO `slang_list_name` VALUES ('铯');
INSERT INTO `slang_list_name` VALUES ('铰');
INSERT INTO `slang_list_name` VALUES ('铱');
INSERT INTO `slang_list_name` VALUES ('铲');
INSERT INTO `slang_list_name` VALUES ('铳');
INSERT INTO `slang_list_name` VALUES ('铴');
INSERT INTO `slang_list_name` VALUES ('铵');
INSERT INTO `slang_list_name` VALUES ('银');
INSERT INTO `slang_list_name` VALUES ('铷');
INSERT INTO `slang_list_name` VALUES ('铸');
INSERT INTO `slang_list_name` VALUES ('铹');
INSERT INTO `slang_list_name` VALUES ('铼');
INSERT INTO `slang_list_name` VALUES ('铽');
INSERT INTO `slang_list_name` VALUES ('链');
INSERT INTO `slang_list_name` VALUES ('铿');
INSERT INTO `slang_list_name` VALUES ('销');
INSERT INTO `slang_list_name` VALUES ('锁');
INSERT INTO `slang_list_name` VALUES ('锂');
INSERT INTO `slang_list_name` VALUES ('锃');
INSERT INTO `slang_list_name` VALUES ('锄');
INSERT INTO `slang_list_name` VALUES ('锅');
INSERT INTO `slang_list_name` VALUES ('锆');
INSERT INTO `slang_list_name` VALUES ('锇');
INSERT INTO `slang_list_name` VALUES ('锈');
INSERT INTO `slang_list_name` VALUES ('锉');
INSERT INTO `slang_list_name` VALUES ('锊');
INSERT INTO `slang_list_name` VALUES ('锋');
INSERT INTO `slang_list_name` VALUES ('锌');
INSERT INTO `slang_list_name` VALUES ('锍');
INSERT INTO `slang_list_name` VALUES ('锎');
INSERT INTO `slang_list_name` VALUES ('锏');
INSERT INTO `slang_list_name` VALUES ('锑');
INSERT INTO `slang_list_name` VALUES ('锒');
INSERT INTO `slang_list_name` VALUES ('锓');
INSERT INTO `slang_list_name` VALUES ('锔');
INSERT INTO `slang_list_name` VALUES ('锕');
INSERT INTO `slang_list_name` VALUES ('锖');
INSERT INTO `slang_list_name` VALUES ('锗');
INSERT INTO `slang_list_name` VALUES ('锘');
INSERT INTO `slang_list_name` VALUES ('错');
INSERT INTO `slang_list_name` VALUES ('锚');
INSERT INTO `slang_list_name` VALUES ('锛');
INSERT INTO `slang_list_name` VALUES ('锝');
INSERT INTO `slang_list_name` VALUES ('锞');
INSERT INTO `slang_list_name` VALUES ('锟');
INSERT INTO `slang_list_name` VALUES ('锡');
INSERT INTO `slang_list_name` VALUES ('锢');
INSERT INTO `slang_list_name` VALUES ('锣');
INSERT INTO `slang_list_name` VALUES ('锤');
INSERT INTO `slang_list_name` VALUES ('锥');
INSERT INTO `slang_list_name` VALUES ('锦');
INSERT INTO `slang_list_name` VALUES ('锨');
INSERT INTO `slang_list_name` VALUES ('锩');
INSERT INTO `slang_list_name` VALUES ('锪');
INSERT INTO `slang_list_name` VALUES ('锫');
INSERT INTO `slang_list_name` VALUES ('锬');
INSERT INTO `slang_list_name` VALUES ('锭');
INSERT INTO `slang_list_name` VALUES ('键');
INSERT INTO `slang_list_name` VALUES ('锯');
INSERT INTO `slang_list_name` VALUES ('锰');
INSERT INTO `slang_list_name` VALUES ('锱');
INSERT INTO `slang_list_name` VALUES ('锲');
INSERT INTO `slang_list_name` VALUES ('锴');
INSERT INTO `slang_list_name` VALUES ('锵');
INSERT INTO `slang_list_name` VALUES ('锶');
INSERT INTO `slang_list_name` VALUES ('锷');
INSERT INTO `slang_list_name` VALUES ('锸');
INSERT INTO `slang_list_name` VALUES ('锺');
INSERT INTO `slang_list_name` VALUES ('锻');
INSERT INTO `slang_list_name` VALUES ('锼');
INSERT INTO `slang_list_name` VALUES ('锾');
INSERT INTO `slang_list_name` VALUES ('锿');
INSERT INTO `slang_list_name` VALUES ('镀');
INSERT INTO `slang_list_name` VALUES ('镁');
INSERT INTO `slang_list_name` VALUES ('镂');
INSERT INTO `slang_list_name` VALUES ('镄');
INSERT INTO `slang_list_name` VALUES ('镅');
INSERT INTO `slang_list_name` VALUES ('镆');
INSERT INTO `slang_list_name` VALUES ('镇');
INSERT INTO `slang_list_name` VALUES ('镉');
INSERT INTO `slang_list_name` VALUES ('镊');
INSERT INTO `slang_list_name` VALUES ('镌');
INSERT INTO `slang_list_name` VALUES ('镍');
INSERT INTO `slang_list_name` VALUES ('镎');
INSERT INTO `slang_list_name` VALUES ('镏');
INSERT INTO `slang_list_name` VALUES ('镐');
INSERT INTO `slang_list_name` VALUES ('镑');
INSERT INTO `slang_list_name` VALUES ('镒');
INSERT INTO `slang_list_name` VALUES ('镓');
INSERT INTO `slang_list_name` VALUES ('镔');
INSERT INTO `slang_list_name` VALUES ('镖');
INSERT INTO `slang_list_name` VALUES ('镗');
INSERT INTO `slang_list_name` VALUES ('镘');
INSERT INTO `slang_list_name` VALUES ('镙');
INSERT INTO `slang_list_name` VALUES ('镛');
INSERT INTO `slang_list_name` VALUES ('镜');
INSERT INTO `slang_list_name` VALUES ('镝');
INSERT INTO `slang_list_name` VALUES ('镞');
INSERT INTO `slang_list_name` VALUES ('镟');
INSERT INTO `slang_list_name` VALUES ('镡');
INSERT INTO `slang_list_name` VALUES ('镢');
INSERT INTO `slang_list_name` VALUES ('镣');
INSERT INTO `slang_list_name` VALUES ('镤');
INSERT INTO `slang_list_name` VALUES ('镥');
INSERT INTO `slang_list_name` VALUES ('镦');
INSERT INTO `slang_list_name` VALUES ('镧');
INSERT INTO `slang_list_name` VALUES ('镨');
INSERT INTO `slang_list_name` VALUES ('镩');
INSERT INTO `slang_list_name` VALUES ('镪');
INSERT INTO `slang_list_name` VALUES ('镫');
INSERT INTO `slang_list_name` VALUES ('镬');
INSERT INTO `slang_list_name` VALUES ('镭');
INSERT INTO `slang_list_name` VALUES ('镯');
INSERT INTO `slang_list_name` VALUES ('镰');
INSERT INTO `slang_list_name` VALUES ('镱');
INSERT INTO `slang_list_name` VALUES ('镲');
INSERT INTO `slang_list_name` VALUES ('镳');
INSERT INTO `slang_list_name` VALUES ('镶');
INSERT INTO `slang_list_name` VALUES ('长');
INSERT INTO `slang_list_name` VALUES ('閪');
INSERT INTO `slang_list_name` VALUES ('门');
INSERT INTO `slang_list_name` VALUES ('闩');
INSERT INTO `slang_list_name` VALUES ('闪');
INSERT INTO `slang_list_name` VALUES ('闫');
INSERT INTO `slang_list_name` VALUES ('闭');
INSERT INTO `slang_list_name` VALUES ('问');
INSERT INTO `slang_list_name` VALUES ('闯');
INSERT INTO `slang_list_name` VALUES ('闱');
INSERT INTO `slang_list_name` VALUES ('闲');
INSERT INTO `slang_list_name` VALUES ('闳');
INSERT INTO `slang_list_name` VALUES ('间');
INSERT INTO `slang_list_name` VALUES ('闵');
INSERT INTO `slang_list_name` VALUES ('闶');
INSERT INTO `slang_list_name` VALUES ('闷');
INSERT INTO `slang_list_name` VALUES ('闸');
INSERT INTO `slang_list_name` VALUES ('闹');
INSERT INTO `slang_list_name` VALUES ('闺');
INSERT INTO `slang_list_name` VALUES ('闻');
INSERT INTO `slang_list_name` VALUES ('闼');
INSERT INTO `slang_list_name` VALUES ('闽');
INSERT INTO `slang_list_name` VALUES ('闾');
INSERT INTO `slang_list_name` VALUES ('阀');
INSERT INTO `slang_list_name` VALUES ('阁');
INSERT INTO `slang_list_name` VALUES ('阂');
INSERT INTO `slang_list_name` VALUES ('阃');
INSERT INTO `slang_list_name` VALUES ('阄');
INSERT INTO `slang_list_name` VALUES ('阅');
INSERT INTO `slang_list_name` VALUES ('阆');
INSERT INTO `slang_list_name` VALUES ('阈');
INSERT INTO `slang_list_name` VALUES ('阉');
INSERT INTO `slang_list_name` VALUES ('阊');
INSERT INTO `slang_list_name` VALUES ('阋');
INSERT INTO `slang_list_name` VALUES ('阌');
INSERT INTO `slang_list_name` VALUES ('阍');
INSERT INTO `slang_list_name` VALUES ('阎');
INSERT INTO `slang_list_name` VALUES ('阏');
INSERT INTO `slang_list_name` VALUES ('阐');
INSERT INTO `slang_list_name` VALUES ('阑');
INSERT INTO `slang_list_name` VALUES ('阒');
INSERT INTO `slang_list_name` VALUES ('阔');
INSERT INTO `slang_list_name` VALUES ('阕');
INSERT INTO `slang_list_name` VALUES ('阖');
INSERT INTO `slang_list_name` VALUES ('阗');
INSERT INTO `slang_list_name` VALUES ('阙');
INSERT INTO `slang_list_name` VALUES ('阚');
INSERT INTO `slang_list_name` VALUES ('阝');
INSERT INTO `slang_list_name` VALUES ('队');
INSERT INTO `slang_list_name` VALUES ('阳');
INSERT INTO `slang_list_name` VALUES ('阴');
INSERT INTO `slang_list_name` VALUES ('阵');
INSERT INTO `slang_list_name` VALUES ('阶');
INSERT INTO `slang_list_name` VALUES ('阻橪住曬');
INSERT INTO `slang_list_name` VALUES ('际');
INSERT INTO `slang_list_name` VALUES ('陆');
INSERT INTO `slang_list_name` VALUES ('陇');
INSERT INTO `slang_list_name` VALUES ('陈');
INSERT INTO `slang_list_name` VALUES ('陉');
INSERT INTO `slang_list_name` VALUES ('陕');
INSERT INTO `slang_list_name` VALUES ('陧');
INSERT INTO `slang_list_name` VALUES ('陨');
INSERT INTO `slang_list_name` VALUES ('险');
INSERT INTO `slang_list_name` VALUES ('陰唇');
INSERT INTO `slang_list_name` VALUES ('陰囊');
INSERT INTO `slang_list_name` VALUES ('陰核');
INSERT INTO `slang_list_name` VALUES ('陰毛');
INSERT INTO `slang_list_name` VALUES ('陰莖');
INSERT INTO `slang_list_name` VALUES ('陰莖粉嫩嫩');
INSERT INTO `slang_list_name` VALUES ('陰蒂');
INSERT INTO `slang_list_name` VALUES ('陰道');
INSERT INTO `slang_list_name` VALUES ('陰門');
INSERT INTO `slang_list_name` VALUES ('陳水扁');
INSERT INTO `slang_list_name` VALUES ('陽具');
INSERT INTO `slang_list_name` VALUES ('陽物');
INSERT INTO `slang_list_name` VALUES ('陽莖');
INSERT INTO `slang_list_name` VALUES ('陽萎');
INSERT INTO `slang_list_name` VALUES ('随');
INSERT INTO `slang_list_name` VALUES ('隐');
INSERT INTO `slang_list_name` VALUES ('隶');
INSERT INTO `slang_list_name` VALUES ('隽');
INSERT INTO `slang_list_name` VALUES ('难');
INSERT INTO `slang_list_name` VALUES ('雏');
INSERT INTO `slang_list_name` VALUES ('雜交');
INSERT INTO `slang_list_name` VALUES ('雜碎');
INSERT INTO `slang_list_name` VALUES ('雜種');
INSERT INTO `slang_list_name` VALUES ('雞八');
INSERT INTO `slang_list_name` VALUES ('雞吧');
INSERT INTO `slang_list_name` VALUES ('雞奸');
INSERT INTO `slang_list_name` VALUES ('雞姦');
INSERT INTO `slang_list_name` VALUES ('雞巴');
INSERT INTO `slang_list_name` VALUES ('雞扒');
INSERT INTO `slang_list_name` VALUES ('雞掰');
INSERT INTO `slang_list_name` VALUES ('雞歪');
INSERT INTO `slang_list_name` VALUES ('雞歪歪');
INSERT INTO `slang_list_name` VALUES ('雞頭');
INSERT INTO `slang_list_name` VALUES ('雠');
INSERT INTO `slang_list_name` VALUES ('雲起');
INSERT INTO `slang_list_name` VALUES ('雳');
INSERT INTO `slang_list_name` VALUES ('雾');
INSERT INTO `slang_list_name` VALUES ('霁');
INSERT INTO `slang_list_name` VALUES ('霭');
INSERT INTO `slang_list_name` VALUES ('靓');
INSERT INTO `slang_list_name` VALUES ('静');
INSERT INTO `slang_list_name` VALUES ('靠ㄠ');
INSERT INTO `slang_list_name` VALUES ('靠么');
INSERT INTO `slang_list_name` VALUES ('靠妖');
INSERT INTO `slang_list_name` VALUES ('靠背');
INSERT INTO `slang_list_name` VALUES ('靠腰');
INSERT INTO `slang_list_name` VALUES ('靠邀');
INSERT INTO `slang_list_name` VALUES ('靥');
INSERT INTO `slang_list_name` VALUES ('鞑');
INSERT INTO `slang_list_name` VALUES ('鞒');
INSERT INTO `slang_list_name` VALUES ('鞯');
INSERT INTO `slang_list_name` VALUES ('鞲');
INSERT INTO `slang_list_name` VALUES ('鞴');
INSERT INTO `slang_list_name` VALUES ('韦');
INSERT INTO `slang_list_name` VALUES ('韩');
INSERT INTO `slang_list_name` VALUES ('韪');
INSERT INTO `slang_list_name` VALUES ('韫');
INSERT INTO `slang_list_name` VALUES ('韬');
INSERT INTO `slang_list_name` VALUES ('韵');
INSERT INTO `slang_list_name` VALUES ('页');
INSERT INTO `slang_list_name` VALUES ('顶');
INSERT INTO `slang_list_name` VALUES ('顸');
INSERT INTO `slang_list_name` VALUES ('项');
INSERT INTO `slang_list_name` VALUES ('顺');
INSERT INTO `slang_list_name` VALUES ('须');
INSERT INTO `slang_list_name` VALUES ('顼');
INSERT INTO `slang_list_name` VALUES ('顽');
INSERT INTO `slang_list_name` VALUES ('顾');
INSERT INTO `slang_list_name` VALUES ('顿');
INSERT INTO `slang_list_name` VALUES ('颀');
INSERT INTO `slang_list_name` VALUES ('颁');
INSERT INTO `slang_list_name` VALUES ('颂');
INSERT INTO `slang_list_name` VALUES ('颃');
INSERT INTO `slang_list_name` VALUES ('预');
INSERT INTO `slang_list_name` VALUES ('颅');
INSERT INTO `slang_list_name` VALUES ('领');
INSERT INTO `slang_list_name` VALUES ('颈');
INSERT INTO `slang_list_name` VALUES ('颉');
INSERT INTO `slang_list_name` VALUES ('颊');
INSERT INTO `slang_list_name` VALUES ('颌');
INSERT INTO `slang_list_name` VALUES ('颍');
INSERT INTO `slang_list_name` VALUES ('颏');
INSERT INTO `slang_list_name` VALUES ('颐');
INSERT INTO `slang_list_name` VALUES ('颓');
INSERT INTO `slang_list_name` VALUES ('颔');
INSERT INTO `slang_list_name` VALUES ('颖');
INSERT INTO `slang_list_name` VALUES ('颗');
INSERT INTO `slang_list_name` VALUES ('题');
INSERT INTO `slang_list_name` VALUES ('颚');
INSERT INTO `slang_list_name` VALUES ('颛');
INSERT INTO `slang_list_name` VALUES ('颜');
INSERT INTO `slang_list_name` VALUES ('额');
INSERT INTO `slang_list_name` VALUES ('颞');
INSERT INTO `slang_list_name` VALUES ('颟');
INSERT INTO `slang_list_name` VALUES ('颠');
INSERT INTO `slang_list_name` VALUES ('颡');
INSERT INTO `slang_list_name` VALUES ('颢');
INSERT INTO `slang_list_name` VALUES ('颤');
INSERT INTO `slang_list_name` VALUES ('颥');
INSERT INTO `slang_list_name` VALUES ('颦');
INSERT INTO `slang_list_name` VALUES ('风');
INSERT INTO `slang_list_name` VALUES ('飑');
INSERT INTO `slang_list_name` VALUES ('飒');
INSERT INTO `slang_list_name` VALUES ('飓');
INSERT INTO `slang_list_name` VALUES ('飕');
INSERT INTO `slang_list_name` VALUES ('飙');
INSERT INTO `slang_list_name` VALUES ('飚');
INSERT INTO `slang_list_name` VALUES ('飛彈打台灣');
INSERT INTO `slang_list_name` VALUES ('飞');
INSERT INTO `slang_list_name` VALUES ('食撚');
INSERT INTO `slang_list_name` VALUES ('食撚妹');
INSERT INTO `slang_list_name` VALUES ('食撚屎啦');
INSERT INTO `slang_list_name` VALUES ('飨');
INSERT INTO `slang_list_name` VALUES ('餍');
INSERT INTO `slang_list_name` VALUES ('饣');
INSERT INTO `slang_list_name` VALUES ('饥');
INSERT INTO `slang_list_name` VALUES ('饧');
INSERT INTO `slang_list_name` VALUES ('饨');
INSERT INTO `slang_list_name` VALUES ('饩');
INSERT INTO `slang_list_name` VALUES ('饪');
INSERT INTO `slang_list_name` VALUES ('饫');
INSERT INTO `slang_list_name` VALUES ('饬');
INSERT INTO `slang_list_name` VALUES ('饭');
INSERT INTO `slang_list_name` VALUES ('饮');
INSERT INTO `slang_list_name` VALUES ('饯');
INSERT INTO `slang_list_name` VALUES ('饰');
INSERT INTO `slang_list_name` VALUES ('饱');
INSERT INTO `slang_list_name` VALUES ('饲');
INSERT INTO `slang_list_name` VALUES ('饴');
INSERT INTO `slang_list_name` VALUES ('饵');
INSERT INTO `slang_list_name` VALUES ('饷');
INSERT INTO `slang_list_name` VALUES ('饺');
INSERT INTO `slang_list_name` VALUES ('饼');
INSERT INTO `slang_list_name` VALUES ('饽');
INSERT INTO `slang_list_name` VALUES ('饿');
INSERT INTO `slang_list_name` VALUES ('馀');
INSERT INTO `slang_list_name` VALUES ('馁');
INSERT INTO `slang_list_name` VALUES ('馄');
INSERT INTO `slang_list_name` VALUES ('馅');
INSERT INTO `slang_list_name` VALUES ('馆');
INSERT INTO `slang_list_name` VALUES ('馇');
INSERT INTO `slang_list_name` VALUES ('馈');
INSERT INTO `slang_list_name` VALUES ('馊');
INSERT INTO `slang_list_name` VALUES ('馋');
INSERT INTO `slang_list_name` VALUES ('馍');
INSERT INTO `slang_list_name` VALUES ('馏');
INSERT INTO `slang_list_name` VALUES ('馐');
INSERT INTO `slang_list_name` VALUES ('馑');
INSERT INTO `slang_list_name` VALUES ('馒');
INSERT INTO `slang_list_name` VALUES ('馓');
INSERT INTO `slang_list_name` VALUES ('馔');
INSERT INTO `slang_list_name` VALUES ('馕');
INSERT INTO `slang_list_name` VALUES ('馬皇');
INSERT INTO `slang_list_name` VALUES ('馬英九');
INSERT INTO `slang_list_name` VALUES ('騷貨');
INSERT INTO `slang_list_name` VALUES ('马');
INSERT INTO `slang_list_name` VALUES ('驭');
INSERT INTO `slang_list_name` VALUES ('驮');
INSERT INTO `slang_list_name` VALUES ('驯');
INSERT INTO `slang_list_name` VALUES ('驰');
INSERT INTO `slang_list_name` VALUES ('驳');
INSERT INTO `slang_list_name` VALUES ('驴');
INSERT INTO `slang_list_name` VALUES ('驵');
INSERT INTO `slang_list_name` VALUES ('驶');
INSERT INTO `slang_list_name` VALUES ('驷');
INSERT INTO `slang_list_name` VALUES ('驸');
INSERT INTO `slang_list_name` VALUES ('驹');
INSERT INTO `slang_list_name` VALUES ('驺');
INSERT INTO `slang_list_name` VALUES ('驻');
INSERT INTO `slang_list_name` VALUES ('驼');
INSERT INTO `slang_list_name` VALUES ('驽');
INSERT INTO `slang_list_name` VALUES ('驾');
INSERT INTO `slang_list_name` VALUES ('驿');
INSERT INTO `slang_list_name` VALUES ('骀');
INSERT INTO `slang_list_name` VALUES ('骁');
INSERT INTO `slang_list_name` VALUES ('骂');
INSERT INTO `slang_list_name` VALUES ('骄');
INSERT INTO `slang_list_name` VALUES ('骅');
INSERT INTO `slang_list_name` VALUES ('骆');
INSERT INTO `slang_list_name` VALUES ('骇');
INSERT INTO `slang_list_name` VALUES ('骈');
INSERT INTO `slang_list_name` VALUES ('骊');
INSERT INTO `slang_list_name` VALUES ('骋');
INSERT INTO `slang_list_name` VALUES ('验');
INSERT INTO `slang_list_name` VALUES ('骏');
INSERT INTO `slang_list_name` VALUES ('骐');
INSERT INTO `slang_list_name` VALUES ('骒');
INSERT INTO `slang_list_name` VALUES ('骓');
INSERT INTO `slang_list_name` VALUES ('骖');
INSERT INTO `slang_list_name` VALUES ('骘');
INSERT INTO `slang_list_name` VALUES ('骚');
INSERT INTO `slang_list_name` VALUES ('骛');
INSERT INTO `slang_list_name` VALUES ('骜');
INSERT INTO `slang_list_name` VALUES ('骝');
INSERT INTO `slang_list_name` VALUES ('骞');
INSERT INTO `slang_list_name` VALUES ('骟');
INSERT INTO `slang_list_name` VALUES ('骠');
INSERT INTO `slang_list_name` VALUES ('骡');
INSERT INTO `slang_list_name` VALUES ('骢');
INSERT INTO `slang_list_name` VALUES ('骣');
INSERT INTO `slang_list_name` VALUES ('骤');
INSERT INTO `slang_list_name` VALUES ('骥');
INSERT INTO `slang_list_name` VALUES ('骧');
INSERT INTO `slang_list_name` VALUES ('骶');
INSERT INTO `slang_list_name` VALUES ('骺');
INSERT INTO `slang_list_name` VALUES ('髅');
INSERT INTO `slang_list_name` VALUES ('髋');
INSERT INTO `slang_list_name` VALUES ('髌');
INSERT INTO `slang_list_name` VALUES ('鬏');
INSERT INTO `slang_list_name` VALUES ('鬓');
INSERT INTO `slang_list_name` VALUES ('魇');
INSERT INTO `slang_list_name` VALUES ('魉');
INSERT INTO `slang_list_name` VALUES ('鱼');
INSERT INTO `slang_list_name` VALUES ('鱿');
INSERT INTO `slang_list_name` VALUES ('鲁');
INSERT INTO `slang_list_name` VALUES ('鲂');
INSERT INTO `slang_list_name` VALUES ('鲅');
INSERT INTO `slang_list_name` VALUES ('鲆');
INSERT INTO `slang_list_name` VALUES ('鲇');
INSERT INTO `slang_list_name` VALUES ('鲈');
INSERT INTO `slang_list_name` VALUES ('鲋');
INSERT INTO `slang_list_name` VALUES ('鲍');
INSERT INTO `slang_list_name` VALUES ('鲎');
INSERT INTO `slang_list_name` VALUES ('鲐');
INSERT INTO `slang_list_name` VALUES ('鲑');
INSERT INTO `slang_list_name` VALUES ('鲒');
INSERT INTO `slang_list_name` VALUES ('鲔');
INSERT INTO `slang_list_name` VALUES ('鲕');
INSERT INTO `slang_list_name` VALUES ('鲚');
INSERT INTO `slang_list_name` VALUES ('鲛');
INSERT INTO `slang_list_name` VALUES ('鲜');
INSERT INTO `slang_list_name` VALUES ('鲞');
INSERT INTO `slang_list_name` VALUES ('鲟');
INSERT INTO `slang_list_name` VALUES ('鲠');
INSERT INTO `slang_list_name` VALUES ('鲡');
INSERT INTO `slang_list_name` VALUES ('鲢');
INSERT INTO `slang_list_name` VALUES ('鲣');
INSERT INTO `slang_list_name` VALUES ('鲤');
INSERT INTO `slang_list_name` VALUES ('鲥');
INSERT INTO `slang_list_name` VALUES ('鲦');
INSERT INTO `slang_list_name` VALUES ('鲧');
INSERT INTO `slang_list_name` VALUES ('鲨');
INSERT INTO `slang_list_name` VALUES ('鲩');
INSERT INTO `slang_list_name` VALUES ('鲫');
INSERT INTO `slang_list_name` VALUES ('鲭');
INSERT INTO `slang_list_name` VALUES ('鲮');
INSERT INTO `slang_list_name` VALUES ('鲰');
INSERT INTO `slang_list_name` VALUES ('鲱');
INSERT INTO `slang_list_name` VALUES ('鲲');
INSERT INTO `slang_list_name` VALUES ('鲳');
INSERT INTO `slang_list_name` VALUES ('鲴');
INSERT INTO `slang_list_name` VALUES ('鲵');
INSERT INTO `slang_list_name` VALUES ('鲶');
INSERT INTO `slang_list_name` VALUES ('鲷');
INSERT INTO `slang_list_name` VALUES ('鲸');
INSERT INTO `slang_list_name` VALUES ('鲺');
INSERT INTO `slang_list_name` VALUES ('鲻');
INSERT INTO `slang_list_name` VALUES ('鲼');
INSERT INTO `slang_list_name` VALUES ('鲽');
INSERT INTO `slang_list_name` VALUES ('鳄');
INSERT INTO `slang_list_name` VALUES ('鳅');
INSERT INTO `slang_list_name` VALUES ('鳆');
INSERT INTO `slang_list_name` VALUES ('鳇');
INSERT INTO `slang_list_name` VALUES ('鳊');
INSERT INTO `slang_list_name` VALUES ('鳋');
INSERT INTO `slang_list_name` VALUES ('鳌');
INSERT INTO `slang_list_name` VALUES ('鳍');
INSERT INTO `slang_list_name` VALUES ('鳎');
INSERT INTO `slang_list_name` VALUES ('鳏');
INSERT INTO `slang_list_name` VALUES ('鳐');
INSERT INTO `slang_list_name` VALUES ('鳓');
INSERT INTO `slang_list_name` VALUES ('鳔');
INSERT INTO `slang_list_name` VALUES ('鳕');
INSERT INTO `slang_list_name` VALUES ('鳖');
INSERT INTO `slang_list_name` VALUES ('鳗');
INSERT INTO `slang_list_name` VALUES ('鳘');
INSERT INTO `slang_list_name` VALUES ('鳙');
INSERT INTO `slang_list_name` VALUES ('鳜');
INSERT INTO `slang_list_name` VALUES ('鳝');
INSERT INTO `slang_list_name` VALUES ('鳞');
INSERT INTO `slang_list_name` VALUES ('鳟');
INSERT INTO `slang_list_name` VALUES ('鳢');
INSERT INTO `slang_list_name` VALUES ('鳩');
INSERT INTO `slang_list_name` VALUES ('鴉片');
INSERT INTO `slang_list_name` VALUES ('鸟');
INSERT INTO `slang_list_name` VALUES ('鸠');
INSERT INTO `slang_list_name` VALUES ('鸡');
INSERT INTO `slang_list_name` VALUES ('鸢');
INSERT INTO `slang_list_name` VALUES ('鸣');
INSERT INTO `slang_list_name` VALUES ('鸥');
INSERT INTO `slang_list_name` VALUES ('鸦');
INSERT INTO `slang_list_name` VALUES ('鸨');
INSERT INTO `slang_list_name` VALUES ('鸩');
INSERT INTO `slang_list_name` VALUES ('鸪');
INSERT INTO `slang_list_name` VALUES ('鸫');
INSERT INTO `slang_list_name` VALUES ('鸬');
INSERT INTO `slang_list_name` VALUES ('鸭');
INSERT INTO `slang_list_name` VALUES ('鸯');
INSERT INTO `slang_list_name` VALUES ('鸱');
INSERT INTO `slang_list_name` VALUES ('鸲');
INSERT INTO `slang_list_name` VALUES ('鸳');
INSERT INTO `slang_list_name` VALUES ('鸵');
INSERT INTO `slang_list_name` VALUES ('鸶');
INSERT INTO `slang_list_name` VALUES ('鸷');
INSERT INTO `slang_list_name` VALUES ('鸸');
INSERT INTO `slang_list_name` VALUES ('鸹');
INSERT INTO `slang_list_name` VALUES ('鸺');
INSERT INTO `slang_list_name` VALUES ('鸽');
INSERT INTO `slang_list_name` VALUES ('鸾');
INSERT INTO `slang_list_name` VALUES ('鸿');
INSERT INTO `slang_list_name` VALUES ('鹁');
INSERT INTO `slang_list_name` VALUES ('鹂');
INSERT INTO `slang_list_name` VALUES ('鹃');
INSERT INTO `slang_list_name` VALUES ('鹄');
INSERT INTO `slang_list_name` VALUES ('鹅');
INSERT INTO `slang_list_name` VALUES ('鹆');
INSERT INTO `slang_list_name` VALUES ('鹇');
INSERT INTO `slang_list_name` VALUES ('鹈');
INSERT INTO `slang_list_name` VALUES ('鹉');
INSERT INTO `slang_list_name` VALUES ('鹋');
INSERT INTO `slang_list_name` VALUES ('鹌');
INSERT INTO `slang_list_name` VALUES ('鹎');
INSERT INTO `slang_list_name` VALUES ('鹏');
INSERT INTO `slang_list_name` VALUES ('鹑');
INSERT INTO `slang_list_name` VALUES ('鹕');
INSERT INTO `slang_list_name` VALUES ('鹗');
INSERT INTO `slang_list_name` VALUES ('鹘');
INSERT INTO `slang_list_name` VALUES ('鹚');
INSERT INTO `slang_list_name` VALUES ('鹛');
INSERT INTO `slang_list_name` VALUES ('鹜');
INSERT INTO `slang_list_name` VALUES ('鹞');
INSERT INTO `slang_list_name` VALUES ('鹣');
INSERT INTO `slang_list_name` VALUES ('鹤');
INSERT INTO `slang_list_name` VALUES ('鹦');
INSERT INTO `slang_list_name` VALUES ('鹧');
INSERT INTO `slang_list_name` VALUES ('鹨');
INSERT INTO `slang_list_name` VALUES ('鹩');
INSERT INTO `slang_list_name` VALUES ('鹪');
INSERT INTO `slang_list_name` VALUES ('鹫');
INSERT INTO `slang_list_name` VALUES ('鹬');
INSERT INTO `slang_list_name` VALUES ('鹭');
INSERT INTO `slang_list_name` VALUES ('鹰');
INSERT INTO `slang_list_name` VALUES ('鹱');
INSERT INTO `slang_list_name` VALUES ('鹳');
INSERT INTO `slang_list_name` VALUES ('鹹家鏟');
INSERT INTO `slang_list_name` VALUES ('鹾');
INSERT INTO `slang_list_name` VALUES ('麦');
INSERT INTO `slang_list_name` VALUES ('麸');
INSERT INTO `slang_list_name` VALUES ('麽');
INSERT INTO `slang_list_name` VALUES ('黄');
INSERT INTO `slang_list_name` VALUES ('黉');
INSERT INTO `slang_list_name` VALUES ('黢');
INSERT INTO `slang_list_name` VALUES ('黨派');
INSERT INTO `slang_list_name` VALUES ('黩');
INSERT INTO `slang_list_name` VALUES ('黪');
INSERT INTO `slang_list_name` VALUES ('黾');
INSERT INTO `slang_list_name` VALUES ('鼋');
INSERT INTO `slang_list_name` VALUES ('鼍');
INSERT INTO `slang_list_name` VALUES ('鼗');
INSERT INTO `slang_list_name` VALUES ('鼹');
INSERT INTO `slang_list_name` VALUES ('齄');
INSERT INTO `slang_list_name` VALUES ('齑');
INSERT INTO `slang_list_name` VALUES ('齿');
INSERT INTO `slang_list_name` VALUES ('龀');
INSERT INTO `slang_list_name` VALUES ('龃');
INSERT INTO `slang_list_name` VALUES ('龄');
INSERT INTO `slang_list_name` VALUES ('龅');
INSERT INTO `slang_list_name` VALUES ('龆');
INSERT INTO `slang_list_name` VALUES ('龇');
INSERT INTO `slang_list_name` VALUES ('龈');
INSERT INTO `slang_list_name` VALUES ('龉');
INSERT INTO `slang_list_name` VALUES ('龊');
INSERT INTO `slang_list_name` VALUES ('龌');
INSERT INTO `slang_list_name` VALUES ('龙');
INSERT INTO `slang_list_name` VALUES ('龚');
INSERT INTO `slang_list_name` VALUES ('龛');
INSERT INTO `slang_list_name` VALUES ('龜頭');
INSERT INTO `slang_list_name` VALUES ('龟');
INSERT INTO `slang_list_name` VALUES ('');
INSERT INTO `slang_list_name` VALUES ('');
INSERT INTO `slang_list_name` VALUES ('');
INSERT INTO `slang_list_name` VALUES ('');
INSERT INTO `slang_list_name` VALUES ('');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `a` int(11) NULL DEFAULT NULL,
  `b` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '2013-01-01 00:00:00');
INSERT INTO `test` VALUES (1, '2013-01-03 00:00:00');
INSERT INTO `test` VALUES (2, '2013-01-03 00:00:00');
INSERT INTO `test` VALUES (3, '2013-01-03 00:00:00');
INSERT INTO `test` VALUES (4, '2013-01-01 00:00:00');
INSERT INTO `test` VALUES (1111, '2021-11-19 00:00:00');
INSERT INTO `test` VALUES (222, '2021-11-19 00:00:00');

-- ----------------------------
-- Table structure for test2
-- ----------------------------
DROP TABLE IF EXISTS `test2`;
CREATE TABLE `test2`  (
  `a` int(10) UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of test2
-- ----------------------------
INSERT INTO `test2` VALUES (0);
INSERT INTO `test2` VALUES (222);

-- ----------------------------
-- Table structure for tme_charac
-- ----------------------------
DROP TABLE IF EXISTS `tme_charac`;
CREATE TABLE `tme_charac`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `charac_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `village` tinyint(4) NOT NULL DEFAULT 1,
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `lev` tinyint(4) NOT NULL DEFAULT 1,
  `exp` int(11) NOT NULL DEFAULT 0,
  `grow_type` tinyint(4) NOT NULL DEFAULT 0,
  `HP` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `maxHP` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `maxMP` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `phy_attack` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `phy_defense` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `mag_attack` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `mag_defense` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `element_resist` tinyblob NOT NULL,
  `spec_property` tinyblob NOT NULL,
  `inven_weight` int(6) NOT NULL DEFAULT 0,
  `hp_regen` smallint(6) NOT NULL DEFAULT 0,
  `mp_regen` smallint(6) NOT NULL DEFAULT 0,
  `move_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `attack_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `cast_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `hit_recovery` smallint(6) NOT NULL DEFAULT 0,
  `jump` smallint(6) NOT NULL DEFAULT 0,
  `charac_weight` int(11) NOT NULL DEFAULT 0,
  `fatigue` smallint(11) NOT NULL DEFAULT 0,
  `max_fatigue` smallint(6) NOT NULL DEFAULT 70,
  `premium_fatigue` smallint(11) NOT NULL DEFAULT 0,
  `max_premium_fatigue` smallint(6) NOT NULL DEFAULT 0,
  `create_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `dungeon_clear_point` int(11) NOT NULL DEFAULT 0,
  `delete_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_right` tinyint(4) NOT NULL DEFAULT 0,
  `member_flag` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tmp_charac
-- ----------------------------
DROP TABLE IF EXISTS `tmp_charac`;
CREATE TABLE `tmp_charac`  (
  `m_id` int(11) NOT NULL DEFAULT 0,
  `charac_no` int(11) NOT NULL DEFAULT 0,
  `charac_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `village` tinyint(4) NOT NULL DEFAULT 1,
  `job` tinyint(4) NOT NULL DEFAULT 0,
  `lev` tinyint(4) NOT NULL DEFAULT 1,
  `exp` int(11) NOT NULL DEFAULT 0,
  `grow_type` tinyint(4) NOT NULL DEFAULT 0,
  `HP` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `maxHP` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `maxMP` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `phy_attack` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `phy_defense` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `mag_attack` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `mag_defense` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `element_resist` tinyblob NOT NULL,
  `spec_property` tinyblob NOT NULL,
  `inven_weight` int(6) NOT NULL DEFAULT 0,
  `hp_regen` smallint(6) NOT NULL DEFAULT 0,
  `mp_regen` smallint(6) NOT NULL DEFAULT 0,
  `move_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `attack_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `cast_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `hit_recovery` smallint(6) NOT NULL DEFAULT 0,
  `jump` smallint(6) NOT NULL DEFAULT 0,
  `charac_weight` int(11) NOT NULL DEFAULT 0,
  `fatigue` smallint(11) NOT NULL DEFAULT 0,
  `max_fatigue` smallint(6) NOT NULL DEFAULT 70,
  `premium_fatigue` smallint(11) NOT NULL DEFAULT 0,
  `max_premium_fatigue` smallint(6) NOT NULL DEFAULT 0,
  `create_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `last_play_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `dungeon_clear_point` int(11) NOT NULL DEFAULT 0,
  `delete_time` datetime NOT NULL DEFAULT '2021-11-19 00:00:00',
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_right` tinyint(4) NOT NULL DEFAULT 0,
  `member_flag` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for under_age_consent
-- ----------------------------
DROP TABLE IF EXISTS `under_age_consent`;
CREATE TABLE `under_age_consent`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consent_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `limit_money` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `parent_name` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `parent_jumin` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parent_phone1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `parent_phone2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `parent_phone3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `parent_email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `parent_consent_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `notice_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `notice_addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `create_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consent_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consent_yn` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `history_yn` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idxid` USING BTREE(`m_id`, `create_date`),
  INDEX `idx_parent_name` USING BTREE(`parent_name`),
  INDEX `idx_parent_email` USING BTREE(`parent_email`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for under_billing_confirm
-- ----------------------------
DROP TABLE IF EXISTS `under_billing_confirm`;
CREATE TABLE `under_billing_confirm`  (
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_name` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `parent_jumin` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parent_phone1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `parent_phone2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `parent_phone3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `parent_email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `parent_consent_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `create_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consent_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consent_yn` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`m_id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_ban
-- ----------------------------
DROP TABLE IF EXISTS `user_ban`;
CREATE TABLE `user_ban`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` tinyint(4) NOT NULL DEFAULT 1,
  `m_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ban_term` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ban_reason` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `detail_reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ban_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cancel_reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cancel_date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `first_ssn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `second_ssn` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`no`),
  INDEX `ie_m_id` USING BTREE(`m_id`, `status`),
  INDEX `idx_first_ssn` USING BTREE(`first_ssn`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
