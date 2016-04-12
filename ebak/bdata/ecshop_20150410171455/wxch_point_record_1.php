<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `wxch_point_record`;");
E_C("CREATE TABLE `wxch_point_record` (
  `pr_id` int(7) NOT NULL AUTO_INCREMENT,
  `wxid` char(28) NOT NULL,
  `point_name` varchar(64) NOT NULL,
  `num` int(5) NOT NULL,
  `lasttime` int(10) NOT NULL,
  `datelinie` int(10) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8");
E_D("replace into `wxch_point_record` values('1','oog1Yt9spi8jRGx92QJ-qUkuOhBQ','zjd','1','1420996206','1420996206');");
E_D("replace into `wxch_point_record` values('2','oog1Yt9spi8jRGx92QJ-qUkuOhBQ','dzp','1','1420996726','1420996726');");
E_D("replace into `wxch_point_record` values('3','oog1Yt9spi8jRGx92QJ-qUkuOhBQ','news','1','1420997126','1420997126');");
E_D("replace into `wxch_point_record` values('4','oog1Yt9HMMlVwrpJK71bq_XitpVU','news','1','1421002675','1421002675');");
E_D("replace into `wxch_point_record` values('5','oog1Yt9spi8jRGx92QJ-qUkuOhBQ','qiandao','1','1421009271','1421009271');");
E_D("replace into `wxch_point_record` values('6','oog1YtyT-CAd62CkmTqNC4zBC5vc','qiandao','1','1421034312','1421034312');");
E_D("replace into `wxch_point_record` values('7','oog1YtyvklJj6ieMM1IrpjxsxDoc','g_point','1','1421035259','1421035259');");
E_D("replace into `wxch_point_record` values('8','oog1Yt4YShqJe1oLS8YCNRpBdTXE','zjd','1','1421038315','1421038315');");
E_D("replace into `wxch_point_record` values('9','oog1Yt8NN8pzp0KJV2d3wq3vW-og','g_point','1','1421041569','1421041569');");
E_D("replace into `wxch_point_record` values('10','oog1Yt8NN8pzp0KJV2d3wq3vW-og','hot','1','1421041596','1421041596');");
E_D("replace into `wxch_point_record` values('11','oog1Yt63zRyHLToUtpWaiEiyH7u8','dzp','1','1421042857','1421042857');");
E_D("replace into `wxch_point_record` values('12','oog1Yt63zRyHLToUtpWaiEiyH7u8','hot','1','1421043047','1421043047');");
E_D("replace into `wxch_point_record` values('13','oog1Yty9Cv5wzffguaqxqJ7JO7Eo','g_point','1','1421048786','1421048786');");
E_D("replace into `wxch_point_record` values('14','oog1Yty9Cv5wzffguaqxqJ7JO7Eo','hot','1','1421048799','1421048799');");
E_D("replace into `wxch_point_record` values('15','oog1Yty9Cv5wzffguaqxqJ7JO7Eo','zjd','1','1421049114','1421049114');");
E_D("replace into `wxch_point_record` values('16','oog1Yt8NN8pzp0KJV2d3wq3vW-og','best','1','1421057671','1421057671');");
E_D("replace into `wxch_point_record` values('17','oog1Yt8NN8pzp0KJV2d3wq3vW-og','news','1','1421057675','1421057675');");
E_D("replace into `wxch_point_record` values('18','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','g_point','1','1421066974','1421066974');");
E_D("replace into `wxch_point_record` values('19','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','dzp','1','1421067166','1421067166');");
E_D("replace into `wxch_point_record` values('20','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','zjd','1','1421067186','1421067186');");
E_D("replace into `wxch_point_record` values('21','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','qiandao','1','1421067204','1421067204');");
E_D("replace into `wxch_point_record` values('22','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','news','1','1421067961','1421067961');");
E_D("replace into `wxch_point_record` values('23','oog1YtyI4s2qjDYPTqdoMlpnYDK8','g_point','1','1421083320','1421083320');");
E_D("replace into `wxch_point_record` values('24','oog1YtyI4s2qjDYPTqdoMlpnYDK8','hot','1','1421083355','1421083355');");
E_D("replace into `wxch_point_record` values('25','oog1YtyI4s2qjDYPTqdoMlpnYDK8','zjd','1','1421083477','1421083477');");
E_D("replace into `wxch_point_record` values('26','oog1YtyI4s2qjDYPTqdoMlpnYDK8','qiandao','1','1421083535','1421083535');");

require("../../inc/footer.php");
?>