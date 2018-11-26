/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vuehpeu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-26 17:31:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `stId` int(9) NOT NULL AUTO_INCREMENT COMMENT '员工Id',
  `stDid` int(3) NOT NULL COMMENT '员工所在部门对应ID',
  `stNum` int(8) NOT NULL COMMENT '员工排序',
  `stName` varchar(16) NOT NULL COMMENT '员工姓名',
  `stSex` int(1) NOT NULL COMMENT '员工性别',
  `stMarital` int(1) NOT NULL DEFAULT '0' COMMENT '婚姻状况',
  `stBirthdateType` int(1) NOT NULL DEFAULT '1' COMMENT '公历农历生日类型',
  `stBirthdate` date NOT NULL COMMENT '出生日期',
  `stMultiracial` varchar(10) NOT NULL DEFAULT '0' COMMENT '员工民族',
  `stTel` varchar(11) NOT NULL COMMENT '员工手机',
  `stQQ` varchar(10) NOT NULL COMMENT '员工QQ',
  `stEmail` varchar(50) NOT NULL COMMENT '员工邮箱',
  `stDegrees` varchar(12) NOT NULL COMMENT '员工学历',
  `stNativePlace` varchar(20) NOT NULL COMMENT '员工籍贯',
  `stCity` varchar(40) NOT NULL COMMENT '员工所在城市',
  `stEntryDate` date NOT NULL COMMENT '员工入职日期',
  `stJobState` int(1) NOT NULL DEFAULT '1' COMMENT '员工在职状态',
  `stDuties` varchar(200) NOT NULL COMMENT '职务',
  `stPositionalTitles` varchar(14) NOT NULL COMMENT '职称',
  `stDepartureDate` varchar(10) NOT NULL DEFAULT '0' COMMENT '员工离职日期',
  `stPhoto` varchar(250) NOT NULL COMMENT '员工照片',
  `stHeight` int(3) NOT NULL COMMENT '员工身高',
  `stWeight` int(3) NOT NULL COMMENT '员工体重',
  `stBlacklist` int(1) NOT NULL DEFAULT '0' COMMENT '员工黑名单',
  `stIDCard` varchar(18) DEFAULT NULL COMMENT '员工身份证号码',
  `stDepartureSo` varchar(40) NOT NULL DEFAULT '未录入' COMMENT '离职原因',
  `stBlacklistNowDate` varchar(10) NOT NULL DEFAULT '0' COMMENT '黑名单开始日期',
  `stBlacklistEndDate` varchar(10) NOT NULL DEFAULT '0' COMMENT '黑名单结束日期',
  `stBlacklistSo` varchar(40) NOT NULL DEFAULT '未录入' COMMENT '加入黑名单原因',
  `stPoliticalIandscape` varchar(12) NOT NULL COMMENT '员工政治面貌',
  `stEnclosure` varchar(500) NOT NULL COMMENT '员工相关附件',
  `stInputDate` date DEFAULT NULL COMMENT '员工录入时间',
  `stJingyuan` text COMMENT '工作经验',
  `stJineng` text COMMENT '掌握技能',
  PRIMARY KEY (`stId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('2', '2', '1', 'zhangsan', '1', '0', '1', '1990-10-02', '汉族', '15823485618', '123456789', '123456789@163.com', '大专', '贵州', '遵义', '2010-10-02', '1', '营销', '员工', '0', '20171204\\f3ff0a9b8998426dc970ad398efbd26d.jpg', '178', '145', '0', '123456789012345678', '未录入', '0', '0', '未录入', '团员', '20171204\\df1361ee3e3b3b43a301388d9e0605d5.txt', '2017-11-09', '无', 'JavaScript\\PHP\\BootStrap');
INSERT INTO `staff` VALUES ('5', '7', '3', 'zhangsan', '0', '0', '0', '2016-10-31', '苗族', '11111111111', '111111', '111@111.com', '大专', '贵州', '遵义', '2010-12-06', '1', '营销', '员工', '0', '20171204\\f3ff0a9b8998426dc970ad398efbd26d.jpg', '190', '190', '0', '311123199903189027', '未录入', '0', '0', '未录入', '团员', '20171204\\df1361ee3e3b3b43a301388d9e0605d5.txt', null, '无', '无');
INSERT INTO `staff` VALUES ('4', '7', '2', 'lisi', '1', '0', '1', '1990-10-02', '侗族', '15823485618', '123456789', '123456789@163.com', '大专', '贵州', '遵义', '2010-10-02', '1', '营销', '员工', '0', '20171204\\f3ff0a9b8998426dc970ad398efbd26d.jpg', '178', '145', '0', '123456789012345678', '未录入', '0', '0', '未录入', '团员', '20171204\\df1361ee3e3b3b43a301388d9e0605d5.txt', '2017-11-09', '无', 'JavaScript\\PHP\\BootStrap');
INSERT INTO `staff` VALUES ('7', '2', '4', 'lisi', '0', '0', '0', '2016-11-06', '汉族', '12345678901', '123456', '123456@11.com', '大专', '贵州', '遵义', '2010-12-23', '1', '行政', '员工', '0', '20171204\\f3ff0a9b8998426dc970ad398efbd26d.jpg', '100', '100', '0', '311123187967982019', '未录入', '0', '0', '未录入', '群众', '20171204\\df1361ee3e3b3b43a301388d9e0605d5.txt', null, '1', '1');
