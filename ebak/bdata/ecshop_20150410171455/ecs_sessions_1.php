<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_sessions`;");
E_C("CREATE TABLE `ecs_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8");
E_D("replace into `ecs_sessions` values('b35309df1f7787a37abb278b056d1fcb','1428656996','0','0','0.0.0.0','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('fe2b8429ca11361d6a0c894c3907ca83','1428656966','0','0','0.0.0.0','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('3b079087bafa730d39a1b618544a91fb','1428656987','0','0','0.0.0.0','0','0','1.00','0','a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');");
E_D("replace into `ecs_sessions` values('40ed066b28edc1e105447f1d9222f88e','1428656752','0','0','0.0.0.0','0','0','0.00','0','a:0:{}');");
E_D("replace into `ecs_sessions` values('e02c859608efebf042ee8dbe48dd4cf1','1428657205','0','1','0.0.0.0','0','0','0.00','0','a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1428628405;s:12:\"suppliers_id\";s:1:\"0\";}');");
E_D("replace into `ecs_sessions` values('4dd9390780207817d062031ba6690f93','1428656847','0','0','0.0.0.0','0','0','1.00','0','a:4:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"OTc0OTNkMmY0ZA==\";}');");

require("../../inc/footer.php");
?>