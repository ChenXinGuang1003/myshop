<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `wxch_prize_users`;");
E_C("CREATE TABLE `wxch_prize_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8");
E_D("replace into `wxch_prize_users` values('1','oog1Yty9Cv5wzffguaqxqJ7JO7Eo','egg','赤峰丰娇源山庄','1','话费100元4','11d1c880b4041f3bd9cfaebbe3b9a6e1','0','0','yes','1421049123');");
E_D("replace into `wxch_prize_users` values('2','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','dzp','看','2','甜心100','623f0864812de09b6be976a669582c43','0','0','yes','1421067174');");
E_D("replace into `wxch_prize_users` values('3','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','egg','看','1','未中奖6','18e17ea322c04a4335ca5fcd6b8b7288','0','1','no','1421067194');");
E_D("replace into `wxch_prize_users` values('4','oog1YtyI4s2qjDYPTqdoMlpnYDK8','egg','行者','1','话费100元4','a781d216d60d1ffb59ed180ab5b1718f','0','0','yes','1421083506');");

require("../../inc/footer.php");
?>