<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `wxch_qr`;");
E_C("CREATE TABLE `wxch_qr` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8");
E_D("replace into `wxch_qr` values('1','tj','0','QR_LIMIT_SCENE','13','gQEy8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xLzZrd1VtZGptOWRfTVJpZE5NbUJtAAIEQOGyVAMEAAAAAA==','weixin13','http://tx.wushuai.net/images/qrcode/1421009264.jpg','0','0','','13','0','0');");
E_D("replace into `wxch_qr` values('2','tj','0','QR_LIMIT_SCENE','17','gQEL8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL21reDR4aVhtbU4taGxGY1RYbUJtAAIE0lKzVAMEAAAAAA==','weixin17','http://tx.wushuai.net/images/qrcode/1421038290.jpg','0','0','','17','0','0');");
E_D("replace into `wxch_qr` values('3','tj','0','QR_LIMIT_SCENE','23','gQGx8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3dFeFRWTlhtak4tMXJBMl9kV0JtAAIExVuzVAMEAAAAAA==','weixin23','http://tx.wushuai.net/images/qrcode/1421040581.jpg','1','0','','23','0','0');");
E_D("replace into `wxch_qr` values('4','tj','0','QR_LIMIT_SCENE','24','gQHM7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xLzYweGFBVWptdHQtUFR5YllmR0JtAAIEZl_zVAMEAAAAAA==','weixin24','http://tx.wushuai.net/images/qrcode/1421041510.jpg','0','0','','24','0','0');");
E_D("replace into `wxch_qr` values('5','tj','0','QR_LIMIT_SCENE','25','gQEM8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3Brd3RTN2JteGRfOHRtdVdDMkJtAAIEeZ6zVAMEAAAAAA==','weixin25','http://tx.wushuai.net/images/qrcode/1421057657.jpg','0','0','','25','0','0');");
E_D("replace into `wxch_qr` values('6','tj','0','QR_LIMIT_SCENE','27','gQGY8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3BVeEpUVW5ta3QtclRHaWpiMkJtAAIE8sKzVAMEAAAAAA==','weixin27','http://tx.wushuai.net/images/qrcode/1421066994.jpg','0','0','','27','0','0');");
E_D("replace into `wxch_qr` values('7','tj','0','QR_LIMIT_SCENE','28','gQH08DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL1kweHBjSXJtdTktQ2RLNlhUMkJtAAIEAgO0VAMEAAAAAA==','weixin28','http://tx.wushuai.net/images/qrcode/1421083394.jpg','0','0','','28','0','0');");

require("../../inc/footer.php");
?>