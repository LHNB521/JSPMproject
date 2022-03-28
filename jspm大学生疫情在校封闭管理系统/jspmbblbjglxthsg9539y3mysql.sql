/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : jspmbblbjglxthsg9539y3mysql

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2021-03-14 22:09:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `cx` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('1', 'hsg', 'hsg', '超级管理员', '2021-03-12 19:30:26');
INSERT INTO `allusers` VALUES ('2', 'hsg123', '123', '普通管理员', '2021-03-12 19:48:04');

-- ----------------------------
-- Table structure for `banjixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `banjixinxi`;
CREATE TABLE `banjixinxi` (
  `ID` int(11) NOT NULL auto_increment,
  `banji` varchar(50) default NULL,
  `banzhuren` varchar(50) default NULL,
  `lianxidianhua` varchar(50) default NULL,
  `renshu` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banjixinxi
-- ----------------------------
INSERT INTO `banjixinxi` VALUES ('1', 'E01', '', '7856954', '82', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('2', 'B03', '', '8954878', '16', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('3', 'A03', '', '6497512', '84', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('4', 'D01', '', '6460233', '82', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('5', 'C02', '', '5261554', '73', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('6', 'A02', '', '6548745', '72', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('7', 'B02', '', '8895632', '16', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('8', 'D02', '', '8900541', '82', '2021-03-12 19:30:26');
INSERT INTO `banjixinxi` VALUES ('9', '345', '发多少', '13222334433', '24', '2021-03-12 19:49:24');

-- ----------------------------
-- Table structure for `jiaoshi`
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi` (
  `ID` int(11) NOT NULL auto_increment,
  `jiaoshigonghao` varchar(50) default NULL,
  `mima` varchar(50) default NULL,
  `jiaoshixingming` varchar(50) default NULL,
  `xingbie` varchar(50) default NULL,
  `shenfenzheng` varchar(50) default NULL,
  `dianhua` varchar(50) default NULL,
  `zhicheng` varchar(50) default NULL,
  `zhujiaokecheng` varchar(50) default NULL,
  `zhaopian` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES ('1', '005', '001', '李大汉', '男', '330327199010142546', '7856954', '教授', '线性代数', 'upload/jiaoshi7.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('2', '012', '001', '赵小型', '女', '330327185403060589', '6497512', '助理', '软件工程', 'upload/jiaoshi6.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('3', '023', '001', '穆铁柱', '男', '330327198811020456', '6460224', '助教', '数学', 'upload/jiaoshi4.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('4', '008', '001', '陈贵柏', '女', '33032719900723568X', '8900541', '助理', '计算机', 'upload/jiaoshi2.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('5', '026', '001', '张燕', '女', '330327199504059511', '6498567', '工程师', '政治', 'upload/jiaoshi5.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('6', '032', '001', '何永康', '女', '330327198501020300', '8945622', '助理', '英语', 'upload/jiaoshi1.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('7', '002', '001', '乔维', '男', '330327198805060222', '4265325', '助理', '法律', 'upload/jiaoshi8.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('8', '001', '001', '科比', '男', '330327199005060003', '6854778', '工程师', '语文', 'upload/jiaoshi3.jpg', '2021-03-12 19:30:26');
INSERT INTO `jiaoshi` VALUES ('9', '111', '111', '第三方', '男', '112233445566778899', '13455443344', '讲师', '按时', 'upload/1615549729200.png', '2021-03-12 19:48:50');

-- ----------------------------
-- Table structure for `meirianpai`
-- ----------------------------
DROP TABLE IF EXISTS `meirianpai`;
CREATE TABLE `meirianpai` (
  `ID` int(11) NOT NULL auto_increment,
  `xuehao` varchar(50) default NULL,
  `xueshengxingming` varchar(50) default NULL,
  `banji` varchar(50) default NULL,
  `yuanxi` varchar(50) default NULL,
  `jiaoshigonghao` varchar(50) default NULL,
  `shijiananpai` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meirianpai
-- ----------------------------
INSERT INTO `meirianpai` VALUES ('1', '028', '郑亚斌', 'C02', '外语学院理学院', '006', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('2', '004', '陈燕琪', 'D01', '电子学院', '011', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('3', '015', '梅邹雁', 'B01', '基础医学', '030', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('4', '002', '鲁艾弈', 'A02', '政法学院', '009', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('5', '025', '鹿晗', 'A03', '旅游学院', '026', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('6', '034', '余少庆', 'B02', '艺术学院', '028', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('7', '024', '易建联', 'C03', '商学院', '025', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('8', '001', '舒畅', 'C01', '会计学院', '001', '', '2021-03-12 19:30:26');
INSERT INTO `meirianpai` VALUES ('9', '222', '啊按时', '345', '金融学院', '111', '撒地方士大夫撒地方撒地方十大', '2021-03-12 19:50:57');

-- ----------------------------
-- Table structure for `meiridaka`
-- ----------------------------
DROP TABLE IF EXISTS `meiridaka`;
CREATE TABLE `meiridaka` (
  `ID` int(11) NOT NULL auto_increment,
  `xuehao` varchar(50) default NULL,
  `xueshengxingming` varchar(50) default NULL,
  `banji` varchar(50) default NULL,
  `yuanxi` varchar(50) default NULL,
  `jiaoshigonghao` varchar(50) default NULL,
  `gerenzhuangkuang` varchar(50) default NULL,
  `shentizhuangtai` varchar(50) default NULL,
  `dangqiandizhi` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meiridaka
-- ----------------------------
INSERT INTO `meiridaka` VALUES ('1', '003', '范冰冰', 'B01', '信息学院', '019', '无状况', '健康', '龙翔路11号', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('2', '016', '郑亚斌', 'B02', '土建学院', '010', '疑似病例', '咽痛乏力', '解放路73号', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('3', '005', '霍建华', 'A02', '会计学院', '028', '密切接触者', '健康', '人民路57号', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('4', '014', '鲁艾弈', 'A01', '基础医学', '018', '无状况', '发热', '上江小区2幢', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('5', '002', '周盛', 'D03', '旅游学院', '006', '密切接触者', '健康', '泰兴路22号', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('6', '030', '何永康', 'C01', '外语学院理学院', '024', '确诊病例', '咽痛乏力', '方城丽圆11幢201室', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('7', '029', '袁庆轩', 'D02', '体育学院', '034', '疑似病例', '发热', '复兴街27号', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('8', '001', '王柏弘', 'C03', '商学院', '001', '确诊病例', '健康', '河滨东路139号', '2021-03-12 19:30:26');
INSERT INTO `meiridaka` VALUES ('9', '222', '啊按时', '345', '金融学院', '111', '密切接触者', '发热', '撒地方萨芬撒的发生', '2021-03-12 19:51:06');

-- ----------------------------
-- Table structure for `qingjiaxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `qingjiaxinxi`;
CREATE TABLE `qingjiaxinxi` (
  `ID` int(11) NOT NULL auto_increment,
  `qingjiadanhao` varchar(50) default NULL,
  `qingjialeixing` varchar(50) default NULL,
  `qingjiakaishishijian` varchar(50) default NULL,
  `qingjiajieshushijian` varchar(50) default NULL,
  `shifoulixiao` varchar(50) default NULL,
  `qingjiashiyou` varchar(255) default NULL,
  `xiangguanpingzheng` varchar(50) default NULL,
  `xuehao` varchar(50) default NULL,
  `xueshengxingming` varchar(50) default NULL,
  `banji` varchar(50) default NULL,
  `yuanxi` varchar(50) default NULL,
  `jiaoshigonghao` varchar(50) default NULL,
  `jiaoshishenhe` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qingjiaxinxi
-- ----------------------------
INSERT INTO `qingjiaxinxi` VALUES ('1', '3123474326383', '公休假', '2021-2-18', '2021-3-24', '否', '', 'upload/qingjiaxinxi3.jpg', '030', '连小云', 'C03', '文传学院', '005', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('2', '3123430840732', '病假', '2021-2-26', '2021-2-11', '否', '', 'upload/qingjiaxinxi6.jpg', '026', '方之明', 'B03', '会计学院', '014', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('3', '3123466123416', '事假', '2021-3-20', '2021-4-10', '是', '', 'upload/qingjiaxinxi4.jpg', '033', '温宗达', 'C02', '艺术学院', '026', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('4', '3123421857345', '病假', '2021-2-24', '2021-3-8', '是', '', 'upload/qingjiaxinxi5.jpg', '032', '沈古璐', 'C01', '机材学院', '011', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('5', '3123442014697', '病假', '2021-2-18', '2021-4-9', '否', '', 'upload/qingjiaxinxi7.jpg', '008', '陈贵柏', 'B02', '体育学院', '022', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('6', '3123421857345', '事假', '2021-3-29', '2021-2-11', '是', '', 'upload/qingjiaxinxi1.jpg', '016', '邱建彰', 'A01', '政法学院', '023', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('7', '3123430840732', '事假', '2021-3-20', '2021-3-25', '是', '', 'upload/qingjiaxinxi2.jpg', '023', '刘建福', 'E01', '土建学院', '028', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('8', '3123421857345', '公休假', '2021-2-18', '2021-2-24', '是', '', 'upload/qingjiaxinxi8.jpg', '001', '何永康', 'D03', '化工学院', '001', '', '2021-03-12 19:30:26');
INSERT INTO `qingjiaxinxi` VALUES ('9', '03121951105551', '事假', '202121321', '435345', '是', '士大夫士大夫士大夫撒地方撒地方萨德', 'upload/1615549893859.jpg', '222', '啊按时', '345', '金融学院', '111', '放到给对方是个是大法官放到', '2021-03-12 19:51:35');

-- ----------------------------
-- Table structure for `rijijilu`
-- ----------------------------
DROP TABLE IF EXISTS `rijijilu`;
CREATE TABLE `rijijilu` (
  `ID` int(11) NOT NULL auto_increment,
  `xuehao` varchar(50) default NULL,
  `xueshengxingming` varchar(50) default NULL,
  `banji` varchar(50) default NULL,
  `yuanxi` varchar(50) default NULL,
  `jiaoshigonghao` varchar(50) default NULL,
  `xinqing` varchar(50) default NULL,
  `rijineirong` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rijijilu
-- ----------------------------
INSERT INTO `rijijilu` VALUES ('1', '002', '冯子杰', 'A02', '政法学院', '012', '一般', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('2', '013', '王柏弘', 'B03', '文传学院', '010', '无聊', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('3', '025', '方之明', 'E01', '信息学院', '030', '无聊', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('4', '027', '周盛', 'A01', '化工学院', '028', '无聊', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('5', '026', '司宪策', 'D01', '体育学院', '002', '无聊', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('6', '019', '詹姆斯', 'A03', '商学院', '024', '一般', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('7', '008', '鹿晗', 'B01', '外语学院理学院', '032', '开心', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('8', '001', '乔维', 'B02', '土建学院', '001', '一般', '', '2021-03-12 19:30:26');
INSERT INTO `rijijilu` VALUES ('9', '222', '啊按时', '345', '金融学院', '111', '开心', '阿斯蒂芬撒地方撒的发生', '2021-03-12 19:51:43');

-- ----------------------------
-- Table structure for `tongzhigonggao`
-- ----------------------------
DROP TABLE IF EXISTS `tongzhigonggao`;
CREATE TABLE `tongzhigonggao` (
  `ID` int(11) NOT NULL auto_increment,
  `biaoti` varchar(255) default NULL,
  `neirong` varchar(255) default NULL,
  `fujian` varchar(50) default NULL,
  `faburen` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tongzhigonggao
-- ----------------------------
INSERT INTO `tongzhigonggao` VALUES ('1', '秋季用冷水洗澡有益处', '', 'upload/1.zip', '028', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('2', '神奇的HDR拍摄功能全体验', '', 'upload/1.zip', '027', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('3', '文件', '', 'upload/1.zip', '026', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('4', '黄寿龙调研灵海公路工程建设时要求：确保工程全面上马全线推进', '', 'upload/1.zip', '033', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('5', '文件', '', 'upload/1.zip', '002', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('6', '鹿城区街道行政区划调整获批', '', 'upload/1.zip', '024', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('7', '工商开展节前食品安全整治', '', 'upload/1.zip', '012', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('8', '秋季用冷水洗澡有益处', '', 'upload/1.zip', '001', '2021-03-12 19:30:26');
INSERT INTO `tongzhigonggao` VALUES ('9', '阿斯蒂芬阿斯蒂芬撒地方阿斯蒂芬sa', ' 发生大发顺丰安抚安抚撒地方萨芬十大阿萨德发生大', 'upload/1615549748792.docx', 'hsg', '2021-03-12 19:49:10');

-- ----------------------------
-- Table structure for `xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `ID` int(11) NOT NULL auto_increment,
  `xuehao` varchar(50) default NULL,
  `mima` varchar(50) default NULL,
  `xueshengxingming` varchar(50) default NULL,
  `xingbie` varchar(50) default NULL,
  `shenfenzheng` varchar(255) default NULL,
  `dianhua` varchar(50) default NULL,
  `yuanxi` varchar(50) default NULL,
  `banji` varchar(50) default NULL,
  `zhaopian` varchar(50) default NULL,
  `jiaoshigonghao` varchar(50) default NULL,
  `beizhu` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('1', '004', '001', '吴永国', '女', '330327198406150488', '4265325', '护理学院', 'D02', 'upload/xuesheng3.jpg', '004', '无', '2021-03-12 19:30:26');
INSERT INTO `xuesheng` VALUES ('2', '016', '001', '邱建彰', '男', '330327198811020456', '6497512', '生命学院', 'B02', 'upload/xuesheng3.jpg', '023', '暂无', '2021-03-12 19:30:26');
INSERT INTO `xuesheng` VALUES ('6', '034', '001', '沈古璐', '男', '330327199010142546', '7856954', '政法学院', 'B02', 'upload/xuesheng3.jpg', '007', '无', '2021-03-12 19:30:26');
INSERT INTO `xuesheng` VALUES ('7', '017', '001', '吴亦凡', '女', '330327199504059511', '8945622', '艺术学院', 'C02', 'upload/xuesheng4.jpg', '012', '暂无', '2021-03-12 19:30:26');
INSERT INTO `xuesheng` VALUES ('8', '001', '001', '陈小巧', '女', '330327199005060003', '6460848', '化工学院', 'E01', 'upload/xuesheng1.jpg', '001', 'abc', '2021-03-12 19:30:26');
INSERT INTO `xuesheng` VALUES ('9', '222', '222', '啊按时', '男', '456456789123445678', '13540456545', '金融学院', '345', 'upload/1615549825402.png', '111', '按时打算打算防守打法十大', '2021-03-12 19:50:28');
