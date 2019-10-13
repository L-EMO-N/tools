/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : agriculture_trade

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2019-10-14 02:53:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(16) NOT NULL COMMENT '姓名',
  `phone` varchar(16) NOT NULL COMMENT '电话',
  `province_name` varchar(16) NOT NULL COMMENT '省份名',
  `city_name` varchar(16) NOT NULL COMMENT '城市名',
  `county_name` varchar(16) DEFAULT NULL COMMENT '县/区名',
  `detail_address` varchar(64) NOT NULL COMMENT '详细地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for money_detail
-- ----------------------------
DROP TABLE IF EXISTS `money_detail`;
CREATE TABLE `money_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `gain_user_id` int(11) NOT NULL COMMENT '得奖人id',
  `gain_username` varchar(32) DEFAULT NULL COMMENT '得奖人username',
  `send_user_id` int(11) DEFAULT NULL COMMENT '发奖人id',
  `send_username` varchar(32) DEFAULT NULL COMMENT '发奖人username',
  `money` int(11) DEFAULT NULL COMMENT '金额',
  `type` int(2) DEFAULT NULL COMMENT '类型 1直推 2间推 3极差 4核心领导人 5创始人 6 合伙人 7销售部 8成本 9管理 10静态分红 11帮扶基金 12开店奖',
  `detail_info` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of money_detail
-- ----------------------------
INSERT INTO `money_detail` VALUES ('1', '18', 'Wzs9123', '19', 'Zxl6877', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('2', '20', '周小莉', '22', '百花争艳', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('3', '22', '百花争艳', '23', '刘艳', '64800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('4', '22', '百花争艳', '24', '张秀菊', '64800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('5', '22', '百花争艳', '25', '邹永桃', '64800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('6', '22', '百花争艳', '26', '陆德珍', '64800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('7', '20', '周小莉', '27', '杨敏', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('8', '29', 'thc333777', '30', '申贵珍1', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('9', '30', '申贵珍1', '33', '申贵珍', '12000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('10', '29', 'thc333777', '34', '潘诗', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('11', '29', 'thc333777', '35', '徐红英', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('12', '29', 'thc333777', '36', '杨再珍', '165600', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('13', '29', 'thc333777', '41', '翘翘', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('14', '33', '申贵珍', '44', '申贵贞2', '108000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('15', '44', '申贵贞2', '45', '龙通英', '6300', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('16', '45', '龙通英', '46', '龙通英1', '12000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('17', '44', '申贵贞2', '47', '曾献梅', '6300', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('18', '43', '姜再生', '48', '姜再生1', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('19', '49', '姜再生2', '50', '张科远', '27600', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('20', '50', '张科远', '51', '杨静', '18000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('21', '44', '申贵贞2', '54', '梁自琴', '6300', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('22', '54', '梁自琴', '55', '梁自琴1', '12000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('23', '39', '陈平', '56', '陈先生', '165600', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('24', '47', '曾献梅', '57', '杨忠辉', '3000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('25', '55', '梁自琴1', '59', '吴胜学', '5400', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('26', '59', '吴胜学', '60', '吴胜学1', '18000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('27', '49', '姜再生2', '62', '黄琼', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('28', '49', '姜再生2', '63', '潘正昌', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('29', '36', '杨再珍', '64', '田敏杰', '6300', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('30', '20', '周小莉', '65', '代廷江', '27600', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('31', '65', '代廷江', '66', '代红英', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('32', '20', '周小莉', '69', '张贰燕', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('33', '69', '张贰燕', '70', '张燕琼', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('34', '29', 'thc333777', '73', 'thc3377', '331200', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('35', '49', '姜再生2', '74', 'lqj5189', '331200', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('36', '51', '杨静', '85', '简德华', '4500', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('37', '20', '周小莉', '87', '钟大海', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('38', '42', 'ojx777', '92', 'hngz1313', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('39', '36', '杨再珍', '95', '田俊', '6300', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('40', '57', '杨忠辉', '96', '沈成君', '3000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('41', '36', '杨再珍', '97', '聂仁军', '6300', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('42', '26', '陆德珍', '98', '兰敏', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('43', '20', '周小莉', '99', '吴晓云', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('44', '92', 'hngz1313', '100', 'ycs4177', '4500', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('45', '100', 'ycs4177', '101', 'lqz9988', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('46', '47', '曾献梅', '102', '曾献梅1', '3000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('47', '103', '蒋富林', '104', '张佑忠', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('48', '49', '姜再生2', '105', '杨再利', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('49', '105', '杨再利', '106', '吴海滨', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('50', '57', '杨忠辉', '107', '蔡廣源', '3000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('51', '102', '曾献梅1', '108', '左新娥', '4500', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('52', '110', '蒲健', '111', '蒲健1', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('53', '112', '秦子尧', '113', '秦子尧1', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('54', '114', '余结泽', '115', '余结泽1', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('55', '116', '蒲德富', '117', '蒲德富1', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('56', '9', 'hzgsgd', '118', '李金海', '82800', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('57', '20', '周小莉', '121', '邓婷一', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('58', '44', '申贵贞2', '122', '曾林燕', '6300', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('59', '100', 'ycs4177', '123', 'ycs9988', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('60', '26', '陆德珍', '128', '李鑫', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('61', '26', '陆德珍', '130', '徐成友', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('62', '130', '徐成友', '131', '尹盈欢', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('63', '20', '周小莉', '139', '刘实权', '331200', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('64', '20', '周小莉', '141', '王莉婷', '331200', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('65', '103', '蒋富林', '142', '田浩成', '331200', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('66', '142', '田浩成', '143', '金平', '6900', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('67', '143', '金平', '144', '王清', '12000', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('68', '142', '田浩成', '145', '123', '27600', '1', '直推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('69', '9', 'hzgsgd', '19', 'Zxl6877', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('70', '19', 'Zxl6877', '22', '百花争艳', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('71', '20', '周小莉', '23', '刘艳', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('72', '20', '周小莉', '24', '张秀菊', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('73', '20', '周小莉', '25', '邹永桃', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('74', '20', '周小莉', '26', '陆德珍', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('75', '19', 'Zxl6877', '27', '杨敏', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('76', '28', 'thc37', '30', '申贵珍1', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('77', '29', 'thc333777', '33', '申贵珍', '12000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('78', '28', 'thc37', '34', '潘诗', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('79', '28', 'thc37', '35', '徐红英', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('80', '28', 'thc37', '36', '杨再珍', '72000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('81', '28', 'thc37', '41', '翘翘', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('82', '30', '申贵珍1', '44', '申贵贞2', '72000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('83', '33', '申贵珍', '45', '龙通英', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('84', '44', '申贵贞2', '46', '龙通英1', '12000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('85', '33', '申贵珍', '47', '曾献梅', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('86', '28', 'thc37', '48', '姜再生1', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('87', '48', '姜再生1', '50', '张科远', '12000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('88', '49', '姜再生2', '51', '杨静', '12000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('89', '33', '申贵珍', '54', '梁自琴', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('90', '44', '申贵贞2', '55', '梁自琴1', '12000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('91', '29', 'thc333777', '56', '陈先生', '72000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('92', '44', '申贵贞2', '57', '杨忠辉', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('93', '54', '梁自琴', '59', '吴胜学', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('94', '55', '梁自琴1', '60', '吴胜学1', '12000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('95', '48', '姜再生1', '62', '黄琼', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('96', '48', '姜再生1', '63', '潘正昌', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('97', '29', 'thc333777', '64', '田敏杰', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('98', '19', 'Zxl6877', '65', '代廷江', '12000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('99', '20', '周小莉', '66', '代红英', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('100', '19', 'Zxl6877', '69', '张贰燕', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('101', '20', '周小莉', '70', '张燕琼', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('102', '28', 'thc37', '73', 'thc3377', '144000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('103', '48', '姜再生1', '74', 'lqj5189', '144000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('104', '50', '张科远', '85', '简德华', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('105', '19', 'Zxl6877', '87', '钟大海', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('106', '39', '陈平', '92', 'hngz1313', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('107', '29', 'thc333777', '95', '田俊', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('108', '47', '曾献梅', '96', '沈成君', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('109', '29', 'thc333777', '97', '聂仁军', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('110', '22', '百花争艳', '98', '兰敏', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('111', '19', 'Zxl6877', '99', '吴晓云', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('112', '42', 'ojx777', '100', 'ycs4177', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('113', '92', 'hngz1313', '101', 'lqz9988', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('114', '44', '申贵贞2', '102', '曾献梅1', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('115', '51', '杨静', '104', '张佑忠', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('116', '48', '姜再生1', '105', '杨再利', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('117', '49', '姜再生2', '106', '吴海滨', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('118', '47', '曾献梅', '107', '蔡廣源', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('119', '47', '曾献梅', '108', '左新娥', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('120', '9', 'hzgsgd', '111', '蒲健1', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('121', '9', 'hzgsgd', '113', '秦子尧1', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('122', '9', 'hzgsgd', '115', '余结泽1', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('123', '9', 'hzgsgd', '117', '蒲德富1', '36000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('124', '19', 'Zxl6877', '121', '邓婷一', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('125', '33', '申贵珍', '122', '曾林燕', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('126', '92', 'hngz1313', '123', 'ycs9988', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('127', '22', '百花争艳', '128', '李鑫', '3000', '2', '间推奖', '2019-10-14 02:34:51');
INSERT INTO `money_detail` VALUES ('128', '22', '百花争艳', '130', '徐成友', '3000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('129', '26', '陆德珍', '131', '尹盈欢', '3000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('130', '19', 'Zxl6877', '139', '刘实权', '144000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('131', '19', 'Zxl6877', '141', '王莉婷', '144000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('132', '51', '杨静', '142', '田浩成', '144000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('133', '103', '蒋富林', '143', '金平', '3000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('134', '142', '田浩成', '144', '王清', '12000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('135', '103', '蒋富林', '145', '123', '12000', '2', '间推奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('136', '103', '蒋富林', null, null, '124200', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('137', '44', '申贵贞2', null, null, '39600', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('138', '22', '百花争艳', null, null, '93600', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('139', '30', '申贵珍1', null, null, '150000', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('140', '49', '姜再生2', null, null, '638400', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('141', '29', 'thc333777', null, null, '847800', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('142', '20', '周小莉', null, null, '982800', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('143', '9', 'hzgsgd', null, null, '2415000', '3', '极差奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('144', '19', 'Zxl6877', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('145', '22', '百花争艳', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('146', '23', '刘艳', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('147', '24', '张秀菊', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('148', '25', '邹永桃', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('149', '26', '陆德珍', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('150', '27', '杨敏', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('151', '30', '申贵珍1', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('152', '33', '申贵珍', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('153', '34', '潘诗', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('154', '35', '徐红英', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('155', '36', '杨再珍', null, null, '603', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('156', '41', '翘翘', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('157', '44', '申贵贞2', null, null, '603', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('158', '45', '龙通英', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('159', '46', '龙通英1', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('160', '47', '曾献梅', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('161', '48', '姜再生1', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('162', '50', '张科远', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('163', '51', '杨静', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('164', '54', '梁自琴', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('165', '55', '梁自琴1', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('166', '56', '陈先生', null, null, '603', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('167', '57', '杨忠辉', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('168', '59', '吴胜学', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('169', '60', '吴胜学1', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('170', '62', '黄琼', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('171', '63', '潘正昌', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('172', '64', '田敏杰', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('173', '65', '代廷江', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('174', '66', '代红英', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('175', '69', '张贰燕', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('176', '70', '张燕琼', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('177', '73', 'thc3377', null, null, '1206', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('178', '74', 'lqj5189', null, null, '1206', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('179', '85', '简德华', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('180', '87', '钟大海', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('181', '92', 'hngz1313', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('182', '95', '田俊', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('183', '96', '沈成君', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('184', '97', '聂仁军', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('185', '98', '兰敏', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('186', '99', '吴晓云', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('187', '100', 'ycs4177', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('188', '101', 'lqz9988', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('189', '102', '曾献梅1', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('190', '104', '张佑忠', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('191', '105', '杨再利', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('192', '106', '吴海滨', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('193', '107', '蔡廣源', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('194', '108', '左新娥', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('195', '111', '蒲健1', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('196', '113', '秦子尧1', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('197', '115', '余结泽1', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('198', '117', '蒲德富1', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('199', '118', '李金海', null, null, '301', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('200', '121', '邓婷一', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('201', '122', '曾林燕', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('202', '123', 'ycs9988', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('203', '128', '李鑫', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('204', '130', '徐成友', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('205', '131', '尹盈欢', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('206', '139', '刘实权', null, null, '1206', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('207', '141', '王莉婷', null, null, '1206', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('208', '142', '田浩成', null, null, '1206', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('209', '143', '金平', null, null, '2100', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('210', '144', '王清', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');
INSERT INTO `money_detail` VALUES ('211', '145', '123', null, null, '8400', '10', '静态奖', '2019-10-14 02:34:52');

-- ----------------------------
-- Table structure for phase
-- ----------------------------
DROP TABLE IF EXISTS `phase`;
CREATE TABLE `phase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phase` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phase
-- ----------------------------
INSERT INTO `phase` VALUES ('1', '21', '2019-10-14 02:34:51');

-- ----------------------------
-- Table structure for taxation_form
-- ----------------------------
DROP TABLE IF EXISTS `taxation_form`;
CREATE TABLE `taxation_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '报单人id',
  `type` int(11) NOT NULL COMMENT '报单类型',
  `money` int(11) NOT NULL,
  `address` varchar(64) DEFAULT NULL COMMENT '收获地址',
  `status` int(11) NOT NULL COMMENT '状态 1.报单 2.完成报单 3.退货',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime NOT NULL COMMENT '报单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='报单表';

-- ----------------------------
-- Records of taxation_form
-- ----------------------------
INSERT INTO `taxation_form` VALUES ('2', '36', '4', '7200', null, '3', '2019-10-02 22:31:35', '2019-10-02 13:31:48');
INSERT INTO `taxation_form` VALUES ('3', '34', '1', '300', null, '3', '2019-10-02 22:34:53', '2019-10-02 13:33:06');
INSERT INTO `taxation_form` VALUES ('4', '35', '1', '300', null, '3', '2019-10-02 22:38:13', '2019-10-02 13:36:41');
INSERT INTO `taxation_form` VALUES ('5', '30', '1', '300', null, '3', '2019-10-02 22:36:41', '2019-10-02 13:37:51');
INSERT INTO `taxation_form` VALUES ('6', '33', '2', '1200', null, '3', '2019-10-02 22:37:36', '2019-10-02 13:38:13');
INSERT INTO `taxation_form` VALUES ('7', '44', '4', '7200', null, '3', '2019-10-03 15:36:34', '2019-10-02 13:39:58');
INSERT INTO `taxation_form` VALUES ('8', '47', '1', '300', null, '3', '2019-10-03 15:36:54', '2019-10-02 13:41:07');
INSERT INTO `taxation_form` VALUES ('9', '45', '1', '300', null, '3', '2019-10-03 15:37:20', '2019-10-02 13:41:40');
INSERT INTO `taxation_form` VALUES ('10', '46', '2', '1200', null, '3', '2019-10-03 15:37:28', '2019-10-02 13:42:15');
INSERT INTO `taxation_form` VALUES ('11', '56', '5', '7200', null, '3', '2019-10-03 15:55:07', '2019-10-02 13:48:52');
INSERT INTO `taxation_form` VALUES ('12', '54', '1', '300', null, '3', '2019-10-03 15:52:30', '2019-10-02 14:01:13');
INSERT INTO `taxation_form` VALUES ('13', '55', '3', '1200', null, '3', '2019-10-03 15:52:36', '2019-10-02 14:01:42');
INSERT INTO `taxation_form` VALUES ('14', '57', '1', '300', null, '3', '2019-10-03 15:52:09', '2019-10-02 14:02:35');
INSERT INTO `taxation_form` VALUES ('15', '64', '2', '300', null, '3', '2019-10-03 16:21:58', '2019-10-02 14:06:15');
INSERT INTO `taxation_form` VALUES ('16', '59', '2', '300', null, '3', '2019-10-03 16:21:25', '2019-10-02 14:07:06');
INSERT INTO `taxation_form` VALUES ('17', '60', '3', '1200', null, '3', '2019-10-03 16:21:33', '2019-10-02 14:07:37');
INSERT INTO `taxation_form` VALUES ('18', '9', '5', '14400', null, '2', '2019-10-02 15:22:26', '2019-10-02 15:21:38');
INSERT INTO `taxation_form` VALUES ('19', '10', '5', '14400', null, '2', '2019-10-02 15:27:57', '2019-10-02 15:27:27');
INSERT INTO `taxation_form` VALUES ('20', '58', '5', '14400', null, '2', '2019-10-02 15:39:42', '2019-10-02 15:38:57');
INSERT INTO `taxation_form` VALUES ('21', '28', '5', '14400', null, '2', '2019-10-02 16:12:46', '2019-10-02 15:43:51');
INSERT INTO `taxation_form` VALUES ('22', '29', '5', '14400', null, '2', '2019-10-02 16:27:56', '2019-10-02 15:44:23');
INSERT INTO `taxation_form` VALUES ('23', '18', '5', '14400', null, '2', '2019-10-02 22:43:29', '2019-10-02 16:01:34');
INSERT INTO `taxation_form` VALUES ('24', '19', '5', '3600', null, '3', '2019-10-02 16:03:12', '2019-10-02 16:03:12');
INSERT INTO `taxation_form` VALUES ('25', '20', '5', '14400', null, '2', '2019-10-03 15:44:48', '2019-10-02 16:04:48');
INSERT INTO `taxation_form` VALUES ('26', '22', '3', '3600', null, '3', '2019-10-03 15:46:32', '2019-10-02 16:06:16');
INSERT INTO `taxation_form` VALUES ('27', '23', '5', '3600', null, '3', '2019-10-03 16:22:48', '2019-10-02 16:06:59');
INSERT INTO `taxation_form` VALUES ('28', '24', '5', '3600', null, '3', '2019-10-03 16:25:03', '2019-10-02 16:08:09');
INSERT INTO `taxation_form` VALUES ('29', '25', '5', '3600', null, '3', '2019-10-03 16:26:50', '2019-10-02 16:09:18');
INSERT INTO `taxation_form` VALUES ('30', '26', '5', '3600', null, '3', '2019-10-03 16:27:20', '2019-10-02 16:09:55');
INSERT INTO `taxation_form` VALUES ('31', '27', '3', '3600', null, '3', '2019-10-03 15:46:04', '2019-10-02 16:10:59');
INSERT INTO `taxation_form` VALUES ('32', '65', '5', '1200', null, '3', '2019-10-04 07:48:42', '2019-10-02 16:13:11');
INSERT INTO `taxation_form` VALUES ('33', '66', '4', '300', null, '3', '2019-10-04 07:49:06', '2019-10-02 16:14:44');
INSERT INTO `taxation_form` VALUES ('34', '43', '5', '14400', null, '2', '2019-10-02 16:26:21', '2019-10-02 16:25:48');
INSERT INTO `taxation_form` VALUES ('35', '48', '3', '3600', null, '3', '2019-10-02 22:22:35', '2019-10-02 16:51:13');
INSERT INTO `taxation_form` VALUES ('36', '69', '5', '300', null, '3', '2019-10-04 23:25:13', '2019-10-02 17:03:12');
INSERT INTO `taxation_form` VALUES ('37', '70', '5', '300', null, '3', '2019-10-04 23:25:22', '2019-10-02 17:11:35');
INSERT INTO `taxation_form` VALUES ('38', '49', '5', '14400', null, '2', '2019-10-02 22:24:46', '2019-10-02 22:24:22');
INSERT INTO `taxation_form` VALUES ('39', '62', '1', '300', null, '3', '2019-10-02 22:40:17', '2019-10-02 22:39:57');
INSERT INTO `taxation_form` VALUES ('40', '63', '1', '300', null, '3', '2019-10-02 22:42:11', '2019-10-02 22:41:47');
INSERT INTO `taxation_form` VALUES ('41', '50', '2', '1200', null, '3', '2019-10-03 08:03:48', '2019-10-03 08:03:48');
INSERT INTO `taxation_form` VALUES ('42', '72', '5', '14400', null, '2', '2019-10-03 08:09:05', '2019-10-03 08:08:53');
INSERT INTO `taxation_form` VALUES ('43', '51', '2', '1200', null, '3', '2019-10-03 08:10:46', '2019-10-03 08:10:11');
INSERT INTO `taxation_form` VALUES ('44', '73', '5', '14400', null, '3', '2019-10-03 08:31:22', '2019-10-03 08:31:22');
INSERT INTO `taxation_form` VALUES ('45', '74', '5', '14400', null, '3', '2019-10-03 08:37:26', '2019-10-03 08:37:26');
INSERT INTO `taxation_form` VALUES ('46', '67', '5', '14400', null, '2', '2019-10-03 09:43:07', '2019-10-03 09:37:04');
INSERT INTO `taxation_form` VALUES ('51', '81', '5', '14400', null, '2', '2019-10-03 15:49:30', '2019-10-03 14:09:43');
INSERT INTO `taxation_form` VALUES ('52', '82', '5', '14400', null, '2', '2019-10-03 15:49:34', '2019-10-03 14:12:39');
INSERT INTO `taxation_form` VALUES ('53', '83', '5', '14400', null, '2', '2019-10-03 15:49:38', '2019-10-03 14:15:26');
INSERT INTO `taxation_form` VALUES ('57', '87', '5', '300', null, '3', '2019-10-04 23:30:01', '2019-10-03 17:55:53');
INSERT INTO `taxation_form` VALUES ('58', '85', '5', '300', null, '3', '2019-10-12 01:36:09', '2019-10-03 23:43:19');
INSERT INTO `taxation_form` VALUES ('59', '31', '5', '14400', null, '2', '2019-10-04 23:07:32', '2019-10-04 11:56:24');
INSERT INTO `taxation_form` VALUES ('60', '42', '5', '14400', null, '2', '2019-10-04 23:35:06', '2019-10-04 13:11:59');
INSERT INTO `taxation_form` VALUES ('62', '93', '1', '300', null, '1', null, '2019-10-04 17:47:01');
INSERT INTO `taxation_form` VALUES ('64', '95', '2', '300', null, '3', '2019-10-04 23:13:52', '2019-10-04 23:06:08');
INSERT INTO `taxation_form` VALUES ('65', '41', '2', '300', null, '3', '2019-10-04 23:27:53', '2019-10-04 23:26:52');
INSERT INTO `taxation_form` VALUES ('66', '92', '2', '300', null, '3', '2019-10-04 23:59:08', '2019-10-04 23:42:02');
INSERT INTO `taxation_form` VALUES ('67', '96', '2', '300', null, '3', '2019-10-06 22:29:24', '2019-10-05 12:26:37');
INSERT INTO `taxation_form` VALUES ('68', '39', '5', '14400', null, '2', '2019-10-08 23:16:41', '2019-10-05 12:33:30');
INSERT INTO `taxation_form` VALUES ('69', '97', '2', '300', null, '3', '2019-10-06 23:25:16', '2019-10-06 17:39:04');
INSERT INTO `taxation_form` VALUES ('70', '89', '1', '300', null, '1', null, '2019-10-06 18:29:17');
INSERT INTO `taxation_form` VALUES ('71', '99', '5', '300', null, '3', '2019-10-08 15:23:39', '2019-10-06 22:12:27');
INSERT INTO `taxation_form` VALUES ('72', '102', '2', '300', null, '3', '2019-10-07 10:52:16', '2019-10-06 23:39:10');
INSERT INTO `taxation_form` VALUES ('73', '103', '5', '14400', null, '2', '2019-10-07 19:54:38', '2019-10-07 00:09:59');
INSERT INTO `taxation_form` VALUES ('74', '104', '5', '3600', null, '3', '2019-10-08 20:14:41', '2019-10-07 10:52:57');
INSERT INTO `taxation_form` VALUES ('75', '105', '5', '3600', null, '3', '2019-10-07 14:24:49', '2019-10-07 14:23:56');
INSERT INTO `taxation_form` VALUES ('76', '106', '5', '3600', null, '3', '2019-10-07 14:40:44', '2019-10-07 14:32:56');
INSERT INTO `taxation_form` VALUES ('77', '100', '5', '300', null, '3', '2019-10-07 19:50:04', '2019-10-07 16:07:22');
INSERT INTO `taxation_form` VALUES ('78', '101', '2', '300', null, '3', '2019-10-07 19:48:50', '2019-10-07 16:10:54');
INSERT INTO `taxation_form` VALUES ('79', '108', '2', '300', null, '3', '2019-10-07 19:46:30', '2019-10-07 16:14:34');
INSERT INTO `taxation_form` VALUES ('80', '110', '5', '14400', null, '2', '2019-10-07 23:48:08', '2019-10-07 23:47:34');
INSERT INTO `taxation_form` VALUES ('81', '111', '5', '3600', null, '3', '2019-10-04 23:56:24', '2019-10-07 23:51:24');
INSERT INTO `taxation_form` VALUES ('82', '112', '5', '14400', null, '2', '2019-10-08 00:02:31', '2019-10-08 00:01:35');
INSERT INTO `taxation_form` VALUES ('83', '113', '5', '3600', null, '3', '2019-10-04 00:06:19', '2019-10-08 00:05:24');
INSERT INTO `taxation_form` VALUES ('84', '114', '5', '14400', null, '2', '2019-10-08 00:10:58', '2019-10-08 00:09:47');
INSERT INTO `taxation_form` VALUES ('85', '115', '5', '3600', null, '3', '2019-10-04 00:15:50', '2019-10-08 00:14:57');
INSERT INTO `taxation_form` VALUES ('86', '116', '5', '14400', null, '2', '2019-10-08 00:48:56', '2019-10-08 00:19:51');
INSERT INTO `taxation_form` VALUES ('87', '117', '5', '3600', null, '3', '2019-10-04 00:30:40', '2019-10-08 00:22:03');
INSERT INTO `taxation_form` VALUES ('88', '118', '5', '3600', null, '3', '2019-10-04 00:32:31', '2019-10-08 00:25:21');
INSERT INTO `taxation_form` VALUES ('89', '119', '5', '14400', null, '2', '2019-10-08 00:46:51', '2019-10-08 00:45:56');
INSERT INTO `taxation_form` VALUES ('90', '120', '5', '14400', null, '2', '2019-10-08 00:52:49', '2019-10-08 00:52:16');
INSERT INTO `taxation_form` VALUES ('91', '107', '5', '300', null, '3', '2019-10-08 14:38:07', '2019-10-08 10:43:20');
INSERT INTO `taxation_form` VALUES ('92', '98', '5', '300', null, '3', '2019-10-08 14:38:03', '2019-10-08 13:44:13');
INSERT INTO `taxation_form` VALUES ('93', '121', '5', '300', null, '3', '2019-10-08 20:11:54', '2019-10-08 16:11:24');
INSERT INTO `taxation_form` VALUES ('94', '122', '5', '300', null, '3', '2019-10-09 00:30:13', '2019-10-08 21:38:39');
INSERT INTO `taxation_form` VALUES ('95', '123', '5', '300', null, '3', '2019-10-09 00:30:24', '2019-10-08 23:00:30');
INSERT INTO `taxation_form` VALUES ('96', '126', '5', '14400', null, '1', null, '2019-10-09 13:31:04');
INSERT INTO `taxation_form` VALUES ('97', '128', '5', '300', null, '3', '2019-10-09 21:12:19', '2019-10-09 18:46:39');
INSERT INTO `taxation_form` VALUES ('98', '130', '5', '300', null, '3', '2019-10-09 23:03:53', '2019-10-09 22:46:19');
INSERT INTO `taxation_form` VALUES ('99', '131', '1', '300', null, '3', '2019-10-10 22:16:08', '2019-10-10 12:13:14');
INSERT INTO `taxation_form` VALUES ('100', '133', '5', '14400', null, '1', null, '2019-10-10 19:37:56');
INSERT INTO `taxation_form` VALUES ('101', '134', '1', '300', null, '1', null, '2019-10-11 14:17:26');
INSERT INTO `taxation_form` VALUES ('102', '135', '1', '300', null, '1', null, '2019-10-11 16:00:18');
INSERT INTO `taxation_form` VALUES ('103', '136', '5', '14400', null, '1', null, '2019-10-11 22:06:08');
INSERT INTO `taxation_form` VALUES ('104', '137', '5', '14400', null, '1', null, '2019-10-11 22:11:02');
INSERT INTO `taxation_form` VALUES ('105', '138', '5', '14400', null, '2', '2019-10-14 02:06:11', '2019-10-11 22:13:03');
INSERT INTO `taxation_form` VALUES ('106', '139', '5', '14400', null, '3', '2019-10-14 02:06:06', '2019-10-11 22:16:00');
INSERT INTO `taxation_form` VALUES ('107', '140', '5', '14400', null, '2', '2019-10-13 21:35:41', '2019-10-11 22:18:59');
INSERT INTO `taxation_form` VALUES ('108', '141', '5', '14400', null, '3', '2019-10-13 21:35:37', '2019-10-11 22:21:26');
INSERT INTO `taxation_form` VALUES ('109', '68', '5', '14400', null, '2', '2019-10-11 22:30:59', '2019-10-11 22:29:57');
INSERT INTO `taxation_form` VALUES ('110', '40', '5', '14400', null, '2', '2019-10-13 21:28:47', '2019-10-12 10:41:44');
INSERT INTO `taxation_form` VALUES ('111', '142', '5', '14400', null, '3', '2019-10-12 23:14:38', '2019-10-12 23:11:12');
INSERT INTO `taxation_form` VALUES ('112', '143', '1', '300', null, '3', '2019-10-13 21:28:08', '2019-10-12 23:12:48');
INSERT INTO `taxation_form` VALUES ('113', '144', '5', '1200', null, '3', '2019-10-14 00:51:51', '2019-10-14 00:51:55');
INSERT INTO `taxation_form` VALUES ('114', '145', '2', '1200', null, '3', '2019-10-14 00:55:42', '2019-10-14 00:55:48');

-- ----------------------------
-- Table structure for taxation_type
-- ----------------------------
DROP TABLE IF EXISTS `taxation_type`;
CREATE TABLE `taxation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type_id` int(11) NOT NULL COMMENT '报单类型',
  `type_name` varchar(16) NOT NULL COMMENT '报单类型名称',
  `money` int(11) NOT NULL COMMENT '价格',
  `num` int(11) NOT NULL COMMENT '数量规格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of taxation_type
-- ----------------------------
INSERT INTO `taxation_type` VALUES ('1', '1', '套餐一', '300', '1');
INSERT INTO `taxation_type` VALUES ('2', '2', '套餐二', '1200', '4');
INSERT INTO `taxation_type` VALUES ('3', '3', '套餐三', '3600', '12');
INSERT INTO `taxation_type` VALUES ('4', '4', '套餐四', '7200', '24');
INSERT INTO `taxation_type` VALUES ('5', '5', '套餐五', '14400', '48');

-- ----------------------------
-- Table structure for taxation_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `taxation_upgrade`;
CREATE TABLE `taxation_upgrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `type` int(2) NOT NULL COMMENT '报单类型',
  `pre_type` int(2) NOT NULL COMMENT '升级之前的报单类型',
  `status` int(2) NOT NULL COMMENT '报单状态 0虚单 1实单',
  `money` int(11) NOT NULL COMMENT '报单价格',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taxation_upgrade
-- ----------------------------
INSERT INTO `taxation_upgrade` VALUES ('15', '85', '5', '1', '0', '14400', '2019-10-12 01:36:20');
INSERT INTO `taxation_upgrade` VALUES ('16', '65', '5', '2', '0', '14400', '2019-10-12 10:56:25');
INSERT INTO `taxation_upgrade` VALUES ('17', '65', '5', '2', '0', '14400', '2019-10-12 10:56:56');
INSERT INTO `taxation_upgrade` VALUES ('18', '128', '5', '1', '0', '14400', '2019-10-12 10:58:16');
INSERT INTO `taxation_upgrade` VALUES ('19', '130', '5', '1', '0', '14400', '2019-10-12 10:59:51');
INSERT INTO `taxation_upgrade` VALUES ('20', '123', '5', '1', '0', '14400', '2019-10-12 22:56:35');
INSERT INTO `taxation_upgrade` VALUES ('21', '122', '5', '1', '0', '14400', '2019-10-12 22:57:03');
INSERT INTO `taxation_upgrade` VALUES ('22', '104', '5', '3', '0', '14400', '2019-10-12 22:57:29');
INSERT INTO `taxation_upgrade` VALUES ('23', '121', '5', '1', '0', '14400', '2019-10-12 22:57:54');
INSERT INTO `taxation_upgrade` VALUES ('24', '99', '5', '1', '0', '14400', '2019-10-12 22:58:16');
INSERT INTO `taxation_upgrade` VALUES ('25', '99', '5', '1', '0', '14400', '2019-10-12 22:59:13');
INSERT INTO `taxation_upgrade` VALUES ('26', '107', '5', '1', '0', '14400', '2019-10-12 22:59:37');
INSERT INTO `taxation_upgrade` VALUES ('27', '98', '5', '1', '0', '14400', '2019-10-12 23:00:05');
INSERT INTO `taxation_upgrade` VALUES ('28', '100', '5', '1', '0', '14400', '2019-10-12 23:00:26');
INSERT INTO `taxation_upgrade` VALUES ('29', '101', '2', '1', '0', '1200', '2019-10-12 23:00:58');
INSERT INTO `taxation_upgrade` VALUES ('30', '108', '2', '1', '0', '1200', '2019-10-12 23:01:22');
INSERT INTO `taxation_upgrade` VALUES ('31', '106', '5', '3', '0', '14400', '2019-10-12 23:01:47');
INSERT INTO `taxation_upgrade` VALUES ('32', '105', '5', '3', '0', '14400', '2019-10-12 23:02:16');
INSERT INTO `taxation_upgrade` VALUES ('33', '102', '2', '1', '0', '1200', '2019-10-12 23:02:41');
INSERT INTO `taxation_upgrade` VALUES ('34', '97', '2', '1', '0', '1200', '2019-10-12 23:03:10');
INSERT INTO `taxation_upgrade` VALUES ('35', '97', '2', '1', '0', '1200', '2019-10-12 23:04:10');
INSERT INTO `taxation_upgrade` VALUES ('36', '96', '2', '1', '0', '1200', '2019-10-12 23:04:37');
INSERT INTO `taxation_upgrade` VALUES ('37', '92', '2', '1', '0', '1200', '2019-10-12 23:05:54');
INSERT INTO `taxation_upgrade` VALUES ('38', '111', '5', '3', '0', '14400', '2019-10-12 23:06:21');
INSERT INTO `taxation_upgrade` VALUES ('39', '87', '5', '1', '0', '14400', '2019-10-12 23:06:46');
INSERT INTO `taxation_upgrade` VALUES ('40', '41', '2', '1', '0', '1200', '2019-10-12 23:07:10');
INSERT INTO `taxation_upgrade` VALUES ('41', '70', '5', '1', '0', '14400', '2019-10-12 23:07:30');
INSERT INTO `taxation_upgrade` VALUES ('42', '69', '5', '1', '0', '14400', '2019-10-12 23:07:51');
INSERT INTO `taxation_upgrade` VALUES ('43', '95', '2', '1', '0', '1200', '2019-10-12 23:08:18');
INSERT INTO `taxation_upgrade` VALUES ('44', '66', '4', '1', '0', '7200', '2019-10-12 23:08:37');
INSERT INTO `taxation_upgrade` VALUES ('45', '118', '5', '3', '0', '14400', '2019-10-12 23:09:28');
INSERT INTO `taxation_upgrade` VALUES ('46', '117', '5', '3', '0', '14400', '2019-10-12 23:09:51');
INSERT INTO `taxation_upgrade` VALUES ('47', '115', '5', '3', '0', '14400', '2019-10-12 23:10:10');
INSERT INTO `taxation_upgrade` VALUES ('48', '113', '5', '3', '0', '14400', '2019-10-12 23:10:28');
INSERT INTO `taxation_upgrade` VALUES ('49', '26', '5', '3', '0', '14400', '2019-10-12 23:10:52');
INSERT INTO `taxation_upgrade` VALUES ('50', '25', '5', '3', '0', '14400', '2019-10-12 23:11:14');
INSERT INTO `taxation_upgrade` VALUES ('51', '24', '5', '3', '0', '14400', '2019-10-12 23:11:35');
INSERT INTO `taxation_upgrade` VALUES ('52', '23', '5', '3', '0', '14400', '2019-10-12 23:11:55');
INSERT INTO `taxation_upgrade` VALUES ('53', '64', '2', '1', '0', '1200', '2019-10-12 23:12:15');
INSERT INTO `taxation_upgrade` VALUES ('54', '60', '3', '2', '0', '3600', '2019-10-12 23:12:36');
INSERT INTO `taxation_upgrade` VALUES ('55', '59', '2', '1', '0', '1200', '2019-10-12 23:13:28');
INSERT INTO `taxation_upgrade` VALUES ('56', '59', '2', '1', '0', '1200', '2019-10-12 23:14:19');
INSERT INTO `taxation_upgrade` VALUES ('57', '56', '5', '4', '0', '14400', '2019-10-12 23:26:04');
INSERT INTO `taxation_upgrade` VALUES ('58', '55', '3', '2', '0', '3600', '2019-10-12 23:26:30');
INSERT INTO `taxation_upgrade` VALUES ('59', '144', '5', '2', '0', '14400', '2019-10-14 02:06:16');

-- ----------------------------
-- Table structure for transfer
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `transfer_name` varchar(32) NOT NULL,
  `gain_id` int(11) NOT NULL,
  `gain_name` varchar(32) NOT NULL,
  `money` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transfer
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(8) DEFAULT NULL COMMENT '姓名',
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `parent_id` int(11) NOT NULL COMMENT '推荐人id',
  `genetic_code` varchar(10240) NOT NULL COMMENT '遗传码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `level` int(11) DEFAULT NULL COMMENT '层',
  `type` int(11) DEFAULT '0' COMMENT '报单级别',
  `level_money` int(11) DEFAULT '0' COMMENT '极差金额',
  `leader` int(2) DEFAULT '0' COMMENT '是否是领导 0 不是 1是',
  `creator` int(2) DEFAULT '0' COMMENT '是否是创始人 0不是  1是',
  `partner` int(2) DEFAULT '0' COMMENT '是否是领导人 0不是 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表主要用于注册';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'admin123456', '13567891234', '1', '0', '2019-09-23 09:59:23', '1', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('5', null, 'hsgs1', 'hsgs123456', '13311111111', '1', '0,1', '2019-09-25 23:55:44', '2', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('6', null, 'admnn', 'admnn123456', '13611111111', '1', '0,1', '2019-09-26 00:06:26', '2', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('7', null, 'hsgs', 'hsgs123456', '13622222222', '6', '0,1,6', '2019-09-26 00:11:46', '3', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('8', null, 'hsgssc', 'hsgssc123456', '13633333333', '7', '0,1,6,7', '2019-09-26 00:23:38', '4', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('9', null, 'hzgsgd', 'hzgsgd123456', '13911111111', '8', '0,1,6,7,8', '2019-09-26 00:28:42', '5', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('10', null, 'jzs133', 'jzs133123456', '13111111111', '9', '0,1,6,7,8,9', '2019-09-26 00:35:40', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('11', null, 'jzs4133', 'jzs4133123456', '13122222222', '10', '0,1,6,7,8,9,10', '2019-09-26 00:38:34', '7', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('12', null, 'jzs94133', 'jzs94133123456', '13133333333', '11', '0,1,6,7,8,9,10,11', '2019-09-26 00:40:05', '8', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('13', null, 'jzs694133', 'jzs694133123456', '13124694133', '12', '0,1,6,7,8,9,10,11,12', '2019-09-26 00:42:21', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('15', null, 'wns888', 'wns123456', '13873806966', '13', '0,1,6,7,8,9,10,11,12,13', '2019-09-26 07:40:59', '10', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('16', null, '肖文革', 'xwg920812', '13973891579', '15', '0,1,6,7,8,9,10,11,12,13,15', '2019-09-26 08:02:59', '11', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('17', null, 'zky51888', 'zky51889988', '15186784771', '13', '0,1,6,7,8,9,10,11,12,13', '2019-09-26 17:12:10', '10', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('18', null, 'Wzs9123', 'wzs123', '18848589123', '9', '0,1,6,7,8,9', '2019-09-26 21:05:09', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('19', null, 'Zxl6877', 'zxl123', '15685576877', '18', '0,1,6,7,8,9,18', '2019-09-26 21:10:39', '7', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('20', null, '周小莉', 'zxl877', '15908558999', '19', '0,1,6,7,8,9,18,19', '2019-09-26 21:45:37', '8', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('21', null, '杨东花', 'YDH584520', '18385700180', '20', '0,1,6,7,8,9,18,19,20', '2019-09-28 10:01:26', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('22', null, '百花争艳', 'BHZY88', '15329058909', '20', '0,1,6,7,8,9,18,19,20', '2019-09-28 14:08:23', '9', '3', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('23', null, '刘艳', 'ly8888', '15985539198', '22', '0,1,6,7,8,9,18,19,20,22', '2019-09-28 14:54:07', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('24', null, '张秀菊', 'zxj8888', '13765554732', '22', '0,1,6,7,8,9,18,19,20,22', '2019-09-28 14:55:41', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('25', null, '邹永桃', 'zyt8888', '13508559191', '22', '0,1,6,7,8,9,18,19,20,22', '2019-09-28 14:56:36', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('26', null, '陆德珍', 'Ldz8888', '18085250189', '22', '0,1,6,7,8,9,18,19,20,22', '2019-09-28 17:03:02', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('27', null, '杨敏', 'Ym8888', '17785588813', '20', '0,1,6,7,8,9,18,19,20', '2019-09-28 17:04:16', '9', '3', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('28', null, 'thc37', 'thc37123456', '18184569633', '10', '0,1,6,7,8,9,10', '2019-09-28 21:11:10', '7', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('29', null, 'thc333777', 'thc3377123456', '13691993686', '28', '0,1,6,7,8,9,10,28', '2019-09-28 21:17:04', '8', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('30', null, '申贵珍1', 'sgz123456', '18539938867', '29', '0,1,6,7,8,9,10,28,29', '2019-09-28 21:30:13', '9', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('31', null, '张志华', 'abc147258369', '19906447672', '29', '0,1,6,7,8,9,10,28,29', '2019-09-28 21:59:58', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('32', null, '徐徐', 'x18096039239', '15985140975', '29', '0,1,6,7,8,9,10,28,29', '2019-09-28 22:03:24', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('33', null, '申贵珍', 'sgz123456', '18984606688', '30', '0,1,6,7,8,9,10,28,29,30', '2019-09-28 22:54:31', '10', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('34', null, '潘诗', 'ps123456', '18386753263', '29', '0,1,6,7,8,9,10,28,29', '2019-09-28 22:59:16', '9', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('35', null, '徐红英', 'x18096039239', '18096039239', '29', '0,1,6,7,8,9,10,28,29', '2019-09-28 23:04:39', '9', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('36', null, '杨再珍', 'thc2xd2thc', '18985804425', '29', '0,1,6,7,8,9,10,28,29', '2019-09-28 23:05:13', '9', '4', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('37', null, '王思琴', 'wsq123456', '15086208966', '29', '0,1,6,7,8,9,10,28,29', '2019-09-28 23:34:00', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('38', null, 'ysq128', 'thc333777', '13985822688', '29', '0,1,6,7,8,9,10,28,29', '2019-09-29 00:11:59', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('39', null, '陈平', '178032', '18665590016', '29', '0,1,6,7,8,9,10,28,29', '2019-09-29 00:21:38', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('40', null, '袁立相', '111111', '15344401531', '39', '0,1,6,7,8,9,10,28,29,39', '2019-09-29 00:49:44', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('41', null, '翘翘', 'QQ0507', '15377002725', '29', '0,1,6,7,8,9,10,28,29', '2019-09-29 14:32:04', '9', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('42', null, 'ojx777', 'ojm588772', '18569672978', '39', '0,1,6,7,8,9,10,28,29,39', '2019-09-29 21:37:25', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('43', null, '姜再生', 'jzs269413', '18685580166', '28', '0,1,6,7,8,9,10,28', '2019-09-29 23:24:20', '8', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('44', null, '申贵贞2', 'sgz123456', '13049540411', '33', '0,1,6,7,8,9,10,28,29,30,33', '2019-09-29 23:30:20', '11', '4', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('45', null, '龙通英', 'lty123456', '16683858113', '44', '0,1,6,7,8,9,10,28,29,30,33,44', '2019-09-29 23:33:43', '12', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('46', null, '龙通英1', 'lty123456', '13195255608', '45', '0,1,6,7,8,9,10,28,29,30,33,44,45', '2019-09-29 23:42:19', '13', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('47', null, '曾献梅', 'zxm123456', '13096858033', '44', '0,1,6,7,8,9,10,28,29,30,33,44', '2019-09-29 23:45:41', '12', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('48', null, '姜再生1', 'jzs269413', '13508555189', '43', '0,1,6,7,8,9,10,28,43', '2019-09-29 23:47:34', '9', '3', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('49', null, '姜再生2', 'jzs269413', '18083189133', '48', '0,1,6,7,8,9,10,28,43,48', '2019-09-29 23:54:08', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('50', null, '张科远', 'zky123', '13017012577', '49', '0,1,6,7,8,9,10,28,43,48,49', '2019-09-30 07:50:17', '11', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('51', null, '杨静', 'yj123456', '13984455542', '50', '0,1,6,7,8,9,10,28,43,48,49,50', '2019-09-30 07:55:46', '12', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('54', null, '梁自琴', 'ls702176', '18569976148', '44', '0,1,6,7,8,9,10,28,29,30,33,44', '2019-09-30 14:50:40', '12', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('55', null, '梁自琴1', 'ls702176', '15772558267', '54', '0,1,6,7,8,9,10,28,29,30,33,44,54', '2019-09-30 15:02:30', '13', '3', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('56', null, '陈先生', '178032', '18665865490', '39', '0,1,6,7,8,9,10,28,29,39', '2019-09-30 17:44:56', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('57', null, '杨忠辉', 'yzh850315', '13984457763', '47', '0,1,6,7,8,9,10,28,29,30,33,44,47', '2019-09-30 20:41:37', '13', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('59', null, '吴胜学', 'wsx123456', '15772560667', '55', '0,1,6,7,8,9,10,28,29,30,33,44,54,55', '2019-10-01 14:15:46', '14', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('60', null, '吴胜学1', 'wsx123456', '19985153149', '59', '0,1,6,7,8,9,10,28,29,30,33,44,54,55,59', '2019-10-01 14:18:40', '15', '3', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('62', null, '黄琼', 'hq123456', '13883405279', '49', '0,1,6,7,8,9,10,28,43,48,49', '2019-10-01 23:00:24', '11', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('63', null, '潘正昌', 'pzc123', '18078385326', '49', '0,1,6,7,8,9,10,28,43,48,49', '2019-10-01 23:01:36', '11', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('64', null, '田敏杰', 'tmj123456', '18084535222', '36', '0,1,6,7,8,9,10,28,29,36', '2019-10-01 23:22:36', '10', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('65', null, '代廷江', 'Dyj8888', '18085557132', '20', '0,1,6,7,8,9,18,19,20', '2019-10-02 10:57:31', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('66', null, '代红英', 'Dhy8888', '13688555600', '65', '0,1,6,7,8,9,18,19,20,65', '2019-10-02 11:01:38', '10', '4', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('67', null, '龙启祥', 'lqx123456', '18798576038', '29', '0,1,6,7,8,9,10,28,29', '2019-10-02 12:01:07', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('68', null, '龙文波', 'Dtj8888', '18685566068', '65', '0,1,6,7,8,9,18,19,20,65', '2019-10-02 13:24:07', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('69', null, '张贰燕', 'Zey8888', '13385159187', '20', '0,1,6,7,8,9,18,19,20', '2019-10-02 17:00:31', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('70', null, '张燕琼', 'zyq8888', '13985813572', '69', '0,1,6,7,8,9,18,19,20,69', '2019-10-02 17:09:08', '10', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('72', null, '张科远1', 'zky123', '15186784777', '50', '0,1,6,7,8,9,10,28,43,48,49,50', '2019-10-03 08:08:04', '12', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('73', null, 'thc3377', 'thc2xd2thc', '18184563012', '29', '0,1,6,7,8,9,10,28,29', '2019-10-03 08:30:28', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('74', null, 'lqj5189', 'lqj123', '15692750189', '49', '0,1,6,7,8,9,10,28,43,48,49', '2019-10-03 08:36:59', '11', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('81', null, '李金海1', 'jh551431', '19885916911', '9', '0,1,6,7,8,9', '2019-10-03 14:08:48', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('82', null, '李金海2', 'jh551431', '13595599796', '81', '0,1,6,7,8,9,81', '2019-10-03 14:11:49', '7', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('83', null, '李金海3', 'jh551431', '18685553123', '82', '0,1,6,7,8,9,81,82', '2019-10-03 14:14:36', '8', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('85', null, '简德华', '111111', '13339656287', '51', '0,1,6,7,8,9,10,28,43,48,49,50,51', '2019-10-03 16:04:46', '13', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('87', null, '钟大海', 'Zdh8888', '15085229272', '20', '0,1,6,7,8,9,18,19,20', '2019-10-03 17:14:03', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('88', null, '菲菲', 'ltf583', '18184507830', '45', '0,1,6,7,8,9,10,28,29,30,33,44,45', '2019-10-03 21:57:22', '13', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('89', null, '潘勇钢', 'pxj839911', '18785555858', '83', '0,1,6,7,8,9,81,82,83', '2019-10-04 11:37:57', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('90', null, '徐秀祥', 'Xxx8888', '13985815197', '27', '0,1,6,7,8,9,18,19,20,27', '2019-10-04 11:42:07', '10', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('92', null, 'hngz1313', 'gzkl123456', '13378929121', '42', '0,1,6,7,8,9,10,28,29,39,42', '2019-10-04 17:23:21', '11', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('93', null, '邹荣琼', 'zrq725494', '18386692633', '83', '0,1,6,7,8,9,81,82,83', '2019-10-04 17:42:35', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('95', null, '田俊', 'tj123456', '15685588218', '36', '0,1,6,7,8,9,10,28,29,36', '2019-10-04 23:05:34', '10', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('96', null, '沈成君', 'scj666111', '15870236498', '57', '0,1,6,7,8,9,10,28,29,30,33,44,47,57', '2019-10-05 12:25:22', '14', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('97', null, '聂仁军', 'nrj123456', '13765111451', '36', '0,1,6,7,8,9,10,28,29,36', '2019-10-06 17:38:17', '10', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('98', null, '兰敏', 'lm8888', '18585276188', '26', '0,1,6,7,8,9,18,19,20,22,26', '2019-10-06 21:29:13', '11', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('99', null, '吴晓云', 'Wxy8888', '18085505858', '20', '0,1,6,7,8,9,18,19,20', '2019-10-06 22:11:41', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('100', null, 'ycs4177', '123456', '18685514177', '92', '0,1,6,7,8,9,10,28,29,39,42,92', '2019-10-06 22:30:28', '12', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('101', null, 'lqz9988', '123456', '15085273427', '100', '0,1,6,7,8,9,10,28,29,39,42,92,100', '2019-10-06 23:30:26', '13', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('102', null, '曾献梅1', 'zxm123456', '15329753035', '47', '0,1,6,7,8,9,10,28,29,30,33,44,47', '2019-10-06 23:38:28', '13', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('103', null, '蒋富林', 'jfl197711', '13765553906', '51', '0,1,6,7,8,9,10,28,43,48,49,50,51', '2019-10-07 00:08:57', '13', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('104', null, '张佑忠', '123123qq', '18685584988', '103', '0,1,6,7,8,9,10,28,43,48,49,50,51,103', '2019-10-07 10:51:47', '14', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('105', null, '杨再利', 'yzl123456789', '18786428687', '49', '0,1,6,7,8,9,10,28,43,48,49', '2019-10-07 14:22:33', '11', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('106', null, '吴海滨', 'whb955256', '13650026116', '105', '0,1,6,7,8,9,10,28,43,48,49,105', '2019-10-07 14:27:05', '12', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('107', null, '蔡廣源', 'cgy123456', '15685558168', '57', '0,1,6,7,8,9,10,28,29,30,33,44,47,57', '2019-10-07 15:31:16', '14', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('108', null, '左新娥', 'zxe123456', '18486369567', '102', '0,1,6,7,8,9,10,28,29,30,33,44,47,102', '2019-10-07 16:13:40', '14', '2', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('109', null, '刘运梅1', 'LM737373', '13765556816', '83', '0,1,6,7,8,9,81,82,83', '2019-10-07 16:42:10', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('110', null, '蒲健', 'pj123456', '19885984931', '9', '0,1,6,7,8,9', '2019-10-07 23:46:08', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('111', null, '蒲健1', 'pj123456', '19885984932', '110', '0,1,6,7,8,9,110', '2019-10-07 23:50:32', '7', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('112', null, '秦子尧', 'qzy123456', '13765117989', '9', '0,1,6,7,8,9', '2019-10-08 00:00:19', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('113', null, '秦子尧1', 'qzy123456', '13765117988', '112', '0,1,6,7,8,9,112', '2019-10-08 00:04:08', '7', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('114', null, '余结泽', 'yjz123456', '18377393166', '9', '0,1,6,7,8,9', '2019-10-08 00:09:16', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('115', null, '余结泽1', 'yjz123456', '15329411431', '114', '0,1,6,7,8,9,114', '2019-10-08 00:12:43', '7', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('116', null, '蒲德富', 'pzf123456', '13314450001', '9', '0,1,6,7,8,9', '2019-10-08 00:19:27', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('117', null, '蒲德富1', 'pdf123456', '13314450002', '116', '0,1,6,7,8,9,116', '2019-10-08 00:21:36', '7', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('118', null, '李金海', 'ljh123456', '19885916912', '9', '0,1,6,7,8,9', '2019-10-08 00:24:55', '6', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('119', null, '唐新春', 'txc123456', '18685558556', '51', '0,1,6,7,8,9,10,28,43,48,49,50,51', '2019-10-08 00:44:00', '13', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('120', null, '杨静1', 'yj123456', '15608559586', '119', '0,1,6,7,8,9,10,28,43,48,49,50,51,119', '2019-10-08 00:51:50', '14', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('121', null, '邓婷一', 'Dt8888', '15121456558', '20', '0,1,6,7,8,9,18,19,20', '2019-10-08 15:57:40', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('122', null, '曾林燕', '123456', '16711628634', '44', '0,1,6,7,8,9,10,28,29,30,33,44', '2019-10-08 21:37:16', '12', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('123', null, 'ycs9988', '123456', '18985272979', '100', '0,1,6,7,8,9,10,28,29,39,42,92,100', '2019-10-08 22:59:48', '13', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('124', null, '刘国玉', 'Lgy8888', '18985459853', '87', '0,1,6,7,8,9,18,19,20,87', '2019-10-09 13:09:03', '10', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('125', null, '顾清华', '663306', '15286305267', '51', '0,1,6,7,8,9,10,28,43,48,49,50,51', '2019-10-09 13:25:42', '13', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('126', null, '蛋白桑鸡蛋', '8250880', '18085584488', '51', '0,1,6,7,8,9,10,28,43,48,49,50,51', '2019-10-09 13:30:23', '13', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('127', null, '谭合艳', 'thy123456', '18577721559', '36', '0,1,6,7,8,9,10,28,29,36', '2019-10-09 15:32:00', '10', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('128', null, '李鑫', 'lx123456', '13595505116', '26', '0,1,6,7,8,9,18,19,20,22,26', '2019-10-09 18:45:51', '11', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('129', null, '王磊', '198718', '15308522171', '50', '0,1,6,7,8,9,10,28,43,48,49,50', '2019-10-09 21:56:42', '12', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('130', null, '徐成友', 'xcy8888', '15286369349', '26', '0,1,6,7,8,9,18,19,20,22,26', '2019-10-09 22:45:41', '11', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('131', null, '尹盈欢', 'yyh8888', '18785524568', '130', '0,1,6,7,8,9,18,19,20,22,26,130', '2019-10-10 12:09:17', '12', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('132', null, '杨平', 'yp19810413', '15085211946', '120', '0,1,6,7,8,9,10,28,43,48,49,50,51,119,120', '2019-10-10 12:10:36', '15', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('133', null, 'cjy679', 'cjy131313', '18362115289', '31', '0,1,6,7,8,9,10,28,29,31', '2019-10-10 19:20:31', '10', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('134', null, '吴信嫣', 'www689', '13885559916', '26', '0,1,6,7,8,9,18,19,20,22,26', '2019-10-11 14:16:31', '11', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('135', null, '李贵荣', 'lgr8888', '15808552235', '26', '0,1,6,7,8,9,18,19,20,22,26', '2019-10-11 15:59:39', '11', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('136', null, '李文雪', 'Lwx8888', '13638090909', '20', '0,1,6,7,8,9,18,19,20', '2019-10-11 22:01:56', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('137', null, '李亚妮', 'Lyn8888', '13595539122', '20', '0,1,6,7,8,9,18,19,20', '2019-10-11 22:10:15', '9', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('138', null, '刘国柱', 'Lgz8888', '13985822710', '20', '0,1,6,7,8,9,18,19,20', '2019-10-11 22:12:26', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('139', null, '刘实权', 'Lsq8888', '13985272186', '20', '0,1,6,7,8,9,18,19,20', '2019-10-11 22:15:10', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('140', null, '吴秀屏', 'Wxp8888', '13017423906', '20', '0,1,6,7,8,9,18,19,20', '2019-10-11 22:17:53', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('141', null, '王莉婷', 'Wlt8888', '13618553799', '20', '0,1,6,7,8,9,18,19,20', '2019-10-11 22:20:45', '9', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('142', null, '田浩成', 'thc2xd2thc', '15121442511', '103', '0,1,6,7,8,9,10,28,43,48,49,50,51,103', '2019-10-12 11:20:58', '14', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('143', null, '金平', 'jp123456', '13638088052', '142', '0,1,6,7,8,9,10,28,43,48,49,50,51,103,142', '2019-10-12 23:12:08', '15', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('144', null, '王清', 'wq123456', '15808555342', '143', '0,1,6,7,8,9,10,28,43,48,49,50,51,103,142,143', '2019-10-12 23:14:21', '16', '5', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('145', null, '123', '1232', '1321', '142', '0,1,6,7,8,9,10,28,43,48,49,50,51,103,142', '2019-10-14 00:54:16', '15', '2', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for user_money
-- ----------------------------
DROP TABLE IF EXISTS `user_money`;
CREATE TABLE `user_money` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `money` int(11) NOT NULL COMMENT '账户金额',
  `dividend` int(11) NOT NULL COMMENT '分红通证',
  `goods_pv` int(11) NOT NULL COMMENT '复消pv',
  `taxation_money` int(11) DEFAULT '0',
  UNIQUE KEY `user_index` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_money
-- ----------------------------
INSERT INTO `user_money` VALUES ('1', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('5', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('6', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('7', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('8', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('9', '175984000', '0', '0', '0');
INSERT INTO `user_money` VALUES ('10', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('11', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('12', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('13', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('15', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('16', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('17', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('18', '331200', '0', '0', '0');
INSERT INTO `user_money` VALUES ('19', '1104602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('20', '7925600', '0', '0', '0');
INSERT INTO `user_money` VALUES ('21', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('22', '2107802', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('23', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('24', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('25', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('26', '95402', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('27', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('28', '1056000', '0', '0', '0');
INSERT INTO `user_money` VALUES ('29', '16489800', '0', '0', '0');
INSERT INTO `user_money` VALUES ('30', '1000400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('31', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('32', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('33', '513600', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('34', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('35', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('36', '93280', '7200', '7200', '7200');
INSERT INTO `user_money` VALUES ('37', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('38', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('39', '674400', '0', '0', '0');
INSERT INTO `user_money` VALUES ('40', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('41', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('42', '39600', '0', '0', '0');
INSERT INTO `user_money` VALUES ('43', '331200', '0', '0', '0');
INSERT INTO `user_money` VALUES ('44', '794080', '7200', '7200', '7200');
INSERT INTO `user_money` VALUES ('45', '56400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('46', '33600', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('47', '68400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('48', '792602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('49', '5250400', '0', '0', '0');
INSERT INTO `user_money` VALUES ('50', '117600', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('51', '627600', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('54', '68400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('55', '103200', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('56', '17680', '7200', '7200', '7200');
INSERT INTO `user_money` VALUES ('57', '32400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('59', '80400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('60', '33600', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('62', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('63', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('64', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('65', '61200', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('66', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('67', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('68', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('69', '36000', '300', '300', '300');
INSERT INTO `user_money` VALUES ('70', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('72', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('73', '2412', '14400', '14400', '14400');
INSERT INTO `user_money` VALUES ('74', '2412', '14400', '14400', '14400');
INSERT INTO `user_money` VALUES ('81', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('82', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('83', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('85', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('87', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('88', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('89', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('90', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('92', '50400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('93', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('95', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('96', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('97', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('98', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('99', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('100', '63600', '300', '300', '300');
INSERT INTO `user_money` VALUES ('101', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('102', '26400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('103', '2136000', '0', '0', '0');
INSERT INTO `user_money` VALUES ('104', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('105', '331802', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('106', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('107', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('108', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('109', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('110', '331200', '0', '0', '0');
INSERT INTO `user_money` VALUES ('111', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('112', '331200', '0', '0', '0');
INSERT INTO `user_money` VALUES ('113', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('114', '331200', '0', '0', '0');
INSERT INTO `user_money` VALUES ('115', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('116', '331200', '0', '0', '0');
INSERT INTO `user_money` VALUES ('117', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('118', '602', '3600', '3600', '3600');
INSERT INTO `user_money` VALUES ('119', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('120', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('121', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('122', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('123', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('124', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('125', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('126', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('127', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('128', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('129', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('130', '36000', '300', '300', '300');
INSERT INTO `user_money` VALUES ('131', '8400', '300', '300', '300');
INSERT INTO `user_money` VALUES ('132', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('133', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('134', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('135', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('136', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('137', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('138', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('139', '2412', '14400', '14400', '14400');
INSERT INTO `user_money` VALUES ('140', '0', '0', '0', '0');
INSERT INTO `user_money` VALUES ('141', '2412', '14400', '14400', '14400');
INSERT INTO `user_money` VALUES ('142', '141912', '14400', '14400', '14400');
INSERT INTO `user_money` VALUES ('143', '42300', '300', '300', '300');
INSERT INTO `user_money` VALUES ('144', '25200', '1200', '1200', '1200');
INSERT INTO `user_money` VALUES ('145', '25200', '1200', '1200', '1200');

-- ----------------------------
-- Table structure for withdraw
-- ----------------------------
DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `money` int(11) NOT NULL COMMENT '提现金额',
  `wallet_address` varchar(255) DEFAULT NULL COMMENT '以太坊钱包地址',
  `type` int(2) NOT NULL COMMENT '提现类型 1现金提现 2通证提现',
  `status` int(2) NOT NULL COMMENT '提现状态 1提现中 2提现完成 3提现失败',
  `bank_account` varchar(32) DEFAULT NULL COMMENT '银行账号',
  `bank_name` varchar(32) DEFAULT NULL COMMENT '银行名称',
  `bank_address` varchar(128) DEFAULT NULL COMMENT '银行地址',
  `name` varchar(8) DEFAULT NULL COMMENT '姓名',
  `create_time` datetime NOT NULL COMMENT '提现时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdraw
-- ----------------------------
INSERT INTO `withdraw` VALUES ('1', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 01:20:09');
INSERT INTO `withdraw` VALUES ('2', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 01:25:10');
INSERT INTO `withdraw` VALUES ('3', '1', '2300', '', '1', '1', null, null, null, null, '2019-10-06 01:42:59');
INSERT INTO `withdraw` VALUES ('4', '1', '1000', '', '1', '1', null, null, null, null, '2019-10-06 01:44:59');
INSERT INTO `withdraw` VALUES ('5', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 01:46:57');
INSERT INTO `withdraw` VALUES ('6', '1', '3000', '12324234', '2', '1', null, null, null, null, '2019-10-06 01:54:54');
INSERT INTO `withdraw` VALUES ('7', '1', '5000', '', '1', '1', null, null, null, null, '2019-10-06 01:56:09');
INSERT INTO `withdraw` VALUES ('8', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 01:59:47');
INSERT INTO `withdraw` VALUES ('9', '1', '1000', '', '1', '1', null, null, null, null, '2019-10-06 02:01:21');
INSERT INTO `withdraw` VALUES ('10', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 02:02:16');
INSERT INTO `withdraw` VALUES ('11', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 02:04:21');
INSERT INTO `withdraw` VALUES ('12', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 19:09:22');
INSERT INTO `withdraw` VALUES ('13', '1', '3000', '', '1', '1', null, null, null, null, '2019-10-06 21:18:01');
INSERT INTO `withdraw` VALUES ('14', '1', '5000', '', '1', '1', '12321423234234234', '邮政银行', '四川省成都市温江区邮政支行', null, '2019-10-08 00:07:54');
INSERT INTO `withdraw` VALUES ('15', '1', '1000', '', '1', '1', '', '2342', '', '', '2019-10-08 00:21:30');
INSERT INTO `withdraw` VALUES ('16', '1', '1000', '', '1', '1', '123456789012345678', '中国银行', '四川省成都市中国银行温江支行', '424', '2019-10-08 00:26:00');
INSERT INTO `withdraw` VALUES ('17', '1', '3000', '', '1', '1', '235345345345', '邮政银行', '2342', '23423', '2019-10-08 21:19:51');
