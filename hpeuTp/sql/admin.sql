/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vuehpeu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-26 17:31:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aId` int(3) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `aDid` int(8) NOT NULL DEFAULT '0' COMMENT '管理员的管理部门ID',
  `aUser` varchar(16) NOT NULL COMMENT '管理员用户名',
  `aName` varchar(10) NOT NULL COMMENT '管理员姓名',
  `aPwd` varchar(32) NOT NULL COMMENT '管理员密码',
  `aTel` varchar(11) NOT NULL COMMENT '管理员手机',
  `aEmail` varchar(40) DEFAULT NULL COMMENT '管理员邮箱',
  `aSex` int(1) NOT NULL COMMENT '管理员性别',
  `aPowers` int(1) NOT NULL DEFAULT '0' COMMENT '管理员级别',
  `aLoginNum` int(9) NOT NULL DEFAULT '0' COMMENT '记录登陆次数',
  `aStatic` int(1) NOT NULL DEFAULT '1' COMMENT '管理员状态',
  `aErrorPwdNum` int(2) NOT NULL DEFAULT '0' COMMENT '记录密码登陆错误次数',
  PRIMARY KEY (`aId`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '0', 'system', '系统管理员', 'e10adc3949ba59abbe56e057f20f883e', '15887835880', '309091579@qq.com', '1', '0', '48', '1', '0');
