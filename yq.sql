/*
Navicat MySQL Data Transfer

Source Server         : yorkmass
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : yq

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2020-04-16 13:12:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL COMMENT '是否展开，0不展开，1展开',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '是否可用，0不可用，1可用',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '高校返校疫情排查系统', '1', '最高权力机关', '华北理工大学', '1', '1', '2020-03-08 14:49:02');
INSERT INTO `sys_dept` VALUES ('3', '1', '管理学院', '1', '管理学院', 'A4', '1', '2', '2020-03-08 06:51:31');
INSERT INTO `sys_dept` VALUES ('7', '3', '16信息管理与信息系统', '1', '毕业年级', '16级', '1', '5', '2020-03-17 08:51:23');
INSERT INTO `sys_dept` VALUES ('8', '3', '16工商管理专业', '1', '毕业年级', '16级', '1', '6', '2020-03-17 08:52:03');

-- ----------------------------
-- Table structure for sys_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
INSERT INTO `sys_loginfo` VALUES ('267', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 08:54:41');
INSERT INTO `sys_loginfo` VALUES ('268', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 08:55:21');
INSERT INTO `sys_loginfo` VALUES ('269', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 08:56:33');
INSERT INTO `sys_loginfo` VALUES ('270', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 09:12:42');
INSERT INTO `sys_loginfo` VALUES ('271', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 09:15:53');
INSERT INTO `sys_loginfo` VALUES ('272', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 09:16:58');
INSERT INTO `sys_loginfo` VALUES ('273', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 12:16:11');
INSERT INTO `sys_loginfo` VALUES ('274', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-09 12:31:09');
INSERT INTO `sys_loginfo` VALUES ('275', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 04:36:50');
INSERT INTO `sys_loginfo` VALUES ('276', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 04:55:26');
INSERT INTO `sys_loginfo` VALUES ('277', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 04:59:08');
INSERT INTO `sys_loginfo` VALUES ('278', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:03:41');
INSERT INTO `sys_loginfo` VALUES ('279', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:05:10');
INSERT INTO `sys_loginfo` VALUES ('280', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:22:29');
INSERT INTO `sys_loginfo` VALUES ('281', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:47:54');
INSERT INTO `sys_loginfo` VALUES ('282', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 05:51:46');
INSERT INTO `sys_loginfo` VALUES ('283', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 06:05:29');
INSERT INTO `sys_loginfo` VALUES ('284', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 06:07:31');
INSERT INTO `sys_loginfo` VALUES ('285', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 06:11:29');
INSERT INTO `sys_loginfo` VALUES ('286', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 08:44:49');
INSERT INTO `sys_loginfo` VALUES ('287', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 08:47:33');
INSERT INTO `sys_loginfo` VALUES ('288', 'shiro-shiro', '0:0:0:0:0:0:0:1', '2020-03-10 08:49:31');
INSERT INTO `sys_loginfo` VALUES ('289', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 08:49:41');
INSERT INTO `sys_loginfo` VALUES ('290', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 09:08:02');
INSERT INTO `sys_loginfo` VALUES ('291', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-10 09:14:20');
INSERT INTO `sys_loginfo` VALUES ('292', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 05:24:17');
INSERT INTO `sys_loginfo` VALUES ('293', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 05:30:34');
INSERT INTO `sys_loginfo` VALUES ('294', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 05:53:38');
INSERT INTO `sys_loginfo` VALUES ('295', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:08:17');
INSERT INTO `sys_loginfo` VALUES ('296', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:18:10');
INSERT INTO `sys_loginfo` VALUES ('299', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:28:09');
INSERT INTO `sys_loginfo` VALUES ('300', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:31:53');
INSERT INTO `sys_loginfo` VALUES ('301', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:32:39');
INSERT INTO `sys_loginfo` VALUES ('302', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:35:41');
INSERT INTO `sys_loginfo` VALUES ('303', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 08:00:03');
INSERT INTO `sys_loginfo` VALUES ('304', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 08:22:14');
INSERT INTO `sys_loginfo` VALUES ('305', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 08:29:20');
INSERT INTO `sys_loginfo` VALUES ('306', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 08:45:36');
INSERT INTO `sys_loginfo` VALUES ('307', '1001-1001', '0:0:0:0:0:0:0:1', '2020-03-17 09:02:42');
INSERT INTO `sys_loginfo` VALUES ('308', '1002-1002', '0:0:0:0:0:0:0:1', '2020-03-17 09:03:04');
INSERT INTO `sys_loginfo` VALUES ('309', '1003-1003', '0:0:0:0:0:0:0:1', '2020-03-17 09:03:21');
INSERT INTO `sys_loginfo` VALUES ('310', '1004-1004', '0:0:0:0:0:0:0:1', '2020-03-17 09:03:36');
INSERT INTO `sys_loginfo` VALUES ('311', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:03:54');
INSERT INTO `sys_loginfo` VALUES ('312', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:04:52');
INSERT INTO `sys_loginfo` VALUES ('313', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:05:11');
INSERT INTO `sys_loginfo` VALUES ('314', '1002-1002', '0:0:0:0:0:0:0:1', '2020-03-17 09:05:51');
INSERT INTO `sys_loginfo` VALUES ('315', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:06:15');
INSERT INTO `sys_loginfo` VALUES ('316', '1001-1001', '0:0:0:0:0:0:0:1', '2020-03-17 09:06:46');
INSERT INTO `sys_loginfo` VALUES ('317', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:07:09');
INSERT INTO `sys_loginfo` VALUES ('318', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:08:38');
INSERT INTO `sys_loginfo` VALUES ('319', '1001-1001', '0:0:0:0:0:0:0:1', '2020-03-17 09:08:49');
INSERT INTO `sys_loginfo` VALUES ('320', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:10:02');
INSERT INTO `sys_loginfo` VALUES ('321', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:14:46');
INSERT INTO `sys_loginfo` VALUES ('322', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:22:51');
INSERT INTO `sys_loginfo` VALUES ('323', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:46:11');
INSERT INTO `sys_loginfo` VALUES ('324', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:48:03');
INSERT INTO `sys_loginfo` VALUES ('325', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:52:22');
INSERT INTO `sys_loginfo` VALUES ('326', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 09:55:18');
INSERT INTO `sys_loginfo` VALUES ('327', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:00:04');
INSERT INTO `sys_loginfo` VALUES ('328', '1001-1001', '0:0:0:0:0:0:0:1', '2020-03-17 10:06:27');
INSERT INTO `sys_loginfo` VALUES ('329', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:09:31');
INSERT INTO `sys_loginfo` VALUES ('330', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:20:48');
INSERT INTO `sys_loginfo` VALUES ('331', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:22:30');
INSERT INTO `sys_loginfo` VALUES ('332', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:22:45');
INSERT INTO `sys_loginfo` VALUES ('333', '1002-1002', '0:0:0:0:0:0:0:1', '2020-03-17 10:24:11');
INSERT INTO `sys_loginfo` VALUES ('334', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:24:37');
INSERT INTO `sys_loginfo` VALUES ('335', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:38:24');
INSERT INTO `sys_loginfo` VALUES ('336', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:41:14');
INSERT INTO `sys_loginfo` VALUES ('337', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:50:07');
INSERT INTO `sys_loginfo` VALUES ('338', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:54:53');
INSERT INTO `sys_loginfo` VALUES ('339', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 10:57:44');
INSERT INTO `sys_loginfo` VALUES ('340', '1002-1002', '0:0:0:0:0:0:0:1', '2020-03-17 11:17:18');
INSERT INTO `sys_loginfo` VALUES ('341', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:18:06');
INSERT INTO `sys_loginfo` VALUES ('342', '1002-1002', '0:0:0:0:0:0:0:1', '2020-03-17 11:18:33');
INSERT INTO `sys_loginfo` VALUES ('343', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:19:24');
INSERT INTO `sys_loginfo` VALUES ('344', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:22:44');
INSERT INTO `sys_loginfo` VALUES ('345', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:25:07');
INSERT INTO `sys_loginfo` VALUES ('346', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:34:13');
INSERT INTO `sys_loginfo` VALUES ('347', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:39:28');
INSERT INTO `sys_loginfo` VALUES ('348', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-17 11:42:51');
INSERT INTO `sys_loginfo` VALUES ('349', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 04:51:22');
INSERT INTO `sys_loginfo` VALUES ('350', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 05:14:28');
INSERT INTO `sys_loginfo` VALUES ('351', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-18 06:31:31');
INSERT INTO `sys_loginfo` VALUES ('352', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 10:47:02');
INSERT INTO `sys_loginfo` VALUES ('353', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:02:15');
INSERT INTO `sys_loginfo` VALUES ('354', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:03:49');
INSERT INTO `sys_loginfo` VALUES ('355', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:04:38');
INSERT INTO `sys_loginfo` VALUES ('356', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:05:27');
INSERT INTO `sys_loginfo` VALUES ('357', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:06:06');
INSERT INTO `sys_loginfo` VALUES ('358', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:22:47');
INSERT INTO `sys_loginfo` VALUES ('359', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:23:51');
INSERT INTO `sys_loginfo` VALUES ('360', '吕院长-10', '0:0:0:0:0:0:0:1', '2020-03-23 11:25:17');
INSERT INTO `sys_loginfo` VALUES ('361', '姚懿-101', '0:0:0:0:0:0:0:1', '2020-03-23 11:25:39');
INSERT INTO `sys_loginfo` VALUES ('362', '王灏-102', '0:0:0:0:0:0:0:1', '2020-03-23 11:25:54');
INSERT INTO `sys_loginfo` VALUES ('363', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:26:10');
INSERT INTO `sys_loginfo` VALUES ('364', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:39:53');
INSERT INTO `sys_loginfo` VALUES ('365', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:43:55');
INSERT INTO `sys_loginfo` VALUES ('366', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:52:55');
INSERT INTO `sys_loginfo` VALUES ('367', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:54:02');
INSERT INTO `sys_loginfo` VALUES ('368', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:55:40');
INSERT INTO `sys_loginfo` VALUES ('369', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 11:58:53');
INSERT INTO `sys_loginfo` VALUES ('370', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 12:00:08');
INSERT INTO `sys_loginfo` VALUES ('371', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-23 12:00:45');
INSERT INTO `sys_loginfo` VALUES ('372', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-24 05:23:10');
INSERT INTO `sys_loginfo` VALUES ('373', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-24 05:28:03');
INSERT INTO `sys_loginfo` VALUES ('374', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-25 06:25:40');
INSERT INTO `sys_loginfo` VALUES ('375', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-25 06:27:56');
INSERT INTO `sys_loginfo` VALUES ('376', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 06:48:25');
INSERT INTO `sys_loginfo` VALUES ('377', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 05:23:20');
INSERT INTO `sys_loginfo` VALUES ('378', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 06:54:35');
INSERT INTO `sys_loginfo` VALUES ('379', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 07:02:17');
INSERT INTO `sys_loginfo` VALUES ('380', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 07:58:35');
INSERT INTO `sys_loginfo` VALUES ('381', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-30 08:01:10');
INSERT INTO `sys_loginfo` VALUES ('382', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 00:57:41');
INSERT INTO `sys_loginfo` VALUES ('383', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 01:18:31');
INSERT INTO `sys_loginfo` VALUES ('384', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 02:03:25');
INSERT INTO `sys_loginfo` VALUES ('385', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 03:10:23');
INSERT INTO `sys_loginfo` VALUES ('386', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 04:18:20');
INSERT INTO `sys_loginfo` VALUES ('387', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 05:58:20');
INSERT INTO `sys_loginfo` VALUES ('388', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-31 07:25:51');
INSERT INTO `sys_loginfo` VALUES ('389', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 07:51:54');
INSERT INTO `sys_loginfo` VALUES ('390', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 08:04:39');
INSERT INTO `sys_loginfo` VALUES ('391', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 08:07:10');
INSERT INTO `sys_loginfo` VALUES ('392', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 08:55:02');
INSERT INTO `sys_loginfo` VALUES ('393', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 08:56:03');
INSERT INTO `sys_loginfo` VALUES ('394', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 10:30:08');
INSERT INTO `sys_loginfo` VALUES ('395', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 10:31:23');
INSERT INTO `sys_loginfo` VALUES ('396', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 10:37:27');
INSERT INTO `sys_loginfo` VALUES ('397', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 11:37:31');
INSERT INTO `sys_loginfo` VALUES ('398', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 11:43:54');
INSERT INTO `sys_loginfo` VALUES ('399', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 11:48:46');
INSERT INTO `sys_loginfo` VALUES ('400', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 11:50:19');
INSERT INTO `sys_loginfo` VALUES ('401', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 12:01:22');
INSERT INTO `sys_loginfo` VALUES ('402', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 12:34:38');
INSERT INTO `sys_loginfo` VALUES ('403', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 12:37:09');
INSERT INTO `sys_loginfo` VALUES ('404', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 12:43:47');
INSERT INTO `sys_loginfo` VALUES ('405', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 12:45:12');
INSERT INTO `sys_loginfo` VALUES ('406', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 12:46:56');
INSERT INTO `sys_loginfo` VALUES ('407', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 13:01:13');
INSERT INTO `sys_loginfo` VALUES ('408', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 15:35:51');
INSERT INTO `sys_loginfo` VALUES ('409', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 15:37:37');
INSERT INTO `sys_loginfo` VALUES ('410', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 15:39:29');
INSERT INTO `sys_loginfo` VALUES ('411', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 15:42:18');
INSERT INTO `sys_loginfo` VALUES ('412', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 15:46:31');
INSERT INTO `sys_loginfo` VALUES ('413', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 15:52:07');
INSERT INTO `sys_loginfo` VALUES ('414', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 15:58:00');
INSERT INTO `sys_loginfo` VALUES ('415', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:00:22');
INSERT INTO `sys_loginfo` VALUES ('416', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:04:12');
INSERT INTO `sys_loginfo` VALUES ('417', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:04:55');
INSERT INTO `sys_loginfo` VALUES ('418', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:07:02');
INSERT INTO `sys_loginfo` VALUES ('419', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:08:27');
INSERT INTO `sys_loginfo` VALUES ('420', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:09:46');
INSERT INTO `sys_loginfo` VALUES ('421', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:16:09');
INSERT INTO `sys_loginfo` VALUES ('422', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:22:02');
INSERT INTO `sys_loginfo` VALUES ('423', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:23:45');
INSERT INTO `sys_loginfo` VALUES ('424', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:27:54');
INSERT INTO `sys_loginfo` VALUES ('425', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:29:27');
INSERT INTO `sys_loginfo` VALUES ('426', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:32:47');
INSERT INTO `sys_loginfo` VALUES ('427', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:34:36');
INSERT INTO `sys_loginfo` VALUES ('428', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:38:32');
INSERT INTO `sys_loginfo` VALUES ('429', 'bj-105', '0:0:0:0:0:0:0:1', '2020-04-14 16:39:02');
INSERT INTO `sys_loginfo` VALUES ('430', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:39:14');
INSERT INTO `sys_loginfo` VALUES ('431', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:41:10');
INSERT INTO `sys_loginfo` VALUES ('432', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:44:17');
INSERT INTO `sys_loginfo` VALUES ('433', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-14 16:48:30');
INSERT INTO `sys_loginfo` VALUES ('434', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:20:46');
INSERT INTO `sys_loginfo` VALUES ('435', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:25:03');
INSERT INTO `sys_loginfo` VALUES ('436', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:27:26');
INSERT INTO `sys_loginfo` VALUES ('437', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:31:26');
INSERT INTO `sys_loginfo` VALUES ('438', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:33:36');
INSERT INTO `sys_loginfo` VALUES ('439', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:35:08');
INSERT INTO `sys_loginfo` VALUES ('440', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:36:20');
INSERT INTO `sys_loginfo` VALUES ('441', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:37:50');
INSERT INTO `sys_loginfo` VALUES ('442', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:40:05');
INSERT INTO `sys_loginfo` VALUES ('443', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:42:23');
INSERT INTO `sys_loginfo` VALUES ('444', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:43:40');
INSERT INTO `sys_loginfo` VALUES ('445', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:44:26');
INSERT INTO `sys_loginfo` VALUES ('446', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:45:00');
INSERT INTO `sys_loginfo` VALUES ('447', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:49:23');
INSERT INTO `sys_loginfo` VALUES ('448', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:52:09');
INSERT INTO `sys_loginfo` VALUES ('449', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:55:17');
INSERT INTO `sys_loginfo` VALUES ('450', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:57:25');
INSERT INTO `sys_loginfo` VALUES ('451', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 07:58:35');
INSERT INTO `sys_loginfo` VALUES ('452', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 08:01:54');
INSERT INTO `sys_loginfo` VALUES ('453', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 08:05:10');
INSERT INTO `sys_loginfo` VALUES ('454', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-15 10:25:49');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('37', '高效返校疫情排查系统', '今日疫情预警：暂无', '2020-03-23 11:24:19', '超级管理员');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限编码[只有type=permission才有 user:view]',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '是否可用[0不可用，1可用]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', 'menu', '高校返校疫情排查系统', null, '&#xe68e;', '', '', '1', '1', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', 'menu', '校园疫情', null, '&#xe613;', '', '', '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('3', '1', 'menu', '我的健康', null, '&#xe621;', '', '', '0', '3', '1');
INSERT INTO `sys_permission` VALUES ('5', '1', 'menu', '系统管理', null, '&#xe614;', '', '', '0', '5', '1');
INSERT INTO `sys_permission` VALUES ('6', '1', 'menu', '其它管理', null, '&#xe628;', '', '', '0', '6', '1');
INSERT INTO `sys_permission` VALUES ('14', '5', 'menu', '部门管理', null, '&#xe770;', '/sys/toDeptManager', '', '0', '14', '1');
INSERT INTO `sys_permission` VALUES ('15', '5', 'menu', '菜单管理', null, '&#xe857;', '/sys/toMenuManager', '', '0', '15', '1');
INSERT INTO `sys_permission` VALUES ('16', '5', 'menu', '权限管理', '', '&#xe857;', '/sys/toPermissionManager', '', '0', '16', '1');
INSERT INTO `sys_permission` VALUES ('17', '5', 'menu', '角色管理', '', '&#xe650;', '/sys/toRoleManager', '', '0', '17', '1');
INSERT INTO `sys_permission` VALUES ('18', '5', 'menu', '用户管理', '', '&#xe612;', '/sys/toUserManager', '', '0', '18', '1');
INSERT INTO `sys_permission` VALUES ('21', '6', 'menu', '登陆日志', null, '&#xe675;', '/sys/toLoginfoManager', '', '0', '23', '1');
INSERT INTO `sys_permission` VALUES ('22', '6', 'menu', '系统公告', null, '&#xe756;', '/sys/toNoticeManager', '', '0', '19', '1');
INSERT INTO `sys_permission` VALUES ('23', '6', 'menu', '图标管理', null, '&#xe670;', '../resources/page/icon.html', '', '0', '24', '1');
INSERT INTO `sys_permission` VALUES ('30', '14', 'permission', '添加部门', 'dept:create', '', null, null, '0', '24', '1');
INSERT INTO `sys_permission` VALUES ('31', '14', 'permission', '修改部门', 'dept:update', '', null, null, '0', '26', '1');
INSERT INTO `sys_permission` VALUES ('32', '14', 'permission', '删除部门', 'dept:delete', '', null, null, '0', '27', '1');
INSERT INTO `sys_permission` VALUES ('34', '15', 'permission', '添加菜单', 'menu:create', '', '', '', '0', '29', '1');
INSERT INTO `sys_permission` VALUES ('35', '15', 'permission', '修改菜单', 'menu:update', '', null, null, '0', '30', '1');
INSERT INTO `sys_permission` VALUES ('36', '15', 'permission', '删除菜单', 'menu:delete', '', null, null, '0', '31', '1');
INSERT INTO `sys_permission` VALUES ('38', '16', 'permission', '添加权限', 'permission:create', '', null, null, '0', '33', '1');
INSERT INTO `sys_permission` VALUES ('39', '16', 'permission', '修改权限', 'permission:update', '', null, null, '0', '34', '1');
INSERT INTO `sys_permission` VALUES ('40', '16', 'permission', '删除权限', 'permission:delete', '', null, null, '0', '35', '1');
INSERT INTO `sys_permission` VALUES ('42', '17', 'permission', '添加角色', 'role:create', '', null, null, '0', '37', '1');
INSERT INTO `sys_permission` VALUES ('43', '17', 'permission', '修改角色', 'role:update', '', null, null, '0', '38', '1');
INSERT INTO `sys_permission` VALUES ('44', '17', 'permission', '删除角色', 'role:delete', '', null, null, '0', '39', '1');
INSERT INTO `sys_permission` VALUES ('46', '17', 'permission', '分配权限', 'role:selectPermission', '', null, null, '0', '41', '1');
INSERT INTO `sys_permission` VALUES ('47', '18', 'permission', '添加用户', 'user:create', '', null, null, '0', '42', '1');
INSERT INTO `sys_permission` VALUES ('48', '18', 'permission', '修改用户', 'user:update', '', null, null, '0', '43', '1');
INSERT INTO `sys_permission` VALUES ('49', '18', 'permission', '删除用户', 'user:delete', '', null, null, '0', '44', '1');
INSERT INTO `sys_permission` VALUES ('51', '18', 'permission', '用户分配角色', 'user:selectRole', '', null, null, '0', '46', '1');
INSERT INTO `sys_permission` VALUES ('52', '18', 'permission', '重置密码', 'user:resetPwd', null, null, null, '0', '47', '1');
INSERT INTO `sys_permission` VALUES ('53', '14', 'permission', '部门查询', 'dept:view', null, null, null, '0', '48', '1');
INSERT INTO `sys_permission` VALUES ('54', '15', 'permission', '菜单查询', 'menu:view', null, null, null, '0', '49', '1');
INSERT INTO `sys_permission` VALUES ('55', '16', 'permission', '权限查询', 'permission:view', null, null, null, '0', '50', '1');
INSERT INTO `sys_permission` VALUES ('56', '17', 'permission', '角色查询', 'role:view', null, null, null, '0', '51', '1');
INSERT INTO `sys_permission` VALUES ('57', '18', 'permission', '用户查询', 'user:view', null, null, null, '0', '52', '1');
INSERT INTO `sys_permission` VALUES ('73', '21', 'permission', '日志查询', 'info:view', null, null, null, null, '65', '1');
INSERT INTO `sys_permission` VALUES ('74', '21', 'permission', '日志删除', 'info:delete', null, null, null, null, '66', '1');
INSERT INTO `sys_permission` VALUES ('75', '21', 'permission', '日志批量删除', 'info:batchdelete', null, null, null, null, '67', '1');
INSERT INTO `sys_permission` VALUES ('76', '22', 'permission', '公告查询', 'notice:view', null, null, null, null, '68', '1');
INSERT INTO `sys_permission` VALUES ('77', '22', 'permission', '公告添加', 'notice:create', null, null, null, null, '69', '1');
INSERT INTO `sys_permission` VALUES ('78', '22', 'permission', '公告修改', 'notice:update', null, null, null, null, '70', '1');
INSERT INTO `sys_permission` VALUES ('79', '22', 'permission', '公告删除', 'notice:delete', null, null, null, null, '71', '1');
INSERT INTO `sys_permission` VALUES ('86', '22', 'permission', '公告查看', 'notice:viewnotice', null, null, null, null, '78', '1');
INSERT INTO `sys_permission` VALUES ('119', '22', 'permission', '公告批量删除', 'notice:batchdelete', null, null, null, '0', '87', '1');
INSERT INTO `sys_permission` VALUES ('121', '6', 'menu', '数据库管理', null, '&#xe656;', '/druid', '', '0', '21', '1');
INSERT INTO `sys_permission` VALUES ('124', '121', 'permission', '数据库', 'sys.data', null, null, null, '0', '89', '1');
INSERT INTO `sys_permission` VALUES ('136', '6', 'menu', '缓存管理', null, '&#xe62e;', '/sys/toCacheManager', '', '0', '22', '1');
INSERT INTO `sys_permission` VALUES ('137', '2', 'menu', '校园疫情中心', null, '&#xe611;', '', '', '0', '90', '1');
INSERT INTO `sys_permission` VALUES ('150', '2', 'menu', '校园疫情风险警示', null, '&#xe615;', '', '', '1', '91', '1');
INSERT INTO `sys_permission` VALUES ('152', '3', 'menu', '健康信息录入', null, '&#xe609;', '', '', '1', '92', '1');
INSERT INTO `sys_permission` VALUES ('154', '2', 'menu', '全国疫情数据', null, '&#xe66c;', 'https://voice.baidu.com/act/newpneumonia/newpneumonia', '', '0', '93', '1');
INSERT INTO `sys_permission` VALUES ('155', '3', 'menu', '返校交通登记', null, '&#xe663;', '', '', '1', '94', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '0不可用，1可用',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('19', '超级管理员', '超级管理员', '1', '2020-03-08 07:05:55');
INSERT INTO `sys_role` VALUES ('23', '学生', '学生', '1', '2020-03-23 10:55:19');
INSERT INTO `sys_role` VALUES ('24', '学院管理员', '学院管理员', '1', '2020-03-23 10:55:32');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`pid`,`rid`),
  KEY `sys_role_permission_ibfk_2` (`rid`),
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`),
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('19', '1');
INSERT INTO `sys_role_permission` VALUES ('19', '2');
INSERT INTO `sys_role_permission` VALUES ('19', '3');
INSERT INTO `sys_role_permission` VALUES ('19', '5');
INSERT INTO `sys_role_permission` VALUES ('19', '6');
INSERT INTO `sys_role_permission` VALUES ('19', '14');
INSERT INTO `sys_role_permission` VALUES ('19', '15');
INSERT INTO `sys_role_permission` VALUES ('19', '16');
INSERT INTO `sys_role_permission` VALUES ('19', '17');
INSERT INTO `sys_role_permission` VALUES ('19', '18');
INSERT INTO `sys_role_permission` VALUES ('19', '21');
INSERT INTO `sys_role_permission` VALUES ('19', '22');
INSERT INTO `sys_role_permission` VALUES ('19', '23');
INSERT INTO `sys_role_permission` VALUES ('19', '30');
INSERT INTO `sys_role_permission` VALUES ('19', '31');
INSERT INTO `sys_role_permission` VALUES ('19', '32');
INSERT INTO `sys_role_permission` VALUES ('19', '34');
INSERT INTO `sys_role_permission` VALUES ('19', '35');
INSERT INTO `sys_role_permission` VALUES ('19', '36');
INSERT INTO `sys_role_permission` VALUES ('19', '38');
INSERT INTO `sys_role_permission` VALUES ('19', '39');
INSERT INTO `sys_role_permission` VALUES ('19', '40');
INSERT INTO `sys_role_permission` VALUES ('19', '42');
INSERT INTO `sys_role_permission` VALUES ('19', '43');
INSERT INTO `sys_role_permission` VALUES ('19', '44');
INSERT INTO `sys_role_permission` VALUES ('19', '46');
INSERT INTO `sys_role_permission` VALUES ('19', '47');
INSERT INTO `sys_role_permission` VALUES ('19', '48');
INSERT INTO `sys_role_permission` VALUES ('19', '49');
INSERT INTO `sys_role_permission` VALUES ('19', '51');
INSERT INTO `sys_role_permission` VALUES ('19', '52');
INSERT INTO `sys_role_permission` VALUES ('19', '53');
INSERT INTO `sys_role_permission` VALUES ('19', '54');
INSERT INTO `sys_role_permission` VALUES ('19', '55');
INSERT INTO `sys_role_permission` VALUES ('19', '56');
INSERT INTO `sys_role_permission` VALUES ('19', '57');
INSERT INTO `sys_role_permission` VALUES ('19', '73');
INSERT INTO `sys_role_permission` VALUES ('19', '74');
INSERT INTO `sys_role_permission` VALUES ('19', '75');
INSERT INTO `sys_role_permission` VALUES ('19', '76');
INSERT INTO `sys_role_permission` VALUES ('19', '77');
INSERT INTO `sys_role_permission` VALUES ('19', '78');
INSERT INTO `sys_role_permission` VALUES ('19', '79');
INSERT INTO `sys_role_permission` VALUES ('19', '86');
INSERT INTO `sys_role_permission` VALUES ('19', '119');
INSERT INTO `sys_role_permission` VALUES ('19', '121');
INSERT INTO `sys_role_permission` VALUES ('19', '124');
INSERT INTO `sys_role_permission` VALUES ('19', '136');
INSERT INTO `sys_role_permission` VALUES ('19', '137');
INSERT INTO `sys_role_permission` VALUES ('19', '150');
INSERT INTO `sys_role_permission` VALUES ('19', '152');
INSERT INTO `sys_role_permission` VALUES ('19', '154');
INSERT INTO `sys_role_permission` VALUES ('19', '155');
INSERT INTO `sys_role_permission` VALUES ('23', '1');
INSERT INTO `sys_role_permission` VALUES ('23', '2');
INSERT INTO `sys_role_permission` VALUES ('23', '3');
INSERT INTO `sys_role_permission` VALUES ('23', '137');
INSERT INTO `sys_role_permission` VALUES ('23', '152');
INSERT INTO `sys_role_permission` VALUES ('23', '154');
INSERT INTO `sys_role_permission` VALUES ('23', '155');
INSERT INTO `sys_role_permission` VALUES ('24', '1');
INSERT INTO `sys_role_permission` VALUES ('24', '2');
INSERT INTO `sys_role_permission` VALUES ('24', '3');
INSERT INTO `sys_role_permission` VALUES ('24', '137');
INSERT INTO `sys_role_permission` VALUES ('24', '150');
INSERT INTO `sys_role_permission` VALUES ('24', '152');
INSERT INTO `sys_role_permission` VALUES ('24', '154');
INSERT INTO `sys_role_permission` VALUES ('24', '155');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `hiredate` datetime DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL COMMENT '上级领导id',
  `available` int(11) DEFAULT NULL COMMENT '是否可用，0不可用，1可用',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码',
  `type` int(11) DEFAULT NULL COMMENT '用户类型[0超级管理员，1管理员，2普通用户]',
  `imgpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像地址',
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '超级管理员', 'admin', '532ac00e86893901af5f0be6b704dbc7', '华北理工大学', '1', '超级管理员', '1', '2018-06-25 11:06:34', null, '1', '1', '0', '2020-03-23/01799649506C49E28301D3AAA242F413.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('3', '吕院长', '10', 'cf208aeb925360f1b0530a648be3c978', '华北理工大学', '1', '管理学院负责人', '3', '2019-12-02 10:49:12', '3', '1', '3', '1', '2020-03-23/65E69326AADA4C8BB570C47F9D187D6D.jpg', 'C788CA8BF69D4974BEE2C4C56ECFC06B');
INSERT INTO `sys_user` VALUES ('29', '姚懿', '101', '584b4ddbb2d2fe18a3397dd70704f4cf', '', '1', '', '7', '2020-03-22 16:00:00', '3', '1', '4', '1', '2020-03-23/C3BA16E4D1C84F0E968275CA0E7A2031.jpg', 'AFB6E6607EAB4C8A93FDC960E421FE41');
INSERT INTO `sys_user` VALUES ('30', '王灏', '102', '4879c0931d505f8ac87b8c989bf47ef3', '', '1', '', '8', null, '3', '1', '5', '1', '2020-03-23/E56EDC88EC5F497CB2A0471F6FA71707.jpg', '7808DF5A39894882A157E3F40F1971EB');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`rid`,`uid`),
  KEY `FK_sys_user_role_2` (`uid`),
  CONSTRAINT `FK_sys_user_role_1` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK_sys_user_role_2` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('3', '19');
INSERT INTO `sys_user_role` VALUES ('29', '24');
INSERT INTO `sys_user_role` VALUES ('30', '23');
