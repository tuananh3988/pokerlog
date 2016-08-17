/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : poker_log

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-08-18 00:00:41
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

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
INSERT INTO `log` VALUES ('13', '25', 'đôi JJ theo rồi khi x3. lại đẩu all in', '2016-08-17 22:05:02');
INSERT INTO `log` VALUES ('14', '28', 'A9 bắt all in 130k', '2016-08-17 22:05:28');
INSERT INTO `log` VALUES ('15', '29', 'JQ tố x2, ra hit top J tố x4 pot', '2016-08-17 22:09:40');
INSERT INTO `log` VALUES ('16', '30', 'QQ tố 11k', '2016-08-17 22:12:58');
INSERT INTO `log` VALUES ('17', '25', '66 call 11k, ra 4510 đẩy all 90k', '2016-08-17 22:14:49');
INSERT INTO `log` VALUES ('18', '25', 'đánh bình thường, hay theo 2k, rồi đẩy all. chờ bài đẹp hãy bắt', '2016-08-17 22:15:46');
INSERT INTO `log` VALUES ('19', '30', 'AK tố 17k, không ra bài tố thêm 30k, call thêm 60k', '2016-08-17 22:17:54');
INSERT INTO `log` VALUES ('20', '30', 'QK tố to, raise all call', '2016-08-17 22:19:40');
INSERT INTO `log` VALUES ('21', '31', 'A2 call all >100k', '2016-08-17 22:20:04');
INSERT INTO `log` VALUES ('22', '31', '3Q đẩy all', '2016-08-17 22:22:26');
INSERT INTO `log` VALUES ('23', '25', 'khi ngáo đánh ngu, hay raise to và xả', '2016-08-17 22:24:56');
INSERT INTO `log` VALUES ('24', '29', '59 call 6k, ra hit 5 call 2 lần 14, 18k. không ra 2 đôi tố 10k', '2016-08-17 22:27:42');
INSERT INTO `log` VALUES ('25', '29', 'đánh chắc, tố để không bị bet to', '2016-08-17 22:28:14');
INSERT INTO `log` VALUES ('26', '29', 'đánh rất nhiều hand, call khi bet nhỏ', '2016-08-17 22:31:44');
INSERT INTO `log` VALUES ('27', '30', 'sảnh nóc nhưng không raise vì sợ cù', '2016-08-17 22:36:19');
INSERT INTO `log` VALUES ('28', '30', '99 đẩy all', '2016-08-17 22:38:08');
INSERT INTO `log` VALUES ('29', '31', '66 call all', '2016-08-17 22:38:15');
INSERT INTO `log` VALUES ('30', '29', '85 tép call all 100k', '2016-08-17 22:39:08');
INSERT INTO `log` VALUES ('31', '29', 'đánh gà, bài đỏ thôi. hay call cố nên đừng bet to', '2016-08-17 22:42:46');
INSERT INTO `log` VALUES ('32', '29', 'khi thua raise như điên', '2016-08-17 22:44:54');
INSERT INTO `log` VALUES ('33', '32', 'đánh ít hand hoặc rình chờ bài', '2016-08-17 22:55:35');
INSERT INTO `log` VALUES ('34', '30', 'AQ ra QJ4 mà không tố thêm ở cuối, đánh rất chắc', '2016-08-17 23:06:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

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
INSERT INTO `player` VALUES ('27', 'ongtong', '1', '1', '2016-08-17 22:01:34');
INSERT INTO `player` VALUES ('28', 'win9999', '1', '1', '2016-08-17 22:01:43');
INSERT INTO `player` VALUES ('29', 'virginia1984', '1', '1', '2016-08-17 22:02:07');
INSERT INTO `player` VALUES ('30', 'kiep_co_bac', '1', '1', '2016-08-17 22:07:28');
INSERT INTO `player` VALUES ('31', 'hoangxuantai', '1', '1', '2016-08-17 22:15:07');
INSERT INTO `player` VALUES ('32', 'maulondentha...', '1', '1', '2016-08-17 22:43:12');
INSERT INTO `player` VALUES ('33', 'vuongkieu', '1', '1', '2016-08-17 22:43:27');
INSERT INTO `player` VALUES ('34', 'minhtaoladu09', '1', '1', '2016-08-17 22:49:44');
INSERT INTO `player` VALUES ('35', 'tuong19767', '1', '1', '2016-08-17 22:53:06');
INSERT INTO `player` VALUES ('36', 'doquynh20009', '1', '1', '2016-08-17 22:56:39');
INSERT INTO `player` VALUES ('37', 'thanhnien2', '1', '1', '2016-08-17 23:00:33');
