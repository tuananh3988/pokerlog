/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pokerlog

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-08-17 18:13:42
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '5', 'đôi J tố x3, ra xám đánh câu tiền', '2016-08-17 00:11:32');
INSERT INTO `log` VALUES ('2', '10', 'hit top mua sảnh bet như điên', '2016-08-17 00:15:21');
INSERT INTO `log` VALUES ('3', '10', 'AK tố x7', '2016-08-17 00:16:21');
INSERT INTO `log` VALUES ('4', '19', 'JQ tố x5, không ra check', '2016-08-17 17:42:03');
INSERT INTO `log` VALUES ('7', '15', 'AQ tố x5, ra A tố 1/2 pot', '2016-08-17 17:46:00');
INSERT INTO `log` VALUES ('8', '22', 'ra xám tố x1, raise x4, đẩy all in', '2016-08-17 17:48:21');
INSERT INTO `log` VALUES ('9', '21', 'cầm 64 không có gì call all in 30k', '2016-08-17 17:48:47');
INSERT INTO `log` VALUES ('10', '23', 'pot 11k, ra A84 2 con rô, không biết cầm gì đẩy all in 50k', '2016-08-17 17:53:04');
INSERT INTO `log` VALUES ('11', '15', 'đánh khá hay, check trap rồi raise', '2016-08-17 17:54:50');
INSERT INTO `log` VALUES ('12', '20', 'AQ, 77 all in', '2016-08-17 18:02:04');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

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
INSERT INTO `player` VALUES ('14', 'thanbai006', '1', '1', '2016-08-17 17:32:44');
INSERT INTO `player` VALUES ('15', 'thantientyty', '1', '1', '2016-08-17 17:32:58');
INSERT INTO `player` VALUES ('16', 'toiyeutien', '1', '1', '2016-08-17 17:33:09');
INSERT INTO `player` VALUES ('17', '12122016', '1', '1', '2016-08-17 17:33:23');
INSERT INTO `player` VALUES ('18', 'hanhdaigia', '1', '1', '2016-08-17 17:33:36');
INSERT INTO `player` VALUES ('19', 'muc_thoi', '1', '1', '2016-08-17 17:33:44');
INSERT INTO `player` VALUES ('20', 'tolataoxa', '1', '1', '2016-08-17 17:33:58');
INSERT INTO `player` VALUES ('21', 'nguynb66', '1', '1', '2016-08-17 17:34:10');
INSERT INTO `player` VALUES ('22', 'xaolon', '1', '1', '2016-08-17 17:44:59');
INSERT INTO `player` VALUES ('23', 'su.30', '1', '1', '2016-08-17 17:51:40');
INSERT INTO `player` VALUES ('24', 'hungcuong234', '1', '1', '2016-08-17 18:01:07');
INSERT INTO `player` VALUES ('25', 'vkthaocute', '1', '1', '2016-08-17 18:01:31');
INSERT INTO `player` VALUES ('26', 'haimayman', '1', '1', '2016-08-17 18:02:59');
