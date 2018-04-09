/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.5.59-log : Database - zhongmin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhongmin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhongmin`;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityName` varchar(20) DEFAULT NULL COMMENT '城市名',
  `cityUrl` varchar(20) DEFAULT NULL COMMENT '城市地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `c_mobile` varchar(20) DEFAULT NULL,
  `c_sex` varchar(10) DEFAULT NULL,
  `c_city` varchar(20) DEFAULT NULL,
  `c_carBrand` varchar(20) DEFAULT NULL,
  `c_carType` varchar(20) DEFAULT NULL,
  `c_address` varchar(50) DEFAULT NULL,
  `c_createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`c_id`,`c_name`,`c_mobile`,`c_sex`,`c_city`,`c_carBrand`,`c_carType`,`c_address`,`c_createTime`) values (1,'测试mobile','15155887275','全款购车',NULL,'B 宝沃','B BX5','','2018-03-29 00:00:00'),(2,'pc测试1','15551321657','贷款购车',NULL,'B 本田进口','B 本田CLARITY','安徽省阜阳市颍州区','2018-03-29 00:00:00');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `city` int(10) DEFAULT NULL,
  `carBrand` varchar(20) DEFAULT NULL,
  `carType` varchar(20) DEFAULT NULL,
  `buyInterest` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk` (`city`),
  CONSTRAINT `user_fk` FOREIGN KEY (`city`) REFERENCES `zm_admin` (`zm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*Table structure for table `zm_admin` */

DROP TABLE IF EXISTS `zm_admin`;

CREATE TABLE `zm_admin` (
  `zm_id` int(11) NOT NULL AUTO_INCREMENT,
  `zm_name` varchar(20) DEFAULT NULL,
  `zm_password` varchar(100) DEFAULT NULL,
  `zm_city` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`zm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `zm_admin` */

insert  into `zm_admin`(`zm_id`,`zm_name`,`zm_password`,`zm_city`) values (1,'m15655806388@163.com','FDEL','超级管理员'),(2,'临泉','\Z\Z','临泉'),(3,'太和','\0','太和'),(4,'阜南','\Z\Z','阜南');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
