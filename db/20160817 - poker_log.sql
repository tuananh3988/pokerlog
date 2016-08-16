/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : poker_log

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-08-17 00:41:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '5', 'đôi J tố x3, ra xám đánh câu tiền', '2016-08-17 00:11:32');
INSERT INTO `log` VALUES ('2', '10', 'hit top mua sảnh bet như điên', '2016-08-17 00:15:21');
INSERT INTO `log` VALUES ('3', '10', 'AK tố x7', '2016-08-17 00:16:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES ('1', 'muulinh2002', '1', '1', '2016-08-17 00:06:26');
INSERT INTO `player` VALUES ('2', 'poker_688', '1', '1', '2016-08-17 00:07:18');
INSERT INTO `player` VALUES ('3', 'paul.pogba', '1', '1', '2016-08-17 00:07:42');
INSERT INTO `player` VALUES ('4', 'kocanso', '1', '1', '2016-08-17 00:07:54');
INSERT INTO `player` VALUES ('5', 'dobactet2016', '1', '1', '2016-08-17 00:08:08');
INSERT INTO `player` VALUES ('6', 'mekiepdenvl', '1', '1', '2016-08-17 00:08:24');
INSERT INTO `player` VALUES ('7', 'kieutrang95', '1', '1', '2016-08-17 00:08:42');
INSERT INTO `player` VALUES ('8', 'causeiloveu', '1', '1', '2016-08-17 00:09:09');
INSERT INTO `player` VALUES ('9', 'quan155', '1', '1', '2016-08-17 00:12:16');
INSERT INTO `player` VALUES ('10', 'fctb123', '1', '1', '2016-08-17 00:14:05');
INSERT INTO `player` VALUES ('11', 'hoanghit1992', '1', '1', '2016-08-17 00:14:19');
INSERT INTO `player` VALUES ('12', 'cmm88', '1', '1', '2016-08-17 00:22:25');
