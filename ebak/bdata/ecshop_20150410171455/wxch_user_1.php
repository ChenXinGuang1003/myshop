<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `wxch_user`;");
E_C("CREATE TABLE `wxch_user` (
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
  `affiliate` int(8) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8");
E_D("replace into `wxch_user` values('1','1','oog1Yt9spi8jRGx92QJ-qUkuOhBQ','小君','1','洛阳','中国','河南','zh_CN','http://wx.qlogo.cn/mmopen/R9SKXNeaXfSt8Y6aFT2FmhibX3nIbyMot6lLwQJF10Ex5MbXwdYGDibNgQMDlf6npGwgJOa3NbNNGTzCLqWiba0eRm8oJExzZFC/0','1421009150','','3','weixin13','1000080588','0','1421009295');");
E_D("replace into `wxch_user` values('2','1','oog1Yt9HMMlVwrpJK71bq_XitpVU','卿丹','2','荣昌','中国','重庆','zh_CN','http://wx.qlogo.cn/mmopen/DdpxT0U2tTuRiamjrheRllCVvjn67yaBVsJia9WyB96HTAT7cMZGlJhVaW5jjicYNCNsAnEIE80nlPbu47SBEiciczOP8u7yrN0dO/0','1418629629','','3','weixin14','','0','1421002674');");
E_D("replace into `wxch_user` values('3','0','oog1Yt0AlBCuOEdUMr5AFyst05cM','艾特思瑞商城','1','长沙','中国','湖南','zh_CN','http://wx.qlogo.cn/mmopen/Q3auHgzwzM5ribibHS3Sqliah4ZCNzeWpKW74DwExog3PtVxyc09LNbXs9VEycWDumO3zZYxDswI1Q2SQTB084Vf1Zzs3PvM3FC8NJ9JhVuw7k/0','1420810495','','3','weixin16','','0','1421059525');");
E_D("replace into `wxch_user` values('4','1','oog1Yt4YShqJe1oLS8YCNRpBdTXE','刘阳','1','济南','中国','山东','zh_CN','http://wx.qlogo.cn/mmopen/czicwAArRpg1ssLvjzrciaVowBN3OycMy1NAFMortkSnW4ic8CPACAcib9y5YibzaC0iakNL4TNQIG3MMr8N7duGKwDLh0pLibZdfeS/0','1419591205','','3','weixin17','','0','1421038375');");
E_D("replace into `wxch_user` values('5','1','oog1YtyT-CAd62CkmTqNC4zBC5vc','元','1','乌鲁木齐','中国','新疆','zh_CN','http://wx.qlogo.cn/mmopen/A7sq8BD8oeyKiaXj26f612gJ6xoMMH1jjINuhz1SusxtXRqAaHIfwOpvbjYvCRoq3Fss0EKL1O9f04ykHN6M7Bw/0','1420905751','','3','weixin19','','0','1421034311');");
E_D("replace into `wxch_user` values('6','1','oog1YtyvklJj6ieMM1IrpjxsxDoc','李智','1','合肥','中国','安徽','zh_CN','http://wx.qlogo.cn/mmopen/A7sq8BD8oeyC9py8rrcAaAvFm30w1MIU8bhZJiaI3ibEjPetrQaRPyYnAF8ibZfpyMQkPHVqibNxcNVrGdfhGUicZEuHhMdD9yNFR/0','1421035258','','3','weixin21','','0','1421035258');");
E_D("replace into `wxch_user` values('7','0','oog1Yt6rUpSiKK_koKwCtsSKmbE8','','0','','','','','','0','','3','weixin22','','0','1421035265');");
E_D("replace into `wxch_user` values('8','1','oog1Yt63zRyHLToUtpWaiEiyH7u8','姜涛教练','1','普陀','中国','上海','zh_CN','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDUTO5pibgrWMtSLGWTDAd3lxD6NKzgSwiazH27KMHDVDOVF2VB1Jyxu5HINl2CJNubNvTkHxNSIGzg/0','1420978804','','3','weixin23','','0','1421043047');");
E_D("replace into `wxch_user` values('9','1','oog1YtxHM2eezoEs-BgPLygsJTEo','马洪岩','2','普陀','中国','上海','zh_CN','http://wx.qlogo.cn/mmopen/A7sq8BD8oeyC9py8rrcAaIcAYJiatLibbPWdibWBo3axicFavH6Zl7btythPNt4OvrYZibdp0yJ2VB8bovpmQQLHr9Cjs4ggNCQhg/0','1421041340','','3','weixin24','','0','1421043161');");
E_D("replace into `wxch_user` values('10','1','oog1Yt8NN8pzp0KJV2d3wq3vW-og','月色','1','武汉','中国','湖北','zh_CN','http://wx.qlogo.cn/mmopen/DdpxT0U2tTsa7v3kWiaF0VNicNVHqwSPicGm9q5Jia8GFY44hciaeYR8XTQ8gFibnB0bxSFYe6tIREM9xeqLCzuq959tvFjvrvkaBN/0','1421041568','','3','weixin25','','0','1421057675');");
E_D("replace into `wxch_user` values('11','1','oog1Yty9Cv5wzffguaqxqJ7JO7Eo','赤峰丰娇源山庄','2','赤峰','中国','内蒙古','zh_CN','http://wx.qlogo.cn/mmopen/A7sq8BD8oeze5RrlsBfOJ5N3084MFQOiart4NXEYITygTUSJ2jicSMdXDI1xFcnXGfWRia5T74hWc9HnRjbr5YlK3q8qOCt6ZIk/0','1421048784','','3','weixin26','','0','1421049112');");
E_D("replace into `wxch_user` values('12','1','oog1Yt9R0d4K6KhVlnGRyRvZxyV0','看','1','呼和浩特','中国','内蒙古','zh_CN','http://wx.qlogo.cn/mmopen/R9SKXNeaXfSt8Y6aFT2FmuFK9l48ENoSrSsJy5nOQ3Z08yb9pCiadbP2nkhNAufJ4X4KejnWxRqZg6DolKjcwhXxCKpwgyS5p/0','1421066972','','3','weixin27','','0','1421083784');");
E_D("replace into `wxch_user` values('13','1','oog1YtyI4s2qjDYPTqdoMlpnYDK8','行者','1','淮北','中国','安徽','zh_CN','http://wx.qlogo.cn/mmopen/DdpxT0U2tTsa7v3kWiaF0VAVOodg0oa7FUMwNic1icWfcFENOdNgTUJHClQHA9EK2Jsiac9UwzoeAvoem5jTibuz7qicRQpdxyzKLy/0','1421083318','','3','weixin28','','0','1421083810');");
E_D("replace into `wxch_user` values('14','1','oog1Yt7cotbvpz2eJlmOHExyhXDA','jack','1','无锡','中国','江苏','zh_CN','http://wx.qlogo.cn/mmopen/czicwAArRpg1ssLvjzrciaVmDibsjZe7xhGqFzyicHg3pgpTIX69nk0AuTM9nRu4H0yuBXtar6HSUlzNBTc39la4qGW1P5oAE4sx/0','1420959387','','3','weixin29','','0','1421084500');");

require("../../inc/footer.php");
?>