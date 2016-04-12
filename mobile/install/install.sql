/*
EcTouch 商创版 sql文件 by 模板堂

Date: 2014-04-21 13:39:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ecs_touch_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_ad_position`;
CREATE TABLE `ecs_touch_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL auto_increment,
  `position_name` varchar(60) NOT NULL default '',
  `ad_width` smallint(5) unsigned NOT NULL default '0',
  `ad_height` smallint(5) unsigned NOT NULL default '0',
  `position_desc` varchar(255) NOT NULL default '',
  `position_style` text NOT NULL,
  PRIMARY KEY  (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_ad_position
-- ----------------------------
INSERT INTO `ecs_touch_ad_position` VALUES ('1', '手机版首页Banner', '360', '168', '', '<ul>\r\n{foreach from=$ads item=ad}\r\n  <li>{$ad}</li>\r\n{/foreach}\r\n</ul>\r\n');

-- ----------------------------
-- Table structure for ecs_touch_ad
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_ad`;
CREATE TABLE `ecs_touch_ad` (
  `ad_id` smallint(5) unsigned NOT NULL auto_increment,
  `position_id` smallint(5) unsigned NOT NULL default '0',
  `media_type` tinyint(3) unsigned NOT NULL default '0',
  `ad_name` varchar(60) NOT NULL default '',
  `ad_link` varchar(255) NOT NULL default '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(11) NOT NULL default '0',
  `link_man` varchar(60) NOT NULL default '',
  `link_email` varchar(60) NOT NULL default '',
  `link_phone` varchar(60) NOT NULL default '',
  `click_count` mediumint(8) unsigned NOT NULL default '0',
  `enabled` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_ad
-- ----------------------------
INSERT INTO `ecs_touch_ad` VALUES ('1', '1', '0', '1', '', 'http://demo.ecmoban.com/shop/data/afficheimg/1394415487832396515.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_touch_ad` VALUES ('2', '1', '0', '2', '', 'http://demo.ecmoban.com/shop/data/afficheimg/1394415508290057627.jpg', '1396339200', '1525161600', '', '', '', '0', '1');
INSERT INTO `ecs_touch_ad` VALUES ('3', '1', '0', '3', '', 'http://demo.ecmoban.com/shop/data/afficheimg/1394415497283455138.jpg', '1396339200', '1525161600', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for ecs_touch_nav
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_nav`;
CREATE TABLE `ecs_touch_nav` (
  `id` mediumint(8) NOT NULL auto_increment,
  `ctype` varchar(10) default NULL,
  `cid` smallint(5) unsigned default NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_nav
-- ----------------------------
INSERT INTO `ecs_touch_nav` VALUES ('1', '', '0', '全部分类', '1', '0', '0', 'cat_all.php', 'icon_indexn_01.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('2', null, '0', '帮助中心', '1', '0', '0', 'article_cat.php?id=3', 'icon_indexn_02.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('3', '', '0', '个人中心', '1', '0', '0', 'user.php', 'icon_indexn_03.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('4', null, '0', '分享', '1', '0', '0', 'ectouch.php?act=share', 'icon_indexn_04.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('5', null, '0', '联系我们', '1', '0', '0', 'ectouch.php?act=contact', 'icon_indexn_05.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('6', null, '0', '论坛', '1', '0', '0', 'http://bbs.ecmoban.com', 'icon_indexn_06.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('7', null, '0', '客户端', '1', '0', '0', 'http://www.ecmoban.com/app/ecmoban.apk', 'icon_indexn_07.png', 'middle');
INSERT INTO `ecs_touch_nav` VALUES ('8', null, '0', '电脑版', '1', '0', '0', '../', 'icon_indexn_08.png', 'middle');

-- ----------------------------
-- Table structure for ecs_touch_payment
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_payment`;
CREATE TABLE `ecs_touch_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL auto_increment,
  `pay_code` varchar(20) NOT NULL default '',
  `pay_name` varchar(120) NOT NULL default '',
  `pay_fee` varchar(10) NOT NULL default '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL default '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `is_cod` tinyint(1) unsigned NOT NULL default '0',
  `is_online` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ecs_touch_shipping
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_shipping`;
CREATE TABLE `ecs_touch_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL auto_increment,
  `shipping_code` varchar(20) NOT NULL default '',
  `shipping_name` varchar(120) NOT NULL default '',
  `shipping_desc` varchar(255) NOT NULL default '',
  `insure` varchar(10) NOT NULL default '0',
  `support_cod` tinyint(1) unsigned NOT NULL default '0',
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) default NULL,
  `config_lable` text,
  `print_model` tinyint(1) default '0',
  `shipping_order` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_shipping
-- ----------------------------
INSERT INTO `ecs_touch_shipping` SELECT * FROM `ecs_shipping`;

-- ----------------------------
-- Table structure for ecs_touch_shipping_area
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_shipping_area`;
CREATE TABLE `ecs_touch_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL auto_increment,
  `shipping_area_name` varchar(150) NOT NULL default '',
  `shipping_id` tinyint(3) unsigned NOT NULL default '0',
  `configure` text NOT NULL,
  PRIMARY KEY  (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecs_touch_shipping_area
-- ----------------------------
INSERT INTO `ecs_touch_shipping_area` SELECT * FROM `ecs_shipping_area`;

-- ----------------------------
-- Table structure for ecs_touch_shop_config
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_shop_config`;
CREATE TABLE `ecs_touch_shop_config` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `parent_id` smallint(5) unsigned NOT NULL default '0',
  `code` varchar(30) NOT NULL default '',
  `type` varchar(10) NOT NULL default '',
  `store_range` varchar(255) NOT NULL default '',
  `store_dir` varchar(255) NOT NULL default '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=907 DEFAULT CHARSET=utf8;

-- ----------------------------
-- 增加短信接口配置项
-- ----------------------------
DELETE FROM ecs_shop_config where code = 'sms_ecmoban_user';
DELETE FROM ecs_shop_config where code = 'sms_ecmoban_password';
DELETE FROM ecs_shop_config where code = 'sms_signin';
INSERT INTO `ecs_shop_config` (parent_id, code, type, store_range, store_dir, value, sort_order)VALUES (8, 'sms_ecmoban_user', 'text', '', '', '', 0);
INSERT INTO `ecs_shop_config` (parent_id, code, type, store_range, store_dir, value, sort_order)VALUES (8, 'sms_ecmoban_password', 'password', '', '', '', 0);
INSERT INTO `ecs_shop_config` (parent_id, code, type, store_range, store_dir, value, sort_order)VALUES (8, 'sms_signin', 'select', '1,0', '', '0', 1);

-- ----------------------------
-- Records of ecs_touch_shop_config
-- ----------------------------
INSERT INTO `ecs_touch_shop_config` SELECT * FROM `ecs_shop_config`;
UPDATE `ecs_touch_shop_config` SET `type`='hidden' WHERE `code`='wap';

-- ----------------------------
-- 表的结构 `ecs_touch_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_touch_template`;
CREATE TABLE IF NOT EXISTS `ecs_touch_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- 转存表中的数据 `ecs_touch_template`
-- ----------------------------
INSERT INTO `ecs_touch_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES
('index', 'touch首页广告区域', '/library/ad_position.lbi', 0, 1, 4, 4, 'default', ''),
('index', '中部主区域', '/library/recommend_hot.lbi', 2, 0, 10, 0, 'default', ''),
('index', '中部主区域', '/library/recommend_new.lbi', 1, 0, 10, 0, 'default', ''),
('index', '中部主区域', '/library/recommend_best.lbi', 0, 0, 10, 0, 'default', '');

-- -------------------------- 微信通 --------------------------

-- ----------------------------
-- 表的结构 `wxch_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_cfg`;
CREATE TABLE `wxch_cfg` (
  `cfg_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `cfg_name` varchar(64) NOT NULL DEFAULT '',
  `cfg_value` varchar(100) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `cfg_name` (`cfg_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- ----------------------------
-- 转存表中的数据 `wxch_cfg`
-- ----------------------------
INSERT INTO `wxch_cfg` (`cfg_id`, `cfg_name`, `cfg_value`, `autoload`) VALUES
(1, 'murl', 'mobile/', 'yes'),
(2, 'baseurl', 'http://ecshop273utf8.com/shop/', 'yes'),
(3, 'imgpath', 'local', 'yes'),
(4, 'plustj', 'true', 'yes'),
(5, 'userpwd', 'ecmoban', 'yes'),
(6, 'cxbd', 'true', 'yes'),
(8, 'oauth', 'false', 'yes'),
(7, 'bd', 'web', 'yes'),
(9, 'goods', 'false', 'yes'),
(10, 'article', 'article.php?id=', 'yes');

-- ----------------------------
-- 表的结构 `wxch_config`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_config`;
CREATE TABLE `wxch_config` (
  `id` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `appid` char(18) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `access_token` TEXT NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- 转存表中的数据 `wxch_config`
-- ----------------------------
INSERT INTO `wxch_config` (`id`, `token`, `appid`, `appsecret`, `access_token`, `dateline`) VALUES (1, 'weixin', '', '', '', 0);

-- ----------------------------
-- 表的结构 `wxch_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_coupon`;
CREATE TABLE `wxch_coupon` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

-- ----------------------------
-- 转存表中的数据 `wxch_coupon`
-- ----------------------------
INSERT INTO `wxch_coupon` (`id`, `type_id`) VALUES (1, 4);

-- ----------------------------
-- 表的结构 `wxch_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_keywords`;
CREATE TABLE `wxch_keywords` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- ----------------------------
-- 表的结构 `wxch_keywords_article`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_keywords_article`;
CREATE TABLE `wxch_keywords_article` (
  `kws_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kws_id`,`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- 转存表中的数据 `wxch_keywords_article`
-- ----------------------------
INSERT INTO `wxch_keywords_article` (`kws_id`, `article_id`) VALUES
(95, 25),
(95, 26),
(95, 27),
(95, 28),
(95, 29),
(95, 30),
(95, 31),
(96, 23),
(96, 24),
(96, 25);

-- ----------------------------
-- 表的结构 `wxch_lang`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_lang`;
CREATE TABLE `wxch_lang` (
  `lang_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(64) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- ----------------------------
-- 转存表中的数据 `wxch_lang`
-- ----------------------------
INSERT INTO `wxch_lang` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'regmsg', '<p>欢迎关注微信公众号</p>'),
(2, 'help', '功能说明：\r\n输入news显示新品\r\n输入hot显示热销\r\n输入best显示推荐\r\n输入bd进入绑定会员流程\r\n输入ddcx查询最后一个订单\r\n输入kdcx查询最后一个订单中的快递\r\n输入ddlb显示多个订单信息\r\n输入help显示帮助说明'),
(3, 'coupon', '欢迎关注微信公众号,您已经领取过优惠卷'),
(4, 'coupon1', '欢迎关注微信公众号,活动期间关注送'),
(5, 'coupon2', '欢迎关注微信公众号,优惠卷已送完'),
(6, 'coupon3', '相关功能'),
(7, 'qdok', '签到成功+'),
(8, 'qdno', '签到数次已用完'),
(9, 'qdstop', '已经关闭了签到'),
(10, 'bd', '快速绑定会员帐号，享受我们提供给你更全面的服务'),
(11, 'prize_egg', '砸金蛋抽奖规则'),
(12, 'prize_dzp', '大转盘抽奖活动说明');

-- ----------------------------
-- 表的结构 `wxch_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_menu`;
CREATE TABLE `wxch_menu` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(6) NOT NULL,
  `level` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(250) NOT NULL,
  `aid` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=19;

-- ----------------------------
-- 转存表中的数据 `wxch_menu`
-- ----------------------------
INSERT INTO `wxch_menu` (`id`, `menu_type`, `level`, `name`, `value`, `aid`) VALUES
(1, 'click', 1, '商品查看', '', 0),
(2, 'click', 1, '会员功能', '', 0),
(3, 'click', 1, '更多..', '', 0),
(4, 'click', 2, '热销产品', 'hot', 1),
(5, 'click', 2, '精品推荐', 'best', 1),
(6, 'click', 2, '新款推荐', 'news', 1),
(7, 'click', 2, '', '', 1),
(8, 'click', 2, '', '', 1),
(9, 'click', 2, '会员绑定', 'bd', 2),
(10, 'click', 2, '重新绑定', 'cxbd', 2),
(11, 'click', 2, '订单查询', 'ddcx', 2),
(12, 'click', 2, '', '', 2),
(13, 'click', 2, '', '', 2),
(14, 'click', 2, '帮忙说明', 'help', 3),
(15, 'click', 2, '订单快递', 'kdcx', 3),
(16, 'click', 2, '菜单回复', 'cdhf', 3),
(17, 'view', 2, '首页', 'http://m.ecmoban.com', 3),
(18, 'click', 2, '', '', 3);

-- ----------------------------
-- 表的结构 `wxch_message`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_message`;
CREATE TABLE `wxch_message` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `w_message` text NOT NULL,
  `message` text NOT NULL,
  `belong` int(9) unsigned NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wxid` (`wxid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- ----------------------------
-- 表的结构 `wxch_msg`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_msg`;
CREATE TABLE `wxch_msg` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `function` varchar(30) NOT NULL,
  `command` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13;

-- ----------------------------
-- 转存表中的数据 `wxch_msg`
-- ----------------------------
INSERT INTO `wxch_msg` (`id`, `name`, `function`, `command`) VALUES
(1, '新品', 'news', 'xk 新款 News'),
(2, '精品', 'best', 'Best 精品'),
(3, '热销', 'hot', 'Hot 热销'),
(4, '绑定会员', 'bd', 'BD Bd 绑定会员'),
(5, '重新绑定', 'cxbd', '重新绑定 Cxbd'),
(6, '订单列表', 'ddlb', '订单列表 Ddlb'),
(7, '订单查询', 'ddcx', '订单查询 Ddcx'),
(8, '订单快递', 'kdcx', '订单快递 Kdcx'),
(9, '帮助说明', 'help', '帮助说明 Help 帮助'),
(10, '砸金蛋', 'zjd', '砸金蛋 Zjd'),
(11, '签到', 'qiandao', 'qiandao 签到'),
(12, '大转盘', 'dzp', '大转盘 Dzp');

-- ----------------------------
-- 表的结构 `wxch_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_oauth`;
CREATE TABLE `wxch_oauth` (
  `oid` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12;

-- ----------------------------
-- 转存表中的数据 `wxch_oauth`
-- ----------------------------
INSERT INTO `wxch_oauth` (`oid`, `name`, `contents`, `count`, `status`) VALUES
(1, '手机版网站首页', 'http://m.ecmoban.com/', 1, 1);

-- ----------------------------
-- 表的结构 `wxch_order`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_order`;
CREATE TABLE `wxch_order` (
  `id` tinyint(1) NOT NULL,
  `order_name` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `autoload` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- 转存表中的数据 `wxch_order`
-- ----------------------------
INSERT INTO `wxch_order` (`id`, `order_name`, `title`, `image`, `content`, `autoload`) VALUES
(1, 'order', '发货提醒', 'images/201401/1388925596106500893.jpg', '<p>&nbsp;ffffff</p>', 'yes'),
(2, 'reorder', '订单确认提醒', 'images/201401/1389555522246530163.png', 'fff', 'yes'),
(3, 'pay', '成功支付', '', '已经成功支付', 'yes');

-- ----------------------------
-- 表的结构 `wxch_pay`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_pay`;
CREATE TABLE `wxch_pay` (
  `id` int(1) NOT NULL,
  `appid` char(18) NOT NULL,
  `paysignkey` char(128) NOT NULL,
  `partnerkey` char(32) NOT NULL,
  `appsecret` char(32) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- 转存表中的数据 `wxch_pay`
-- ----------------------------
INSERT INTO `wxch_pay` (`id`, `appid`, `paysignkey`, `partnerkey`, `appsecret`, `dateline`) VALUES
(1, '','','', '', 0);

-- ----------------------------
-- 表的结构 `wxch_point`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_point`;
CREATE TABLE `wxch_point` (
  `point_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `point_name` varchar(64) NOT NULL DEFAULT '',
  `point_value` int(3) unsigned NOT NULL,
  `point_num` int(3) NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`point_id`),
  UNIQUE KEY `option_name` (`point_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11;

-- ----------------------------
-- 转存表中的数据 `wxch_point`
-- ----------------------------
INSERT INTO `wxch_point` (`point_id`, `point_name`, `point_value`, `point_num`, `autoload`) VALUES
(1, 'news', 5, 2, 'yes'),
(2, 'best', 15, 1, 'yes'),
(3, 'hot', 5, 1, 'yes'),
(4, 'bd', 30, 1, 'yes'),
(5, 'ddcx', 5, 1, 'yes'),
(6, 'kdcx', 5, 1, 'yes'),
(7, 'zjd', 5, 0, 'no'),
(8, 'qiandao', 10, 1, 'yes'),
(9, 'dzp', 10, 1, 'yes');

-- ----------------------------
-- 表的结构 `wxch_point_record`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_point_record`;
CREATE TABLE `wxch_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- ----------------------------
-- 表的结构 `wxch_qr`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_qr`;
CREATE TABLE `wxch_qr` (
  `qid` int(7) NOT NULL AUTO_INCREMENT,
  `type` varchar(2) NOT NULL,
  `expire_seconds` int(4) NOT NULL,
  `action_name` varchar(30) NOT NULL,
  `scene_id` int(7) NOT NULL,
  `ticket` varchar(120) NOT NULL,
  `scene` varchar(200) NOT NULL,
  `qr_path` varchar(200) NOT NULL,
  `subscribe` int(8) unsigned NOT NULL,
  `scan` int(8) unsigned NOT NULL,
  `function` varchar(100) NOT NULL,
  `affiliate` int(8) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
UPDATE `wxch_qr` SET `type` = 'qr';

-- ----------------------------
-- 表的结构 `wxch_user`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_user`;
CREATE TABLE `wxch_user` (
  `uid` int(7) NOT NULL AUTO_INCREMENT,
  `subscribe` tinyint(1) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `language` varchar(50) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(10) unsigned NOT NULL,
  `localimgurl` varchar(200) NOT NULL,
  `setp` smallint(2) unsigned NOT NULL,
  `uname` varchar(50) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `affiliate` int(8) UNSIGNED NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- ----------------------------
-- 会员等级
-- ----------------------------
DELETE FROM `ecs_user_rank` where `rank_id` = 99;
INSERT INTO `ecs_user_rank` (`rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank`) VALUES (99, '微信用户', 0, 0, 100, 1, 1);

-- -------------------------- 砸金蛋 --------------------------

-- ----------------------------
-- 表的结构 `wxch_prize`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize`;
CREATE TABLE `wxch_prize` (
  `pid` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `fun` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `num` int(2) unsigned NOT NULL,
  `count` int(8) NOT NULL,
  `loop` int(3) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- ----------------------------
-- 转存表中的数据 `wxch_prize`
-- ----------------------------
INSERT INTO `wxch_prize` (`pid`, `title`, `fun`, `status`, `num`, `count`, `loop`, `starttime`, `endtime`, `dateline`) VALUES
(1, '正在测试的', 'egg', 0, 1, 6, 1, 1394899200, 1397491200, 1395648563);

-- ----------------------------
-- 表的结构 `wxch_prize_append`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_append`;
CREATE TABLE `wxch_prize_append` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `prize_id` int(4) unsigned NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- ----------------------------
-- 转存表中的数据 `wxch_prize_append`
-- ----------------------------
INSERT INTO `wxch_prize_append` (`id`, `prize_id`, `prize_name`, `prize_value`) VALUES
(1, 1, '10万汽车1', 1),
(2, 1, 'Macbook2', 2),
(3, 1, 'Ipad3', 3),
(4, 1, '话费100元4', 4),
(5, 1, '优惠卷5', 5),
(6, 1, '未中奖6', 10),
(7, 7, '10万汽车', 1),
(8, 7, 'Macbook', 3),
(9, 7, 'Ipad', 5),
(10, 7, '未中奖', 1000),
(11, 7, '', 0),
(12, 7, '', 0);

-- ----------------------------
-- 表的结构 `wxch_prize_cnum`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_cnum`;
CREATE TABLE `wxch_prize_cnum` (
  `pcid` int(5) NOT NULL AUTO_INCREMENT,
  `paid` int(5) NOT NULL,
  `pid` int(4) NOT NULL,
  `prize_name` varchar(64) NOT NULL,
  `prize_value` int(8) unsigned NOT NULL,
  `user_count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`pcid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- ----------------------------
-- 转存表中的数据 `wxch_prize_cnum`
-- ----------------------------
INSERT INTO `wxch_prize_cnum` (`pcid`, `paid`, `pid`, `prize_name`, `prize_value`, `user_count`) VALUES
(1, 5, 1, '未中奖5', 5, 2),
(2, 10, 7, '未中奖', 1000, 7);

-- ----------------------------
-- 表的结构 `wxch_prize_count`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_count`;
CREATE TABLE `wxch_prize_count` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `pid` int(5) NOT NULL,
  `wxid` char(28) NOT NULL,
  `num` int(5) NOT NULL,
  `count` int(5) unsigned NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- ----------------------------
-- 转存表中的数据 `wxch_prize_count`
-- ----------------------------
INSERT INTO `wxch_prize_count` (`cid`, `pid`, `wxid`, `num`, `count`, `lasttime`, `dateline`) VALUES
(1, 1, 'oo1v-tir7oHXTL42WpwAlNsLTZlc', 0, 5, 1395980256, 1395475456);

-- ----------------------------
-- 表的结构 `wxch_prize_register`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_register`;
CREATE TABLE `wxch_prize_register` (
  `rid` int(8) NOT NULL AUTO_INCREMENT,
  `pid` int(7) unsigned NOT NULL,
  `wxid` char(28) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `wxid` (`wxid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- ----------------------------
-- 表的结构 `wxch_prize_users`
-- ----------------------------
DROP TABLE IF EXISTS `wxch_prize_users`;
CREATE TABLE `wxch_prize_users` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL DEFAULT '',
  `fun` varchar(10) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `prize_id` int(5) DEFAULT NULL,
  `prize_name` varchar(64) DEFAULT NULL,
  `prize_sn` varchar(35) NOT NULL,
  `register` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `yn` varchar(3) NOT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prize_id` (`prize_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- `wxch_ver`
--
DROP TABLE IF EXISTS `wxch_ver`;
CREATE TABLE `wxch_ver` (
  `vid` tinyint(1) NOT NULL,
  `type` varchar(5) NOT NULL,
  `ver` varchar(8) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wxch_ver`
--
INSERT INTO `wxch_ver` (`vid`, `type`, `ver`, `dateline`) VALUES
(1, 'ent', '20140507', 1399362212);



DROP TABLE IF EXISTS `wxch_keywords1`;
CREATE TABLE `wxch_keywords1` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `is_start` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

#
# Data for table "wxch_keywords1"
#

/*!40000 ALTER TABLE `wxch_keywords1` DISABLE KEYS */;
INSERT INTO `wxch_keywords1` VALUES (14,'关注回复图文','关注回复图文',4,'',2,1,0),(26,'关注回复图文','关注回复图文',4,'',0,1,0),(27,'关注回复文本','关注回复文本',3,'欢迎光临 &nbsp;创客科技.做最专业的技术支持和最完善的售后模式！',31,1,1);




-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_card`
--

CREATE TABLE IF NOT EXISTS `ecs_user_card` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ct_id` int(10) unsigned NOT NULL DEFAULT '0',
  `card_level` varchar(60) NOT NULL DEFAULT '',
  `card_no` varchar(60) NOT NULL DEFAULT '',
  `card_pass` varchar(60) NOT NULL DEFAULT '',
  `card_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_type` varchar(60) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `bind_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `true_name` varchar(60) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `is_show` int(1) unsigned NOT NULL DEFAULT '0',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_no` (`card_no`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2001 ;

--
-- 导出表中的数据 `ecs_user_card`
--

INSERT INTO `ecs_user_card` (`id`, `user_id`, `ct_id`, `card_level`, `card_no`, `card_pass`, `card_status`, `send_type`, `add_time`, `bind_time`, `user_money`, `pay_points`, `rank_points`, `true_name`, `address`, `mobile`, `email`, `sex`, `is_show`, `des`) VALUES
(1017, 0, 1, '', '00017', '28151091', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1016, 0, 1, '', '00016', '66565069', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1015, 0, 1, '', '00015', '97839664', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1014, 0, 1, '', '00014', '17084015', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1013, 0, 1, '', '00013', '70446646', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1001, 0, 1, '', '00001', '52900783', 0, '', 1345454357, 1345454313, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1002, 0, 1, '', '00002', '63226686', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1003, 0, 1, '', '00003', '99941381', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1004, 0, 1, '', '00004', '88021973', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1005, 0, 1, '', '00005', '84854100', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1504, 0, 1, '', '00504', '99825996', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1503, 0, 1, '', '00503', '74922122', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1502, 0, 1, '', '00502', '24232509', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1501, 0, 1, '', '00501', '98249781', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1500, 0, 1, '', '00500', '27134516', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1499, 0, 1, '', '00499', '59117608', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1498, 0, 1, '', '00498', '81959433', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1497, 0, 1, '', '00497', '74292013', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1496, 0, 1, '', '00496', '22510496', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1495, 0, 1, '', '00495', '26514197', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1494, 0, 1, '', '00494', '10643889', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1493, 0, 1, '', '00493', '89368438', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1492, 0, 1, '', '00492', '11835795', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1491, 0, 1, '', '00491', '78956091', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1490, 0, 1, '', '00490', '28444173', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1489, 0, 1, '', '00489', '29800167', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1488, 0, 1, '', '00488', '60430282', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1487, 0, 1, '', '00487', '65498082', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1486, 0, 1, '', '00486', '57701268', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1485, 0, 1, '', '00485', '36359710', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1484, 0, 1, '', '00484', '74137665', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1483, 0, 1, '', '00483', '69177701', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1482, 0, 1, '', '00482', '29391043', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1481, 0, 1, '', '00481', '79303211', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1480, 0, 1, '', '00480', '92124199', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1479, 0, 1, '', '00479', '21197831', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1478, 0, 1, '', '00478', '32398121', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1477, 0, 1, '', '00477', '43011761', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1476, 0, 1, '', '00476', '88403607', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1475, 0, 1, '', '00475', '70449187', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1474, 0, 1, '', '00474', '55435008', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1473, 0, 1, '', '00473', '59516925', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1472, 0, 1, '', '00472', '45950461', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1471, 0, 1, '', '00471', '35027617', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1470, 0, 1, '', '00470', '20651495', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1469, 0, 1, '', '00469', '16836231', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1468, 0, 1, '', '00468', '54932843', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1467, 0, 1, '', '00467', '66478741', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1466, 0, 1, '', '00466', '98267042', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1465, 0, 1, '', '00465', '24301880', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1464, 0, 1, '', '00464', '36717845', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1463, 0, 1, '', '00463', '63862067', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1462, 0, 1, '', '00462', '32169715', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1461, 0, 1, '', '00461', '27622096', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1460, 0, 1, '', '00460', '91812609', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1459, 0, 1, '', '00459', '59890494', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1458, 0, 1, '', '00458', '48844577', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1457, 0, 1, '', '00457', '53551077', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1456, 0, 1, '', '00456', '13310114', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1455, 0, 1, '', '00455', '77376646', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1454, 0, 1, '', '00454', '79002449', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1453, 0, 1, '', '00453', '94066370', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1452, 0, 1, '', '00452', '98685386', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1451, 0, 1, '', '00451', '84102635', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1450, 0, 1, '', '00450', '68931690', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1449, 0, 1, '', '00449', '61630716', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1448, 0, 1, '', '00448', '67632827', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1447, 0, 1, '', '00447', '32557208', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1446, 0, 1, '', '00446', '66231901', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1445, 0, 1, '', '00445', '71867616', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1444, 0, 1, '', '00444', '57961289', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1443, 0, 1, '', '00443', '62012269', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1442, 0, 1, '', '00442', '56845750', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1441, 0, 1, '', '00441', '39029309', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1440, 0, 1, '', '00440', '76932948', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1439, 0, 1, '', '00439', '48410118', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1438, 0, 1, '', '00438', '66354573', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1437, 0, 1, '', '00437', '72272281', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1436, 0, 1, '', '00436', '75052836', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1435, 0, 1, '', '00435', '60314207', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1434, 0, 1, '', '00434', '75522607', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1433, 0, 1, '', '00433', '58525269', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1432, 0, 1, '', '00432', '81410535', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1431, 0, 1, '', '00431', '76268916', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1430, 0, 1, '', '00430', '77891788', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1429, 0, 1, '', '00429', '90532062', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1428, 0, 1, '', '00428', '15663232', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1427, 0, 1, '', '00427', '74405909', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1426, 0, 1, '', '00426', '53100928', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1425, 0, 1, '', '00425', '81625363', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1424, 0, 1, '', '00424', '56149813', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1423, 0, 1, '', '00423', '72915563', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1422, 0, 1, '', '00422', '74454102', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1421, 0, 1, '', '00421', '31902509', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1420, 0, 1, '', '00420', '88585085', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1419, 0, 1, '', '00419', '50893302', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1418, 0, 1, '', '00418', '76739236', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1417, 0, 1, '', '00417', '94613867', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1416, 0, 1, '', '00416', '66021416', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1415, 0, 1, '', '00415', '27694406', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1414, 0, 1, '', '00414', '68231547', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1413, 0, 1, '', '00413', '97749081', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1412, 0, 1, '', '00412', '26417926', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1411, 0, 1, '', '00411', '69408593', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1410, 0, 1, '', '00410', '89405306', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1409, 0, 1, '', '00409', '60962574', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1408, 0, 1, '', '00408', '35390767', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1407, 0, 1, '', '00407', '95074392', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1406, 0, 1, '', '00406', '37432330', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1405, 0, 1, '', '00405', '26346762', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1404, 0, 1, '', '00404', '29713228', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1403, 0, 1, '', '00403', '40269956', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1402, 0, 1, '', '00402', '51869509', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1401, 0, 1, '', '00401', '89290833', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1400, 0, 1, '', '00400', '84346065', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1399, 0, 1, '', '00399', '93790945', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1398, 0, 1, '', '00398', '62227923', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1397, 0, 1, '', '00397', '17736411', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1396, 0, 1, '', '00396', '46091764', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1395, 0, 1, '', '00395', '52419919', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1394, 0, 1, '', '00394', '82222302', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1393, 0, 1, '', '00393', '88036561', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1392, 0, 1, '', '00392', '11910437', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1391, 0, 1, '', '00391', '52200040', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1390, 0, 1, '', '00390', '89910961', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1389, 0, 1, '', '00389', '72033216', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1388, 0, 1, '', '00388', '39222724', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1387, 0, 1, '', '00387', '24093657', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1386, 0, 1, '', '00386', '61005484', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1385, 0, 1, '', '00385', '13563566', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1384, 0, 1, '', '00384', '82581942', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1383, 0, 1, '', '00383', '14453123', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1382, 0, 1, '', '00382', '85378765', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1381, 0, 1, '', '00381', '75372202', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1380, 0, 1, '', '00380', '65556438', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1379, 0, 1, '', '00379', '41335971', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1378, 0, 1, '', '00378', '86005976', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1377, 0, 1, '', '00377', '18848037', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1376, 0, 1, '', '00376', '11553532', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1375, 0, 1, '', '00375', '62124677', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1374, 0, 1, '', '00374', '80304419', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1373, 0, 1, '', '00373', '20344644', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1372, 0, 1, '', '00372', '21532491', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1371, 0, 1, '', '00371', '40083735', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1370, 0, 1, '', '00370', '83827967', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1369, 0, 1, '', '00369', '29359524', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1368, 0, 1, '', '00368', '76992038', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1367, 0, 1, '', '00367', '53834984', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1366, 0, 1, '', '00366', '60657075', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1365, 0, 1, '', '00365', '69788865', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1364, 0, 1, '', '00364', '82093116', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1363, 0, 1, '', '00363', '29705083', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1362, 0, 1, '', '00362', '97247985', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1361, 0, 1, '', '00361', '67953452', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1360, 0, 1, '', '00360', '99232275', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1359, 0, 1, '', '00359', '82680887', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1358, 0, 1, '', '00358', '12731990', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1357, 0, 1, '', '00357', '25819623', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1356, 0, 1, '', '00356', '52996755', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1355, 0, 1, '', '00355', '14392896', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1354, 0, 1, '', '00354', '55421564', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1353, 0, 1, '', '00353', '55937686', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1352, 0, 1, '', '00352', '77928779', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1351, 0, 1, '', '00351', '17204051', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1350, 0, 1, '', '00350', '42641395', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1349, 0, 1, '', '00349', '18147313', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1348, 0, 1, '', '00348', '84554826', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1347, 0, 1, '', '00347', '92603335', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1346, 0, 1, '', '00346', '48704299', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1345, 0, 1, '', '00345', '86266203', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1344, 0, 1, '', '00344', '40843373', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1343, 0, 1, '', '00343', '32599268', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1342, 0, 1, '', '00342', '89546934', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1341, 0, 1, '', '00341', '88727552', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1340, 0, 1, '', '00340', '97117525', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1339, 0, 1, '', '00339', '72363318', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1338, 0, 1, '', '00338', '11948134', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1337, 0, 1, '', '00337', '48922059', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1336, 0, 1, '', '00336', '62847369', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1335, 0, 1, '', '00335', '84682446', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1334, 0, 1, '', '00334', '62804523', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1333, 0, 1, '', '00333', '14861052', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1332, 0, 1, '', '00332', '55454712', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1331, 0, 1, '', '00331', '27132651', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1330, 0, 1, '', '00330', '71730963', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1329, 0, 1, '', '00329', '17911956', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1328, 0, 1, '', '00328', '63680797', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1327, 0, 1, '', '00327', '96002972', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1326, 0, 1, '', '00326', '17276745', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1325, 0, 1, '', '00325', '73139942', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1324, 0, 1, '', '00324', '50145939', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1323, 0, 1, '', '00323', '39108510', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1322, 0, 1, '', '00322', '92408954', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1321, 0, 1, '', '00321', '36269719', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1320, 0, 1, '', '00320', '81033972', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1319, 0, 1, '', '00319', '34696750', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1318, 0, 1, '', '00318', '63596204', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1317, 0, 1, '', '00317', '18019904', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1316, 0, 1, '', '00316', '36095278', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1315, 0, 1, '', '00315', '51235051', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1314, 0, 1, '', '00314', '90445913', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1313, 0, 1, '', '00313', '68199127', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1312, 0, 1, '', '00312', '77256399', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1311, 0, 1, '', '00311', '14468615', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1310, 0, 1, '', '00310', '15623570', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1309, 0, 1, '', '00309', '54846762', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1308, 0, 1, '', '00308', '68736232', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1307, 0, 1, '', '00307', '19872306', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1306, 0, 1, '', '00306', '98365621', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1305, 0, 1, '', '00305', '95507045', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1304, 0, 1, '', '00304', '85190070', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1303, 0, 1, '', '00303', '30022735', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1302, 0, 1, '', '00302', '47171317', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1301, 0, 1, '', '00301', '17827352', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1300, 0, 1, '', '00300', '18677840', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1299, 0, 1, '', '00299', '48548298', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1298, 0, 1, '', '00298', '98780698', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1297, 0, 1, '', '00297', '64853683', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1296, 0, 1, '', '00296', '95878170', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1295, 0, 1, '', '00295', '47862463', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1294, 0, 1, '', '00294', '18588648', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1293, 0, 1, '', '00293', '62242723', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1292, 0, 1, '', '00292', '24893233', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1291, 0, 1, '', '00291', '11469790', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1290, 0, 1, '', '00290', '95948365', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1289, 0, 1, '', '00289', '75726832', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1288, 0, 1, '', '00288', '44078172', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1287, 0, 1, '', '00287', '42097257', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1286, 0, 1, '', '00286', '51210812', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1285, 0, 1, '', '00285', '15926836', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1284, 0, 1, '', '00284', '85279670', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1283, 0, 1, '', '00283', '47810562', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1282, 0, 1, '', '00282', '11939773', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1281, 0, 1, '', '00281', '45552283', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1280, 0, 1, '', '00280', '72366050', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1279, 0, 1, '', '00279', '11965545', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1278, 0, 1, '', '00278', '53543713', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1277, 0, 1, '', '00277', '46850160', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1276, 0, 1, '', '00276', '40840611', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1275, 0, 1, '', '00275', '47767345', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1274, 0, 1, '', '00274', '85597829', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1273, 0, 1, '', '00273', '30501329', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1272, 0, 1, '', '00272', '60311701', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1271, 0, 1, '', '00271', '98090258', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1270, 0, 1, '', '00270', '18008311', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1269, 0, 1, '', '00269', '49268798', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1268, 0, 1, '', '00268', '92657599', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1267, 0, 1, '', '00267', '79367704', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1266, 0, 1, '', '00266', '36146482', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1265, 0, 1, '', '00265', '11021475', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1264, 0, 1, '', '00264', '56641418', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1263, 0, 1, '', '00263', '26965074', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1262, 0, 1, '', '00262', '54611503', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1261, 0, 1, '', '00261', '85308232', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1260, 0, 1, '', '00260', '76854074', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1259, 0, 1, '', '00259', '12026072', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1258, 0, 1, '', '00258', '69294854', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1257, 0, 1, '', '00257', '61159648', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1256, 0, 1, '', '00256', '92785165', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1255, 0, 1, '', '00255', '96937782', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1254, 0, 1, '', '00254', '72778944', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1253, 0, 1, '', '00253', '13195171', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1252, 0, 1, '', '00252', '43949427', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1251, 0, 1, '', '00251', '17543021', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1250, 0, 1, '', '00250', '25324469', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1249, 0, 1, '', '00249', '30026427', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1248, 0, 1, '', '00248', '98152035', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1247, 0, 1, '', '00247', '54847750', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1246, 0, 1, '', '00246', '11470459', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1245, 0, 1, '', '00245', '42480719', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1244, 0, 1, '', '00244', '67180358', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1243, 0, 1, '', '00243', '92589255', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1242, 0, 1, '', '00242', '77405690', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1241, 0, 1, '', '00241', '97766522', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1240, 0, 1, '', '00240', '95463266', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1239, 0, 1, '', '00239', '40275109', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1238, 0, 1, '', '00238', '12938225', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1237, 0, 1, '', '00237', '39859668', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1236, 0, 1, '', '00236', '11965255', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1235, 0, 1, '', '00235', '75756079', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1234, 0, 1, '', '00234', '16979485', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1233, 0, 1, '', '00233', '30073698', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1232, 0, 1, '', '00232', '32501031', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1231, 0, 1, '', '00231', '58056420', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1230, 0, 1, '', '00230', '84459759', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1229, 0, 1, '', '00229', '94798564', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1228, 0, 1, '', '00228', '61589090', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1227, 0, 1, '', '00227', '61524215', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1226, 0, 1, '', '00226', '13611598', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1225, 0, 1, '', '00225', '89545876', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1224, 0, 1, '', '00224', '18894543', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1223, 0, 1, '', '00223', '64907367', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1222, 0, 1, '', '00222', '47220040', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1221, 0, 1, '', '00221', '20128334', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1220, 0, 1, '', '00220', '65133226', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1219, 0, 1, '', '00219', '43495905', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1218, 0, 1, '', '00218', '49811489', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1217, 0, 1, '', '00217', '83593937', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1216, 0, 1, '', '00216', '39319318', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1215, 0, 1, '', '00215', '48374171', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1214, 0, 1, '', '00214', '81721508', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1213, 0, 1, '', '00213', '68531630', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1212, 0, 1, '', '00212', '53975326', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1211, 0, 1, '', '00211', '31331667', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1210, 0, 1, '', '00210', '97233246', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1209, 0, 1, '', '00209', '21762048', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1208, 0, 1, '', '00208', '63596770', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1207, 0, 1, '', '00207', '67902801', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1206, 0, 1, '', '00206', '79415664', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1205, 0, 1, '', '00205', '87775522', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1204, 0, 1, '', '00204', '94883377', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1203, 0, 1, '', '00203', '66401650', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1202, 0, 1, '', '00202', '46971699', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1201, 0, 1, '', '00201', '30395027', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1200, 0, 1, '', '00200', '53709583', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1199, 0, 1, '', '00199', '93690806', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1198, 0, 1, '', '00198', '79918218', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1197, 0, 1, '', '00197', '48960652', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1196, 0, 1, '', '00196', '60746525', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1195, 0, 1, '', '00195', '69849306', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1194, 0, 1, '', '00194', '49743690', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1193, 0, 1, '', '00193', '18561594', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1192, 0, 1, '', '00192', '39676733', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1191, 0, 1, '', '00191', '34811031', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1190, 0, 1, '', '00190', '73827116', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1189, 0, 1, '', '00189', '83970717', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1188, 0, 1, '', '00188', '24985705', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1187, 0, 1, '', '00187', '82998165', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1186, 0, 1, '', '00186', '80364851', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1185, 0, 1, '', '00185', '79744847', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1184, 0, 1, '', '00184', '47084955', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1183, 0, 1, '', '00183', '58644140', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1182, 0, 1, '', '00182', '15993687', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1181, 0, 1, '', '00181', '36365442', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1180, 0, 1, '', '00180', '92383229', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1179, 0, 1, '', '00179', '40996961', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1178, 0, 1, '', '00178', '31443102', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1177, 0, 1, '', '00177', '20057363', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1176, 0, 1, '', '00176', '27653975', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1175, 0, 1, '', '00175', '83487481', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1174, 0, 1, '', '00174', '92434574', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1173, 0, 1, '', '00173', '89748665', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1172, 0, 1, '', '00172', '96423419', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1171, 0, 1, '', '00171', '19821791', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1170, 0, 1, '', '00170', '54150100', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1169, 0, 1, '', '00169', '14024933', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1168, 0, 1, '', '00168', '57197903', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1167, 0, 1, '', '00167', '13323989', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1166, 0, 1, '', '00166', '44837595', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1165, 0, 1, '', '00165', '43634244', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1164, 0, 1, '', '00164', '47802654', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1163, 0, 1, '', '00163', '17333788', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1162, 0, 1, '', '00162', '86644591', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1161, 0, 1, '', '00161', '82939672', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1160, 0, 1, '', '00160', '50140368', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1159, 0, 1, '', '00159', '69277737', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1158, 0, 1, '', '00158', '24275370', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1157, 0, 1, '', '00157', '81229377', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1156, 0, 1, '', '00156', '68570593', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1155, 0, 1, '', '00155', '86864640', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1154, 0, 1, '', '00154', '74983129', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1153, 0, 1, '', '00153', '19104438', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1152, 0, 1, '', '00152', '42263207', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1151, 0, 1, '', '00151', '65317919', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1150, 0, 1, '', '00150', '94680285', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1149, 0, 1, '', '00149', '10240241', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1148, 0, 1, '', '00148', '74276518', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1147, 0, 1, '', '00147', '12481421', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1146, 0, 1, '', '00146', '43716547', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1145, 0, 1, '', '00145', '88810672', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1144, 0, 1, '', '00144', '13267599', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1143, 0, 1, '', '00143', '22388482', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1142, 0, 1, '', '00142', '70776460', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1141, 0, 1, '', '00141', '64543378', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1140, 0, 1, '', '00140', '37212910', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1139, 0, 1, '', '00139', '83117822', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1138, 0, 1, '', '00138', '40842284', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1137, 0, 1, '', '00137', '93359742', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1136, 0, 1, '', '00136', '36172771', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1135, 0, 1, '', '00135', '14758696', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1134, 0, 1, '', '00134', '44011706', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1133, 0, 1, '', '00133', '23959765', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1132, 0, 1, '', '00132', '53269406', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1131, 0, 1, '', '00131', '70838817', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1130, 0, 1, '', '00130', '36232359', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1129, 0, 1, '', '00129', '49533772', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1128, 0, 1, '', '00128', '85796483', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1127, 0, 1, '', '00127', '45347167', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1126, 0, 1, '', '00126', '50716025', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1125, 0, 1, '', '00125', '63136123', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1124, 0, 1, '', '00124', '50016140', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1123, 0, 1, '', '00123', '46852951', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1122, 0, 1, '', '00122', '60443962', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1121, 0, 1, '', '00121', '26891825', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1120, 0, 1, '', '00120', '69673125', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1119, 0, 1, '', '00119', '28415249', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1118, 0, 1, '', '00118', '11619130', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1117, 0, 1, '', '00117', '58901147', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1116, 0, 1, '', '00116', '16111841', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1115, 0, 1, '', '00115', '86521397', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1114, 0, 1, '', '00114', '32291471', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1113, 0, 1, '', '00113', '24172734', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1112, 0, 1, '', '00112', '88552762', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1111, 0, 1, '', '00111', '65963940', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1110, 0, 1, '', '00110', '42262536', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1109, 0, 1, '', '00109', '74134149', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1108, 0, 1, '', '00108', '41702662', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1107, 0, 1, '', '00107', '20725169', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1106, 0, 1, '', '00106', '48103771', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1105, 0, 1, '', '00105', '13396705', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1104, 0, 1, '', '00104', '30878036', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1103, 0, 1, '', '00103', '96242188', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1102, 0, 1, '', '00102', '88245650', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1101, 0, 1, '', '00101', '63113330', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1100, 0, 1, '', '00100', '49295423', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1099, 0, 1, '', '00099', '28231374', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1098, 0, 1, '', '00098', '39286063', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1097, 0, 1, '', '00097', '15787138', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1096, 0, 1, '', '00096', '98393791', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1095, 0, 1, '', '00095', '95917873', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1094, 0, 1, '', '00094', '63856225', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1093, 0, 1, '', '00093', '11600927', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1092, 0, 1, '', '00092', '72352095', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1091, 0, 1, '', '00091', '34923882', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1090, 0, 1, '', '00090', '69118025', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1089, 0, 1, '', '00089', '45769185', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1088, 0, 1, '', '00088', '59162660', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1087, 0, 1, '', '00087', '95123439', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1086, 0, 1, '', '00086', '77461715', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1085, 0, 1, '', '00085', '42623905', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1084, 0, 1, '', '00084', '39410395', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1083, 0, 1, '', '00083', '34665680', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1082, 0, 1, '', '00082', '24917936', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1081, 0, 1, '', '00081', '78604600', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1080, 0, 1, '', '00080', '48794316', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1079, 0, 1, '', '00079', '94310169', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1078, 0, 1, '', '00078', '66290033', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1077, 0, 1, '', '00077', '23890481', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1076, 0, 1, '', '00076', '22989860', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1075, 0, 1, '', '00075', '58208957', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1074, 0, 1, '', '00074', '24051851', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1073, 0, 1, '', '00073', '79804454', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1072, 0, 1, '', '00072', '45649360', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1071, 0, 1, '', '00071', '99796833', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1070, 0, 1, '', '00070', '15046302', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1069, 0, 1, '', '00069', '20057996', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1068, 0, 1, '', '00068', '23237254', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1067, 0, 1, '', '00067', '73006937', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1066, 0, 1, '', '00066', '39089585', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1065, 0, 1, '', '00065', '33681409', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1064, 0, 1, '', '00064', '15732059', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1063, 0, 1, '', '00063', '23055769', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1062, 0, 1, '', '00062', '60448220', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1061, 0, 1, '', '00061', '49828808', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1060, 0, 1, '', '00060', '84819820', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1059, 0, 1, '', '00059', '16879487', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1058, 0, 1, '', '00058', '32306085', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1057, 0, 1, '', '00057', '81174058', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1056, 0, 1, '', '00056', '66954100', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1055, 0, 1, '', '00055', '14246733', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1054, 0, 1, '', '00054', '91727226', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1053, 0, 1, '', '00053', '96146348', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1052, 0, 1, '', '00052', '10543435', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1051, 0, 1, '', '00051', '48379316', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1050, 0, 1, '', '00050', '96179775', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1049, 0, 1, '', '00049', '95076517', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1048, 0, 1, '', '00048', '29120365', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1047, 0, 1, '', '00047', '59121633', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1046, 0, 1, '', '00046', '98687498', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1045, 0, 1, '', '00045', '91216491', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1044, 0, 1, '', '00044', '24451298', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1043, 0, 1, '', '00043', '27063444', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1042, 0, 1, '', '00042', '81827833', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1041, 0, 1, '', '00041', '96132552', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1040, 0, 1, '', '00040', '23780630', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1039, 0, 1, '', '00039', '61384567', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1038, 0, 1, '', '00038', '85872060', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1037, 0, 1, '', '00037', '59835465', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1036, 0, 1, '', '00036', '82381273', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1035, 0, 1, '', '00035', '55310915', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1034, 0, 1, '', '00034', '88595501', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1033, 0, 1, '', '00033', '64280549', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, '');
INSERT INTO `ecs_user_card` (`id`, `user_id`, `ct_id`, `card_level`, `card_no`, `card_pass`, `card_status`, `send_type`, `add_time`, `bind_time`, `user_money`, `pay_points`, `rank_points`, `true_name`, `address`, `mobile`, `email`, `sex`, `is_show`, `des`) VALUES
(1032, 0, 1, '', '00032', '81874800', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1031, 0, 1, '', '00031', '23764239', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1030, 0, 1, '', '00030', '79155944', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1029, 0, 1, '', '00029', '95484215', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1028, 0, 1, '', '00028', '73011685', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1027, 0, 1, '', '00027', '38082060', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1026, 0, 1, '', '00026', '30354695', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1025, 0, 1, '', '00025', '76919128', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1024, 0, 1, '', '00024', '35015834', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1023, 0, 1, '', '00023', '13891239', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1022, 0, 1, '', '00022', '67738670', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1021, 0, 1, '', '00021', '18330197', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1020, 0, 1, '', '00020', '27405420', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1019, 0, 1, '', '00019', '47897185', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1018, 0, 1, '', '00018', '36139037', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1006, 0, 1, '', '00006', '68189321', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1007, 0, 1, '', '00007', '53292614', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1008, 0, 1, '', '00008', '60674268', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1009, 0, 1, '', '00009', '86596146', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1010, 0, 1, '', '00010', '24343517', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1011, 0, 1, '', '00011', '24795998', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1012, 0, 1, '', '00012', '14069107', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1505, 0, 1, '', '00505', '30274040', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1506, 0, 1, '', '00506', '72567047', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1507, 0, 1, '', '00507', '73679314', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1508, 0, 1, '', '00508', '47632594', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1509, 0, 1, '', '00509', '16372802', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1510, 0, 1, '', '00510', '17893626', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1511, 0, 1, '', '00511', '42015140', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1512, 0, 1, '', '00512', '27821749', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1513, 0, 1, '', '00513', '37603817', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1514, 0, 1, '', '00514', '13022496', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1515, 0, 1, '', '00515', '74544273', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1516, 0, 1, '', '00516', '13530809', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1517, 0, 1, '', '00517', '74414770', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1518, 0, 1, '', '00518', '27254192', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1519, 0, 1, '', '00519', '11021514', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1520, 0, 1, '', '00520', '26905979', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1521, 0, 1, '', '00521', '42468806', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1522, 0, 1, '', '00522', '32972516', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1523, 0, 1, '', '00523', '42257365', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1524, 0, 1, '', '00524', '41894492', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1525, 0, 1, '', '00525', '45688156', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1526, 0, 1, '', '00526', '41015771', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1527, 0, 1, '', '00527', '24514452', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1528, 0, 1, '', '00528', '65272866', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1529, 0, 1, '', '00529', '54723169', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1530, 0, 1, '', '00530', '29119451', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1531, 0, 1, '', '00531', '49992415', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1532, 0, 1, '', '00532', '71976627', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1533, 0, 1, '', '00533', '65946259', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1534, 0, 1, '', '00534', '90055313', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1535, 0, 1, '', '00535', '87169917', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1536, 0, 1, '', '00536', '43444110', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1537, 0, 1, '', '00537', '38592351', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1538, 0, 1, '', '00538', '64788368', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1539, 0, 1, '', '00539', '21896150', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1540, 0, 1, '', '00540', '70391504', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1541, 0, 1, '', '00541', '52726077', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1542, 0, 1, '', '00542', '65450253', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1543, 0, 1, '', '00543', '55022230', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1544, 0, 1, '', '00544', '63528665', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1545, 0, 1, '', '00545', '90618704', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1546, 0, 1, '', '00546', '28678803', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1547, 0, 1, '', '00547', '87458500', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1548, 0, 1, '', '00548', '71796301', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1549, 0, 1, '', '00549', '29788888', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1550, 0, 1, '', '00550', '52770160', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1551, 0, 1, '', '00551', '56600773', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1552, 0, 1, '', '00552', '76825903', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1553, 0, 1, '', '00553', '51630020', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1554, 0, 1, '', '00554', '81323797', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1555, 0, 1, '', '00555', '31795519', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1556, 0, 1, '', '00556', '71439597', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1557, 0, 1, '', '00557', '10763543', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1558, 0, 1, '', '00558', '61790285', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1559, 0, 1, '', '00559', '20447300', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1560, 0, 1, '', '00560', '31239828', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1561, 0, 1, '', '00561', '44623825', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1562, 0, 1, '', '00562', '16088625', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1563, 0, 1, '', '00563', '77063180', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1564, 0, 1, '', '00564', '84080702', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1565, 0, 1, '', '00565', '52620543', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1566, 0, 1, '', '00566', '77258040', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1567, 0, 1, '', '00567', '62447181', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1568, 0, 1, '', '00568', '84148794', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1569, 0, 1, '', '00569', '27087042', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1570, 0, 1, '', '00570', '56711721', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1571, 0, 1, '', '00571', '34288693', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1572, 0, 1, '', '00572', '28430956', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1573, 0, 1, '', '00573', '57479261', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1574, 0, 1, '', '00574', '89746638', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1575, 0, 1, '', '00575', '13267642', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1576, 0, 1, '', '00576', '89091508', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1577, 0, 1, '', '00577', '10375051', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1578, 0, 1, '', '00578', '28058493', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1579, 0, 1, '', '00579', '19061677', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1580, 0, 1, '', '00580', '35458708', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1581, 0, 1, '', '00581', '77201671', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1582, 0, 1, '', '00582', '67801463', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1583, 0, 1, '', '00583', '72265931', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1584, 0, 1, '', '00584', '96502304', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1585, 0, 1, '', '00585', '70715110', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1586, 0, 1, '', '00586', '16237836', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1587, 0, 1, '', '00587', '67841452', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1588, 0, 1, '', '00588', '96591664', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1589, 0, 1, '', '00589', '98973302', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1590, 0, 1, '', '00590', '34215541', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1591, 0, 1, '', '00591', '57938785', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1592, 0, 1, '', '00592', '12718579', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1593, 0, 1, '', '00593', '71863088', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1594, 0, 1, '', '00594', '10693484', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1595, 0, 1, '', '00595', '14680854', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1596, 0, 1, '', '00596', '10121540', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1597, 0, 1, '', '00597', '95556614', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1598, 0, 1, '', '00598', '57901738', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1599, 0, 1, '', '00599', '21854058', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1600, 0, 1, '', '00600', '17176588', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1601, 0, 1, '', '00601', '67522439', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1602, 0, 1, '', '00602', '25061848', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1603, 0, 1, '', '00603', '23958219', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1604, 0, 1, '', '00604', '21998156', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1605, 0, 1, '', '00605', '80595696', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1606, 0, 1, '', '00606', '91272434', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1607, 0, 1, '', '00607', '51516843', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1608, 0, 1, '', '00608', '33627492', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1609, 0, 1, '', '00609', '35070155', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1610, 0, 1, '', '00610', '85500402', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1611, 0, 1, '', '00611', '47199255', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1612, 0, 1, '', '00612', '80445739', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1613, 0, 1, '', '00613', '93672527', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1614, 0, 1, '', '00614', '50416458', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1615, 0, 1, '', '00615', '65057950', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1616, 0, 1, '', '00616', '19994252', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1617, 0, 1, '', '00617', '15768626', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1618, 0, 1, '', '00618', '51331500', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1619, 0, 1, '', '00619', '58216409', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1620, 0, 1, '', '00620', '42082447', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1621, 0, 1, '', '00621', '13613703', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1622, 0, 1, '', '00622', '14438537', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1623, 0, 1, '', '00623', '81983847', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1624, 0, 1, '', '00624', '28502977', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1625, 0, 1, '', '00625', '18527915', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1626, 0, 1, '', '00626', '59789851', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1627, 0, 1, '', '00627', '36527608', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1628, 0, 1, '', '00628', '63929953', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1629, 0, 1, '', '00629', '74720494', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1630, 0, 1, '', '00630', '78973729', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1631, 0, 1, '', '00631', '38780151', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1632, 0, 1, '', '00632', '75323019', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1633, 0, 1, '', '00633', '63643849', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1634, 0, 1, '', '00634', '23536748', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1635, 0, 1, '', '00635', '28273159', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1636, 0, 1, '', '00636', '73104536', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1637, 0, 1, '', '00637', '90372056', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1638, 0, 1, '', '00638', '88346278', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1639, 0, 1, '', '00639', '59523747', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1640, 0, 1, '', '00640', '88930664', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1641, 0, 1, '', '00641', '74519159', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1642, 0, 1, '', '00642', '39776293', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1643, 0, 1, '', '00643', '55188815', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1644, 0, 1, '', '00644', '39076199', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1645, 0, 1, '', '00645', '95682461', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1646, 0, 1, '', '00646', '52582596', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1647, 0, 1, '', '00647', '44480112', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1648, 0, 1, '', '00648', '59833653', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1649, 0, 1, '', '00649', '83558516', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1650, 0, 1, '', '00650', '68150943', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1651, 0, 1, '', '00651', '91218328', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1652, 0, 1, '', '00652', '88545414', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1653, 0, 1, '', '00653', '56688230', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1654, 0, 1, '', '00654', '53962741', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1655, 0, 1, '', '00655', '99089902', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1656, 0, 1, '', '00656', '28670837', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1657, 0, 1, '', '00657', '68929739', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1658, 0, 1, '', '00658', '39917567', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1659, 0, 1, '', '00659', '57209883', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1660, 0, 1, '', '00660', '22215359', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1661, 0, 1, '', '00661', '73690334', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1662, 0, 1, '', '00662', '20164489', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1663, 0, 1, '', '00663', '71077792', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1664, 0, 1, '', '00664', '33451073', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1665, 0, 1, '', '00665', '27943999', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1666, 0, 1, '', '00666', '88367287', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1667, 0, 1, '', '00667', '15181791', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1668, 0, 1, '', '00668', '33995284', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1669, 0, 1, '', '00669', '48522106', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1670, 0, 1, '', '00670', '52619514', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1671, 0, 1, '', '00671', '29469571', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1672, 0, 1, '', '00672', '43751751', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1673, 0, 1, '', '00673', '83743024', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1674, 0, 1, '', '00674', '40871430', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1675, 0, 1, '', '00675', '88595917', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1676, 0, 1, '', '00676', '16580035', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1677, 0, 1, '', '00677', '95520020', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1678, 0, 1, '', '00678', '76710642', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1679, 0, 1, '', '00679', '54815506', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1680, 0, 1, '', '00680', '59006499', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1681, 0, 1, '', '00681', '86675242', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1682, 0, 1, '', '00682', '60872550', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1683, 0, 1, '', '00683', '66330146', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1684, 0, 1, '', '00684', '10310683', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1685, 0, 1, '', '00685', '27482365', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1686, 0, 1, '', '00686', '59840099', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1687, 0, 1, '', '00687', '59434419', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1688, 0, 1, '', '00688', '80418072', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1689, 0, 1, '', '00689', '99457388', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1690, 0, 1, '', '00690', '52451570', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1691, 0, 1, '', '00691', '99302742', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1692, 0, 1, '', '00692', '37227521', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1693, 0, 1, '', '00693', '71429491', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1694, 0, 1, '', '00694', '58913964', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1695, 0, 1, '', '00695', '42903178', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1696, 0, 1, '', '00696', '26952313', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1697, 0, 1, '', '00697', '77890483', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1698, 0, 1, '', '00698', '89578301', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1699, 0, 1, '', '00699', '67509511', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1700, 0, 1, '', '00700', '39786939', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1701, 0, 1, '', '00701', '96179681', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1702, 0, 1, '', '00702', '46175287', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1703, 0, 1, '', '00703', '68431411', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1704, 0, 1, '', '00704', '54364401', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1705, 0, 1, '', '00705', '63318515', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1706, 0, 1, '', '00706', '23293180', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1707, 0, 1, '', '00707', '42340752', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1708, 0, 1, '', '00708', '15361877', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1709, 0, 1, '', '00709', '76363475', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1710, 0, 1, '', '00710', '43010202', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1711, 0, 1, '', '00711', '55694907', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1712, 0, 1, '', '00712', '60896249', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1713, 0, 1, '', '00713', '58680019', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1714, 0, 1, '', '00714', '84716601', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1715, 0, 1, '', '00715', '15644419', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1716, 0, 1, '', '00716', '81327282', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1717, 0, 1, '', '00717', '76090891', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1718, 0, 1, '', '00718', '66552664', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1719, 0, 1, '', '00719', '63979961', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1720, 0, 1, '', '00720', '87431273', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1721, 0, 1, '', '00721', '39249933', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1722, 0, 1, '', '00722', '52429215', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1723, 0, 1, '', '00723', '14765629', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1724, 0, 1, '', '00724', '75160468', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1725, 0, 1, '', '00725', '94588988', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1726, 0, 1, '', '00726', '85362903', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1727, 0, 1, '', '00727', '39316711', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1728, 0, 1, '', '00728', '74769368', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1729, 0, 1, '', '00729', '88717483', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1730, 0, 1, '', '00730', '95154512', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1731, 0, 1, '', '00731', '65594952', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1732, 0, 1, '', '00732', '90161737', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1733, 0, 1, '', '00733', '53529752', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1734, 0, 1, '', '00734', '53381819', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1735, 0, 1, '', '00735', '47301975', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1736, 0, 1, '', '00736', '70835964', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1737, 0, 1, '', '00737', '43471408', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1738, 0, 1, '', '00738', '30646351', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1739, 0, 1, '', '00739', '69459852', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1740, 0, 1, '', '00740', '38135041', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1741, 0, 1, '', '00741', '76047311', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1742, 0, 1, '', '00742', '89619644', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1743, 0, 1, '', '00743', '30632936', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1744, 0, 1, '', '00744', '12052299', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1745, 0, 1, '', '00745', '58688236', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1746, 0, 1, '', '00746', '29285988', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1747, 0, 1, '', '00747', '55251780', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1748, 0, 1, '', '00748', '88655553', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1749, 0, 1, '', '00749', '26796716', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1750, 0, 1, '', '00750', '77320063', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1751, 0, 1, '', '00751', '38284166', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1752, 0, 1, '', '00752', '26926042', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1753, 0, 1, '', '00753', '52187361', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1754, 0, 1, '', '00754', '40436108', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1755, 0, 1, '', '00755', '13872184', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1756, 0, 1, '', '00756', '75090121', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1757, 0, 1, '', '00757', '10453165', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1758, 0, 1, '', '00758', '11796506', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1759, 0, 1, '', '00759', '77177377', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1760, 0, 1, '', '00760', '59913900', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1761, 0, 1, '', '00761', '31121132', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1762, 0, 1, '', '00762', '40049554', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1763, 0, 1, '', '00763', '58349107', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1764, 0, 1, '', '00764', '32455539', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1765, 0, 1, '', '00765', '98451872', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1766, 0, 1, '', '00766', '15791793', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1767, 0, 1, '', '00767', '49514551', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1768, 0, 1, '', '00768', '40097166', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1769, 0, 1, '', '00769', '26829512', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1770, 0, 1, '', '00770', '33049647', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1771, 0, 1, '', '00771', '50841932', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1772, 0, 1, '', '00772', '40416400', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1773, 0, 1, '', '00773', '77209147', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1774, 0, 1, '', '00774', '52788631', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1775, 0, 1, '', '00775', '34491288', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1776, 0, 1, '', '00776', '37276582', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1777, 0, 1, '', '00777', '23368406', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1778, 0, 1, '', '00778', '42762916', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1779, 0, 1, '', '00779', '25713209', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1780, 0, 1, '', '00780', '32528233', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1781, 0, 1, '', '00781', '26938949', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1782, 0, 1, '', '00782', '20739359', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1783, 0, 1, '', '00783', '59089862', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1784, 0, 1, '', '00784', '57686136', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1785, 0, 1, '', '00785', '13451061', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1786, 0, 1, '', '00786', '71218800', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1787, 0, 1, '', '00787', '57369249', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1788, 0, 1, '', '00788', '72260479', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1789, 0, 1, '', '00789', '36244545', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1790, 0, 1, '', '00790', '91292552', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1791, 0, 1, '', '00791', '44343273', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1792, 0, 1, '', '00792', '54648420', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1793, 0, 1, '', '00793', '85660310', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1794, 0, 1, '', '00794', '87342519', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1795, 0, 1, '', '00795', '11025073', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1796, 0, 1, '', '00796', '29212706', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1797, 0, 1, '', '00797', '80356481', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1798, 0, 1, '', '00798', '95070815', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1799, 0, 1, '', '00799', '33174262', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1800, 0, 1, '', '00800', '32241526', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1801, 0, 1, '', '00801', '80777524', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1802, 0, 1, '', '00802', '98560321', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1803, 0, 1, '', '00803', '44383359', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1804, 0, 1, '', '00804', '46381700', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1805, 0, 1, '', '00805', '48147898', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1806, 0, 1, '', '00806', '72798847', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1807, 0, 1, '', '00807', '40786560', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1808, 0, 1, '', '00808', '81288040', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1809, 0, 1, '', '00809', '91927309', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1810, 0, 1, '', '00810', '19388973', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1811, 0, 1, '', '00811', '72910454', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1812, 0, 1, '', '00812', '15377281', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1813, 0, 1, '', '00813', '65071249', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1814, 0, 1, '', '00814', '91266551', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1815, 0, 1, '', '00815', '57847729', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1816, 0, 1, '', '00816', '96703986', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1817, 0, 1, '', '00817', '66772214', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1818, 0, 1, '', '00818', '92868253', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1819, 0, 1, '', '00819', '66402494', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1820, 0, 1, '', '00820', '14252220', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1821, 0, 1, '', '00821', '10642337', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1822, 0, 1, '', '00822', '92665044', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1823, 0, 1, '', '00823', '49970229', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1824, 0, 1, '', '00824', '67339920', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1825, 0, 1, '', '00825', '88200014', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1826, 0, 1, '', '00826', '44959993', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1827, 0, 1, '', '00827', '44134576', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1828, 0, 1, '', '00828', '94932096', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1829, 0, 1, '', '00829', '47847029', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1830, 0, 1, '', '00830', '63549552', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1831, 0, 1, '', '00831', '87270154', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1832, 0, 1, '', '00832', '31340823', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1833, 0, 1, '', '00833', '62036672', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1834, 0, 1, '', '00834', '17684526', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1835, 0, 1, '', '00835', '90611958', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1836, 0, 1, '', '00836', '99229316', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1837, 0, 1, '', '00837', '12983359', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1838, 0, 1, '', '00838', '25502997', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1839, 0, 1, '', '00839', '93976006', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1840, 0, 1, '', '00840', '29632336', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1841, 0, 1, '', '00841', '98690587', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1842, 0, 1, '', '00842', '73466844', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1843, 0, 1, '', '00843', '33570619', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1844, 0, 1, '', '00844', '67894384', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1845, 0, 1, '', '00845', '29862395', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1846, 0, 1, '', '00846', '56563054', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1847, 0, 1, '', '00847', '21107826', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1848, 0, 1, '', '00848', '26985832', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1849, 0, 1, '', '00849', '55152957', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1850, 0, 1, '', '00850', '34718634', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1851, 0, 1, '', '00851', '82811146', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1852, 0, 1, '', '00852', '31559840', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1853, 0, 1, '', '00853', '44700867', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1854, 0, 1, '', '00854', '44288750', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1855, 0, 1, '', '00855', '40387556', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1856, 0, 1, '', '00856', '80946800', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1857, 0, 1, '', '00857', '90959676', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1858, 0, 1, '', '00858', '36088591', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1859, 0, 1, '', '00859', '20905834', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1860, 0, 1, '', '00860', '79703406', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1861, 0, 1, '', '00861', '60342511', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1862, 0, 1, '', '00862', '88189531', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1863, 0, 1, '', '00863', '19084258', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1864, 0, 1, '', '00864', '32831993', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1865, 0, 1, '', '00865', '46730511', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1866, 0, 1, '', '00866', '28905399', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1867, 0, 1, '', '00867', '96921362', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1868, 0, 1, '', '00868', '15151674', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1869, 0, 1, '', '00869', '97142455', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1870, 0, 1, '', '00870', '21320198', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1871, 0, 1, '', '00871', '67171866', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1872, 0, 1, '', '00872', '98061370', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1873, 0, 1, '', '00873', '21856485', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1874, 0, 1, '', '00874', '33542368', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1875, 0, 1, '', '00875', '37806973', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1876, 0, 1, '', '00876', '87346109', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1877, 0, 1, '', '00877', '61436150', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1878, 0, 1, '', '00878', '17229242', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1879, 0, 1, '', '00879', '81381130', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1880, 0, 1, '', '00880', '50982472', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1881, 0, 1, '', '00881', '56111539', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1882, 0, 1, '', '00882', '78820998', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1883, 0, 1, '', '00883', '84273714', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1884, 0, 1, '', '00884', '12236504', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1885, 0, 1, '', '00885', '88231140', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1886, 0, 1, '', '00886', '79398457', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1887, 0, 1, '', '00887', '51394826', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1888, 0, 1, '', '00888', '30344485', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1889, 0, 1, '', '00889', '62054650', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1890, 0, 1, '', '00890', '47143767', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1891, 0, 1, '', '00891', '91739744', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1892, 0, 1, '', '00892', '31481859', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1893, 0, 1, '', '00893', '75837187', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1894, 0, 1, '', '00894', '99507442', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1895, 0, 1, '', '00895', '30779102', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1896, 0, 1, '', '00896', '97887804', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1897, 0, 1, '', '00897', '91723351', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1898, 0, 1, '', '00898', '93721759', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1899, 0, 1, '', '00899', '35877603', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1900, 0, 1, '', '00900', '61343375', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1901, 0, 1, '', '00901', '30950791', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1902, 0, 1, '', '00902', '75659389', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1903, 0, 1, '', '00903', '27577850', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1904, 0, 1, '', '00904', '75741742', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1905, 0, 1, '', '00905', '47079027', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1906, 0, 1, '', '00906', '82617088', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1907, 0, 1, '', '00907', '70850198', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1908, 0, 1, '', '00908', '32795275', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1909, 0, 1, '', '00909', '30830045', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1910, 0, 1, '', '00910', '88740780', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1911, 0, 1, '', '00911', '68780075', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1912, 0, 1, '', '00912', '40202232', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1913, 0, 1, '', '00913', '25195743', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1914, 0, 1, '', '00914', '85071224', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1915, 0, 1, '', '00915', '35264658', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1916, 0, 1, '', '00916', '17267369', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1917, 0, 1, '', '00917', '16015906', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1918, 0, 1, '', '00918', '82155261', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1919, 0, 1, '', '00919', '89813561', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1920, 0, 1, '', '00920', '29452529', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1921, 0, 1, '', '00921', '82182416', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1922, 0, 1, '', '00922', '98038625', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1923, 0, 1, '', '00923', '60922862', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1924, 0, 1, '', '00924', '19776156', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1925, 0, 1, '', '00925', '18816575', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1926, 0, 1, '', '00926', '31301188', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1927, 0, 1, '', '00927', '68183597', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1928, 0, 1, '', '00928', '65491721', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1929, 0, 1, '', '00929', '47949020', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1930, 0, 1, '', '00930', '96888040', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1931, 0, 1, '', '00931', '12789326', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1932, 0, 1, '', '00932', '41206504', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1933, 0, 1, '', '00933', '57230980', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1934, 0, 1, '', '00934', '40025588', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1935, 0, 1, '', '00935', '17491006', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1936, 0, 1, '', '00936', '57723452', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1937, 0, 1, '', '00937', '53176231', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1938, 0, 1, '', '00938', '36854579', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1939, 0, 1, '', '00939', '26221496', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1940, 0, 1, '', '00940', '84203464', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1941, 0, 1, '', '00941', '28584847', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1942, 0, 1, '', '00942', '50631678', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1943, 0, 1, '', '00943', '79245328', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1944, 0, 1, '', '00944', '49492664', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1945, 0, 1, '', '00945', '69771844', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1946, 0, 1, '', '00946', '77316470', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1947, 0, 1, '', '00947', '48002195', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1948, 0, 1, '', '00948', '59742541', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1949, 0, 1, '', '00949', '73320577', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1950, 0, 1, '', '00950', '51907541', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1951, 0, 1, '', '00951', '55917230', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1952, 0, 1, '', '00952', '52413937', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1953, 0, 1, '', '00953', '47640176', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1954, 0, 1, '', '00954', '88920904', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1955, 0, 1, '', '00955', '98231724', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1956, 0, 1, '', '00956', '36291677', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1957, 0, 1, '', '00957', '97724463', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1958, 0, 1, '', '00958', '49305916', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1959, 0, 1, '', '00959', '70033151', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1960, 0, 1, '', '00960', '28197174', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1961, 0, 1, '', '00961', '73050712', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1962, 0, 1, '', '00962', '63101045', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1963, 0, 1, '', '00963', '64360556', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1964, 0, 1, '', '00964', '85807034', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, '');
INSERT INTO `ecs_user_card` (`id`, `user_id`, `ct_id`, `card_level`, `card_no`, `card_pass`, `card_status`, `send_type`, `add_time`, `bind_time`, `user_money`, `pay_points`, `rank_points`, `true_name`, `address`, `mobile`, `email`, `sex`, `is_show`, `des`) VALUES
(1965, 0, 1, '', '00965', '40619022', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1966, 0, 1, '', '00966', '31139355', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1967, 0, 1, '', '00967', '76626520', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1968, 0, 1, '', '00968', '64211549', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1969, 0, 1, '', '00969', '17990920', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1970, 0, 1, '', '00970', '25645363', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1971, 0, 1, '', '00971', '52495427', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1972, 0, 1, '', '00972', '53307061', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1973, 0, 1, '', '00973', '31535429', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1974, 0, 1, '', '00974', '27427113', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1975, 0, 1, '', '00975', '31878007', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1976, 0, 1, '', '00976', '25370785', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1977, 0, 1, '', '00977', '73480207', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1978, 0, 1, '', '00978', '76244306', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1979, 0, 1, '', '00979', '29972756', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1980, 0, 1, '', '00980', '91392972', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1981, 0, 1, '', '00981', '92287704', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1982, 0, 1, '', '00982', '76360948', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1983, 0, 1, '', '00983', '15059938', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1984, 0, 1, '', '00984', '24540038', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1985, 0, 1, '', '00985', '92683398', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1986, 0, 1, '', '00986', '68000548', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1987, 0, 1, '', '00987', '53674574', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1988, 0, 1, '', '00988', '49781038', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1989, 0, 1, '', '00989', '54288721', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1990, 0, 1, '', '00990', '15620001', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1991, 0, 1, '', '00991', '26872432', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1992, 0, 1, '', '00992', '58289119', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1993, 0, 1, '', '00993', '45219537', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1994, 0, 1, '', '00994', '70773980', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1995, 0, 1, '', '00995', '66631749', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1996, 0, 1, '', '00996', '71744630', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1997, 0, 1, '', '00997', '74534075', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1998, 0, 1, '', '00998', '14930492', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(1999, 0, 1, '', '00999', '58747259', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, ''),
(2000, 0, 1, '', '01000', '68008519', 0, '', 1345454357, 0, 100.00, 1000, 0, '', '', '', '', '', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_card_type`
--

CREATE TABLE IF NOT EXISTS `ecs_user_card_type` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ct_id`),
  UNIQUE KEY `ct_name` (`ct_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `ecs_user_card_type`
--

INSERT INTO `ecs_user_card_type` (`ct_id`, `ct_name`, `des`) VALUES
(1, '会员卡', ''),
(3, '测试', '');


