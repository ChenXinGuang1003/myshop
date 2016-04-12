<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `wxch_prize_count`;");
E_C("CREATE TABLE `wxch_prize_count` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `pid` int(5) NOT NULL,
  `wxid` char(28) NOT NULL,
  `num` int(5) NOT NULL,
  `count` int(5) unsigned NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8");
E_D("replace into `wxch_prize_count` values('1','1','oo1v-tir7oHXTL42WpwAlNsLTZlc','0','5','1395980256','1395475456');");
E_D("replace into `wxch_prize_count` values('2','1','oog1Yty9Cv5wzffguaqxqJ7JO7Eo','1','1','1421049123','1421049123');");
E_D("replace into `wxch_prize_count` values('3','2','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','1','1','1421067174','1421067174');");
E_D("replace into `wxch_prize_count` values('4','1','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','1','1','1421067194','1421067194');");
E_D("replace into `wxch_prize_count` values('5','1','oog1YtyI4s2qjDYPTqdoMlpnYDK8','1','1','1421083506','1421083506');");

require("../../inc/footer.php");
?>