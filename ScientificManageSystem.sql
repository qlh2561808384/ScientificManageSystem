/*
SQLyog Ultimate v8.32 
MySQL - 5.5.29 : Database - scientificmanagesystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scientificmanagesystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `scientificmanagesystem`;

/*Table structure for table `t_examination` */

DROP TABLE IF EXISTS `t_examination`;

CREATE TABLE `t_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fruit` int(11) DEFAULT NULL,
  `e_name` varchar(255) DEFAULT NULL,
  `e_time` varchar(255) DEFAULT NULL,
  `e_status` varchar(255) DEFAULT NULL,
  `e_content` varchar(255) DEFAULT NULL,
  `e_bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6EDB4C862CF09D32` (`fruit`),
  CONSTRAINT `FK6EDB4C862CF09D32` FOREIGN KEY (`fruit`) REFERENCES `t_fruit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_examination` */

/*Table structure for table `t_fruit` */

DROP TABLE IF EXISTS `t_fruit`;

CREATE TABLE `t_fruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `scientific` int(11) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_time` varchar(255) DEFAULT NULL,
  `f_content` varchar(255) DEFAULT NULL,
  `f_bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9E7F4069AB0BF188` (`scientific`),
  KEY `FK9E7F40694BD3594C` (`user`),
  CONSTRAINT `FK9E7F40694BD3594C` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK9E7F4069AB0BF188` FOREIGN KEY (`scientific`) REFERENCES `t_scientific` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_fruit` */

/*Table structure for table `t_info` */

DROP TABLE IF EXISTS `t_info`;

CREATE TABLE `t_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `i_name` varchar(255) DEFAULT NULL,
  `i_time` varchar(255) DEFAULT NULL,
  `i_content` varchar(255) DEFAULT NULL,
  `i_bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCB4FB9B94BD3594C` (`user`),
  CONSTRAINT `FKCB4FB9B94BD3594C` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_info` */

/*Table structure for table `t_notice` */

DROP TABLE IF EXISTS `t_notice`;

CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `n_name` varchar(255) DEFAULT NULL,
  `n_time` varchar(255) DEFAULT NULL,
  `n_content` varchar(255) DEFAULT NULL,
  `n_bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3EE4D5234BD3594C` (`user`),
  CONSTRAINT `FK3EE4D5234BD3594C` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_notice` */

/*Table structure for table `t_paper` */

DROP TABLE IF EXISTS `t_paper`;

CREATE TABLE `t_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_time` varchar(255) DEFAULT NULL,
  `p_content` varchar(255) DEFAULT NULL,
  `p_bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9F045DE14BD3594C` (`user`),
  CONSTRAINT `FK9F045DE14BD3594C` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_paper` */

/*Table structure for table `t_scientific` */

DROP TABLE IF EXISTS `t_scientific`;

CREATE TABLE `t_scientific` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `s_time` varchar(255) DEFAULT NULL,
  `s_content` varchar(255) DEFAULT NULL,
  `s_bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK841DA8F44BD3594C` (`user`),
  CONSTRAINT `FK841DA8F44BD3594C` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_scientific` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `jjlxr` varchar(255) DEFAULT NULL,
  `jjtel` varchar(255) DEFAULT NULL,
  `jg` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bm` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `by_1` varchar(255) DEFAULT NULL,
  `by_2` varchar(255) DEFAULT NULL,
  `by_3` varchar(255) DEFAULT NULL,
  `bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`name`,`birthday`,`sex`,`tel`,`jjlxr`,`jjtel`,`jg`,`address`,`bm`,`type`,`by_1`,`by_2`,`by_3`,`bz`) values (1,'admin','admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL,NULL);

/*Table structure for table `t_winning` */

DROP TABLE IF EXISTS `t_winning`;

CREATE TABLE `t_winning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `w_name` varchar(255) DEFAULT NULL,
  `w_time` varchar(255) DEFAULT NULL,
  `w_content` varchar(255) DEFAULT NULL,
  `w_bz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6F3EA1A54BD3594C` (`user`),
  CONSTRAINT `FK6F3EA1A54BD3594C` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_winning` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
