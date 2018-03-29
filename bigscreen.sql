/*
Navicat MySQL Data Transfer

Source Server         : s
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : bigscreen

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-01-03 10:32:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `parameter`
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `screen` int(255) DEFAULT NULL COMMENT '所属屏幕的编号',
  `key` varchar(255) DEFAULT NULL COMMENT '参数名',
  `value` varchar(255) DEFAULT NULL COMMENT '参数值',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数';

-- ----------------------------
-- Records of parameter
-- ----------------------------

-- ----------------------------
-- Table structure for `screen`
-- ----------------------------
DROP TABLE IF EXISTS `screen`;
CREATE TABLE `screen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` int(255) DEFAULT NULL COMMENT '所属主题编号',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `start` varchar(255) DEFAULT NULL COMMENT '起点坐标',
  `end` varchar(255) DEFAULT NULL COMMENT '终点坐标',
  `url` varchar(255) DEFAULT NULL COMMENT '请求URL',
  `originX` int(11) DEFAULT NULL COMMENT '起点X坐标 单位:像素',
  `originY` int(11) DEFAULT NULL COMMENT '起点Y坐标 单位：像素',
  `width` int(11) DEFAULT NULL COMMENT '宽度 单位：像素',
  `height` int(11) DEFAULT NULL COMMENT '高度 单位 像素',
  `method` tinyint(1) DEFAULT '0' COMMENT '方法 0 Get 1 Post 默认 0 Get',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COMMENT='屏幕';

-- ----------------------------
-- Records of screen
-- ----------------------------
INSERT INTO `screen` VALUES ('185', '58', '2', '1,2', null, 'http://localhost:8080/haierview/cntinfo/yyxl/P/M/kc/P0001/cyx/P0001/C401/R0101/main.shtml', '1920', '0', '1920', '1080', '0', '2016-09-06 14:23:16', '2');
INSERT INTO `screen` VALUES ('186', '58', '3', '2,1', null, 'http://localhost:8080/haierview/cntinfo/znwrh/P/M/1/main.shtml?encryptionWord=app', '0', '1080', '1920', '1080', '0', '2016-09-06 14:23:33', '3');
INSERT INTO `screen` VALUES ('187', '58', '4', '2,2', null, 'http://localhost:8080/haierview/cntinfo/yyxl/P/M/P0001/bxcb.shtml', '1920', '1080', '1920', '1080', '0', '2016-09-06 14:24:27', '4');
INSERT INTO `screen` VALUES ('188', '58', '1', '1,1', null, 'http://localhost:8080/haierview/cntinfo/P/M/0/0/ml.shtml', '0', '0', '1920', '1080', '0', '2016-09-06 14:27:07', '1');
INSERT INTO `screen` VALUES ('189', '59', '1', '1,1', null, 'http://localhost:8080/sops-screen/pages/marketControl/marketControl.jsp?extend=0', '0', '0', '1920', '1080', '0', '2016-09-07 16:46:27', '1');
INSERT INTO `screen` VALUES ('190', '59', '2', '1,2', null, 'http://localhost:8080/sops-screen/pages/marketInsight/marketInsight.jsp', '1920', '0', '1920', '1080', '0', '2016-09-07 16:46:43', '2');
INSERT INTO `screen` VALUES ('191', '59', '3', '2,1', null, 'http://localhost:8080/sops-screen/pages/operCapacity/OperCapacityMain.jsp', '0', '1080', '1920', '1080', '0', '2016-09-07 16:48:16', '3');
INSERT INTO `screen` VALUES ('192', '59', '4', '2,2', null, 'http://localhost:8080/sops-screen/pages/wareHouseManage/wareHouseManage.jsp', '1920', '1080', '1920', '1080', '0', '2016-09-07 16:49:09', '4');
INSERT INTO `screen` VALUES ('203', '56', '1', '1,1', '2,2', 'http://localhost:8080/sops-screen/pages/busiPerf/BusiPerfMain.jsp?extend=1', '0', '0', '3840', '2160', '0', '2016-09-09 09:51:52', '1');
INSERT INTO `screen` VALUES ('205', '61', '1', '1,1', null, 'http://localhost:8080/dp/ls/bzongLanShow.action', '0', '0', '1920', '1080', '0', '2016-09-09 11:00:04', '1');
INSERT INTO `screen` VALUES ('206', '61', '2', '1,2', null, 'http://localhost:8080/dp/ls/avgTimeShow.action', '1920', '0', '1920', '1080', '0', '2016-09-09 11:00:27', '2');
INSERT INTO `screen` VALUES ('207', '61', '3', '2,1', null, 'http://localhost:8080/dp/ls/a1Show.action', '0', '1080', '1920', '1080', '0', '2016-09-09 11:00:41', '3');
INSERT INTO `screen` VALUES ('208', '61', '4', '2,2', null, 'http://localhost:8080/dp/ls/b1Show.action', '1920', '1080', '1920', '1080', '0', '2016-09-09 11:00:58', '4');

-- ----------------------------
-- Table structure for `theme`
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `row` int(20) DEFAULT NULL,
  `col` int(20) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `isTouch` tinyint(1) DEFAULT '1',
  `isRemote` tinyint(1) DEFAULT '1',
  `isValid` tinyint(1) DEFAULT '0',
  `created` date DEFAULT NULL,
  `front` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES ('56', '顺丰首页', '1920*1080', '2', '2', 'http://localhost:8088/bigscreen/pic/bc637e26-27e6-4945-820b-2fbee0e35a2b.png', '1', '1', '1', '2016-09-05', 'http://localhost:8088/bigscreen/pic/bc637e26-27e6-4945-820b-2fbee0e35a2b_front.png');
INSERT INTO `theme` VALUES ('58', '690', '1920*1080', '2', '2', 'http://localhost:8088/bigscreen/pic/fd6a58a5-040e-43f5-b28f-18f41cd97124.png', '1', '1', '1', '2016-09-06', 'http://localhost:8088/bigscreen/pic/fd6a58a5-040e-43f5-b28f-18f41cd97124_front.png');
INSERT INTO `theme` VALUES ('59', '顺丰详细展示', '200*200', '2', '2', 'http://localhost:8088/bigscreen/pic/04904940-f45c-4f95-853b-eb954682d6ac.png', '1', '1', '1', '2016-09-07', 'http://localhost:8088/bigscreen/pic/04904940-f45c-4f95-853b-eb954682d6ac_front.png');
INSERT INTO `theme` VALUES ('61', '1169', '1920*1080', '2', '2', 'http://localhost:8088/bigscreen/pic/ba00b80b-5b6b-40ec-b733-79acb14f383a.png', '1', '1', '1', '2016-09-09', 'http://localhost:8088/bigscreen/pic/ba00b80b-5b6b-40ec-b733-79acb14f383a_front.png');

-- ----------------------------
-- Table structure for `tmp123`
-- ----------------------------
DROP TABLE IF EXISTS `tmp123`;
CREATE TABLE `tmp123` (
  `clm1` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp123
-- ----------------------------
INSERT INTO `tmp123` VALUES ('测试');
INSERT INTO `tmp123` VALUES ('测试');
