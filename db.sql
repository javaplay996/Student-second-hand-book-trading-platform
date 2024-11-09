/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmxm4f1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmxm4f1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmxm4f1`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493031310 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-27 10:51:08',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-27 10:51:08',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-27 10:51:08',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-27 10:51:08',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-27 10:51:08',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-27 10:51:08',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619493031309,'2021-04-27 11:10:30',1619492676842,'广东省佛山市禅城区祖庙街道省元巷小区','陈红','13823855555','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shujixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492993410 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmxm4f1/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmxm4f1/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmxm4f1/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492822809 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`money`) values (21,'2021-04-27 10:51:08','卖家1','123456','卖家姓名1','http://localhost:8080/ssmxm4f1/upload/maijia_touxiang1.jpg','男','年龄1','13823888881',100);
insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`money`) values (22,'2021-04-27 10:51:08','卖家2','123456','卖家姓名2','http://localhost:8080/ssmxm4f1/upload/maijia_touxiang2.jpg','男','年龄2','13823888882',100);
insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`money`) values (23,'2021-04-27 10:51:08','卖家3','123456','卖家姓名3','http://localhost:8080/ssmxm4f1/upload/maijia_touxiang3.jpg','男','年龄3','13823888883',100);
insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`money`) values (24,'2021-04-27 10:51:08','卖家4','123456','卖家姓名4','http://localhost:8080/ssmxm4f1/upload/maijia_touxiang4.jpg','男','年龄4','13823888884',100);
insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`money`) values (25,'2021-04-27 10:51:08','卖家5','123456','卖家姓名5','http://localhost:8080/ssmxm4f1/upload/maijia_touxiang5.jpg','男','年龄5','13823888885',100);
insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`money`) values (26,'2021-04-27 10:51:08','卖家6','123456','卖家姓名6','http://localhost:8080/ssmxm4f1/upload/maijia_touxiang6.jpg','男','年龄6','13823888886',100);
insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`touxiang`,`xingbie`,`nianling`,`lianxidianhua`,`money`) values (1619492822808,'2021-04-27 11:07:02','22','123456','王强','http://localhost:8080/ssmxm4f1/upload/1619492840528.jpg','男','23','13823899999',0);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493160675 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-04-27 10:51:08',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (92,'2021-04-27 10:51:08',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (93,'2021-04-27 10:51:08',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (94,'2021-04-27 10:51:08',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (95,'2021-04-27 10:51:08',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (96,'2021-04-27 10:51:08',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619493160674,'2021-04-27 11:12:39',1619492676842,'11','留言反馈是给管理员发的','管理员可以回复');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shujixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493051179 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`,`maijiazhanghao`) values (1619493051178,'2021-04-27 11:10:51','202142711104217981141','shujixinxi',1619492676842,1619492945439,'韭菜的自我修养','http://localhost:8080/ssmxm4f1/upload/1619492910437.jpg',1,38,38,38,38,1,'已完成','广东省佛山市禅城区祖庙街道省元巷小区','13823855555','陈红','22');

/*Table structure for table `shujifenlei` */

DROP TABLE IF EXISTS `shujifenlei`;

CREATE TABLE `shujifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujifenlei` varchar(200) DEFAULT NULL COMMENT '书籍分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='书籍分类';

/*Data for the table `shujifenlei` */

insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (31,'2021-04-27 10:51:08','科幻类');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (32,'2021-04-27 10:51:08','书籍分类2');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (33,'2021-04-27 10:51:08','书籍分类3');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (34,'2021-04-27 10:51:08','书籍分类4');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (35,'2021-04-27 10:51:08','书籍分类5');
insert  into `shujifenlei`(`id`,`addtime`,`shujifenlei`) values (36,'2021-04-27 10:51:08','书籍分类6');

/*Table structure for table `shujixinxi` */

DROP TABLE IF EXISTS `shujixinxi`;

CREATE TABLE `shujixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) DEFAULT NULL COMMENT '书籍名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shujifenlei` varchar(200) DEFAULT NULL COMMENT '书籍分类',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shujixiangqing` longtext COMMENT '书籍详情',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492945440 DEFAULT CHARSET=utf8 COMMENT='书籍信息';

/*Data for the table `shujixinxi` */

insert  into `shujixinxi`(`id`,`addtime`,`shujimingcheng`,`tupian`,`shujifenlei`,`zuozhe`,`chubanshe`,`shujixiangqing`,`maijiazhanghao`,`maijiaxingming`,`clicktime`,`clicknum`,`price`) values (41,'2021-04-27 10:51:08','书籍名称1','http://localhost:8080/ssmxm4f1/upload/shujixinxi_tupian1.jpg','书籍分类1','作者1','出版社1','<p>书籍详情1</p>','卖家账号1','卖家姓名1','2021-04-27 11:06:32',7,28);
insert  into `shujixinxi`(`id`,`addtime`,`shujimingcheng`,`tupian`,`shujifenlei`,`zuozhe`,`chubanshe`,`shujixiangqing`,`maijiazhanghao`,`maijiaxingming`,`clicktime`,`clicknum`,`price`) values (42,'2021-04-27 10:51:08','书籍名称2','http://localhost:8080/ssmxm4f1/upload/shujixinxi_tupian2.jpg','书籍分类2','作者2','出版社2','<p>书籍详情2</p>','卖家账号2','卖家姓名2','2021-04-27 10:57:00',3,46);
insert  into `shujixinxi`(`id`,`addtime`,`shujimingcheng`,`tupian`,`shujifenlei`,`zuozhe`,`chubanshe`,`shujixiangqing`,`maijiazhanghao`,`maijiaxingming`,`clicktime`,`clicknum`,`price`) values (43,'2021-04-27 10:51:08','书籍名称3','http://localhost:8080/ssmxm4f1/upload/shujixinxi_tupian3.jpg','书籍分类3','作者3','出版社3','<p>书籍详情3</p>','卖家账号3','卖家姓名3','2021-04-27 10:57:13',4,43);
insert  into `shujixinxi`(`id`,`addtime`,`shujimingcheng`,`tupian`,`shujifenlei`,`zuozhe`,`chubanshe`,`shujixiangqing`,`maijiazhanghao`,`maijiaxingming`,`clicktime`,`clicknum`,`price`) values (44,'2021-04-27 10:51:08','书籍名称4','http://localhost:8080/ssmxm4f1/upload/shujixinxi_tupian4.jpg','书籍分类4','作者4','出版社4','<p>书籍详情4</p>','卖家账号4','卖家姓名4','2021-04-27 10:57:41',5,36);
insert  into `shujixinxi`(`id`,`addtime`,`shujimingcheng`,`tupian`,`shujifenlei`,`zuozhe`,`chubanshe`,`shujixiangqing`,`maijiazhanghao`,`maijiaxingming`,`clicktime`,`clicknum`,`price`) values (45,'2021-04-27 10:51:08','书籍名称5','http://localhost:8080/ssmxm4f1/upload/shujixinxi_tupian5.jpg','书籍分类5','作者5','出版社5','<p>书籍详情5</p>','卖家账号5','卖家姓名5','2021-04-27 10:57:52',6,32);
insert  into `shujixinxi`(`id`,`addtime`,`shujimingcheng`,`tupian`,`shujifenlei`,`zuozhe`,`chubanshe`,`shujixiangqing`,`maijiazhanghao`,`maijiaxingming`,`clicktime`,`clicknum`,`price`) values (46,'2021-04-27 10:51:08','书籍名称6','http://localhost:8080/ssmxm4f1/upload/shujixinxi_tupian6.jpg','书籍分类6','作者6','出版社6','<p>书籍详情6</p>','卖家账号6','卖家姓名6','2021-04-27 10:58:02',7,18);
insert  into `shujixinxi`(`id`,`addtime`,`shujimingcheng`,`tupian`,`shujifenlei`,`zuozhe`,`chubanshe`,`shujixiangqing`,`maijiazhanghao`,`maijiaxingming`,`clicktime`,`clicknum`,`price`) values (1619492945439,'2021-04-27 11:09:05','韭菜的自我修养','http://localhost:8080/ssmxm4f1/upload/1619492910437.jpg','书籍分类2','李笑来','中国出版社','<p>sdsgdfhfgjjcbcnvmbmbvm</p>','22','王强','2021-04-27 11:10:50',4,38);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492987895 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619492789925,'2021-04-27 11:06:29',1619492676842,41,'shujixinxi','书籍名称1','http://localhost:8080/ssmxm4f1/upload/shujixinxi_tupian1.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619492987894,'2021-04-27 11:09:47',1619492676842,1619492945439,'shujixinxi','韭菜的自我修养','http://localhost:8080/ssmxm4f1/upload/1619492910437.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','up3cfxjguk5sh6hs2y16sb4kjyzmo3m1','2021-04-27 10:56:34','2021-04-27 12:13:19');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'卖家1','maijia','卖家','2ks3687wlu2m4hk7t9xaoeg88ps43phs','2021-04-27 11:04:50','2021-04-27 12:04:51');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619492676842,'11','yonghu','用户','fdfp7cuhp51qmwaxh8hxy3cfcm8szjj0','2021-04-27 11:05:12','2021-04-27 12:15:09');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619492822808,'22','maijia','卖家','i2yi6er6j1tamfux5qwh09hmvchbdbea','2021-04-27 11:07:11','2021-04-27 12:15:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-27 10:51:09');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492676843 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`money`) values (11,'2021-04-27 10:51:08','用户1','123456','用户姓名1','http://localhost:8080/ssmxm4f1/upload/yonghu_touxiang1.jpg','男','年龄1','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`money`) values (12,'2021-04-27 10:51:08','用户2','123456','用户姓名2','http://localhost:8080/ssmxm4f1/upload/yonghu_touxiang2.jpg','男','年龄2','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`money`) values (13,'2021-04-27 10:51:08','用户3','123456','用户姓名3','http://localhost:8080/ssmxm4f1/upload/yonghu_touxiang3.jpg','男','年龄3','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`money`) values (14,'2021-04-27 10:51:08','用户4','123456','用户姓名4','http://localhost:8080/ssmxm4f1/upload/yonghu_touxiang4.jpg','男','年龄4','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`money`) values (15,'2021-04-27 10:51:08','用户5','123456','用户姓名5','http://localhost:8080/ssmxm4f1/upload/yonghu_touxiang5.jpg','男','年龄5','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`money`) values (16,'2021-04-27 10:51:08','用户6','123456','用户姓名6','http://localhost:8080/ssmxm4f1/upload/yonghu_touxiang6.jpg','男','年龄6','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`touxiang`,`xingbie`,`nianling`,`shoujihaoma`,`money`) values (1619492676842,'2021-04-27 11:04:36','11','123456','陈红','http://localhost:8080/ssmxm4f1/upload/1619492728092.jpg','女','25','13823855555',162);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
