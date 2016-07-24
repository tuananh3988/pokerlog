/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : poker_log

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-07-24 21:59:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(255) NOT NULL,
  `player_level` tinyint(4) NOT NULL,
  `place_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES ('1', 'tuananh3988', '0', '1', '2016-07-21 01:23:37');
INSERT INTO `player` VALUES ('2', 'Doreman', '1', '1', '2016-07-06 01:24:09');
INSERT INTO `player` VALUES ('3', 'anhct', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `player` VALUES ('4', 'huyenthanh', '1', '1', '2016-07-14 01:24:49');
INSERT INTO `player` VALUES ('5', 'tammit', '1', '1', '2016-07-20 01:26:20');
INSERT INTO `player` VALUES ('6', 'anhtuancan', '1', '1', '2016-07-21 01:32:18');
