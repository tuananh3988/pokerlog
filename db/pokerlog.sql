/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : pokerlog

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-11-11 18:56:11
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

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
INSERT INTO `log` VALUES ('35', '27', 'tố 8k, ra KQ8 đẩy all, chưa đoán được', '2016-08-19 22:55:28');
INSERT INTO `log` VALUES ('36', '41', 'AQ xả', '2016-08-19 22:57:35');
INSERT INTO `log` VALUES ('37', '27', 'hay tố 8-10k, rồi  bet tiếp', '2016-08-19 23:00:46');
INSERT INTO `log` VALUES ('38', '40', 'hit top check, rồi reraise nhẹ khi thấy bet ít, cuối thì bet to', '2016-08-19 23:02:45');
INSERT INTO `log` VALUES ('39', '44', 'AK không bet', '2016-08-19 23:09:47');
INSERT INTO `log` VALUES ('40', '40', '77 không bet', '2016-08-19 23:09:54');
INSERT INTO `log` VALUES ('41', '44', 'đánh ít hand', '2016-08-19 23:12:19');
INSERT INTO `log` VALUES ('42', '40', 'có hàng thì nó bet to, không cần biết tài', '2016-08-19 23:15:18');
INSERT INTO `log` VALUES ('43', '40', 'rất hay check raise', '2016-08-19 23:16:40');
INSERT INTO `log` VALUES ('44', '43', 'đôi A tố 8k', '2016-08-19 23:17:20');
INSERT INTO `log` VALUES ('45', '44', 'khi đã theo thì cẩn thận, 1k cũng bỏ, ngồi D cũng bỏ', '2016-08-19 23:23:43');
INSERT INTO `log` VALUES ('46', '40', 'cẩn thận viêc check raise của nó', '2016-08-19 23:27:51');
INSERT INTO `log` VALUES ('47', '45', 'ak tố 9k', '2016-08-19 23:33:44');
INSERT INTO `log` VALUES ('48', '40', 'chưa thấy nó bluff', '2016-08-19 23:34:22');
INSERT INTO `log` VALUES ('49', '48', 'mua sảnh 2 đầu, check rồi khi có người bet thì xả', '2016-08-19 23:40:43');
INSERT INTO `log` VALUES ('50', '43', 'A10 không tố', '2016-08-19 23:43:43');
INSERT INTO `log` VALUES ('51', '27', 'hay tố = pot, không biết cầm gì ', '2016-08-19 23:48:53');
INSERT INTO `log` VALUES ('52', '47', '99 all', '2016-08-19 23:49:44');
INSERT INTO `log` VALUES ('53', '27', 'có thể khi có hàng là tố to', '2016-08-19 23:50:26');
INSERT INTO `log` VALUES ('54', '27', 'AJ tố 12k, không ra gì đẩy 50k', '2016-08-19 23:58:01');
INSERT INTO `log` VALUES ('55', '48', 'đánh gà, chờ bài to là bắt', '2016-08-20 00:01:04');
INSERT INTO `log` VALUES ('56', '47', 'A10 không tố', '2016-08-20 00:04:20');
INSERT INTO `log` VALUES ('57', '27', '10k tố 12k', '2016-08-20 00:10:06');
INSERT INTO `log` VALUES ('58', '49', 'J6 call 12k', '2016-08-20 00:10:53');
INSERT INTO `log` VALUES ('59', '49', 'call nhiều, đánh bằng đỏ. chờ bài là ăn được ', '2016-08-20 00:13:31');
INSERT INTO `log` VALUES ('60', '52', 'rất hay xả', '2016-08-20 00:28:52');
INSERT INTO `log` VALUES ('61', '39', 'đôi 10 call x2', '2016-08-20 01:19:18');
INSERT INTO `log` VALUES ('62', '59', 'call nhiều', '2016-08-20 01:36:22');
INSERT INTO `log` VALUES ('63', '39', 'ra bài to bet rất nặng', '2016-08-20 01:37:25');
INSERT INTO `log` VALUES ('64', '61', 'đánh gà, chờ bài to là thịt. hay bluff, tố to khi cầm 10k', '2016-09-03 19:14:52');
INSERT INTO `log` VALUES ('65', '61', 'hay tố to, chờ bài ngon lừa là bắt được ', '2016-09-03 19:17:03');
INSERT INTO `log` VALUES ('66', '66', 'đánh như 1 thăng ngu', '2016-09-03 19:28:36');
INSERT INTO `log` VALUES ('67', '64', 'hit top bet = pot', '2016-09-03 19:34:44');
INSERT INTO `log` VALUES ('68', '67', 'đôi 9 không tố', '2016-09-03 19:36:01');
INSERT INTO `log` VALUES ('69', '65', 'đánh chắc', '2016-09-03 19:58:09');
INSERT INTO `log` VALUES ('70', '66', 'cẩn thận khi nó đỏ, không biết đườn nào mà lần', '2016-09-03 20:01:03');
INSERT INTO `log` VALUES ('71', '66', '2 cây cùng màu bet đầu to, 2 cây nhỏ bet 4k', '2016-09-03 20:33:47');
INSERT INTO `log` VALUES ('72', '66', 'nó tố không có quy chuản, bluff như có bài to, bài to như bluff. đánh cẩn thận', '2016-09-03 20:41:37');
INSERT INTO `log` VALUES ('73', '72', 'hit top cầm tài bé bet nửa pot, ra 2 pair đẩy all', '2016-09-04 16:33:12');
INSERT INTO `log` VALUES ('74', '72', 'rất hay xả và bet to', '2016-09-04 16:34:15');
INSERT INTO `log` VALUES ('75', '76', 'ra xám cũng không raise to, ', '2016-09-04 16:43:03');
INSERT INTO `log` VALUES ('76', '75', '10A ngồi big không tố thêm', '2016-09-04 16:45:02');
INSERT INTO `log` VALUES ('77', '38', '99 all', '2016-09-04 16:51:52');
INSERT INTO `log` VALUES ('78', '78', 'thi thoảng bet đầu rất to, 20 đến all. chưa đoán được', '2016-09-04 17:02:26');
INSERT INTO `log` VALUES ('79', '38', 'câm hit top bet rất nhỏ, có thể dê tiền', '2016-09-04 17:03:19');
INSERT INTO `log` VALUES ('80', '71', 'đánh chờ bài rất ác, bàn to mới đánh', '2016-09-04 17:06:04');
INSERT INTO `log` VALUES ('81', '38', 'hay tố nhỏ khi cầm bài yếu hoặc không mạnh lắm để thăm dò', '2016-09-04 17:10:00');
INSERT INTO `log` VALUES ('82', '38', 'ra nóc đẩy all ', '2016-09-04 17:18:20');
INSERT INTO `log` VALUES ('83', '80', 'cầm 2 cây đầu người trở lên mới đánh', '2016-09-04 17:26:26');
INSERT INTO `log` VALUES ('84', '80', 'đánh gà, từ từ mà ăn tiền', '2016-09-04 18:17:16');
INSERT INTO `log` VALUES ('85', '90', '59 sui bet đầu, không ra bluff 3 vòng với giá cực nhỏ', '2016-10-25 11:39:54');
INSERT INTO `log` VALUES ('86', '95', 'cầm pair to, chia bài không vượt nhưng chỉ call không raise. JJ 6k chỉ call', '2016-10-25 14:27:53');
INSERT INTO `log` VALUES ('87', '94', '10K call 2k không raise, raise nhẹ đẩy all in, trong khi cầm 10K hit 10', '2016-10-25 14:31:49');
INSERT INTO `log` VALUES ('88', '96', 'AQ sui không raise', '2016-10-25 14:44:34');
INSERT INTO `log` VALUES ('89', '94', '77 không raise, call 2k', '2016-10-25 14:44:45');
INSERT INTO `log` VALUES ('90', '99', 'QK ko tố, đánh rất hay trap. cẩn thận', '2016-10-25 16:54:41');
INSERT INTO `log` VALUES ('91', '101', 'đánh rất chắc, đã raise là bài mạnh. hàng khủng nhiều khi còn không tố, cẩn thận với con hàng này', '2016-10-26 12:03:41');
INSERT INTO `log` VALUES ('92', '101', 'đánh ngu, cẩn thận chờ bài là ăn được ', '2016-10-26 12:06:27');
INSERT INTO `log` VALUES ('93', '101', 'mới học chơi', '2016-10-26 12:11:44');
INSERT INTO `log` VALUES ('94', '102', 'đánh rất chắc, không có bài là không tố', '2016-10-27 10:14:22');
INSERT INTO `log` VALUES ('95', '104', 'đánh lâu, khá chắc', '2016-10-27 10:37:00');
INSERT INTO `log` VALUES ('96', '100', 'cầm đôi 22 chia ra xám, là raise, ra tứ quý check. rồi raise vượt pot', '2016-10-27 10:54:43');
INSERT INTO `log` VALUES ('97', '110', '10Q không tố đầu, chia ra 10QK, không tố tiếp, cẩn thận hạng lim', '2016-10-27 14:41:39');
INSERT INTO `log` VALUES ('98', '110', 'chờ bài to vãi cứt, gần như không call', '2016-10-27 14:58:51');
INSERT INTO `log` VALUES ('99', '112', 'đánh dễ đoán, bài to là tố to.', '2016-10-27 15:04:33');
INSERT INTO `log` VALUES ('100', '111', 'tố to khi cầm những bài bé, cẩn thận là xiên dc', '2016-10-27 15:15:37');
INSERT INTO `log` VALUES ('101', '111', 'đánh ngu, cứ từ từ có bài là ăn dc', '2016-10-27 15:23:54');
INSERT INTO `log` VALUES ('102', '110', 'A9 ngồi im. turn chia ra 9, có tow pair, raise từ 4k -> 6k. river chia ra 9 nữa, cù nóc tố 2k =))', '2016-10-27 15:42:58');
INSERT INTO `log` VALUES ('103', '114', 'QK không sui tố 14k', '2016-10-27 15:43:54');
INSERT INTO `log` VALUES ('104', '115', 'lv cao nhưng đánh ngáo, từ từ là ăn dc', '2016-10-28 10:31:55');
INSERT INTO `log` VALUES ('105', '103', 'JQ không tố, ít khi tố', '2016-10-28 10:57:27');
INSERT INTO `log` VALUES ('106', '107', 'đánh bình thường. hay all in mà bài không max', '2016-10-28 11:01:41');
INSERT INTO `log` VALUES ('107', '117', 'A6 call được 18k, ra A đẩy 40k', '2016-10-31 10:41:37');
INSERT INTO `log` VALUES ('108', '124', 'bài không mạnh là tố 2k, bị raise nhẹ là bỏ', '2016-11-11 17:13:11');
INSERT INTO `log` VALUES ('109', '124', 'ra sảnh 1 lá đẩy all in', '2016-11-11 17:19:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

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
INSERT INTO `player` VALUES ('38', 'meoicondave', '1', '1', '2016-08-19 22:53:26');
INSERT INTO `player` VALUES ('39', 'troi_phu', '1', '1', '2016-08-19 22:53:36');
INSERT INTO `player` VALUES ('40', '0977379352', '1', '1', '2016-08-19 22:54:23');
INSERT INTO `player` VALUES ('41', 'ranne', '1', '1', '2016-08-19 22:56:56');
INSERT INTO `player` VALUES ('42', 'tienthanh8979', '1', '1', '2016-08-19 23:00:14');
INSERT INTO `player` VALUES ('43', 'bangtruong', '1', '1', '2016-08-19 23:05:13');
INSERT INTO `player` VALUES ('44', 'lenovopap', '1', '1', '2016-08-19 23:07:34');
INSERT INTO `player` VALUES ('45', 'cai7', '1', '1', '2016-08-19 23:28:17');
INSERT INTO `player` VALUES ('46', 'supleaderpoker', '1', '1', '2016-08-19 23:28:45');
INSERT INTO `player` VALUES ('47', 'meoja511', '1', '1', '2016-08-19 23:32:20');
INSERT INTO `player` VALUES ('48', 'djoxy', '1', '1', '2016-08-19 23:35:53');
INSERT INTO `player` VALUES ('49', 'tuanproplok1', '1', '1', '2016-08-20 00:08:44');
INSERT INTO `player` VALUES ('50', 'quchoar', '1', '1', '2016-08-20 00:21:21');
INSERT INTO `player` VALUES ('51', 'quctu5', '1', '1', '2016-08-20 00:23:23');
INSERT INTO `player` VALUES ('52', 'hung730', '1', '1', '2016-08-20 00:24:56');
INSERT INTO `player` VALUES ('53', 'chjhuong', '1', '1', '2016-08-20 00:28:02');
INSERT INTO `player` VALUES ('54', 'trummatuy', '1', '1', '2016-08-20 00:31:51');
INSERT INTO `player` VALUES ('55', 'chungtoan', '1', '1', '2016-08-20 01:15:33');
INSERT INTO `player` VALUES ('56', 'vumanhcuong...', '1', '1', '2016-08-20 01:15:50');
INSERT INTO `player` VALUES ('57', 'beojez', '1', '1', '2016-08-20 01:16:13');
INSERT INTO `player` VALUES ('58', 'truqhieu', '1', '1', '2016-08-20 01:28:02');
INSERT INTO `player` VALUES ('59', 'nhatgiau52', '1', '1', '2016-08-20 01:32:51');
INSERT INTO `player` VALUES ('60', 'nhatnhatlanhat', '1', '1', '2016-08-20 01:37:46');
INSERT INTO `player` VALUES ('61', 'hoang.yen', '1', '1', '2016-09-03 19:05:42');
INSERT INTO `player` VALUES ('62', 'locphat9999', '1', '1', '2016-09-03 19:05:56');
INSERT INTO `player` VALUES ('63', 'tung148', '1', '1', '2016-09-03 19:11:32');
INSERT INTO `player` VALUES ('64', 'k666', '1', '1', '2016-09-03 19:12:36');
INSERT INTO `player` VALUES ('65', 'no_name', '1', '1', '2016-09-03 19:16:42');
INSERT INTO `player` VALUES ('66', 'zhongls', '1', '1', '2016-09-03 19:23:22');
INSERT INTO `player` VALUES ('67', 'ohaiochicago', '1', '1', '2016-09-03 19:28:57');
INSERT INTO `player` VALUES ('68', 'kimthu10', '1', '1', '2016-09-03 19:39:54');
INSERT INTO `player` VALUES ('69', 'bolato', '1', '1', '2016-09-03 20:13:01');
INSERT INTO `player` VALUES ('70', 'langnghe', '1', '1', '2016-09-03 20:40:02');
INSERT INTO `player` VALUES ('71', 'poker88z', '1', '1', '2016-09-04 16:32:27');
INSERT INTO `player` VALUES ('72', 'dragon9', '1', '1', '2016-09-04 16:32:44');
INSERT INTO `player` VALUES ('73', 'vic8668', '1', '1', '2016-09-04 16:33:35');
INSERT INTO `player` VALUES ('74', 'cscdct', '1', '1', '2016-09-04 16:33:44');
INSERT INTO `player` VALUES ('75', 'bipvuong85', '1', '1', '2016-09-04 16:38:04');
INSERT INTO `player` VALUES ('76', 'shaker2', '1', '1', '2016-09-04 16:41:04');
INSERT INTO `player` VALUES ('77', 'tienhaivip9x', '1', '1', '2016-09-04 16:41:39');
INSERT INTO `player` VALUES ('78', 'romdaika33', '1', '1', '2016-09-04 16:49:37');
INSERT INTO `player` VALUES ('79', 'thienhau9x', '1', '1', '2016-09-04 17:00:28');
INSERT INTO `player` VALUES ('80', 'bell.', '1', '1', '2016-09-04 17:05:50');
INSERT INTO `player` VALUES ('81', 'ongnoisolo', '1', '1', '2016-09-04 17:07:39');
INSERT INTO `player` VALUES ('82', 'gym9', '1', '1', '2016-09-04 17:14:32');
INSERT INTO `player` VALUES ('83', 'cth64', '1', '1', '2016-09-04 17:35:29');
INSERT INTO `player` VALUES ('84', 'nhnci', '1', '1', '2016-09-04 18:09:22');
INSERT INTO `player` VALUES ('85', 'thanbai888', '1', '1', '2016-09-04 18:09:44');
INSERT INTO `player` VALUES ('86', 'mohamedcapd', '1', '1', '2016-09-04 18:26:05');
INSERT INTO `player` VALUES ('87', 'zzzvonguoita', '1', '1', '2016-09-04 18:33:55');
INSERT INTO `player` VALUES ('88', 'lam197', '1', '1', '2016-09-04 18:34:04');
INSERT INTO `player` VALUES ('89', 'katunlove', '1', '1', '2016-10-25 11:35:15');
INSERT INTO `player` VALUES ('90', 'binhhunghoa', '1', '1', '2016-10-25 11:35:31');
INSERT INTO `player` VALUES ('91', 'xuannghia', '1', '1', '2016-10-25 11:35:39');
INSERT INTO `player` VALUES ('92', 'vik.leo', '1', '1', '2016-10-25 14:21:48');
INSERT INTO `player` VALUES ('93', 'h.d.6.5', '1', '1', '2016-10-25 14:22:05');
INSERT INTO `player` VALUES ('94', '0984979229', '1', '1', '2016-10-25 14:22:53');
INSERT INTO `player` VALUES ('95', 'dieuthuoc2', '1', '1', '2016-10-25 14:23:01');
INSERT INTO `player` VALUES ('96', 'longca123', '1', '1', '2016-10-25 14:39:35');
INSERT INTO `player` VALUES ('97', 'phuonglinh.hp', '1', '1', '2016-10-25 16:25:27');
INSERT INTO `player` VALUES ('98', 'vi_em_2017', '1', '1', '2016-10-25 16:25:47');
INSERT INTO `player` VALUES ('99', 'nhungtri', '1', '1', '2016-10-25 16:54:17');
INSERT INTO `player` VALUES ('100', 'hoabixxx007', '1', '1', '2016-10-26 11:44:55');
INSERT INTO `player` VALUES ('101', 'revermi', '1', '1', '2016-10-26 11:49:43');
INSERT INTO `player` VALUES ('102', 'tigerone', '1', '1', '2016-10-27 10:13:08');
INSERT INTO `player` VALUES ('103', 'phngl24', '1', '1', '2016-10-27 10:15:48');
INSERT INTO `player` VALUES ('104', 'phuong367', '1', '1', '2016-10-27 10:36:27');
INSERT INTO `player` VALUES ('105', 'giangdaigia68', '1', '1', '2016-10-27 10:36:42');
INSERT INTO `player` VALUES ('106', 'phongv5', '1', '1', '2016-10-27 13:43:13');
INSERT INTO `player` VALUES ('107', 'johnhaz', '1', '1', '2016-10-27 13:43:39');
INSERT INTO `player` VALUES ('108', 'n_h_s', '1', '1', '2016-10-27 13:43:52');
INSERT INTO `player` VALUES ('109', 'botre', '1', '1', '2016-10-27 13:44:02');
INSERT INTO `player` VALUES ('110', 'ktth3', '1', '1', '2016-10-27 14:41:15');
INSERT INTO `player` VALUES ('111', 'davinci', '1', '1', '2016-10-27 14:59:13');
INSERT INTO `player` VALUES ('112', 'ladykiller11', '1', '1', '2016-10-27 15:04:12');
INSERT INTO `player` VALUES ('113', 'atpatp', '1', '1', '2016-10-27 15:16:50');
INSERT INTO `player` VALUES ('114', 'tilun', '1', '1', '2016-10-27 15:43:41');
INSERT INTO `player` VALUES ('115', 'aechung', '1', '1', '2016-10-28 10:30:30');
INSERT INTO `player` VALUES ('116', 'totaoxa', '1', '1', '2016-10-28 10:35:14');
INSERT INTO `player` VALUES ('117', 'minhxin88', '1', '1', '2016-10-31 10:38:41');
INSERT INTO `player` VALUES ('118', 'kien_ken', '1', '1', '2016-10-31 10:38:51');
INSERT INTO `player` VALUES ('119', 'emgai.bn', '1', '1', '2016-10-31 10:39:04');
INSERT INTO `player` VALUES ('120', 'haker20000', '1', '1', '2016-10-31 10:39:15');
INSERT INTO `player` VALUES ('121', 'airblare', '1', '1', '2016-10-31 10:39:30');
INSERT INTO `player` VALUES ('122', 'zozo8888', '1', '1', '2016-10-31 10:40:20');
INSERT INTO `player` VALUES ('123', 'khatbac123', '1', '1', '2016-11-11 17:10:00');
INSERT INTO `player` VALUES ('124', 'gacma90', '1', '1', '2016-11-11 17:10:14');
INSERT INTO `player` VALUES ('125', 'chetcumaydi', '1', '1', '2016-11-11 17:10:43');
