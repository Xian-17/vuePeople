/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vuehpeu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-26 17:31:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminrole
-- ----------------------------
DROP TABLE IF EXISTS `adminrole`;
CREATE TABLE `adminrole` (
  `arId` int(2) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `arName` varchar(16) NOT NULL COMMENT '角色名称',
  `arInfo` varchar(200) NOT NULL COMMENT '角色描述',
  `arPowers` varchar(60) NOT NULL COMMENT '角色值',
  PRIMARY KEY (`arId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminrole
-- ----------------------------
INSERT INTO `adminrole` VALUES ('1', '超级管理组', '除系统管理员外，本组拥有至高无上的权限', 'A-A1-A2-A3-B');
INSERT INTO `adminrole` VALUES ('2', '系统维护组', '拥有系统设置，数据库备份等功能', 'A-A1-0-0-0');
INSERT INTO `adminrole` VALUES ('3', '行政人事组', '具有管理多部门多员工的权限组', 'A-0-A2-A3-0');
INSERT INTO `adminrole` VALUES ('4', '部门管理组', '具有管理多个部门的权限组', 'A-0-0-A3-0');
INSERT INTO `adminrole` VALUES ('5', '员工信息组', '具有录入员工信息的权限组', 'A-0-A2-0-0');
INSERT INTO `adminrole` VALUES ('6', '单部门管理组', '只具有添加修改所属部门组的员工信息', '0-0-0-0-B');
