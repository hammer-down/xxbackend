/*
 Navicat MySQL Data Transfer

 Source Server         : locall
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : xiaoxiang

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 19/04/2019 13:08:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tp_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `tp_evaluation`;
CREATE TABLE `tp_evaluation`  (
  `e_id` int(15) NOT NULL,
  `e_fid` int(15) NULL DEFAULT NULL,
  `e_uid` int(15) NULL DEFAULT NULL,
  `e_wid` int(15) NULL DEFAULT NULL,
  `e_allrating` int(2) NULL DEFAULT NULL,
  `e_comment` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_recmmendfid` int(8) NULL DEFAULT NULL,
  `e_imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `e_state` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`e_id`) USING BTREE,
  INDEX `e_fid`(`e_fid`) USING BTREE,
  INDEX `e_uid`(`e_uid`) USING BTREE,
  INDEX `e_wid`(`e_wid`) USING BTREE,
  CONSTRAINT `tp_evaluation_ibfk_1` FOREIGN KEY (`e_fid`) REFERENCES `tp_food` (`f_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tp_evaluation_ibfk_2` FOREIGN KEY (`e_wid`) REFERENCES `tp_window` (`w_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tp_evaluation_ibfk_3` FOREIGN KEY (`e_uid`) REFERENCES `tp_user` (`u_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tp_evaluation_ibfk_4` FOREIGN KEY (`e_wid`) REFERENCES `tp_window` (`w_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_food
-- ----------------------------
DROP TABLE IF EXISTS `tp_food`;
CREATE TABLE `tp_food`  (
  `f_id` int(8) NOT NULL,
  `f_wid` int(15) NULL DEFAULT NULL,
  `f_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_name` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f_price` float(10, 2) NOT NULL,
  `f_dprice` float(10, 2) NULL DEFAULT NULL,
  `f_takeout` bit(1) NULL DEFAULT NULL,
  `f_state` int(5) NOT NULL,
  `f_description` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_hot` float(2, 0) NULL DEFAULT NULL,
  `f_allrating` float(2, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`f_id`) USING BTREE,
  INDEX `f_wid`(`f_wid`) USING BTREE,
  INDEX `f_name`(`f_name`) USING BTREE,
  CONSTRAINT `tp_food_ibfk_1` FOREIGN KEY (`f_wid`) REFERENCES `tp_window` (`w_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_food
-- ----------------------------
INSERT INTO `tp_food` VALUES (2, 2, NULL, 's', 'qq', 13.00, NULL, b'1', 5, 's', NULL, NULL);

-- ----------------------------
-- Table structure for tp_manager
-- ----------------------------
DROP TABLE IF EXISTS `tp_manager`;
CREATE TABLE `tp_manager`  (
  `m_id` int(15) NOT NULL,
  `m_loginid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_registertime` datetime(0) NULL DEFAULT NULL,
  `m_logintime` datetime(0) NULL DEFAULT NULL,
  `m_name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_wid` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`) USING BTREE,
  INDEX `m_wid`(`m_wid`) USING BTREE,
  CONSTRAINT `tp_manager_ibfk_1` FOREIGN KEY (`m_wid`) REFERENCES `tp_window` (`w_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_symbol
-- ----------------------------
DROP TABLE IF EXISTS `tp_symbol`;
CREATE TABLE `tp_symbol`  (
  `s_id` int(8) NOT NULL,
  `s_description` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user`  (
  `u_id` int(15) NOT NULL,
  `u_loginid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_signature` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_sex` bit(1) NULL DEFAULT NULL,
  `u_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_headportarit` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_intro` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_birthday` date NULL DEFAULT NULL,
  `u_age` int(3) NULL DEFAULT NULL,
  `u_registertime` datetime(0) NULL DEFAULT NULL,
  `u_loginsite` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_rank` tinyint(10) NULL DEFAULT NULL,
  `u_socre` int(10) NULL DEFAULT NULL,
  `u_love1` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_love2` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_love3` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tp_window
-- ----------------------------
DROP TABLE IF EXISTS `tp_window`;
CREATE TABLE `tp_window`  (
  `w_id` int(15) NOT NULL,
  `w_site` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `w_restaurant` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `w_floor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `w_state` bit(1) NOT NULL,
  PRIMARY KEY (`w_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_window
-- ----------------------------
INSERT INTO `tp_window` VALUES (2, 'qingdao', '', '', b'1');

SET FOREIGN_KEY_CHECKS = 1;
