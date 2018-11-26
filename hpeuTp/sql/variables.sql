/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vuehpeu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-26 17:31:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for variables
-- ----------------------------
DROP TABLE IF EXISTS `variables`;
CREATE TABLE `variables` (
  `vId` int(9) NOT NULL AUTO_INCREMENT COMMENT '变量Id',
  `vNum` int(9) NOT NULL COMMENT '变量编号',
  `vVariables` varchar(30) NOT NULL COMMENT '变量名称',
  `vVariablesVal` text COMMENT '变量的值',
  `vVariablesExplain` varchar(20) NOT NULL COMMENT '变量说明',
  PRIMARY KEY (`vId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of variables
-- ----------------------------
INSERT INTO `variables` VALUES ('1', '1', 'education', '初中以下|初中|高中/中专|大专|本科|硕士|博士|博士后', '学历字段');
INSERT INTO `variables` VALUES ('2', '2', 'titles', '总监|经理|主管|员工', '职称字段');
INSERT INTO `variables` VALUES ('3', '3', 'position', '总经理|行政|营销|技术|前台|会计|出纳|设计', '职务字段');
INSERT INTO `variables` VALUES ('4', '4', 'Marital', '未婚|已婚|离异|丧偶', '婚姻状况');
INSERT INTO `variables` VALUES ('5', '5', 'Nation', '汉族|回族|苗族|彝族|壮族|侗族|瑶族|白族|傣族|佤族|羌族|藏族|布依族|土家族|哈尼族|僳僳族|高山族|拉祜族|东乡族|纳西族|景颇族|布朗族|蒙古族|维吾尔族', '民族字段');
INSERT INTO `variables` VALUES ('6', '6', 'Politics', '团员|群众|党员', '政治面貌');
