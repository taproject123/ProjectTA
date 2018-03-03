/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.5-10.1.13-MariaDB : Database - e_learning
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`e_learning` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `e_learning`;

/*Table structure for table `tb_assignment` */

DROP TABLE IF EXISTS `tb_assignment`;

CREATE TABLE `tb_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) DEFAULT NULL,
  `name` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_assignment` */

/*Table structure for table `tb_course` */

DROP TABLE IF EXISTS `tb_course`;

CREATE TABLE `tb_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `fullname` varchar(254) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `idnumber` varchar(100) DEFAULT NULL,
  `format` varchar(21) DEFAULT NULL,
  `startdate` int(11) DEFAULT NULL,
  `timecreated` int(11) DEFAULT NULL,
  `timemodified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_course` */

/*Table structure for table `tb_file` */

DROP TABLE IF EXISTS `tb_file`;

CREATE TABLE `tb_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_file` */

/*Table structure for table `tb_free_quiz` */

DROP TABLE IF EXISTS `tb_free_quiz`;

CREATE TABLE `tb_free_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `free_quiz` varchar(255) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `timeopen` varchar(255) DEFAULT NULL,
  `timeclose` varchar(255) DEFAULT NULL,
  `timelimit` varchar(255) DEFAULT NULL,
  `timecreated` varchar(255) DEFAULT NULL,
  `timemodified` varchar(255) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL,
  `id_materi` int(11) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_free_quiz` */

/*Table structure for table `tb_jurusan` */

DROP TABLE IF EXISTS `tb_jurusan`;

CREATE TABLE `tb_jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_jurusan` */

/*Table structure for table `tb_lesson` */

DROP TABLE IF EXISTS `tb_lesson`;

CREATE TABLE `tb_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) DEFAULT NULL,
  `name` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_lesson` */

/*Table structure for table `tb_level` */

DROP TABLE IF EXISTS `tb_level`;

CREATE TABLE `tb_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_level` */

/*Table structure for table `tb_materi_syarat` */

DROP TABLE IF EXISTS `tb_materi_syarat`;

CREATE TABLE `tb_materi_syarat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lessonid` int(11) DEFAULT NULL,
  `quizid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_materi_syarat` */

/*Table structure for table `tb_nilai` */

DROP TABLE IF EXISTS `tb_nilai`;

CREATE TABLE `tb_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `nilai_uts` double DEFAULT NULL,
  `nilai_uas` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_nilai` */

/*Table structure for table `tb_quiz` */

DROP TABLE IF EXISTS `tb_quiz`;

CREATE TABLE `tb_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `timeopen` int(11) DEFAULT NULL,
  `timeclose` int(11) DEFAULT NULL,
  `timelimit` int(11) DEFAULT NULL,
  `timecreated` int(11) DEFAULT NULL,
  `timemodified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_quiz` */

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `shortname` varchar(254) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_role` */

insert  into `tb_role`(`id`,`name`,`shortname`,`description`) values (1,'Mahasiswa','Mahasiswa','Mahasiswa'),(2,'Dosen','Dosen','Dosen');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `yahoo` varchar(50) DEFAULT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `firstaccess` int(11) DEFAULT NULL,
  `lastaccess` int(11) DEFAULT NULL,
  `lastlogin` int(11) DEFAULT NULL,
  `currentlogin` int(11) DEFAULT NULL,
  `picture` int(11) DEFAULT NULL,
  `description` longtext,
  `timecreated` int(11) DEFAULT NULL,
  `timemodified` int(11) DEFAULT NULL,
  `imagealt` varchar(255) DEFAULT NULL,
  `lastnamephonetic` varchar(255) DEFAULT NULL,
  `firstnamephonetic` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `alternatename` varchar(255) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`password`,`firstname`,`lastname`,`email`,`skype`,`yahoo`,`phone1`,`phone2`,`institution`,`department`,`address`,`city`,`country`,`timezone`,`firstaccess`,`lastaccess`,`lastlogin`,`currentlogin`,`picture`,`description`,`timecreated`,`timemodified`,`imagealt`,`lastnamephonetic`,`firstnamephonetic`,`middlename`,`alternatename`,`id_role`) values (4,'hikari','hikari29','ikhsan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(5,'Budi','tegar','Tegar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(6,'h','hj','yjh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(7,'j','j','j',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(8,'4','4','4','4','4','4','4','4','4','4','4','4','4','4','4',4,4,4,4,4,'4',4,4,'4','4','4','4','4',2),(9,'7','7','77','7','78','8','78','87','8','87','7','7','7','7','7',7,7,7,7,7,'7',7,7,'7','7','7','7','8',2),(10,'HikariA','HikariB','HikariC','HikariD','Hikari@','@Jrs','Yahooo','Phone 1','Phone 1','Hikari PT CV','Mbuh','wanasaba Kiudul','Cirebon','12','1',1,11,1,1,11,'1',1,11,'1','1','2','2','2',2);

/*Table structure for table `tb_weekly_quiz` */

DROP TABLE IF EXISTS `tb_weekly_quiz`;

CREATE TABLE `tb_weekly_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weekly_quiz` varchar(200) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `timeopen` varchar(255) DEFAULT NULL,
  `timeclose` varchar(255) DEFAULT NULL,
  `timelimit` varchar(255) DEFAULT NULL,
  `timecreated` varchar(255) DEFAULT NULL,
  `timemodified` varchar(255) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL,
  `id_materi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_weekly_quiz` */

/*Table structure for table `user_tbl` */

DROP TABLE IF EXISTS `user_tbl`;

CREATE TABLE `user_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user_tbl` */

insert  into `user_tbl`(`id`,`nama`,`username`,`password`,`jenis`) values (1,'ikhsan','ikhsan','hikari29','mahasiswa');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
