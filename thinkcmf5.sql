/*
 Navicat MySQL Data Transfer

 Source Server         : mariadb
 Source Server Version : 50505
 Source Host           : 192.168.99.100
 Source Database       : thinkcmf5

 Target Server Version : 50505
 File Encoding         : utf-8

 Date: 07/29/2017 22:08:45 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cmf_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float unsigned NOT NULL DEFAULT '10000' COMMENT '排序ID',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
--  Records of `cmf_admin_menu`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '0', '1', '20', 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', '插件管理'), ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理'), ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理'), ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'), ('5', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口'), ('6', '5', '1', '1', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理'), ('7', '6', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'), ('8', '6', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'), ('9', '6', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'), ('10', '6', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'), ('11', '6', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'), ('12', '6', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'), ('13', '6', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'), ('14', '5', '1', '1', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置'), ('15', '14', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'), ('16', '14', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板'), ('17', '14', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交'), ('18', '14', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试'), ('19', '5', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理'), ('20', '19', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表'), ('21', '19', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加'), ('22', '19', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'), ('23', '19', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑'), ('24', '19', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'), ('25', '19', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除'), ('26', '19', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'), ('27', '19', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单'), ('28', '5', '1', '1', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理'), ('29', '28', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航'), ('30', '28', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'), ('31', '28', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航'), ('32', '28', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'), ('33', '28', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航'), ('34', '28', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'), ('35', '34', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'), ('36', '34', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'), ('37', '34', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'), ('38', '34', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'), ('39', '34', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'), ('40', '34', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'), ('41', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表'), ('42', '41', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用'), ('43', '41', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置'), ('44', '41', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'), ('45', '41', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装'), ('46', '41', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新'), ('47', '41', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件'), ('48', '108', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组'), ('49', '48', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理'), ('50', '49', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色'), ('51', '49', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交'), ('52', '49', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色'), ('53', '49', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交'), ('54', '49', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色'), ('55', '49', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限'), ('56', '49', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交'), ('57', '0', '1', '1', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站'), ('58', '57', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原'), ('59', '57', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'), ('60', '5', '1', '1', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理'), ('61', '60', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则'), ('62', '60', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交'), ('63', '60', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑'), ('64', '60', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交'), ('65', '60', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除'), ('66', '60', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用'), ('67', '60', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用'), ('68', '60', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序'), ('69', '60', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL'), ('70', '5', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息'), ('71', '70', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'), ('72', '5', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改'), ('73', '72', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'), ('74', '5', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置'), ('75', '74', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'), ('76', '5', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存'), ('77', '5', '1', '1', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'), ('78', '77', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'), ('79', '77', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'), ('80', '77', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'), ('81', '77', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'), ('82', '77', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'), ('83', '77', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表'), ('84', '83', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加'), ('85', '83', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交'), ('86', '83', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑'), ('87', '83', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交'), ('88', '83', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除'), ('89', '83', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏'), ('90', '83', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示'), ('91', '83', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序'), ('92', '5', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储'), ('93', '92', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交'), ('94', '5', '1', '1', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理'), ('95', '94', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'), ('96', '94', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'), ('97', '94', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'), ('98', '94', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'), ('99', '94', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'), ('100', '94', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'), ('101', '94', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'), ('102', '94', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'), ('103', '94', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'), ('104', '94', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存'), ('105', '94', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'), ('106', '94', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'), ('107', '94', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'), ('108', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理'), ('109', '48', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理'), ('110', '109', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'), ('111', '109', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'), ('112', '109', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'), ('113', '109', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'), ('114', '109', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改'), ('115', '109', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'), ('116', '109', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'), ('117', '109', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'), ('118', '109', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'), ('119', '0', '0', '1', '30', 'portal', 'AdminIndex', 'default', '', '内容管理', 'th', '内容管理'), ('120', '119', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表'), ('121', '120', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章'), ('122', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交'), ('123', '120', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章'), ('124', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交'), ('125', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除'), ('126', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布'), ('127', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶'), ('128', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐'), ('129', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序'), ('130', '119', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表'), ('131', '130', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类'), ('132', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交'), ('133', '130', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类'), ('134', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交'), ('135', '130', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框'), ('136', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序'), ('137', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类'), ('138', '119', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理'), ('139', '138', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面'), ('140', '138', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交'), ('141', '138', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面'), ('142', '138', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交'), ('143', '138', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面'), ('144', '119', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签'), ('145', '144', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签'), ('146', '144', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交'), ('147', '144', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态'), ('148', '144', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签'), ('149', '0', '1', '1', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表'), ('150', '149', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件'), ('151', '108', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组'), ('152', '151', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'), ('153', '152', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'), ('154', '152', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'), ('155', '151', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'), ('156', '155', '2', '0', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_asset`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
--  Records of `cmf_asset`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_asset` VALUES ('5', '8', '1236677', '1500811849', '1', '0', '48eca22c9278bee0fbf2610841db2a1e4e67fda1279160e46033da4bf6e9e2d3', '2016062809947.png', 'portal/20170723/ff4dc211b5b339c15c558e1136fbb7e8.png', '48eca22c9278bee0fbf2610841db2a1e', '1dda12aa5e26ece3ed12f12f7d7f49688d35ceb4', 'png', null), ('6', '8', '222700', '1500811954', '1', '0', 'f3b520455db47434cb194770a2da9d9cd07dbc46bb97eafa25e5ed0b05292fb0', '2017060510491.jpg', '20170723/b02a4154ffd6e136623aebe971d79a69.jpg', 'f3b520455db47434cb194770a2da9d9c', 'aa443ad8c9e610ba6550ac1afc8f404411197389', 'jpg', null), ('7', '8', '153603', '1500813417', '1', '0', '897f8c7b76e4ed952107d9a35c9f981f5990d9e132f3eec082d764b1545ea2e4', '2017060510799.jpg', 'admin/20170723/33c992949e4545f3a374857de49170fb.jpg', '897f8c7b76e4ed952107d9a35c9f981f', '9aaade8093810487b35b5576757ab62d97b4c80b', 'jpg', null), ('8', '8', '77529', '1500813428', '1', '0', '7bdf0a84c9eeeb46f229c06af3a5525800d4edce2dcca3df57d132ee694ca11e', '2017060510590.jpg', 'admin/20170723/647d7198f17f56f1f697e24cc9e3eea5.jpg', '7bdf0a84c9eeeb46f229c06af3a55258', 'de68131dcbcf3b08e247358fdba1a15770008a54', 'jpg', null), ('9', '1', '405191', '1501249454', '1', '0', 'feb671a9a62f9b49eb7a4766f4fa1a802b7ee04d3c21ded4d2574dfa032f525a', 'feb671a9a62f9b49eb7a4766f4fa1a80.jpg', 'admin/20170728/d3da36d056d56f8673373f7abb9576d3.jpg', 'feb671a9a62f9b49eb7a4766f4fa1a80', 'dd8181ecc0c9f56f39d8c3f770bdf25fd91df983', 'jpg', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
--  Table structure for `cmf_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
--  Records of `cmf_auth_rule`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', ''), ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', ''), ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', ''), ('4', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', ''), ('5', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', ''), ('6', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', ''), ('7', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', ''), ('8', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', ''), ('9', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', ''), ('10', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', ''), ('11', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', ''), ('12', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', ''), ('13', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', ''), ('14', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', ''), ('15', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', ''), ('16', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', ''), ('17', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', ''), ('18', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', ''), ('19', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', ''), ('20', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', ''), ('21', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', ''), ('22', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', ''), ('23', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', ''), ('24', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', ''), ('25', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', ''), ('26', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', ''), ('27', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', ''), ('28', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', ''), ('29', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', ''), ('30', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', ''), ('31', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', ''), ('32', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', ''), ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', ''), ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', ''), ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', ''), ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', ''), ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', ''), ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', ''), ('39', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', ''), ('40', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''), ('41', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', ''), ('42', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', ''), ('43', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', ''), ('44', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', ''), ('45', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''), ('46', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', ''), ('47', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', ''), ('48', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', ''), ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', ''), ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', ''), ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', ''), ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', ''), ('53', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', ''), ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', ''), ('55', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', ''), ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', ''), ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', ''), ('58', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', ''), ('59', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', ''), ('60', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', ''), ('61', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', ''), ('62', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', ''), ('63', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', ''), ('64', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', ''), ('65', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', ''), ('66', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', ''), ('67', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', ''), ('68', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', ''), ('69', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', ''), ('70', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', ''), ('71', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', ''), ('72', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', ''), ('73', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', ''), ('74', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', ''), ('75', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', ''), ('76', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', ''), ('77', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', ''), ('78', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', ''), ('79', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', ''), ('80', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', ''), ('81', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', ''), ('82', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', ''), ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', ''), ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', ''), ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', ''), ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', ''), ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', ''), ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', ''), ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', ''), ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', ''), ('91', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', ''), ('92', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', ''), ('93', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''), ('94', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', ''), ('95', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', ''), ('96', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', ''), ('97', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''), ('98', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', ''), ('99', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''), ('100', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', ''), ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', ''), ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', ''), ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', ''), ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', ''), ('105', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', ''), ('106', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', ''), ('107', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', ''), ('108', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', ''), ('109', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', ''), ('110', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', ''), ('111', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', ''), ('112', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', ''), ('113', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', ''), ('114', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', ''), ('115', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', ''), ('116', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', ''), ('117', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', ''), ('118', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', ''), ('119', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', ''), ('120', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', ''), ('121', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', ''), ('122', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', ''), ('123', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', ''), ('124', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', ''), ('125', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', ''), ('126', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', ''), ('127', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', ''), ('128', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', ''), ('129', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', ''), ('130', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', ''), ('131', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', ''), ('132', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', ''), ('133', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', ''), ('134', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', ''), ('135', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', ''), ('136', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '内容管理', ''), ('137', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', ''), ('138', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', ''), ('139', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', ''), ('140', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', ''), ('141', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', ''), ('142', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', ''), ('143', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', ''), ('144', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', ''), ('145', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', ''), ('146', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', ''), ('147', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', ''), ('148', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', ''), ('149', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', ''), ('150', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', ''), ('151', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', ''), ('152', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', ''), ('153', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', ''), ('154', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', ''), ('155', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', ''), ('156', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `createtime` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
--  Table structure for `cmf_hook`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
--  Records of `cmf_hook`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化'), ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始'), ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化'), ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始'), ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤'), ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束'), ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法'), ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束'), ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化'), ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化'), ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码'), ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始'), ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前'), ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始'), ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前'), ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前'), ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前'), ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始'), ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前'), ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始'), ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前'), ('22', '3', '1', '评论区', 'comment', '', '评论区'), ('23', '3', '1', '留言区', 'guestbook', '', '留言区'), ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘'), ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前'), ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前'), ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面'), ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
--  Records of `cmf_hook_plugin`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook_plugin` VALUES ('11', '10000', '1', 'admin_dashboard', 'SystemInfo');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_link`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
--  Records of `cmf_link`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_link` VALUES ('1', '1', '1', '8', 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', ''), ('2', '1', '0', '10000', '', 'http://www.guet.edu.cn', '桂林电子科技大学', '', '_blank', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_nav`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
--  Records of `cmf_nav`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航'), ('2', '0', '底部导航', ''), ('3', '0', '侧边栏导航', '这里主要放的是侧边栏导航');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_nav_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
--  Records of `cmf_nav_menu`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1'), ('17', '1', '0', '1', '10000', '新闻中心', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":8}}', '', ''), ('18', '1', '17', '1', '10000', '行业新闻', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":9}}', '', ''), ('19', '1', '0', '1', '10000', '实验室概况', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":10}}', '', ''), ('20', '1', '0', '1', '10000', '联系我们', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":33}}', '', ''), ('21', '1', '19', '1', '10000', '实验室简介', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":35}}', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_option`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
--  Records of `cmf_option`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_option` VALUES ('7', '1', 'site_info', '{\"site_name\":\"\\u5e7f\\u897f\\u5bc6\\u7801\\u5b66\\u4e0e\\u4fe1\\u606f\\u5b89\\u5168\\u91cd\\u70b9\\u5b9e\\u9a8c\\u5ba4\",\"site_seo_title\":\"\\u5e7f\\u897f\\u5bc6\\u7801\\u5b66\\u4e0e\\u4fe1\\u606f\\u5b89\\u5168\\u91cd\\u70b9\\u5b9e\\u9a8c\\u5ba4\",\"site_seo_keywords\":\"\\u5e7f\\u897f\\u5bc6\\u7801\\u5b66\\u4e0e\\u4fe1\\u606f\\u5b89\\u5168\\u91cd\\u70b9\\u5b9e\\u9a8c\\u5ba4\",\"site_seo_description\":\"\\u5e7f\\u897f\\u5bc6\\u7801\\u5b66\\u4e0e\\u4fe1\\u606f\\u5b89\\u5168\\u91cd\\u70b9\\u5b9e\\u9a8c\\u5ba4\",\"site_icp\":\"\\u6caaICP\\u590713000804\\u53f7-3\",\"site_admin_email\":\"\",\"site_analytics\":\"\",\"urlmode\":\"1\",\"html_suffix\":\"\"}'), ('8', '1', 'storage', '{\"type\":\"Local\"}'), ('9', '1', 'admin_dashboard_widgets', '[{\"name\":\"SystemInfo\",\"is_system\":0},{\"name\":\"system\",\"is_system\":1},{\"name\":\"CmfHub\",\"is_system\":1},{\"name\":\"Contributors\",\"is_system\":1},{\"name\":\"MainContributors\",\"is_system\":1}]'), ('10', '1', 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}'), ('11', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}'), ('12', '1', 'admin_settings', '{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
--  Records of `cmf_plugin`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_plugin` VALUES ('15', '1', '0', '1', '0', 'SystemInfo', '系统信息', '', '', 'ThinkCMF', '', '1.0', '系统信息', '[]'), ('17', '1', '1', '1', '0', 'Weixin', '微信公共平台（服务或订阅号）插件', '', '', 'wuwu', 'http://www.wuwuseo.com', '1.0', '微信公共平台（服务或订阅号）插件', '{\"api_url\":\"192.168.99.100:9091\\/plugin\\/weixin\\/index\\/index.html\",\"appid\":\"\",\"appsecret\":\"\",\"token\":\"\",\"encodingaeskey\":\"\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_plugin_passive`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin_passive`;
CREATE TABLE `cmf_plugin_passive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intype` char(20) NOT NULL DEFAULT 'click' COMMENT '接受消息类型',
  `outtype` char(20) NOT NULL DEFAULT 'text' COMMENT '输出消息类型',
  `mark` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='被动回复规则';

-- ----------------------------
--  Table structure for `cmf_portal_category`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
--  Records of `cmf_portal_category`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category` VALUES ('8', '0', '0', '1', '0', '10000', '新闻中心', '', '', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}'), ('9', '8', '0', '1', '0', '10000', '行业新闻', '这里是行业新闻', '', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}'), ('10', '0', '0', '1', '0', '10000', '实验室概况', '这里显示实验室概况', '', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_category_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
--  Records of `cmf_portal_category_post`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category_post` VALUES ('117', '32', '8', '10000', '1'), ('118', '32', '9', '10000', '1'), ('119', '34', '9', '10000', '1'), ('120', '36', '9', '10000', '1'), ('121', '37', '9', '10000', '1'), ('122', '38', '9', '10000', '1'), ('123', '39', '8', '10000', '1'), ('124', '39', '9', '10000', '1'), ('125', '38', '8', '10000', '1');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `post_parent` (`parent_id`),
  KEY `post_author` (`user_id`),
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
--  Records of `cmf_portal_post`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_post` VALUES ('32', '0', '1', '1', '8', '1', '1', '0', '0', '26', '0', '0', '1500789340', '1501329815', '1500810780', '0', '四川大学陈兴武教授来校讲学', '', 'This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.', '', '\n&lt;p&gt;&lt;img src=&quot;20170723/b02a4154ffd6e136623aebe971d79a69.jpg&quot; title=&quot;2017060510491.jpg&quot; alt=&quot;2017060510491.jpg&quot;&gt;his is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.&lt;/p&gt;\n&lt;p&gt;his is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.&lt;/p&gt;\n&lt;p&gt;his is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('33', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1501076821', '1501076821', '1501076760', '0', '联系我们', '联系我们', '', '', '&lt;p&gt;阿发郭德纲发光时代法规变化还是电脑办公告诉你梵蒂冈和你的土地上&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"contact\"}'), ('34', '0', '1', '1', '1', '1', '1', '0', '0', '62', '0', '0', '1501314356', '1501316540', '1501315440', '0', '我院召开本科教学工作审核评估再动员推进会', '', 'This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.', '', '\n&lt;p&gt;   This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.&lt;/p&gt;\n&lt;p&gt;   This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.&lt;/p&gt;\n&lt;p&gt;   This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('35', '0', '2', '1', '1', '1', '1', '0', '0', '6', '0', '0', '1501319402', '1501319402', '1501319340', '0', '实验室简介', '', '', '', '\n&lt;p&gt;这里是实验室简介时间是见寄你&lt;/p&gt;\n&lt;p&gt;这里是实验室简介时间是见寄你&lt;/p&gt;\n&lt;p&gt;这里是实验室简介时间是见寄你&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;这里是实验室简介时间是见寄你&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;这里是实验室简介时间是见寄你&lt;/p&gt;\n&lt;p&gt;这里是实验室简介时间是见寄你&lt;/p&gt;\n&lt;p&gt;这里是实验室简介时间是见寄你&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 89px;&quot;&gt;&lt;span style=&quot;white-space: normal;&quot;&gt;这里是实验室简介时间是见寄你&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 89px;&quot;&gt;&lt;span style=&quot;white-space: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 89px;&quot;&gt;&lt;span style=&quot;white-space: normal;&quot;&gt;这里是实验室简介时间是见寄你&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 89px;&quot;&gt;&lt;span style=&quot;white-space: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 143px;&quot;&gt;&lt;span style=&quot;white-space: normal;&quot;&gt;这里是实验室简介时间是见寄你&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;position: absolute; width: 1px; height: 1px; overflow: hidden; left: -1000px; white-space: nowrap; top: 143px;&quot;&gt;&lt;span style=&quot;white-space: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"page\"}'), ('36', '0', '1', '1', '1', '1', '1', '0', '0', '8', '0', '0', '1501319614', '1501319614', '1501319584', '0', '马云既然谈笑风生，何须在意媒体解读？', '', '马云既然谈笑风生，何须在意媒体解读？', '', '\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;事情大家都知道了：&lt;a href=&quot;http://online.wsj.com/articles/alibabas-plan-to-help-u-s-exporters-1414962623&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;《华尔街日报》采访了马云&lt;/a&gt;。马云称说“我们在6个月的时间里汇集了超过1000亿美元。这让政府感到担忧。所有的银行都恨我们。我从来没有见过中国的五大银行团结起来，想要扼杀我们。”之后我们就在网络上看到大量标题带有“马云说”和“五大银行想杀我”的标题。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;当然，“外媒：”的字样也少不了。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;很快，&lt;a href=&quot;http://tech.sina.com.cn/i/2014-11-06/doc-icczmvum9627619.shtml&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;马云就辟谣了&lt;/a&gt;，他是这么说的：&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;blockquote style=\'padding: 15px 25px; margin: 0px; border-left: 10px solid rgb(102, 102, 102); background-color: rgb(238, 238, 238); color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; word-wrap: break-word;\'&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; font-size: 17.5px; line-height: 1.25; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;“现在的我明白了很多道理。话不在于你如何讲，而往往在于别人如何听，更可怕的是别人如何写，如何剪接摘取，理解和传播。所谓祸从口出，在今天科技发达的网络世界显得尤其可怕。稍有不慎，灾难可谓大也。”&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; font-size: 17.5px; line-height: 1.25; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;“说对的是应该的，说错了和有争议的话，或者当时的玩笑，就转眼变成可怕的标题。”&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;/blockquote&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;中国新首富马云作为一个实至名归的公众人物，其言论被媒体和公众拿来消费一下，实在是再正常不过的事情。马云的演讲口才一直为人称道，极具感染力和煽动性。幽默和口才是马云这位中国互联网领军人物个人魅力不可或缺的一部分。马云大可不必辟谣，所谓“五大银行想杀我”，着实没有人——至少我个人没有——当真。五大银行哪里能蠢到做出杀马云这种事情？&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;再说马云也不是第一次语出惊人，&lt;a href=&quot;http://www.iceo.com.cn/renwu/27/2012/1012/258605.shtml&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;两年前马云就说过&lt;/a&gt;：&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;blockquote style=\'padding: 15px 25px; margin: 0px; border-left: 10px solid rgb(102, 102, 102); background-color: rgb(238, 238, 238); color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; word-wrap: break-word;\'&gt;&lt;p style=\'margin-top: 0px; margin-bottom: 0px; font-size: 17.5px; line-height: 1.25; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;“男人的长相往往和才华成反比。”&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;这两天马云在杭州和贝克汉姆见面，媒体要是翻出这句话来解读一番，那贝克汉姆怎么说？有长相没才华？&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;什么长相、才华啊，这都是浮云。财富才是实打实的。2006 年，马云&lt;a href=&quot;http://www.hangzhou.com.cn/20060801/ca1243611.htm&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;在接受媒体采访&lt;/a&gt;时，亲口说到：&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;blockquote style=\'padding: 15px 25px; margin: 0px; border-left: 10px solid rgb(102, 102, 102); background-color: rgb(238, 238, 238); color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; word-wrap: break-word;\'&gt;&lt;p style=\'margin-top: 0px; margin-bottom: 0px; font-size: 17.5px; line-height: 1.25; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;“如果有一天国家需要支付宝，我想都不会想，会在一秒钟内把这个公司（支付宝）全部送给国家。”&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;支付宝啊，大伙儿想想，这么大一个公司，马云说送就送了，可能吗？大家看过读过之后，聊聊天，哈哈一笑也就过去了。不过你能说马云是说着玩的吗？也不好说，弄不好马云真是认真的。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;类似这种公众人物言辞被曲解的事故，实在太多了。比如在冷战时期，美国前总统里根曾开玩笑地宣布:“美国同胞们，我很荣幸地告诉你们，我已经签署法令宣布苏联为非法区域。美国将在五分钟内开始轰炸。”&lt;a href=&quot;http://www.baidu.com/link?url=gEAXSuHDhNMcNvcho9kQNW6BE7i8EnwA4-zJZCsrJph5gRXdJDnDI4vM2DivVV4b9lK_ma8C5Zpx5ErtNSFK8a&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;这句玩笑被广播给了全世界。&lt;/a&gt;最严重的结果嘛…… 无非就是引发世界大战吧。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;马云曾说：&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;blockquote style=\'padding: 15px 25px; margin: 0px; border-left: 10px solid rgb(102, 102, 102); background-color: rgb(238, 238, 238); color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; word-wrap: break-word;\'&gt;&lt;p style=\'margin-top: 0px; margin-bottom: 0px; font-size: 17.5px; line-height: 1.25; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;ebay 是大海里的鲨鱼，淘宝则是长江里的鳄鱼，鳄鱼在大海里与鲨鱼搏斗，结果可想而知，我们要把鲨鱼引到长江里来。&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;现在阿里巴巴上市了，淘宝显然已经不是长江里的鳄鱼了。游到国际大海里的阿里集团，&lt;a href=&quot;http://www.businessinsider.com/jack-ma-got-drunk-and-bought-half-a-soccer-team--and-other-things-he-just-said-2014-10&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;难免也要面对不领风情的外媒同行&lt;/a&gt;。诚然，马云“谈笑风生”的水平还是差了一截。当然，我们新闻界也要学习。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;a href=&quot;http://www.huxiu.com/article/44291/1.html&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;在这个一首小苹果能够红遍全网的时代&lt;/a&gt;，还有多少人关心马云“五大银行要杀我”的话出处哪里、语境如何呢？“五大银行要杀我”，也无非和小苹果的歌词和旋律一样，终将被遗忘在茫茫的网络当中。顺便问一句：现在还有多少人记得三年前的高铁惨案？&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;说了这么多，无非就是瞎扯淡。扯淡之余，觉得马云的不少言论还是很警醒人的。比如这句：&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 0px; color: rgb(85, 85, 85); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;&lt;br style=&quot;word-wrap: break-word;&quot;&gt;&lt;/p&gt;\n&lt;blockquote style=\'padding: 15px 25px; margin: 0px; border-left: 10px solid rgb(102, 102, 102); background-color: rgb(238, 238, 238); color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; word-wrap: break-word;\'&gt;&lt;p style=\'margin-top: 0px; margin-bottom: 0px; font-size: 17.5px; line-height: 1.25; word-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;;\'&gt;那些忠告我们，指出我们错误的人，才是真正的朋友。&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('37', '0', '1', '1', '1', '1', '1', '0', '0', '7', '0', '0', '1501319667', '1501319667', '1501319632', '0', '更换34亿张银行卡，为什么应当由用户买单', '', '更换34亿张银行卡，为什么应当由用户买单更换34亿张银行卡，为什么应当由用户买单更换34亿张银行卡，为什么应当由用户买单更换34亿张银行卡，为什么应当由用户买单', '', '\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;明年，我国将停止发行磁条卡并逐步将现有磁条转为芯片卡。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt; 磁条卡先天不足，很容易复制，全国各地银行卡盗刷案频发。每年，仅被公安机关破获的银行卡犯罪案件就数以万计。而芯片卡具备密钥加密技术，加密信息随机生成，目前在全球范围内还未发生过芯片银行卡被复制导致伪卡欺诈的实际案例。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;芯片卡替代磁条卡是大势所趋，如果按每张芯片卡成本10元计算，全部更换已发行的34亿张磁条需要340亿元。谁来买单是个经常学问题。 &lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;所谓经济学问题，就是要寻求以最小代价（消耗资源少）换取最大满足的解决方案。如果度量“满足”呢？比较好的指标是“边际收益”——就是某人愿为一单位某种东西付出的最大金额。满足这种感觉折算成数字，累加、比较起来就非常方便了。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;“边际收益”是因人、因时、因地而异了。比如路人甲饿了，愿为一个汉堡付20元，一个汉堡的边际收益就是20元。假如汉堡成本为6元、售价为12元，那么这个“饿人”将获得8元的“消费者剩余”，而汉堡店获得6元钱毛利润。可见，市场经济中自愿的、无欺诈的交易是可以双赢的。如果吃了一个汉堡不怎么饿了，此人愿为第2个付8元，汉堡的边际成本就是4元。路人甲不会用12元再买一个，除非汉堡店有优惠，如第二个汉堡8元。 &lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;34亿张卡，除了未成年的儿童或深山里的隐士，人均得4､5张吧。上学时至少有张卡存生活费、工作时办卡打工资（经常、换个单位就要重新办张卡）、办房贷车贷时得办单独的卡、还有被各式各样的“优惠”吸引办的信用卡……手头有八张、十张银行卡的大有人在。不少卡早已经“睡死过去”，连密码都忘到九霄云外了。在需求更换磁条卡时，只有用户本人明白这张卡对自己的价值。如果它愿意花20元换为芯片卡，但银行收10元工本费（这也是社会为制造这张卡此付出的成本），他就获得10元的“消费者剩余”。如果这张卡对他的价值只有5元、甚至0元，他就会放弃换卡。社会亦无需为此付出成本。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;于是，最终的换卡数一定显著地小于34亿张，比如说是14亿张，与34亿张全部由银出资换相比，为社会节约了20亿张卡的制造成本——200亿！&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('38', '0', '1', '1', '1', '1', '1', '0', '0', '16', '0', '0', '1501319721', '1501319839', '1501319700', '0', '今日嗅评：Netflix模式可能会推动“六大”们改变，但是要真正“动摇”还山高路远', '', '今日嗅评：Netflix模式可能会推动“六大”们改变，但是要真正“动摇”还山高路远今日嗅评：Netflix模式可能会推动“六大”们改变，但是要真正“动摇”还山高路远今日嗅评：Netflix模式可能会推动“六大”们改变，但是要真正“动摇”还山高路远', '', '\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;http://www.huxiu.com/article/44656/1.html&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;Netflix，正从边缘动摇好莱坞“六大”的利润根基&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-family: 楷体; word-wrap: break-word;&quot;&gt;陈昌业：在好莱坞这条垂直的工业链上，最核心的并不是内容生产与制作，亦不在于放映端口的规模化放映产能，而在于联结内容与消费的发行——发行才是核心竞争力。而Netflix要从版权来源和海外观众入手改变游戏规则。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;褚少军：&lt;/strong&gt;标题里的“边缘”一词倒是挺点睛的，目前来说，应该只是Netflix想去蚕食一点好莱坞原有的市场份额，但好莱坞，以及以Netflix总的份额仍然是增加的，所以Netflix甚至只是抢了部分增量市场。Netflix动摇“六大”的利润根基可能比较符合也仅仅只是精英群体的观点，毕竟精英群体很早就叫嚣不看电视，将来也可能最先不走进电影院，前一阵也有精英群体叫嚣电影院会消失。但其实不能忘记除了掌控话语权的精英派，对于电影等产业链的营收来说，草根用户或者说除了精英派之外的用户才是其收入的主要来源。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;再者，“六大”不可能一成不变，毕竟当Netflix们正真动摇到其利润根基，甚至是察觉可能会动摇利润根基之前，“六大”们也会改变，原产业链的公司尽管革新起来因为既得利益而阻碍重重，但一旦动起来，其优势还是很明显的。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;总的来说，Netflix模式可能会促进或者推动“六大”们改变，但是要真正“动摇”还山高路远。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;http://www.huxiu.com/article/44835/1.html&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;小米品牌：图腾化的胜利&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-family: 楷体; word-wrap: break-word;&quot;&gt;虫二投稿：未来小米面临两线作战，迎接更年轻、更出位、更不按常理出牌，更不守规则的挑战者；另一方面还要直面其他手机品牌的挑战，例如从荣耀开始越活越明白的华为，即将推出互联网手机品牌的联想，始终不肯消停下来的魅族，以及缓过气来的不死哥HTC。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;笑嘻嘻的坏蛋aj：&lt;/strong&gt;小米的胜利也只是暂时的，即使做的再强大前面也有诺基亚，况且小米公司的理念并不明确和和有特色，他只是拉低了整个手机行业的价格，难以有真正的创新，至少现在还没有大的创新，配不上图腾化的胜利。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;还看今朝：&lt;/strong&gt;我至今都认为，小米仅仅是在营销上做了创新，但是很成功。好吧，他们还把高配置搭在差的工艺设计上，正如神舟的电脑，没人这么干过。好在人们换手机很快，不太会诟病。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;Ly-听风：&lt;/strong&gt;无论你如何否定。你都必须肯定小米在互联网手机上的领先。无论你如何研究学习，你都必须承认，那个时代过去了。流量成本不一样了。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;http://www.huxiu.com/article/44851/1.html&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;院士谈转基因：基因育种方式与传统农业育种方式没有本质区别&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-family: 楷体; word-wrap: break-word;&quot;&gt;吴孔明：中国工程院院士、中国农科院副院长吴孔明澄清转基因六大传言：肿瘤发病与转基因大豆油有关？；转基因育种违背生物进化规律？；西方国家对转基因食品“零容忍”？ 现在吃了没事但子孙后代呢......&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;Rna：&lt;/strong&gt;和一位美国学者聊过：非转基因食品又叫做heirloom 食品，翻译成传家宝食品或者祖传食品，从这个词就能看出非转基因食品的可贵。为什么当今世界上研究一个基因的功能选用的是基因敲除模型而不是基因插入模型？就是因为要评价一个基因的功能要在整个基因组中除掉这个基因才能看出来。转基因食品仅仅是把基因插进去了，这种插入式的改造模式是很难知道对整个基因组的影响的，危害暂时没有表现出来就是无害吗？&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"\"}'), ('39', '0', '1', '1', '1', '1', '1', '0', '0', '22', '0', '0', '1501319763', '1501319763', '1501319734', '0', '彼得·泰尔：机器人是人类的救星，而非敌人', '', '彼得·泰尔：机器人是人类的救星，而非敌人彼得·泰尔：机器人是人类的救星，而非敌人', '', '\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;span style=&quot;font-family: 楷体; word-wrap: break-word;&quot;&gt;虎嗅注：本文为硅谷投资家彼得·泰尔为英国《金融时报》撰写的文章，题为《&lt;a href=&quot;http://www.ft.com/cms/s/0/db02d75c-4400-11e4-baa7-00144feabdc0.html#axzz3GgaAUVYe&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;Robots are our saviours, not the enemy&lt;/a&gt;》，由FT中文网翻译。彼得·泰尔在硅谷素以逆向思维、带有哲学思辩的独立思考著称。前不久，虎嗅刚摘选了他的新书《Zero to One》中的内容，&lt;a href=&quot;http://www.huxiu.com/article/43880/1.html&quot; target=&quot;_blank&quot; style=&quot;color: rgb(0, 136, 204); text-decoration-line: none; word-wrap: break-word;&quot;&gt;详见这里&lt;/a&gt;。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;与当年指导宇航员登月的计算机相比，今天每一部智能手机的数据处理能力都要胜出几千倍。如果摩尔定律依旧准确，未来计算机将更加强大。根据摩尔定律，计算能力大约每两年增加一倍。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;但今日的美国人较少再幻想计算机将帮人类实现丰功伟绩，而是越来越恐惧计算机将夺走我们的工作。20世纪60年代时，许多人对节省人力的技术抱持乐观态度，而今这种乐观已让位于一个可怕的问题：你的劳动在未来有利用价值吗？或者是，你会被机器取代吗？&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;这种害怕被取代的情绪并不新鲜。15年前，美国工人曾担心来自墨西哥廉价劳力的竞争。1992年美国总统候选人罗斯•佩罗(Ross Perot)曾预言，一旦《北美自由贸易协定》(North American Free Trade Agreement)签订，那么沿着美国南部边境，人们将听到一个“巨大的吮吸声”。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;今天人们认为自己又再度听到这个声音，但当他们循声追踪，找到的却不是蒂华纳（Tijuana，墨西哥西北部城市）的廉价工厂，而是得克萨斯州的服务器群。美国人害怕“不久的将来”的科技，因为他们将此视作“不久的以前”出现的全球化的重演。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;但两种情况有很大不同：电脑不像他国人类同胞，它们无法取代美国劳工。人和机器擅长的事情是不同的。&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;人类可以在复杂情况下制定计划和作出决定。我们不擅长分析海量数据。计算机则正相反，它们擅长高效处理数据，但很难作出任何人都能轻易作出的基本判断。&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;我是从担任Paypal首席执行官的经验中得出这一结论的。在21世纪头十年中期，我们挺过了互联网泡沫破灭，得到了快速增长，但我们遇到了一个大问题：我们每月因信用卡欺诈起码要损失1000万美元。由于我们每分钟要处理成百上千笔交易，所以不可能对每笔交易进行审查。由人力构成的质量管理团队绝不可能审查得这么快。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;我们试过用编写软件来解决这一问题，该软件可以自动识别虚假交易，并实时取消。但事实很快证明这种方法行不通，只一两个小时后，窃贼们就搞懂了软件，然后改变策略以欺骗我们的算法。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;然而人工分析师不会轻易被犯罪分子的适应性策略骗过。因此我们采取混合的方法重新编写了软件，先由计算机标记出最可疑的交易，再由人工操作者作出最终判断。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;这种人机合作令Paypal得以维持经营，反过来又让几十万家小企业能够收到付款，令它们得以在互联网上茁壮成长。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;尽管大多数Paypal客户以为我们只是一家软件公司，他们甚至从没听过人机合作解决方案，但没有它的话，我们不可能获得这样的成绩。&lt;strong style=&quot;word-wrap: break-word;&quot;&gt;大多数人因对自动化的着迷，而忽视人类在软件运行中的作用，忘记如果没有人类操作，软件自身毫无价值。&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;风险投资家马克•安德烈森(Marc Andreessen)曾宣称：“软件正吞噬整个世界。”但这种担心是缺乏理性的。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;我们似乎已经忘了计算机不会吃东西。无论是对工作还是其他任何事物，它们都没有任何欲望。它们是不存在的。计算机所需要的不过是少许电力，而且就连这点需求它们都没聪明到主动提出。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;与计算机不同的是，人类确实要吃东西：无论是上海的鱼翅还是圣地亚哥的鱼肉玉米饼，人人都需要食物。人类还要喝饮料、钻石油、开采矿藏——而这些物资都在同一颗行星上。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;所以美国消费者一方面得益于中国新近的全球化，能够买到便宜的玩具和纺织品，另一方面也要支付更高昂的油钱，因为中国新兴车主们的需求推高了汽油价格。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;而且人类的欲望并不仅限于维持生存，随着全球化推进，人们的要求将越来越多。中国数亿农民既然终于可以吃饱，他们自然希望肉的比例能够提高。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;这个世界的资源是有限的，全球化带来的一大长期威胁就是资源需求急剧上升。所以我们需要新技术来减轻这一威胁。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;人类与电脑合作，将可以致力于因为电脑而出现的新事务，倘非如此，我们将处于一个不平静的世界。在这个世界里，所有旧式工作将保持不变，工资将下降，物价将上涨，因为整个世界的人们将竞相工作，竞相消耗物资。&lt;/p&gt;\n&lt;p style=\'margin-top: 0px; margin-bottom: 10px; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;人类最大的敌人是人类自己，人类最重要的盟友是机器，它们让我们能够去做新的事情。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"\",\"template\":\"\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_tag`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
--  Table structure for `cmf_portal_tag_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
--  Table structure for `cmf_recycle_bin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
--  Table structure for `cmf_role`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
--  Records of `cmf_role`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！'), ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
--  Records of `cmf_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role_user` VALUES ('11', '1', '8'), ('13', '2', '9');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_route`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
--  Table structure for `cmf_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
--  Records of `cmf_slide`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_slide` VALUES ('1', '1', '0', '一张幻灯片', 'top_slide'), ('2', '1', '0', '侧边栏幻灯片', 'side');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_slide_item`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
--  Records of `cmf_slide_item`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_slide_item` VALUES ('1', '1', '1', '10000', '这是第一张图片', '20170723/b02a4154ffd6e136623aebe971d79a69.jpg', '', '', '1234asfsdfv', '1234asfsdfv', null), ('2', '1', '1', '10000', '这里是第二章图片', 'admin/20170723/647d7198f17f56f1f697e24cc9e3eea5.jpg', '', '', '这里是第二章图片', '这里是第二章图片', null), ('3', '2', '1', '10000', '实验室照片', 'admin/20170728/d3da36d056d56f8673373f7abb9576d3.jpg', '', '', '实验室照片', '实验室照片', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_theme`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cmf_theme`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme` VALUES ('19', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板'), ('20', '0', '0', '0', '0', 'gcis', 'gcis', '1.0', 'http://www.holylander.com', '', 'holyland', 'http://www.holylander.com', 'zh-cn', '广西密码学与信息安全重点实验室', '广西密码学与信息安全重点实验室网站');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_theme_file`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cmf_theme_file`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme_file` VALUES ('105', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null), ('106', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null), ('107', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":1,\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":1,\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"8\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('108', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('109', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('110', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null), ('111', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null), ('112', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"\\u5e7f\\u897f\\u5bc6\\u7801\\u5b66\\u4e0e\\u4fe1\\u606f\\u5b89\\u5168\\u5b9e\\u9a8c\\u5ba4\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null), ('113', '0', '10', 'gcis', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null), ('114', '0', '10', 'gcis', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null), ('115', '0', '5', 'gcis', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u65b0\\u95fb\\u5217\\u8868\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"hottest_articles\":{\"title\":\"\\u65b0\\u95fb\\u5217\\u8868\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u65b0\\u95fb\\u5217\\u8868\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"hottest_articles\":{\"title\":\"\\u65b0\\u95fb\\u5217\\u8868\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('116', '0', '10', 'gcis', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('117', '0', '10', 'gcis', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('118', '0', '10', 'gcis', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null), ('119', '1', '0', 'gcis', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null), ('120', '1', '1', 'gcis', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"\\u5e7f\\u897f\\u5bc6\\u7801\\u5b66\\u4e0e\\u4fe1\\u606f\\u5b89\\u5168\\u91cd\\u70b9\\u5b9e\\u9a8c\\u5ba4\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"\\u5e7f\\u897f\\u5bc6\\u7801\\u5b66\\u4e0e\\u4fe1\\u606f\\u5b89\\u5168\\u91cd\\u70b9\\u5b9e\\u9a8c\\u5ba4\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_third_party_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
--  Table structure for `cmf_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
--  Records of `cmf_user`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user` VALUES ('1', '1', '0', '0', '1501224049', '0', '0', '1500787424', '1', 'admin', '###700308e09a58d7cab47bc1df686c3c59', 'admin', '978573910@qq.com', '', '', '', '192.168.99.1', '', ''), ('8', '1', '0', '0', '1500814492', '0', '0', '0', '1', 'holyland', '###700308e09a58d7cab47bc1df686c3c59', '', '2542052868@qq.com', '', '', '', '192.168.99.1', '', ''), ('9', '1', '0', '0', '1500813947', '0', '0', '0', '1', 'tsd', '###1e10bcc7a4093f7d5d68811b5b2144a0', '', '123@123.com', '', '', '', '192.168.99.1', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_user_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
--  Table structure for `cmf_user_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
--  Table structure for `cmf_user_login_attempt`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
--  Table structure for `cmf_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
--  Records of `cmf_user_token`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_token` VALUES ('3', '1', '1516776049', '1501224049', 'a2cfb8d37a4997bfb27819f1f2766728a10e3b1d2174853f903752945d2e3c1d', 'web'), ('4', '8', '1516366492', '1500814492', '99dcd60c23b2af538aafd2f747d7b61cb0928c40ebc67bbda1f3bbe872434029', 'web');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_verification_code`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

SET FOREIGN_KEY_CHECKS = 1;
