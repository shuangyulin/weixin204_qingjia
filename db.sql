/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiqingxueshengqiangjia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiqingxueshengqiangjia` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiqingxueshengqiangjia`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/yiqingxueshengqiangjia/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/yiqingxueshengqiangjia/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/yiqingxueshengqiangjia/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'xueshengqingjia_types','请假类型',1,'请假类型1',NULL,NULL,'2022-03-08 21:14:51'),(2,'xueshengqingjia_types','请假类型',2,'家庭原因',NULL,NULL,'2022-03-08 21:14:51'),(3,'xueshengqingjia_types','请假类型',3,'病假',NULL,NULL,'2022-03-08 21:14:51'),(4,'xueshengqingjia_yesno_types','审核结果',1,'处理中',NULL,NULL,'2022-03-08 21:14:51'),(5,'xueshengqingjia_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-03-08 21:14:51'),(6,'xueshengqingjia_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-03-08 21:14:51'),(7,'xueshengqingjia_status_types','请假状态',1,'请假中',NULL,NULL,'2022-03-08 21:14:51'),(8,'xueshengqingjia_status_types','请假状态',2,'已销假',NULL,NULL,'2022-03-08 21:14:51'),(9,'jiaqiweizhi_yesno_types','审核结果',1,'判断中',NULL,NULL,'2022-03-08 21:14:51'),(10,'jiaqiweizhi_yesno_types','审核结果',3,'否',NULL,NULL,'2022-03-08 21:14:51'),(11,'jiaqiweizhi_yesno_types','审核结果',2,'是',NULL,NULL,'2022-03-08 21:14:51'),(12,'sex_types','性别',1,'男',NULL,NULL,'2022-03-08 21:14:51'),(13,'sex_types','性别',2,'女',NULL,NULL,'2022-03-08 21:14:52'),(14,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-08 21:14:52'),(15,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-08 21:14:52'),(16,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-08 21:14:52');

/*Table structure for table `jiaqiweizhi` */

DROP TABLE IF EXISTS `jiaqiweizhi`;

CREATE TABLE `jiaqiweizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `xueshengqingjia_id` int(200) DEFAULT NULL COMMENT '请假',
  `jiaqiweizhi_address` varchar(200) DEFAULT NULL COMMENT '所在地址',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `jiaqiweizhi_yesno_types` int(11) DEFAULT NULL COMMENT '是否来自疫区',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='假期位置';

/*Data for the table `jiaqiweizhi` */

insert  into `jiaqiweizhi`(`id`,`yonghu_id`,`xueshengqingjia_id`,`jiaqiweizhi_address`,`insert_time`,`jiaqiweizhi_yesno_types`,`create_time`) values (4,3,4,'所在地址4','2022-03-08 21:14:58',2,'2022-03-08 21:14:58'),(6,1,7,'请假后的所在位置','2022-03-09 11:08:49',3,'2022-03-09 11:08:49');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/yiqingxueshengqiangjia/upload/news1.jpg','2022-03-08 21:14:58','公告详情1','2022-03-08 21:14:58'),(2,'公告标题2',1,'http://localhost:8080/yiqingxueshengqiangjia/upload/news2.jpg','2022-03-08 21:14:58','公告详情2','2022-03-08 21:14:58'),(3,'公告标题3',3,'http://localhost:8080/yiqingxueshengqiangjia/upload/news3.jpg','2022-03-08 21:14:58','公告详情3','2022-03-08 21:14:58'),(4,'公告标题4',1,'http://localhost:8080/yiqingxueshengqiangjia/upload/news4.jpg','2022-03-08 21:14:58','公告详情4','2022-03-08 21:14:58'),(5,'公告标题5',3,'http://localhost:8080/yiqingxueshengqiangjia/upload/news5.jpg','2022-03-08 21:14:58','公告详情5','2022-03-08 21:14:58');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','c3lvxei91mx2qz2k8sizoeu5kou80u4a','2022-03-08 21:48:18','2022-03-09 12:19:47'),(2,1,'a1','yonghu','学生','bc2lrq9dj19z2jd46fl4bvegnl06c0zs','2022-03-08 21:59:01','2022-03-09 12:22:07');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xueshengqingjia` */

DROP TABLE IF EXISTS `xueshengqingjia`;

CREATE TABLE `xueshengqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xueshengqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假原因 Search111 ',
  `xueshengqingjia_text` text COMMENT '详情',
  `xueshengqingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `xueshengqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `xueshengqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `xueshengqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果',
  `xueshengqingjia_yesno_text` text COMMENT '处理结果',
  `xueshengqingjia_status_types` int(11) DEFAULT NULL COMMENT '请假状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='学生请假';

/*Data for the table `xueshengqingjia` */

insert  into `xueshengqingjia`(`id`,`xueshengqingjia_name`,`xueshengqingjia_text`,`xueshengqingjia_types`,`xueshengqingjia_time`,`xueshengqingjia_number`,`yonghu_id`,`xueshengqingjia_yesno_types`,`xueshengqingjia_yesno_text`,`xueshengqingjia_status_types`,`insert_time`,`create_time`) values (1,'请假原因1','详情1',1,'2022-03-08 21:14:58',487,2,1,NULL,NULL,'2022-03-08 21:14:58','2022-03-08 21:14:58'),(2,'请假原因2','详情2',1,'2022-03-08 21:14:58',17,2,1,NULL,NULL,'2022-03-08 21:14:58','2022-03-08 21:14:58'),(3,'请假原因3','详情3',3,'2022-03-08 21:14:58',199,3,1,NULL,NULL,'2022-03-08 21:14:58','2022-03-08 21:14:58'),(4,'请假原因4','详情4',2,'2022-03-08 21:14:58',95,1,2,'处理结果111',2,'2022-03-08 21:14:58','2022-03-08 21:14:58'),(5,'请假原因5','详情5',1,'2022-03-08 21:14:58',182,2,3,'理由不充分',NULL,'2022-03-08 21:14:58','2022-03-08 21:14:58'),(7,'添加请假原因','请假的详细原因',1,'2022-10-01 17:10:28',10,1,2,'管理审核的结果',2,'2022-03-09 11:06:57','2022-03-09 11:06:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','学生姓名1','http://localhost:8080/yiqingxueshengqiangjia/upload/yonghu1.jpg',2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-08 21:14:58'),(2,'a2','123456','学生姓名2','http://localhost:8080/yiqingxueshengqiangjia/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-08 21:14:58'),(3,'a3','123456','学生姓名3','http://localhost:8080/yiqingxueshengqiangjia/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-08 21:14:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
