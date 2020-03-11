/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : filems

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2020-03-11 14:24:37
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '公司总部', '1', '最高权力机关', '华北理工大学', '1', '1', '2020-03-08 14:49:02');
INSERT INTO `sys_dept` VALUES ('3', '1', '档案部', '1', '负责档案的管理，权限分配', '华北理工大学档案', '1', '2', '2020-03-08 06:51:31');
INSERT INTO `sys_dept` VALUES ('4', '1', '学生部', '1', '可以上传各种文件', '华北理工大学全体学生', '1', '3', '2020-03-08 06:52:24');
INSERT INTO `sys_dept` VALUES ('5', '1', '教职工部', '1', '可以上传教师文件', '华北理工大学全体教职工', '1', '4', '2020-03-08 06:53:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

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
INSERT INTO `sys_loginfo` VALUES ('297', '超级管理员-admin', '0:0:0:0:0:0:0:1', '2020-03-11 06:19:32');

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
INSERT INTO `sys_notice` VALUES ('36', '我叫栗园扣', '啊 这是我的毕业设计的', '2020-03-10 05:26:19', '超级管理员');

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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', 'menu', '项目文档管理系统', null, '&#xe68e;', '', '', '1', '1', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', 'menu', '共享文档', null, '&#xe857;', '', '', '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('5', '1', 'menu', '系统管理', null, '&#xe614;', '', '', '1', '5', '1');
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
INSERT INTO `sys_permission` VALUES ('125', '2', 'menu', '上传文档', null, '&#xe609;', '', '', '1', '90', '1');
INSERT INTO `sys_permission` VALUES ('126', '2', 'menu', '文档检索', null, '&#xe615;', '', '', '1', '91', '1');
INSERT INTO `sys_permission` VALUES ('128', '125', 'permission', '上传权限', 'usr:upfile', null, null, null, '0', '1', '1');
INSERT INTO `sys_permission` VALUES ('129', '125', 'permission', '下载权限', 'usr:download', null, null, null, '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('130', '125', 'permission', '更新权限', 'usr:update', null, null, null, '0', '3', '1');
INSERT INTO `sys_permission` VALUES ('131', '126', 'permission', '下载文档', 'all:download', null, null, null, '0', '1', '1');
INSERT INTO `sys_permission` VALUES ('132', '126', 'permission', '删除文档', 'all:del', null, null, null, '0', '2', '1');
INSERT INTO `sys_permission` VALUES ('133', '125', 'permission', '删除权限', 'usr:del', null, null, null, '0', '4', '1');
INSERT INTO `sys_permission` VALUES ('134', '126', 'permission', '更新文档', 'all:update', null, null, null, '0', '3', '1');
INSERT INTO `sys_permission` VALUES ('135', '125', 'menu', '测试菜单', null, '', '', '', '1', '92', '1');
INSERT INTO `sys_permission` VALUES ('136', '6', 'menu', '缓存管理', null, '&#xe62e;', '/sys/toCacheManager', '', '0', '22', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('19', '超级管理员', '超级管理员', '1', '2020-03-08 07:05:55');
INSERT INTO `sys_role` VALUES ('20', '档案管理员', '档案管理员', '1', '2020-03-08 07:06:18');
INSERT INTO `sys_role` VALUES ('21', '学生', '学生', '1', '2020-03-08 07:06:39');
INSERT INTO `sys_role` VALUES ('22', '老师', '老师', '1', '2020-03-08 07:07:44');

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
INSERT INTO `sys_role_permission` VALUES ('20', '1');
INSERT INTO `sys_role_permission` VALUES ('20', '2');
INSERT INTO `sys_role_permission` VALUES ('20', '5');
INSERT INTO `sys_role_permission` VALUES ('20', '6');
INSERT INTO `sys_role_permission` VALUES ('20', '14');
INSERT INTO `sys_role_permission` VALUES ('20', '15');
INSERT INTO `sys_role_permission` VALUES ('20', '16');
INSERT INTO `sys_role_permission` VALUES ('20', '17');
INSERT INTO `sys_role_permission` VALUES ('20', '18');
INSERT INTO `sys_role_permission` VALUES ('20', '21');
INSERT INTO `sys_role_permission` VALUES ('20', '22');
INSERT INTO `sys_role_permission` VALUES ('20', '23');
INSERT INTO `sys_role_permission` VALUES ('20', '30');
INSERT INTO `sys_role_permission` VALUES ('20', '31');
INSERT INTO `sys_role_permission` VALUES ('20', '32');
INSERT INTO `sys_role_permission` VALUES ('20', '34');
INSERT INTO `sys_role_permission` VALUES ('20', '35');
INSERT INTO `sys_role_permission` VALUES ('20', '36');
INSERT INTO `sys_role_permission` VALUES ('20', '38');
INSERT INTO `sys_role_permission` VALUES ('20', '39');
INSERT INTO `sys_role_permission` VALUES ('20', '40');
INSERT INTO `sys_role_permission` VALUES ('20', '42');
INSERT INTO `sys_role_permission` VALUES ('20', '43');
INSERT INTO `sys_role_permission` VALUES ('20', '44');
INSERT INTO `sys_role_permission` VALUES ('20', '46');
INSERT INTO `sys_role_permission` VALUES ('20', '47');
INSERT INTO `sys_role_permission` VALUES ('20', '48');
INSERT INTO `sys_role_permission` VALUES ('20', '49');
INSERT INTO `sys_role_permission` VALUES ('20', '51');
INSERT INTO `sys_role_permission` VALUES ('20', '52');
INSERT INTO `sys_role_permission` VALUES ('20', '53');
INSERT INTO `sys_role_permission` VALUES ('20', '54');
INSERT INTO `sys_role_permission` VALUES ('20', '55');
INSERT INTO `sys_role_permission` VALUES ('20', '56');
INSERT INTO `sys_role_permission` VALUES ('20', '57');
INSERT INTO `sys_role_permission` VALUES ('20', '73');
INSERT INTO `sys_role_permission` VALUES ('20', '74');
INSERT INTO `sys_role_permission` VALUES ('20', '75');
INSERT INTO `sys_role_permission` VALUES ('20', '76');
INSERT INTO `sys_role_permission` VALUES ('20', '77');
INSERT INTO `sys_role_permission` VALUES ('20', '78');
INSERT INTO `sys_role_permission` VALUES ('20', '79');
INSERT INTO `sys_role_permission` VALUES ('20', '86');
INSERT INTO `sys_role_permission` VALUES ('20', '119');
INSERT INTO `sys_role_permission` VALUES ('20', '121');
INSERT INTO `sys_role_permission` VALUES ('20', '124');
INSERT INTO `sys_role_permission` VALUES ('21', '1');
INSERT INTO `sys_role_permission` VALUES ('21', '2');
INSERT INTO `sys_role_permission` VALUES ('22', '1');
INSERT INTO `sys_role_permission` VALUES ('22', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '超级管理员', 'admin', '532ac00e86893901af5f0be6b704dbc7', '系统深处的男人', '1', '超级管理员', '1', '2018-06-25 11:06:34', null, '1', '1', '0', '2020-03-06/2CD8B8E4F6724BC1807DC0C58F68C924.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES ('3', '栗园扣', '1001', 'cf208aeb925360f1b0530a648be3c978', '华北理工大学', '0', '普通用户', '1', '2019-12-02 10:49:12', null, '1', '3', '1', '2020-03-06/8FA43F374D7B4C1685D062AA0F6D01D0.jpg', 'C788CA8BF69D4974BEE2C4C56ECFC06B');
INSERT INTO `sys_user` VALUES ('7', '栗园扣-学生', '1002', 'ba1223331a5819549b3e038295dba5ed', '华北理工大学', '0', '学生', '4', '2019-12-03 09:52:18', '3', '1', '7', '1', '2020-03-06/8FA43F374D7B4C1685D062AA0F6D01D0.jpg', '96FA12C5E9A9483E929FDB900B210595');
INSERT INTO `sys_user` VALUES ('10', '栗园口-档案', '1003', '6c520841912c853052f58692898fc920', '华北理工大学', '0', '华北理工大学', '3', '2019-12-03 00:00:00', '3', '1', '9', '1', '2020-03-06/8FA43F374D7B4C1685D062AA0F6D01D0.jpg', 'AD0F264E41EA49ACA209C281E6F95CDD');
INSERT INTO `sys_user` VALUES ('17', '栗园扣-教职工', '1004', '136de836553a7916d4a1e3fe80441081', '华北理工大学', '0', '教职工', '5', '2020-03-07 16:00:00', '3', '1', '14', '1', '/images/defaultusertitle.jpg', '0984665CCD684B088CFAFC9D8FB316C7');

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
INSERT INTO `sys_user_role` VALUES ('7', '21');
INSERT INTO `sys_user_role` VALUES ('10', '20');
INSERT INTO `sys_user_role` VALUES ('17', '22');
