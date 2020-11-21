/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : rental

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-11-21 22:43:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car` (
  `carnumber` varchar(255) NOT NULL,
  `cartype` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `rentprice` double(10,2) DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `isrenting` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `carimg` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`carnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
INSERT INTO `bus_car` VALUES ('鄂A77777', 'SUV', '白色', '350000.00', '1500.00', '12000', '0', '宝马X3', '2020-11-21/202011211805003532116.jpeg', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A88888', '轿车', '黑色', '880000.00', '1000.00', '10000', '0', '保时捷 卡宴', '003.png', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('鄂A99999', '渣土车', '黄色', '500000.00', '3000.00', '20000', '0', '动力强劲', '04D1AC749BA248E9805940888E1E766B.jpg', '2019-06-10 14:50:12');

-- ----------------------------
-- Table structure for bus_check
-- ----------------------------
DROP TABLE IF EXISTS `bus_check`;
CREATE TABLE `bus_check` (
  `checkid` varchar(255) NOT NULL,
  `checkdate` datetime DEFAULT NULL,
  `checkdesc` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `paymoney` double(255,0) DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  `rentid` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`checkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_check
-- ----------------------------
INSERT INTO `bus_check` VALUES ('JC_20180612_170407_0385_63960', '2018-06-12 00:00:00', '在G50高速超速', '超速', '500', '习大大', 'CZ_20180611_171304_0732_57330', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180612_172559_0323_71959', '2018-06-13 00:00:00', '无', '无', '0', '习大大', 'CZ_20180612_164747_0573_26177', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180718_091454_0191_93480', '2018-07-18 00:00:00', '无', '无', '0', '习大大', 'CZ_20180718_091206_0365_62161', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181024_170206_355_7589', '2018-10-24 17:02:06', '无', '无', '0', '超级管理员', 'CZ_20181024_102327_735_9111', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_105333_218_89516', '2018-12-02 00:00:00', '1231321', '111122', '200', '超级管理员', 'CZ_20180612_164808_0385_37625', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_111951_947_77152', '2018-12-03 00:00:00', '无', '无', '0', '超级管理员', 'CZ_20181201_111936_383_31565', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_2018_0901_175053_57325085', '2018-09-01 00:00:00', '在G50  1127-1130段超速20%未达50%', '有违章未处理', '500', '超级管理员', 'CZ_2018_0901_175000_97637709', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190322_142814_147_8624', '2019-03-22 14:28:14', '222', '11', '100', '超级管理员', 'CZ_20190320_141553_303_8141', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190611_111021_41215259', '2019-06-11 11:10:21', '没有1', '无1', '0', '超级管理员', 'CZ_20190611_094617_32192683', '2019-06-11 11:10:32');
INSERT INTO `bus_check` VALUES ('JC_20201121_210120_598_98080', '2020-11-21 21:01:20', '没有问题', '无', '0', '超级管理员', 'CZ_20201121_204119_455_27996', '2020-11-21 21:02:00');

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer` (
  `identity` varchar(255) NOT NULL COMMENT '身份证',
  `custname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` int(255) DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `career` varchar(255) DEFAULT NULL COMMENT '职位',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES ('421087133414144412', '张小明', '0', '武昌', '13456788987', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('43131334113331131', '习大大', '1', '武昌', '13888888888', '国家最高领导人', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431321199291331131', '张三', '1', '武昌', '13431334113', '程序员', '2019-05-07 14:52:24');
INSERT INTO `bus_customer` VALUES ('431341134191311311', '李四', '0', '汉阳', '13451313113', 'CEO', '2019-05-07 14:52:24');

-- ----------------------------
-- Table structure for bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `bus_rent`;
CREATE TABLE `bus_rent` (
  `rentid` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `begindate` datetime DEFAULT NULL,
  `returndate` datetime DEFAULT NULL,
  `rentflag` int(11) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `carnumber` varchar(255) DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`rentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_rent
-- ----------------------------
INSERT INTO `bus_rent` VALUES ('CZ_20180611_171304_0732_57330', '1600.00', '2017-01-01 00:00:00', '2017-06-18 00:00:00', '1', '421087133414144412', '鄂A77777', '李四', '2017-01-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164747_0573_26177', '500.00', '2018-01-13 00:00:00', '2018-06-23 00:00:00', '1', '431321199291331131', '鄂A66666', '李四', '2018-01-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164808_0385_37625', '1000.00', '2018-03-13 00:00:00', '2018-06-15 00:00:00', '1', '421087133414144412', '鄂A88888', '王五', '2018-03-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180718_091206_0365_62161', '500.00', '2018-05-18 00:00:00', '2018-07-21 00:00:00', '1', '421087133414144412', '鄂A66666', '张三', '2018-05-18 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20181024_102327_735_9111', '500.00', '2018-07-23 10:23:27', '2018-10-31 10:23:29', '1', '421087133414144412', '鄂A66666', '李四', '2018-07-23 10:23:27');
INSERT INTO `bus_rent` VALUES ('CZ_20181201_111936_383_31565', '1500.00', '2018-09-01 00:00:00', '2018-12-29 00:00:00', '1', '43131334113331131', '鄂A77777', '王五', '2018-09-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_2018_0901_175000_97637709', '500.00', '2018-12-01 00:00:00', '2018-09-10 00:00:00', '1', '431321199291331131', '鄂A66666', '李四', '2018-12-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20190611_094617_32192683', '500.00', '2019-06-11 09:46:17', '2019-06-15 09:46:19', '1', '43131334113331131', '鄂A66666', '超级管理员', '2019-06-11 09:46:25');
INSERT INTO `bus_rent` VALUES ('CZ_20201121_204119_455_27996', '150.00', '2020-11-21 12:41:26', '2020-11-21 00:00:00', '1', '43131334113331131', '鄂A77777', '超级管理员', '2020-11-21 20:41:35');

-- ----------------------------
-- Table structure for sys_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
INSERT INTO `sys_loginfo` VALUES ('1', '超级管理员-admin', '127.0.0.1', '2019-06-10 09:25:41');
INSERT INTO `sys_loginfo` VALUES ('2', '超级管理员-admin', '127.0.0.1', '2019-06-10 10:04:45');
INSERT INTO `sys_loginfo` VALUES ('3', '超级管理员-admin', '127.0.0.1', '2019-06-10 10:07:31');
INSERT INTO `sys_loginfo` VALUES ('4', '超级管理员-admin', '127.0.0.1', '2019-06-10 10:09:25');
INSERT INTO `sys_loginfo` VALUES ('5', '超级管理员-admin', '127.0.0.1', '2019-06-10 10:18:31');
INSERT INTO `sys_loginfo` VALUES ('6', '超级管理员-admin', '127.0.0.1', '2019-06-10 10:21:26');
INSERT INTO `sys_loginfo` VALUES ('7', '超级管理员-admin', '127.0.0.1', '2019-06-10 10:22:20');
INSERT INTO `sys_loginfo` VALUES ('8', '超级管理员-admin', '127.0.0.1', '2019-06-10 11:01:47');
INSERT INTO `sys_loginfo` VALUES ('9', '超级管理员-admin', '127.0.0.1', '2019-06-10 11:12:34');
INSERT INTO `sys_loginfo` VALUES ('10', '超级管理员-admin', '127.0.0.1', '2019-06-10 14:42:41');
INSERT INTO `sys_loginfo` VALUES ('11', '超级管理员-admin', '127.0.0.1', '2019-06-10 14:53:57');
INSERT INTO `sys_loginfo` VALUES ('12', '超级管理员-admin', '127.0.0.1', '2019-06-10 15:35:46');
INSERT INTO `sys_loginfo` VALUES ('13', '超级管理员-admin', '127.0.0.1', '2019-06-10 15:35:51');
INSERT INTO `sys_loginfo` VALUES ('14', '超级管理员-admin', '127.0.0.1', '2019-06-10 15:41:25');
INSERT INTO `sys_loginfo` VALUES ('15', '超级管理员-admin', '127.0.0.1', '2019-06-10 16:15:34');
INSERT INTO `sys_loginfo` VALUES ('16', '超级管理员-admin', '127.0.0.1', '2019-06-10 16:38:44');
INSERT INTO `sys_loginfo` VALUES ('17', '超级管理员-admin', '127.0.0.1', '2019-06-10 16:53:20');
INSERT INTO `sys_loginfo` VALUES ('18', '超级管理员-admin', '127.0.0.1', '2019-06-11 09:19:33');
INSERT INTO `sys_loginfo` VALUES ('19', '超级管理员-admin', '127.0.0.1', '2019-06-11 09:41:54');
INSERT INTO `sys_loginfo` VALUES ('20', '超级管理员-admin', '127.0.0.1', '2019-06-11 10:57:54');
INSERT INTO `sys_loginfo` VALUES ('21', '超级管理员-admin', '127.0.0.1', '2019-06-11 11:07:57');
INSERT INTO `sys_loginfo` VALUES ('22', '超级管理员-admin', '127.0.0.1', '2019-06-11 11:10:04');
INSERT INTO `sys_loginfo` VALUES ('23', '超级管理员-admin', '127.0.0.1', '2019-06-11 11:30:00');
INSERT INTO `sys_loginfo` VALUES ('24', '超级管理员-admin', '127.0.0.1', '2019-06-11 11:38:28');
INSERT INTO `sys_loginfo` VALUES ('25', '超级管理员-admin', '127.0.0.1', '2019-06-11 14:22:43');
INSERT INTO `sys_loginfo` VALUES ('26', '超级管理员-admin', '127.0.0.1', '2019-06-11 14:37:13');
INSERT INTO `sys_loginfo` VALUES ('27', '超级管理员-admin', '127.0.0.1', '2019-06-11 14:45:35');
INSERT INTO `sys_loginfo` VALUES ('28', '超级管理员-admin', '127.0.0.1', '2019-06-11 15:57:16');
INSERT INTO `sys_loginfo` VALUES ('29', '超级管理员-admin', '127.0.0.1', '2019-06-11 16:42:55');
INSERT INTO `sys_loginfo` VALUES ('30', '超级管理员-admin', '127.0.0.1', '2019-06-11 17:01:10');
INSERT INTO `sys_loginfo` VALUES ('31', '超级管理员-admin', '127.0.0.1', '2019-06-12 09:35:50');
INSERT INTO `sys_loginfo` VALUES ('32', '超级管理员-admin', '127.0.0.1', '2019-06-12 09:54:09');
INSERT INTO `sys_loginfo` VALUES ('33', '超级管理员-admin', '127.0.0.1', '2019-06-12 09:59:20');
INSERT INTO `sys_loginfo` VALUES ('34', '超级管理员-admin', '127.0.0.1', '2019-06-12 09:59:43');
INSERT INTO `sys_loginfo` VALUES ('35', '超级管理员-admin', '127.0.0.1', '2019-06-12 10:00:13');
INSERT INTO `sys_loginfo` VALUES ('36', '超级管理员-admin', '127.0.0.1', '2019-06-12 10:00:44');
INSERT INTO `sys_loginfo` VALUES ('37', '超级管理员-admin', '127.0.0.1', '2019-06-12 10:02:29');
INSERT INTO `sys_loginfo` VALUES ('38', '超级管理员-admin', '127.0.0.1', '2019-06-12 10:05:57');
INSERT INTO `sys_loginfo` VALUES ('39', '超级管理员-admin', '127.0.0.1', '2019-06-12 10:16:26');
INSERT INTO `sys_loginfo` VALUES ('40', '超级管理员-admin', '127.0.0.1', '2019-06-12 10:20:36');
INSERT INTO `sys_loginfo` VALUES ('41', '超级管理员-admin', '127.0.0.1', '2019-06-12 10:24:14');
INSERT INTO `sys_loginfo` VALUES ('42', '超级管理员-admin', '127.0.0.1', '2019-06-12 11:17:46');
INSERT INTO `sys_loginfo` VALUES ('43', '超级管理员-admin', '127.0.0.1', '2019-06-12 11:32:29');
INSERT INTO `sys_loginfo` VALUES ('44', '超级管理员-admin', '127.0.0.1', '2019-06-12 11:35:05');
INSERT INTO `sys_loginfo` VALUES ('45', '超级管理员-admin', '127.0.0.1', '2019-06-12 11:51:48');
INSERT INTO `sys_loginfo` VALUES ('46', '超级管理员-admin', '127.0.0.1', '2019-06-12 14:31:34');
INSERT INTO `sys_loginfo` VALUES ('47', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:01:15');
INSERT INTO `sys_loginfo` VALUES ('48', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:26:55');
INSERT INTO `sys_loginfo` VALUES ('49', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:31:17');
INSERT INTO `sys_loginfo` VALUES ('50', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:40:38');
INSERT INTO `sys_loginfo` VALUES ('51', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:40:52');
INSERT INTO `sys_loginfo` VALUES ('52', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:41');
INSERT INTO `sys_loginfo` VALUES ('53', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:50');
INSERT INTO `sys_loginfo` VALUES ('54', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:53');
INSERT INTO `sys_loginfo` VALUES ('55', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:45:59');
INSERT INTO `sys_loginfo` VALUES ('56', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:45:59');
INSERT INTO `sys_loginfo` VALUES ('57', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:47:29');
INSERT INTO `sys_loginfo` VALUES ('58', '超级管理员-admin', '127.0.0.1', '2019-06-12 15:48:56');
INSERT INTO `sys_loginfo` VALUES ('59', '超级管理员-admin', '127.0.0.1', '2019-06-14 09:10:49');
INSERT INTO `sys_loginfo` VALUES ('60', '超级管理员-admin', '127.0.0.1', '2019-06-14 09:37:03');
INSERT INTO `sys_loginfo` VALUES ('61', '超级管理员-admin', '127.0.0.1', '2019-06-14 09:38:45');
INSERT INTO `sys_loginfo` VALUES ('62', '超级管理员-admin', '127.0.0.1', '2019-06-14 09:39:08');
INSERT INTO `sys_loginfo` VALUES ('63', '超级管理员-admin', '127.0.0.1', '2019-06-14 09:41:16');
INSERT INTO `sys_loginfo` VALUES ('64', '超级管理员-admin', '127.0.0.1', '2019-06-14 10:49:01');
INSERT INTO `sys_loginfo` VALUES ('65', '超级管理员-admin', '127.0.0.1', '2019-06-14 10:56:58');
INSERT INTO `sys_loginfo` VALUES ('66', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:03:40');
INSERT INTO `sys_loginfo` VALUES ('67', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:06:35');
INSERT INTO `sys_loginfo` VALUES ('68', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:19:40');
INSERT INTO `sys_loginfo` VALUES ('69', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:21:08');
INSERT INTO `sys_loginfo` VALUES ('70', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:22:51');
INSERT INTO `sys_loginfo` VALUES ('71', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:23:07');
INSERT INTO `sys_loginfo` VALUES ('72', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:27:18');
INSERT INTO `sys_loginfo` VALUES ('73', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:29:10');
INSERT INTO `sys_loginfo` VALUES ('74', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:35:04');
INSERT INTO `sys_loginfo` VALUES ('75', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:41:32');
INSERT INTO `sys_loginfo` VALUES ('76', '超级管理员-admin', '127.0.0.1', '2019-06-14 11:42:21');
INSERT INTO `sys_loginfo` VALUES ('77', '超级管理员-admin', '127.0.0.1', '2019-06-14 14:31:29');
INSERT INTO `sys_loginfo` VALUES ('78', '超级管理员-admin', '127.0.0.1', '2019-06-14 14:41:53');
INSERT INTO `sys_loginfo` VALUES ('79', '超级管理员-admin', '127.0.0.1', '2019-06-14 14:50:54');
INSERT INTO `sys_loginfo` VALUES ('80', '超级管理员-admin', '127.0.0.1', '2019-06-14 14:57:43');
INSERT INTO `sys_loginfo` VALUES ('81', '超级管理员-admin', '127.0.0.1', '2019-06-14 15:03:58');
INSERT INTO `sys_loginfo` VALUES ('82', '超级管理员-admin', '127.0.0.1', '2019-06-14 15:06:15');
INSERT INTO `sys_loginfo` VALUES ('83', '张三-zhangsan', '127.0.0.1', '2019-06-14 15:06:27');
INSERT INTO `sys_loginfo` VALUES ('84', '张三-zhangsan', '127.0.0.1', '2019-06-14 15:07:10');
INSERT INTO `sys_loginfo` VALUES ('85', '李四-ls', '127.0.0.1', '2019-06-14 15:07:33');
INSERT INTO `sys_loginfo` VALUES ('86', '王五-ww', '127.0.0.1', '2019-06-14 15:07:48');
INSERT INTO `sys_loginfo` VALUES ('87', '小明-xm', '127.0.0.1', '2019-06-14 15:07:58');
INSERT INTO `sys_loginfo` VALUES ('88', '小明-xm', '127.0.0.1', '2019-06-14 15:40:20');
INSERT INTO `sys_loginfo` VALUES ('89', '超级管理员-admin', '127.0.0.1', '2019-06-14 15:59:44');
INSERT INTO `sys_loginfo` VALUES ('90', '超级管理员-admin', '127.0.0.1', '2019-06-14 16:41:29');
INSERT INTO `sys_loginfo` VALUES ('91', '超级管理员-admin', '127.0.0.1', '2019-06-14 16:59:26');
INSERT INTO `sys_loginfo` VALUES ('92', '超级管理员-admin', '127.0.0.1', '2019-06-14 17:00:29');
INSERT INTO `sys_loginfo` VALUES ('93', '超级管理员-admin', '127.0.0.1', '2019-06-14 17:00:42');
INSERT INTO `sys_loginfo` VALUES ('94', '超级管理员-admin', '127.0.0.1', '2019-06-14 17:37:38');
INSERT INTO `sys_loginfo` VALUES ('95', '超级管理员-admin', '127.0.0.1', '2019-06-14 17:47:26');
INSERT INTO `sys_loginfo` VALUES ('96', '超级管理员-admin', '127.0.0.1', '2019-06-15 14:13:48');
INSERT INTO `sys_loginfo` VALUES ('97', '超级管理员-admin', '127.0.0.1', '2019-06-15 14:38:31');
INSERT INTO `sys_loginfo` VALUES ('98', '超级管理员-admin', '127.0.0.1', '2019-06-15 14:38:47');
INSERT INTO `sys_loginfo` VALUES ('99', '超级管理员-admin', '127.0.0.1', '2019-06-15 14:41:33');
INSERT INTO `sys_loginfo` VALUES ('100', '超级管理员-admin', '127.0.0.1', '2019-06-15 14:45:27');
INSERT INTO `sys_loginfo` VALUES ('101', '超级管理员-admin', '127.0.0.1', '2019-06-15 14:48:21');
INSERT INTO `sys_loginfo` VALUES ('102', '超级管理员-admin', '127.0.0.1', '2019-06-15 17:30:57');
INSERT INTO `sys_loginfo` VALUES ('103', '超级管理员-admin', '127.0.0.1', '2019-06-15 17:43:39');
INSERT INTO `sys_loginfo` VALUES ('104', '超级管理员-admin', '127.0.0.1', '2019-06-15 17:45:56');
INSERT INTO `sys_loginfo` VALUES ('105', '超级管理员-admin', '127.0.0.1', '2019-06-15 17:46:12');
INSERT INTO `sys_loginfo` VALUES ('106', '超级管理员-admin', '127.0.0.1', '2019-06-15 17:47:56');
INSERT INTO `sys_loginfo` VALUES ('118', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-20 23:20:44');
INSERT INTO `sys_loginfo` VALUES ('119', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:21:59');
INSERT INTO `sys_loginfo` VALUES ('120', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:23:29');
INSERT INTO `sys_loginfo` VALUES ('121', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:24:42');
INSERT INTO `sys_loginfo` VALUES ('122', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:33:14');
INSERT INTO `sys_loginfo` VALUES ('123', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:39:08');
INSERT INTO `sys_loginfo` VALUES ('124', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:39:22');
INSERT INTO `sys_loginfo` VALUES ('125', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:40:44');
INSERT INTO `sys_loginfo` VALUES ('126', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:43:00');
INSERT INTO `sys_loginfo` VALUES ('127', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:47:33');
INSERT INTO `sys_loginfo` VALUES ('128', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 00:48:16');
INSERT INTO `sys_loginfo` VALUES ('129', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 01:03:15');
INSERT INTO `sys_loginfo` VALUES ('130', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 01:05:05');
INSERT INTO `sys_loginfo` VALUES ('131', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 11:28:58');
INSERT INTO `sys_loginfo` VALUES ('132', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 12:01:30');
INSERT INTO `sys_loginfo` VALUES ('133', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 12:04:10');
INSERT INTO `sys_loginfo` VALUES ('134', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 12:07:05');
INSERT INTO `sys_loginfo` VALUES ('135', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 16:30:11');
INSERT INTO `sys_loginfo` VALUES ('136', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 16:45:26');
INSERT INTO `sys_loginfo` VALUES ('137', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 17:28:35');
INSERT INTO `sys_loginfo` VALUES ('138', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 17:55:23');
INSERT INTO `sys_loginfo` VALUES ('139', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 18:04:40');
INSERT INTO `sys_loginfo` VALUES ('140', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 19:20:48');
INSERT INTO `sys_loginfo` VALUES ('141', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 19:31:23');
INSERT INTO `sys_loginfo` VALUES ('142', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 19:42:08');
INSERT INTO `sys_loginfo` VALUES ('143', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 19:44:33');
INSERT INTO `sys_loginfo` VALUES ('144', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 19:51:45');
INSERT INTO `sys_loginfo` VALUES ('145', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 19:52:39');
INSERT INTO `sys_loginfo` VALUES ('146', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 20:01:07');
INSERT INTO `sys_loginfo` VALUES ('147', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 20:18:17');
INSERT INTO `sys_loginfo` VALUES ('148', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 20:29:52');
INSERT INTO `sys_loginfo` VALUES ('149', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 20:31:08');
INSERT INTO `sys_loginfo` VALUES ('150', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 20:41:01');
INSERT INTO `sys_loginfo` VALUES ('151', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 20:59:51');
INSERT INTO `sys_loginfo` VALUES ('152', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 21:00:58');
INSERT INTO `sys_loginfo` VALUES ('153', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 21:02:11');
INSERT INTO `sys_loginfo` VALUES ('154', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 21:49:06');
INSERT INTO `sys_loginfo` VALUES ('155', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 21:52:06');
INSERT INTO `sys_loginfo` VALUES ('156', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 21:59:22');
INSERT INTO `sys_loginfo` VALUES ('157', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 22:38:30');
INSERT INTO `sys_loginfo` VALUES ('158', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 22:38:59');
INSERT INTO `sys_loginfo` VALUES ('159', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-11-21 22:41:53');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `spread` int(255) DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `available` int(255) DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '汽车出租系统', null, '1', null, '&#xe68e;', '1');
INSERT INTO `sys_menu` VALUES ('2', '1', '基础管理', '', '0', '', '&#xe653;', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '业务管理', null, '0', null, '&#xe663;', '1');
INSERT INTO `sys_menu` VALUES ('4', '1', '系统管理', null, '0', null, '&#xe716;', '1');
INSERT INTO `sys_menu` VALUES ('5', '1', '统计分析', null, '0', null, '&#xe629;', '1');
INSERT INTO `sys_menu` VALUES ('6', '2', '客户管理', '../bus/toCustomerManager.action', '0', null, '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('7', '2', '车辆管理', '../bus/toCarManager.action', '0', null, '&#xe657;', '1');
INSERT INTO `sys_menu` VALUES ('8', '3', '汽车出租', '../bus/toRentCarManager.action', '0', null, '&#xe65b;', '1');
INSERT INTO `sys_menu` VALUES ('9', '3', '出租单管理', '../bus/toRentManager.action', '0', null, '&#xe6b2;', '1');
INSERT INTO `sys_menu` VALUES ('10', '3', '汽车入库', '../bus/toCheckCarManager.action', '0', null, '&#xe65a;', '1');
INSERT INTO `sys_menu` VALUES ('11', '3', '检查单管理', '../bus/toCheckManager.action', '0', null, '&#xe705;', '1');
INSERT INTO `sys_menu` VALUES ('12', '4', '菜单管理', '../sys/toMenuManager.action', '0', null, '&#xe60f;', '1');
INSERT INTO `sys_menu` VALUES ('13', '4', '角色管理', '../sys/toRoleManager.action', '0', '', '&#xe66f;', '1');
INSERT INTO `sys_menu` VALUES ('14', '4', '用户管理', '../sys/toUserManager.action', '0', '', '&#xe770;', '1');
INSERT INTO `sys_menu` VALUES ('15', '4', '日志管理', '../sys/toLoginfoManager.action', '0', null, '&#xe655;', '1');
INSERT INTO `sys_menu` VALUES ('16', '4', '公告管理', '../sys/toNewsManager.action', '0', null, '&#xe645;', '1');
INSERT INTO `sys_menu` VALUES ('17', '4', '数据源监控', '../druid', '0', null, '&#xe857;', '1');
INSERT INTO `sys_menu` VALUES ('18', '5', '客户地区统计', '../stat/toCustomerAreaSexStat.action', '0', null, '&#xe63c;', '1');
INSERT INTO `sys_menu` VALUES ('19', '5', '公司年度月份销售额', '../stat/toCustomerAreaStat.action', '0', null, '&#xe62c;', '1');
INSERT INTO `sys_menu` VALUES ('20', '5', '业务员年度销售额', '../stat/toOpernameYearGradeStat.action', '0', null, '&#xe62d;', '1');

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
INSERT INTO `sys_news` VALUES ('5', '关系系统升级公告', '<p>关系系统升级公告关系系统升级公告关系系统升级公告关系系统升级公告关系系统升级公告关系系统升级公告			</p>', '2018-06-14 18:05:22', '习大大');
INSERT INTO `sys_news` VALUES ('9', '通天塔', '今天开会，大家准时到', '2020-11-21 00:48:11', '超级管理员');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `roledesc` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '拥有所有菜单权限', '1');
INSERT INTO `sys_role` VALUES ('2', '业务管理员', '拥有所以业务菜单', '1');
INSERT INTO `sys_role` VALUES ('3', '系统管理员', '管理系统', '1');
INSERT INTO `sys_role` VALUES ('4', '统计分析管理员', '数据统计管理员', '1');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('3', '17');
INSERT INTO `sys_role_menu` VALUES ('4', '1');
INSERT INTO `sys_role_menu` VALUES ('4', '5');
INSERT INTO `sys_role_menu` VALUES ('4', '18');
INSERT INTO `sys_role_menu` VALUES ('4', '19');
INSERT INTO `sys_role_menu` VALUES ('4', '20');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('2', '1');
INSERT INTO `sys_role_user` VALUES ('2', '2');
INSERT INTO `sys_role_user` VALUES ('2', '3');
INSERT INTO `sys_role_user` VALUES ('2', '4');
INSERT INTO `sys_role_user` VALUES ('3', '3');
INSERT INTO `sys_role_user` VALUES ('4', '2');
INSERT INTO `sys_role_user` VALUES ('4', '4');
INSERT INTO `sys_role_user` VALUES ('6', '3');
INSERT INTO `sys_role_user` VALUES ('7', '4');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` int(255) DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT '2' COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '4313341334413', '超级管理员', '1', '武汉', '134441331311', 'e10adc3949ba59abbe56e057f20f883e', 'CEO', '1', '1');
INSERT INTO `sys_user` VALUES ('2', 'zhangsan', '3413334134131131', '张三', '0', '武汉', '13765287861', 'e10adc3949ba59abbe56e057f20f883e', 'BA', '2', '1');
INSERT INTO `sys_user` VALUES ('3', 'ls', '43311341311314341', '李四', '1', '武汉', '1341314113131', 'e10adc3949ba59abbe56e057f20f883e', '扫地的', '2', '1');
INSERT INTO `sys_user` VALUES ('4', 'ww', '4313133131331312', '王五', '1', '武汉', '13413131131', 'e10adc3949ba59abbe56e057f20f883e', '领导', '2', '1');
INSERT INTO `sys_user` VALUES ('6', 'yck', '52212819989', '预存款', '1', '23423', '13765287861', 'e10adc3949ba59abbe56e057f20f883e', '查看', '2', '1');
INSERT INTO `sys_user` VALUES ('7', 'zhangsa', '123', '张飒', '1', '123', '13765287816', 'e10adc3949ba59abbe56e057f20f883e', '实现', '2', '1');
