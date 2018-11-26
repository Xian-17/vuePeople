/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : vuehpeu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-26 17:31:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dId` int(3) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `dPid` int(9) NOT NULL COMMENT '下级部门',
  `dPsid` int(9) NOT NULL COMMENT '二级部门ID',
  `dName` varchar(20) NOT NULL COMMENT '部门名称',
  `dDirector` varchar(10) NOT NULL COMMENT '部门负责人',
  `dDirectorTel` varchar(15) NOT NULL COMMENT '部门负责人电话',
  `dDirectorQQ` varchar(11) NOT NULL COMMENT '部门负责人QQ',
  `dDirectorEmail` varchar(50) NOT NULL COMMENT '部门负责人邮箱',
  `dInfo` text NOT NULL COMMENT '部门简介',
  PRIMARY KEY (`dId`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('29', '0', '0', '恒山派', '令狐冲', '777777777', '777777777', '777777777@163.com', '令狐冲生性放荡不羁，爽朗豁达，豪迈潇洒，不拘小节，喜欢乱开玩笑，却有高度的忠义心，天生侠义心肠，并且深情不移。');
INSERT INTO `department` VALUES ('12', '0', '0', '临时部门', 'zhangsan', '1234567890', '123456', '1234@11.com', '存放已经离职的人员信息');
INSERT INTO `department` VALUES ('7', '0', '0', '开发部4', '张三', '16723456789', '12345678', 'qwerth@11.com', '                                    listAll                                ');
INSERT INTO `department` VALUES ('28', '0', '0', '仙剑3', '紫萱', '33333333333', '333333333', '333333333@qq.com', '女娲族后裔，饱受情爱煎熬三生三世之苦。');
INSERT INTO `department` VALUES ('16', '0', '0', '设计部', '钱拾', '18334834567', '2632659632', '2632659632@qq.com', '设计部负责人钱拾');
INSERT INTO `department` VALUES ('18', '0', '0', '研发部', '甄凯', '15287562573', '7637262718', '7637262718@qq.com', '研发部甄凯');
INSERT INTO `department` VALUES ('27', '0', '0', '天龙八部', '王语嫣', '11111111111', '1111111111', '1111111111@qq.com', '熟读各派武学秘笈，能看出各家武功招式，是一位武学理论家，却不谙武功。');
INSERT INTO `department` VALUES ('25', '0', '0', '峨嵋派', '周芷若', '12345678912', '234567888', '234567888@qq.com', '周芷若，金庸武侠小说《倚天屠龙记》中女主角。峨嵋派弟子、峨嵋派第四代掌门人，出尘如仙，是金庸笔下一个极富传奇色彩的女性角色。');
INSERT INTO `department` VALUES ('26', '0', '0', '明教', '张无忌', '1197837383', '222277777', '222277777@qq.com', '明教第三十四代教主。武当派的武当七侠之一张翠山与天鹰教紫微堂主殷素素之子，明教四大法王金毛狮王谢逊义子。');
INSERT INTO `department` VALUES ('30', '0', '0', '日月神教', '东方不败', '6666666', '6666666', '6666666@163.com', '日月神教总坛在书中位于河北的黑木崖，因教中之人行事诡异，多造杀孽，故被江湖中人称之为魔教，日月教与所谓的正教「五岳剑派」格格不入。');
INSERT INTO `department` VALUES ('31', '0', '0', '雪山飞狐', '苗若兰', '88888888888', '88888888888', '88888888888@163.com', '容貌绮丽之极，当真如明珠生晕，美玉荧光，一袭黄衣，肌肤胜雪，双目犹似一泓清水，明波流慧，眉间隐然有一股书卷清气。弱态生娇，文秀清雅，与胡斐情投意合。虽为武林大家之后，却丝毫不懂武功，然而柔而不弱，甚有气派，聪慧的心灵已经看透了武林中的恩怨仇杀，不愿让胡、苗两家世仇再延续下去。她性格柔和平稳，却又不似千金小姐般弱如扶柳，君子般的气质使她卓然傲立于群芳苗人凤、南兰之女。容貌绮丽之极，当真如明珠生晕，美玉荧光，一袭黄衣，肌肤胜雪，双目犹似一泓清水，明波流慧，眉间隐然有一股书卷清气。');
INSERT INTO `department` VALUES ('32', '0', '0', 'tempt', 'tempt', '11111111111', '11111111111', '11111111111@163.com', '11111111111');
