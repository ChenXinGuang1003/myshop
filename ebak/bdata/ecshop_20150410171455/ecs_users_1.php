<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `ecs_users`;");
E_C("CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `aite_id` text NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `wxid` char(28) NOT NULL,
  `wxch_bd` char(2) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8");
E_D("replace into `ecs_users` values('1','','ecshop@ecshop.com','ecshop','b86a928a7265cfb5fe224dfc577c825e','','','0','1960-03-03','0.00','0.00','98388','15390','1','0','1394591148','0000-00-00 00:00:00','116.225.112.246','51','0','0','3556','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('2','','vip@ecshop.com','vip','232059cb5361a9336ccf1b8c2ba7657a','','','0','1949-01-01','0.00','0.00','0','0','0','0','0','0000-00-00 00:00:00','','0','0','0','','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('3','','text@ecshop.com','text','1cb251ec0d568de6a929b520c4aed8d1','','','0','1949-01-01','0.00','0.00','0','0','2','0','1242973574','0000-00-00 00:00:00','0.0.0.0','2','0','0','','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('5','','zuanshi@ecshop.com','zuanshi','815a71fb334412e7ba4595741c5a111d','','','0','1949-01-01','0.00','10000.00','0','0','0','0','0','0000-00-00 00:00:00','','0','3','0','','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('6','','497110669@qq.com','周欢','12c4009a19335a3777e57dd10192e7fb','','','0','0000-00-00','0.00','0.00','0','0','0','1381276290','1381276290','0000-00-00 00:00:00','127.0.0.1','1','0','0','','0','0','0','','1111@live.cn','444444','44444','55555','66666','0','0.00','motto','7777777','','');");
E_D("replace into `ecs_users` values('7','','123456@qq.com','123456','80e7a5f22e22a906efa21f5491050758','','','0','0000-00-00','0.00','0.00','0','0','0','1383007932','1384818204','0000-00-00 00:00:00','127.0.0.1','2','0','0','9072','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('8','','123@qq.com','admin123','b5b5312f406815d38eaeba88aae69e7d','','','0','0000-00-00','0.00','0.00','5860','5860','5','1386290864','1390438119','0000-00-00 00:00:00','127.0.0.1','295','0','0','7839','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('9','','123456789@qq.com','123456789','1c989fbb8c9b5b1bdca927c8a2e3a7c9','','','0','0000-00-00','0.00','0.00','0','0','3','1386542427','1387500589','0000-00-00 00:00:00','127.0.0.1','48','0','0','6405','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('10','','admin123@qq.com','admin9041','650cdb11cd428301302c1043b87666fd','','','0','0000-00-00','0.00','0.00','0','0','4','1388096666','1388447782','0000-00-00 00:00:00','127.0.0.1','6','0','0','4674','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('11','','adkjfadf@163.com','coco','96e79218965eb72c92a549dd5a330112','','','0','0000-00-00','0.00','0.00','0','0','6','1397669204','1397669204','0000-00-00 00:00:00','50.14.71.155','1','0','0','','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('12','','zz@126.com','zzzzzz','453e41d218e071ccfb2d1c99ce23906a','','','0','0000-00-00','0.00','0.00','0','0','7','1399357361','1399357361','0000-00-00 00:00:00','123.113.86.20','1','0','0','','0','0','0','','','','','','','0','0.00','','','','');");
E_D("replace into `ecs_users` values('13','','','weixin13','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','25','0','0','0','1420980424','0000-00-00 00:00:00','183.34.70.211','7','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt9spi8jRGx92QJ-qUkuOhBQ','ok');");
E_D("replace into `ecs_users` values('14','','','weixin14','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','5','0','0','0','1420973878','0000-00-00 00:00:00','183.34.70.211','1','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt9HMMlVwrpJK71bq_XitpVU','ok');");
E_D("replace into `ecs_users` values('15','','','3432423','e99a18c428cb38d5f260853678922e03','','','0','0000-00-00','0.00','0.00','0','0','0','1420974227','1420974227','0000-00-00 00:00:00','124.156.4.254','1','0','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'','');");
E_D("replace into `ecs_users` values('16','','','weixin16','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','0','0','0','0','1421030809','0000-00-00 00:00:00','123.64.53.37','45','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt0AlBCuOEdUMr5AFyst05cM','ok');");
E_D("replace into `ecs_users` values('17','','','weixin17','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','0','0','9','0','1421009620','0000-00-00 00:00:00','220.181.77.232','66','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt4YShqJe1oLS8YCNRpBdTXE','ok');");
E_D("replace into `ecs_users` values('18','','li@xvx.com','liu2472','abd8780b7e3732be3f73f3b115b28d0f','','','0','0000-00-00','0.00','0.00','0','0','8','1420999384','1420999384','0000-00-00 00:00:00','124.163.252.0','1','0','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'','');");
E_D("replace into `ecs_users` values('19','','','weixin19','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','10','0','0','0','0','0000-00-00 00:00:00','','0','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1YtyT-CAd62CkmTqNC4zBC5vc','ok');");
E_D("replace into `ecs_users` values('20','','','thinklom','af8f9dffa5d420fbc249141645b962ee','','','0','0000-00-00','0.00','0.00','0','0','0','0','1421005626','0000-00-00 00:00:00','122.158.141.120','1','0','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'','');");
E_D("replace into `ecs_users` values('21','','','weixin21','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','10','0','0','0','0','0000-00-00 00:00:00','','0','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1YtyvklJj6ieMM1IrpjxsxDoc','ok');");
E_D("replace into `ecs_users` values('22','','','weixin22','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','0','0','0','0','0','0000-00-00 00:00:00','','0','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt6rUpSiKK_koKwCtsSKmbE8','ok');");
E_D("replace into `ecs_users` values('23','','','weixin23','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','15','0','0','0','1421014312','0000-00-00 00:00:00','122.225.27.79','58','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt63zRyHLToUtpWaiEiyH7u8','ok');");
E_D("replace into `ecs_users` values('24','','','weixin24','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','0','0','0','0','1421014432','0000-00-00 00:00:00','122.225.27.79','14','99','0',NULL,'0','23','0','','','','','','','0','0.00',NULL,NULL,'oog1YtxHM2eezoEs-BgPLygsJTEo','ok');");
E_D("replace into `ecs_users` values('25','','','weixin25','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','35','0','0','0','1421028879','0000-00-00 00:00:00','59.175.43.147','5','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt8NN8pzp0KJV2d3wq3vW-og','ok');");
E_D("replace into `ecs_users` values('26','','','weixin26','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','5','0','0','0','0','0000-00-00 00:00:00','','0','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yty9Cv5wzffguaqxqJ7JO7Eo','ok');");
E_D("replace into `ecs_users` values('27','','','weixin27','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','22','0','10','0','1421055412','0000-00-00 00:00:00','110.16.196.219','186','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt9R0d4K6KhVlnGRyRvZxyV0','ok');");
E_D("replace into `ecs_users` values('28','','','weixin28','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','15','0','0','0','1421054956','0000-00-00 00:00:00','58.243.64.125','12','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1YtyI4s2qjDYPTqdoMlpnYDK8','ok');");
E_D("replace into `ecs_users` values('29','','','weixin29','63069bf52ae5a4eb4dcfa45cebe3001b','','','0','0000-00-00','0.00','0.00','0','0','0','0','0','0000-00-00 00:00:00','','0','99','0',NULL,'0','0','0','','','','','','','0','0.00',NULL,NULL,'oog1Yt7cotbvpz2eJlmOHExyhXDA','ok');");

require("../../inc/footer.php");
?>